package net.jpountz.xxhash;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractStreamingXXHash32Java extends StreamingXXHash32 {
    int memSize;
    final byte[] memory;
    long totalLen;
    int v1;
    int v2;
    int v3;
    int v4;

    AbstractStreamingXXHash32Java(int i) {
        super(i);
        this.memory = new byte[16];
        reset();
    }

    @Override // net.jpountz.xxhash.StreamingXXHash32
    public void reset() {
        this.v1 = this.seed + 606290984;
        this.v2 = this.seed - 2048144777;
        this.v3 = this.seed;
        this.v4 = this.seed - (-1640531535);
        this.totalLen = 0L;
        this.memSize = 0;
    }
}
