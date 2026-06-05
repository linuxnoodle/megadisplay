package de.mrapp.android.dialog.drawable;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public class CrossFadeTransitionDrawable extends AbstractTransitionDrawable {
    private boolean crossFade;
    private boolean useCrossFade;

    public CrossFadeTransitionDrawable(Drawable[] drawableArr) {
        super(drawableArr);
        this.crossFade = false;
        this.useCrossFade = false;
    }

    public final boolean isCrossFade() {
        return this.crossFade;
    }

    public final void setCrossFade(boolean z) {
        this.crossFade = z;
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onStartTransition() {
        this.useCrossFade = isCrossFade();
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onDraw(float f, Canvas canvas) {
        int iRound = Math.round(f * 255.0f);
        Drawable drawable = getDrawable(0);
        if (this.useCrossFade) {
            drawable.setAlpha(255 - iRound);
        }
        drawable.draw(canvas);
        Drawable drawable2 = getDrawable(1);
        drawable2.setAlpha(iRound);
        drawable2.draw(canvas);
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onEndTransition() {
        getDrawable(0).setAlpha(255);
        getDrawable(1).setAlpha(255);
    }
}
