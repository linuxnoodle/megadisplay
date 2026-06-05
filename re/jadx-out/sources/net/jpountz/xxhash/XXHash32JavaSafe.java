package net.jpountz.xxhash;

import java.nio.ByteBuffer;
import kotlin.UByte;
import net.jpountz.util.ByteBufferUtils;
import net.jpountz.util.SafeUtils;

/* JADX INFO: loaded from: classes2.dex */
final class XXHash32JavaSafe extends XXHash32 {
    public static final XXHash32 INSTANCE = new XXHash32JavaSafe();

    XXHash32JavaSafe() {
    }

    @Override // net.jpountz.xxhash.XXHash32
    public int hash(byte[] bArr, int i, int i2, int i3) {
        int iRotateLeft;
        SafeUtils.checkRange(bArr, i, i2);
        int i4 = i + i2;
        if (i2 >= 16) {
            int i5 = i4 - 16;
            int iRotateLeft2 = 606290984 + i3;
            int iRotateLeft3 = i3 - 2048144777;
            int iRotateLeft4 = i3 - (-1640531535);
            do {
                iRotateLeft2 = Integer.rotateLeft(iRotateLeft2 + (SafeUtils.readIntLE(bArr, i) * (-2048144777)), 13) * (-1640531535);
                iRotateLeft3 = Integer.rotateLeft(iRotateLeft3 + (SafeUtils.readIntLE(bArr, i + 4) * (-2048144777)), 13) * (-1640531535);
                i3 = Integer.rotateLeft(i3 + (SafeUtils.readIntLE(bArr, i + 8) * (-2048144777)), 13) * (-1640531535);
                iRotateLeft4 = Integer.rotateLeft(iRotateLeft4 + (SafeUtils.readIntLE(bArr, i + 12) * (-2048144777)), 13) * (-1640531535);
                i += 16;
            } while (i <= i5);
            iRotateLeft = Integer.rotateLeft(iRotateLeft2, 1) + Integer.rotateLeft(iRotateLeft3, 7) + Integer.rotateLeft(i3, 12) + Integer.rotateLeft(iRotateLeft4, 18);
        } else {
            iRotateLeft = i3 + 374761393;
        }
        int iRotateLeft5 = iRotateLeft + i2;
        while (i <= i4 - 4) {
            iRotateLeft5 = Integer.rotateLeft(iRotateLeft5 + (SafeUtils.readIntLE(bArr, i) * (-1028477379)), 17) * 668265263;
            i += 4;
        }
        while (i < i4) {
            iRotateLeft5 = Integer.rotateLeft(iRotateLeft5 + ((SafeUtils.readByte(bArr, i) & UByte.MAX_VALUE) * 374761393), 11) * (-1640531535);
            i++;
        }
        int i6 = ((iRotateLeft5 >>> 15) ^ iRotateLeft5) * (-2048144777);
        int i7 = (i6 ^ (i6 >>> 13)) * (-1028477379);
        return i7 ^ (i7 >>> 16);
    }

    @Override // net.jpountz.xxhash.XXHash32
    public int hash(ByteBuffer byteBuffer, int i, int i2, int i3) {
        int iRotateLeft;
        if (byteBuffer.hasArray()) {
            return hash(byteBuffer.array(), i + byteBuffer.arrayOffset(), i2, i3);
        }
        ByteBufferUtils.checkRange(byteBuffer, i, i2);
        ByteBuffer byteBufferInLittleEndianOrder = ByteBufferUtils.inLittleEndianOrder(byteBuffer);
        int i4 = i + i2;
        if (i2 >= 16) {
            int i5 = i4 - 16;
            int iRotateLeft2 = 606290984 + i3;
            int iRotateLeft3 = i3 - 2048144777;
            int iRotateLeft4 = i3 - (-1640531535);
            do {
                iRotateLeft2 = Integer.rotateLeft(iRotateLeft2 + (ByteBufferUtils.readIntLE(byteBufferInLittleEndianOrder, i) * (-2048144777)), 13) * (-1640531535);
                iRotateLeft3 = Integer.rotateLeft(iRotateLeft3 + (ByteBufferUtils.readIntLE(byteBufferInLittleEndianOrder, i + 4) * (-2048144777)), 13) * (-1640531535);
                i3 = Integer.rotateLeft(i3 + (ByteBufferUtils.readIntLE(byteBufferInLittleEndianOrder, i + 8) * (-2048144777)), 13) * (-1640531535);
                iRotateLeft4 = Integer.rotateLeft(iRotateLeft4 + (ByteBufferUtils.readIntLE(byteBufferInLittleEndianOrder, i + 12) * (-2048144777)), 13) * (-1640531535);
                i += 16;
            } while (i <= i5);
            iRotateLeft = Integer.rotateLeft(iRotateLeft2, 1) + Integer.rotateLeft(iRotateLeft3, 7) + Integer.rotateLeft(i3, 12) + Integer.rotateLeft(iRotateLeft4, 18);
        } else {
            iRotateLeft = i3 + 374761393;
        }
        int iRotateLeft5 = iRotateLeft + i2;
        while (i <= i4 - 4) {
            iRotateLeft5 = Integer.rotateLeft(iRotateLeft5 + (ByteBufferUtils.readIntLE(byteBufferInLittleEndianOrder, i) * (-1028477379)), 17) * 668265263;
            i += 4;
        }
        while (i < i4) {
            iRotateLeft5 = Integer.rotateLeft(iRotateLeft5 + ((ByteBufferUtils.readByte(byteBufferInLittleEndianOrder, i) & UByte.MAX_VALUE) * 374761393), 11) * (-1640531535);
            i++;
        }
        int i6 = ((iRotateLeft5 >>> 15) ^ iRotateLeft5) * (-2048144777);
        int i7 = (i6 ^ (i6 >>> 13)) * (-1028477379);
        return i7 ^ (i7 >>> 16);
    }
}
