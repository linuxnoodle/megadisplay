package de.mrapp.android.dialog.drawable;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
public class ScaleTransitionDrawable extends AbstractTransitionDrawable {
    private Rect bounds;

    public ScaleTransitionDrawable(Drawable[] drawableArr) {
        super(drawableArr);
        this.bounds = null;
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onStartTransition() {
        this.bounds = new Rect(getDrawable(0).getBounds());
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onDraw(float f, Canvas canvas) {
        int iRound;
        int iRound2;
        Drawable drawable;
        int iWidth = this.bounds.width();
        int iHeight = this.bounds.height();
        if (f <= 0.5f) {
            drawable = getDrawable(0);
            float f2 = 1.0f - (f * 2.0f);
            iRound2 = Math.round(iWidth * f2);
            iRound = Math.round(f2 * iHeight);
        } else {
            Drawable drawable2 = getDrawable(1);
            float f3 = (f - 0.5f) * 2.0f;
            int iRound3 = Math.round(iWidth * f3);
            iRound = Math.round(f3 * iHeight);
            iRound2 = iRound3;
            drawable = drawable2;
        }
        int iRound4 = Math.round(this.bounds.left + ((iWidth - iRound2) / 2.0f));
        int iRound5 = Math.round(this.bounds.top + ((iHeight - iRound) / 2.0f));
        drawable.setBounds(iRound4, iRound5, iRound2 + iRound4, iRound + iRound5);
        drawable.draw(canvas);
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onEndTransition() {
        getDrawable(0).setBounds(this.bounds);
        getDrawable(1).setBounds(this.bounds);
    }
}
