#!/usr/bin/env python3
"""Minimal Android binary XML (AXML) parser.
Format reference: https://justanapplication.wordpress.com/category/android/android-binary-xml/
"""
import struct, sys

# Chunk types
RES_NULL_TYPE          = 0x0000
RES_STRING_POOL_TYPE   = 0x0001
RES_TABLE_TYPE         = 0x0201
RES_XML_TYPE           = 0x0003
RES_XML_FIRST_CHUNK    = 0x0100
RES_XML_START_NAMESPACE= 0x0100
RES_XML_END_NAMESPACE  = 0x0101
RES_XML_START_ELEMENT  = 0x0102
RES_XML_END_ELEMENT    = 0x0103
RES_XML_CDATA          = 0x0104
RES_XML_RESOURCE_MAP   = 0x0180

# Value types
TYPE_NULL          = 0x00
TYPE_REFERENCE     = 0x01
TYPE_ATTRIBUTE     = 0x02
TYPE_STRING        = 0x03
TYPE_FLOAT         = 0x04
TYPE_DIMENSION     = 0x05
TYPE_FRACTION      = 0x06
TYPE_INT_DEC       = 0x10
TYPE_INT_HEX       = 0x11
TYPE_INT_BOOLEAN   = 0x12

def parse(f):
    data = f.read()
    pos = 0
    # File header
    typ, hdr_sz, sz = struct.unpack_from("<HHI", data, pos)
    assert typ == RES_XML_TYPE, f"not AXML (got {typ:#x})"
    pos += hdr_sz

    strings = []
    resmap = []
    out = []

    while pos < len(data):
        if pos + 8 > len(data): break
        typ, hdr_sz, sz = struct.unpack_from("<HHI", data, pos)
        chunk = data[pos:pos+sz]
        if typ == RES_STRING_POOL_TYPE:
            # string pool
            (s_type, s_hdr, s_sz, string_count, style_count, flags, strings_start, styles_start) = struct.unpack_from("<HHIIIIII", chunk, 0)
            offsets = struct.unpack_from(f"<{string_count}I", chunk, s_hdr)
            utf8 = bool(flags & 0x100)
            for off in offsets:
                p = strings_start + off
                if utf8:
                    ulen = chunk[p]
                    if ulen & 0x80:
                        ulen = ((ulen & 0x7F) << 8) | chunk[p+1]; p += 1
                    blen = chunk[p+1]
                    if blen & 0x80:
                        blen = ((blen & 0x7F) << 8) | chunk[p+2]; p += 1
                    s = chunk[p+2:p+2+blen].decode("utf-8", errors="replace")
                else:
                    blen = struct.unpack_from("<H", chunk, p)[0]
                    if blen & 0x8000:
                        blen = ((blen & 0x7FFF) << 16) | struct.unpack_from("<H", chunk, p+2)[0]; p += 2
                    s = chunk[p+2:p+2+blen*2].decode("utf-16-le", errors="replace")
                strings.append(s)
        elif typ == RES_XML_RESOURCE_MAP:
            n = (sz - hdr_sz) // 4
            resmap = list(struct.unpack_from(f"<{n}I", chunk, hdr_sz))
        elif typ == RES_XML_START_ELEMENT:
            # ResXMLTree_attrExt: line(4) comment(4) ns(4) name(4) attrStart(2) attrSize(2) attrCount(2) idIdx(2) classIdx(2) styleIdx(2)
            # All at offset 8 (after the 8-byte chunk header). attributeStart is measured from chunk start.
            inner_off = 8
            (line, comment, ns, name, attr_start, attr_size, attr_count, id_idx, class_idx, style_idx) = struct.unpack_from("<IIiIHHHHHH", chunk, inner_off)
            attrs = []
            for i in range(attr_count):
                ap = hdr_sz + attr_start + i * attr_size
                (a_ns, a_name, a_raw, a_size, a_res0, a_type) = struct.unpack_from("<iiiHBB", chunk, ap)
                data_val = struct.unpack_from("<i", chunk, ap+16)[0]
                if a_type == TYPE_STRING:
                    val = strings[data_val] if 0 <= data_val < len(strings) else f"<str#{data_val}>"
                elif a_type == TYPE_INT_BOOLEAN:
                    val = bool(data_val)
                elif a_type in (TYPE_INT_DEC,):
                    val = data_val
                elif a_type == TYPE_INT_HEX:
                    val = f"0x{data_val & 0xFFFFFFFF:08x}"
                elif a_type == TYPE_REFERENCE:
                    val = f"@{data_val & 0xFFFFFFFF:08x}"
                else:
                    val = f"<{a_type:#x}={data_val}>"
                attr_name = strings[a_name] if 0 <= a_name < len(strings) else f"?{a_name}"
                attr_ns = strings[a_ns] if a_ns >= 0 and a_ns < len(strings) else None
                attrs.append((attr_ns, attr_name, val))
            elem_name = strings[name] if 0 <= name < len(strings) else f"?{name}"
            attr_str = "".join(f" {n}={v!r}" for ns,n,v in attrs)
            out.append(f"<{elem_name}{attr_str}>")
        elif typ == RES_XML_END_ELEMENT:
            (line, comment, ns, name) = struct.unpack_from("<IIiI", chunk, 8)
            elem_name = strings[name] if 0 <= name < len(strings) else f"?{name}"
            out.append(f"</{elem_name}>")
        elif typ == RES_XML_CDATA:
            (line, comment, cdata) = struct.unpack_from("<IIi", chunk, 8)
            s = strings[cdata] if 0 <= cdata < len(strings) else ""
            out.append(s)
        # advance
        pos += sz
    return "\n".join(out)

if __name__ == "__main__":
    with open(sys.argv[1], "rb") as f:
        print(parse(f))
