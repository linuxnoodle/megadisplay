package net.jpountz.xxhash;

import de.mrapp.android.util.view.ExpandableGridView;
import java.nio.ByteBuffer;
import kotlin.UByte;
import net.jpountz.util.ByteBufferUtils;
import net.jpountz.util.UnsafeUtils;

/* JADX INFO: loaded from: classes2.dex */
final class XXHash64JavaUnsafe extends XXHash64 {
    public static final XXHash64 INSTANCE = new XXHash64JavaUnsafe();

    XXHash64JavaUnsafe() {
    }

    @Override // net.jpountz.xxhash.XXHash64
    public long hash(byte[] bArr, int i, int i2, long j) {
        int i3;
        int i4;
        long jRotateLeft;
        long jRotateLeft2;
        long jRotateLeft3;
        long jRotateLeft4;
        long jRotateLeft5;
        long j2;
        UnsafeUtils.checkRange(bArr, i, i2);
        int i5 = i + i2;
        long j3 = -4417276706812531889L;
        long j4 = -7046029288634856825L;
        if (i2 >= 32) {
            int i6 = i5 - 32;
            long j5 = j - (-7046029288634856825L);
            long j6 = j - 4417276706812531889L;
            long j7 = j + 6983438078262162902L;
            i4 = i;
            long j8 = j;
            while (true) {
                jRotateLeft2 = Long.rotateLeft(j7 + (UnsafeUtils.readLongLE(bArr, i4) * j3), 31) * j4;
                i3 = i5;
                jRotateLeft3 = Long.rotateLeft(j6 + (UnsafeUtils.readLongLE(bArr, i4 + 8) * j3), 31) * j4;
                jRotateLeft4 = Long.rotateLeft((UnsafeUtils.readLongLE(bArr, i4 + 16) * (-4417276706812531889L)) + j8, 31) * (-7046029288634856825L);
                jRotateLeft5 = Long.rotateLeft(j5 + (UnsafeUtils.readLongLE(bArr, i4 + 24) * (-4417276706812531889L)), 31);
                j2 = jRotateLeft5 * (-7046029288634856825L);
                i4 += 32;
                if (i4 > i6) {
                    break;
                }
                j6 = jRotateLeft3;
                j5 = j2;
                j7 = jRotateLeft2;
                j8 = jRotateLeft4;
                i5 = i3;
                j3 = -4417276706812531889L;
                j4 = -7046029288634856825L;
            }
            jRotateLeft = (((Long.rotateLeft(jRotateLeft5 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ ((((((((((Long.rotateLeft(r3 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ (((Long.rotateLeft(jRotateLeft2, 1) + Long.rotateLeft(jRotateLeft3, 7)) + Long.rotateLeft(jRotateLeft4, 12)) + Long.rotateLeft(j2, 18))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(r7 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(r10 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L)) * (-7046029288634856825L)) - 8796714831421723037L;
        } else {
            i3 = i5;
            i4 = i;
            jRotateLeft = j + 2870177450012600261L;
        }
        long jRotateLeft6 = jRotateLeft + ((long) i2);
        while (i4 <= i3 - 8) {
            jRotateLeft6 = (Long.rotateLeft(jRotateLeft6 ^ (Long.rotateLeft(UnsafeUtils.readLongLE(bArr, i4) * (-4417276706812531889L), 31) * (-7046029288634856825L)), 27) * (-7046029288634856825L)) - 8796714831421723037L;
            i4 += 8;
        }
        if (i4 <= i3 - 4) {
            jRotateLeft6 = (Long.rotateLeft(jRotateLeft6 ^ ((((long) UnsafeUtils.readIntLE(bArr, i4)) & ExpandableGridView.PACKED_POSITION_VALUE_NULL) * (-7046029288634856825L)), 23) * (-4417276706812531889L)) + 1609587929392839161L;
            i4 += 4;
        }
        int i7 = i3;
        while (i4 < i7) {
            jRotateLeft6 = Long.rotateLeft(jRotateLeft6 ^ (((long) (UnsafeUtils.readByte(bArr, i4) & UByte.MAX_VALUE)) * 2870177450012600261L), 11) * (-7046029288634856825L);
            i4++;
        }
        long j9 = (jRotateLeft6 ^ (jRotateLeft6 >>> 33)) * (-4417276706812531889L);
        long j10 = (j9 ^ (j9 >>> 29)) * 1609587929392839161L;
        return j10 ^ (j10 >>> 32);
    }

    @Override // net.jpountz.xxhash.XXHash64
    public long hash(ByteBuffer byteBuffer, int i, int i2, long j) {
        int i3;
        int i4;
        long jRotateLeft;
        long jRotateLeft2;
        long jRotateLeft3;
        long j2;
        long jRotateLeft4;
        long jRotateLeft5;
        long j3;
        if (byteBuffer.hasArray()) {
            return hash(byteBuffer.array(), i + byteBuffer.arrayOffset(), i2, j);
        }
        ByteBufferUtils.checkRange(byteBuffer, i, i2);
        ByteBuffer byteBufferInLittleEndianOrder = ByteBufferUtils.inLittleEndianOrder(byteBuffer);
        int i5 = i + i2;
        long j4 = -4417276706812531889L;
        long j5 = -7046029288634856825L;
        if (i2 >= 32) {
            int i6 = i5 - 32;
            long j6 = j - (-7046029288634856825L);
            long j7 = j - 4417276706812531889L;
            long j8 = j + 6983438078262162902L;
            i4 = i;
            long j9 = j;
            while (true) {
                jRotateLeft2 = Long.rotateLeft(j8 + (ByteBufferUtils.readLongLE(byteBufferInLittleEndianOrder, i4) * j4), 31) * j5;
                jRotateLeft3 = Long.rotateLeft(j7 + (ByteBufferUtils.readLongLE(byteBufferInLittleEndianOrder, i4 + 8) * j4), 31);
                i3 = i5;
                j2 = jRotateLeft3 * j5;
                jRotateLeft4 = Long.rotateLeft((ByteBufferUtils.readLongLE(byteBufferInLittleEndianOrder, i4 + 16) * (-4417276706812531889L)) + j9, 31) * (-7046029288634856825L);
                jRotateLeft5 = Long.rotateLeft(j6 + (ByteBufferUtils.readLongLE(byteBufferInLittleEndianOrder, i4 + 24) * (-4417276706812531889L)), 31);
                j3 = jRotateLeft5 * (-7046029288634856825L);
                i4 += 32;
                if (i4 > i6) {
                    break;
                }
                j6 = j3;
                j8 = jRotateLeft2;
                j9 = jRotateLeft4;
                j4 = -4417276706812531889L;
                j5 = -7046029288634856825L;
                i5 = i3;
                j7 = j2;
            }
            jRotateLeft = (((Long.rotateLeft(jRotateLeft5 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ ((((((((((Long.rotateLeft(r4 * (-2381459717836149591L), 31) * (-7046029288634856825L)) ^ (((Long.rotateLeft(jRotateLeft2, 1) + Long.rotateLeft(j2, 7)) + Long.rotateLeft(jRotateLeft4, 12)) + Long.rotateLeft(j3, 18))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(jRotateLeft3 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L) ^ (Long.rotateLeft(r11 * (-2381459717836149591L), 31) * (-7046029288634856825L))) * (-7046029288634856825L)) - 8796714831421723037L)) * (-7046029288634856825L)) - 8796714831421723037L;
        } else {
            i3 = i5;
            i4 = i;
            jRotateLeft = j + 2870177450012600261L;
        }
        long jRotateLeft6 = jRotateLeft + ((long) i2);
        while (i4 <= i3 - 8) {
            jRotateLeft6 = (Long.rotateLeft(jRotateLeft6 ^ (Long.rotateLeft(ByteBufferUtils.readLongLE(byteBufferInLittleEndianOrder, i4) * (-4417276706812531889L), 31) * (-7046029288634856825L)), 27) * (-7046029288634856825L)) - 8796714831421723037L;
            i4 += 8;
        }
        if (i4 <= i3 - 4) {
            jRotateLeft6 = (Long.rotateLeft(jRotateLeft6 ^ ((((long) ByteBufferUtils.readIntLE(byteBufferInLittleEndianOrder, i4)) & ExpandableGridView.PACKED_POSITION_VALUE_NULL) * (-7046029288634856825L)), 23) * (-4417276706812531889L)) + 1609587929392839161L;
            i4 += 4;
        }
        int i7 = i3;
        while (i4 < i7) {
            jRotateLeft6 = Long.rotateLeft(jRotateLeft6 ^ (((long) (ByteBufferUtils.readByte(byteBufferInLittleEndianOrder, i4) & UByte.MAX_VALUE)) * 2870177450012600261L), 11) * (-7046029288634856825L);
            i4++;
        }
        long j10 = (jRotateLeft6 ^ (jRotateLeft6 >>> 33)) * (-4417276706812531889L);
        long j11 = (j10 ^ (j10 >>> 29)) * 1609587929392839161L;
        return j11 ^ (j11 >>> 32);
    }
}
