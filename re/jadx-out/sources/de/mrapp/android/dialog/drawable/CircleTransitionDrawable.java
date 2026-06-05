package de.mrapp.android.dialog.drawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class CircleTransitionDrawable extends AbstractTransitionDrawable {
    private Bitmap backingBitmap;
    private Canvas backingCanvas;
    private int fromRadius;
    private float fromX;
    private float fromY;
    private final Paint paint;
    private final Paint porterDuffPaint;
    private int radius;
    private Integer x;
    private Integer y;

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onEndTransition() {
    }

    public CircleTransitionDrawable(Drawable[] drawableArr) {
        super(drawableArr);
        this.x = null;
        this.y = null;
        this.radius = 0;
        this.fromX = -1.0f;
        this.fromY = -1.0f;
        this.fromRadius = -1;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.porterDuffPaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    }

    public final Integer getX() {
        return this.x;
    }

    public final void setX(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The horizontal position must be at least 0");
        this.x = Integer.valueOf(i);
    }

    public final Integer getY() {
        return this.y;
    }

    public final void setY(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The vertical position must be at least 0");
        this.y = Integer.valueOf(i);
    }

    public final int getRadius() {
        return this.radius;
    }

    public final void setRadius(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The radius must be at least 0");
        this.radius = i;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.backingBitmap = Bitmap.createBitmap(i3 - i, i4 - i2, Bitmap.Config.ARGB_8888);
        this.backingCanvas = new Canvas(this.backingBitmap);
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onStartTransition() {
        this.fromX = getX() != null ? getX().intValue() : -1.0f;
        this.fromY = getY() != null ? getY().intValue() : -1.0f;
        this.fromRadius = getRadius();
    }

    @Override // de.mrapp.android.dialog.drawable.AbstractTransitionDrawable
    protected final void onDraw(float f, Canvas canvas) {
        float fWidth = this.fromX;
        if (fWidth == -1.0f) {
            fWidth = getBounds().width() / 2.0f;
        }
        float fHeight = this.fromY;
        if (fHeight == -1.0f) {
            fHeight = getBounds().height() / 2.0f;
        }
        double dSqrt = ((double) this.fromRadius) + ((Math.sqrt(Math.pow(Math.max(fWidth, getBounds().width() - fWidth), 2.0d) + Math.pow(Math.max(fHeight, getBounds().height() - fHeight), 2.0d)) - ((double) this.fromRadius)) * ((double) f));
        if (dSqrt > 0.0d) {
            getDrawable(1).draw(canvas);
            this.backingBitmap.eraseColor(0);
            getDrawable(0).draw(this.backingCanvas);
            Canvas canvas2 = this.backingCanvas;
            float fWidth2 = this.fromX;
            if (fWidth2 == -1.0f) {
                fWidth2 = getBounds().width() / 2.0f;
            }
            float fHeight2 = this.fromY;
            if (fHeight2 == -1.0f) {
                fHeight2 = getBounds().height() / 2.0f;
            }
            canvas2.drawCircle(fWidth2, fHeight2, (float) dSqrt, this.porterDuffPaint);
            canvas.drawBitmap(this.backingBitmap, 0.0f, 0.0f, this.paint);
            return;
        }
        getDrawable(0).draw(canvas);
    }
}
