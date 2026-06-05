package net.jpountz.xxhash;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractStreamingXXHash64Java extends StreamingXXHash64 {
    int memSize;
    final byte[] memory;
    long totalLen;
    long v1;
    long v2;
    long v3;
    long v4;

    AbstractStreamingXXHash64Java(long j) {
        super(j);
        this.memory = new byte[32];
        reset();
    }

    @Override // net.jpountz.xxhash.StreamingXXHash64
    public void reset() {
        this.v1 = this.seed + 6983438078262162902L;
        this.v2 = this.seed - 4417276706812531889L;
        this.v3 = this.seed;
        this.v4 = this.seed - (-7046029288634856825L);
        this.totalLen = 0L;
        this.memSize = 0;
    }
}
