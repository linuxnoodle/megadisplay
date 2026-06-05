package net.jpountz.lz4;

/* JADX INFO: loaded from: classes2.dex */
final class LZ4JavaSafeSafeDecompressor extends LZ4SafeDecompressor {
    public static final LZ4SafeDecompressor INSTANCE = new LZ4JavaSafeSafeDecompressor();

    LZ4JavaSafeSafeDecompressor() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00bf, code lost:
    
        if (r12 > r5) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c3, code lost:
    
        if ((r6 + r9) != r1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c5, code lost:
    
        net.jpountz.lz4.LZ4SafeUtils.safeArraycopy(r18, r6, r21, r7, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c9, code lost:
    
        return r12 - r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00db, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("Malformed input at " + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e1, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception();
     */
    @Override // net.jpountz.lz4.LZ4SafeDecompressor, net.jpountz.lz4.LZ4UnknownSizeDecompressor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int decompress(byte[] r18, int r19, int r20, byte[] r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.jpountz.lz4.LZ4JavaSafeSafeDecompressor.decompress(byte[], int, int, byte[], int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f1, code lost:
    
        if (r12 > r6) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f5, code lost:
    
        if ((r0 + r9) != r3) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f7, code lost:
    
        net.jpountz.lz4.LZ4ByteBufferUtils.safeArraycopy(r2, r0, r4, r7, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00fb, code lost:
    
        return r12 - r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x010d, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception("Malformed input at " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0113, code lost:
    
        throw new net.jpountz.lz4.LZ4Exception();
     */
    @Override // net.jpountz.lz4.LZ4SafeDecompressor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int decompress(java.nio.ByteBuffer r18, int r19, int r20, java.nio.ByteBuffer r21, int r22, int r23) {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.jpountz.lz4.LZ4JavaSafeSafeDecompressor.decompress(java.nio.ByteBuffer, int, int, java.nio.ByteBuffer, int, int):int");
    }
}
