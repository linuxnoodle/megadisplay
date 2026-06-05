package com.kelocube.mirrorclient;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: PenEmulator.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eJ\u001e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u0019\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcom/kelocube/mirrorclient/PenEmulator;", "", "()V", "count", "", "getCount", "()I", "setCount", "(I)V", "head", "getHead", "setHead", "sizes", "", "", "getSizes", "()[Ljava/lang/Float;", "[Ljava/lang/Float;", "beginTouch", "", "getPressure", "size", "map", "x", "x0", "x1", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PenEmulator {
    private int count;
    private int head;
    private final Float[] sizes;

    public final float map(float x, float x0, float x1) {
        return (x - x0) / (x1 - x0);
    }

    public PenEmulator() {
        Float[] fArr = new Float[20];
        for (int i = 0; i < 20; i++) {
            fArr[i] = Float.valueOf(0.0f);
        }
        this.sizes = fArr;
    }

    public final Float[] getSizes() {
        return this.sizes;
    }

    public final int getCount() {
        return this.count;
    }

    public final void setCount(int i) {
        this.count = i;
    }

    public final int getHead() {
        return this.head;
    }

    public final void setHead(int i) {
        this.head = i;
    }

    public final void beginTouch() {
        this.count = 0;
        this.head = 0;
    }

    public final float getPressure(float size) {
        this.sizes[this.head] = Float.valueOf(size);
        this.head = (this.head + 1) % this.sizes.length;
        int iMin = Math.min(this.count + 1, 10);
        this.count = iMin;
        float fFloatValue = 0.0f;
        for (int i = 0; i < iMin; i++) {
            fFloatValue += this.sizes[i].floatValue();
        }
        int i2 = this.count;
        float f = fFloatValue / i2;
        if (i2 <= 2) {
            return 0.0f;
        }
        return map(f, 0.014f, 0.03f);
    }
}
