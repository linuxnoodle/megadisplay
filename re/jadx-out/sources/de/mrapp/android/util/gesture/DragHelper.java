package de.mrapp.android.util.gesture;

import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class DragHelper {
    private float distance;
    private float dragStartPosition;
    private long dragStartTime;
    private float maxDragDistance;
    private float minDragDistance;
    private boolean reachedThreshold;
    private boolean reset;
    private int threshold;
    private float thresholdReachedPosition;

    private boolean reachedThreshold(float f) {
        return Math.abs(f) >= ((float) this.threshold);
    }

    public DragHelper(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The threshold must be at least 0");
        this.threshold = i;
        this.distance = 0.0f;
        this.thresholdReachedPosition = -1.0f;
        this.dragStartPosition = -1.0f;
        this.dragStartTime = -1L;
        this.reachedThreshold = false;
        this.minDragDistance = 0.0f;
        this.maxDragDistance = 0.0f;
        reset();
    }

    public final int getThreshold() {
        return this.threshold;
    }

    public final void reset() {
        this.reset = true;
    }

    public final void reset(int i) {
        reset();
        this.threshold = i;
    }

    public final boolean isReset() {
        return this.reset;
    }

    public final void update(float f) {
        if (this.reset) {
            this.reset = false;
            this.distance = 0.0f;
            this.thresholdReachedPosition = -1.0f;
            this.dragStartTime = -1L;
            this.dragStartPosition = f;
            this.reachedThreshold = false;
            this.minDragDistance = 0.0f;
            this.maxDragDistance = 0.0f;
        }
        if (!this.reachedThreshold) {
            if (reachedThreshold(f - this.dragStartPosition)) {
                this.dragStartTime = System.currentTimeMillis();
                this.reachedThreshold = true;
                this.thresholdReachedPosition = f;
                return;
            }
            return;
        }
        float f2 = f - this.thresholdReachedPosition;
        float f3 = this.minDragDistance;
        if (f3 != 0.0f && f3 > f2) {
            this.thresholdReachedPosition = f - f3;
            f2 = f3;
        }
        float f4 = this.maxDragDistance;
        if (f4 != 0.0f && f4 < f2) {
            this.thresholdReachedPosition = f - f4;
            f2 = f4;
        }
        this.distance = f2;
    }

    public final float getMaxDragDistance() {
        return this.maxDragDistance;
    }

    public final void setMaxDragDistance(float f) {
        if (f != 0.0f) {
            Condition.INSTANCE.ensureGreater(f, this.threshold, "The maximum drag distance must be greater than " + this.threshold);
        }
        this.maxDragDistance = f;
    }

    public final float getMinDragDistance() {
        return this.minDragDistance;
    }

    public final void setMinDragDistance(float f) {
        if (f != 0.0f) {
            Condition.INSTANCE.ensureSmaller(f, -this.threshold, "The minimum drag distance must be smaller than " + (-this.threshold));
        }
        this.minDragDistance = f;
    }

    public final boolean hasThresholdBeenReached() {
        return this.reachedThreshold;
    }

    public final float getDragDistance() {
        return this.distance;
    }

    public final float getDragStartPosition() {
        return this.dragStartPosition;
    }

    public final float getDragSpeed() {
        if (!hasThresholdBeenReached()) {
            return -1.0f;
        }
        return Math.abs(getDragDistance()) / (System.currentTimeMillis() - this.dragStartTime);
    }
}
