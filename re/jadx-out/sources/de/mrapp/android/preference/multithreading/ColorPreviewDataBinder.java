package de.mrapp.android.preference.multithreading;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import de.mrapp.android.preference.AbstractColorPickerPreference;
import de.mrapp.android.util.BitmapUtil;
import de.mrapp.android.util.multithreading.AbstractDataBinder;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ColorPreviewDataBinder extends AbstractDataBinder<Bitmap, Integer, ImageView, Void> {
    private Drawable background;
    private int borderColor;
    private int borderWidth;
    private AbstractColorPickerPreference.PreviewShape shape;
    private int size;

    public ColorPreviewDataBinder(Context context, Drawable drawable, AbstractColorPickerPreference.PreviewShape previewShape, int i, int i2, int i3) {
        super(context);
        setBackground(drawable);
        setShape(previewShape);
        setSize(i);
        setBorderWidth(i2);
        setBorderColor(i3);
    }

    public final Drawable getBackground() {
        return this.background;
    }

    public final void setBackground(Drawable drawable) {
        this.background = drawable;
    }

    public final AbstractColorPickerPreference.PreviewShape getShape() {
        return this.shape;
    }

    public final void setShape(AbstractColorPickerPreference.PreviewShape previewShape) {
        Condition.INSTANCE.ensureNotNull(previewShape, "The shape may not be null");
        this.shape = previewShape;
    }

    public final int getSize() {
        return this.size;
    }

    public final void setSize(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The size must be at least 1");
        this.size = i;
    }

    public final int getBorderWidth() {
        return this.borderWidth;
    }

    public final void setBorderWidth(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The border width must be at least 0");
        this.borderWidth = i;
    }

    public final int getBorderColor() {
        return this.borderColor;
    }

    public final void setBorderColor(int i) {
        this.borderColor = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.mrapp.android.util.multithreading.AbstractDataBinder
    public final Bitmap doInBackground(Integer num, Void... voidArr) {
        Bitmap bitmapCreateBitmap;
        if (getBackground() != null) {
            bitmapCreateBitmap = BitmapUtil.tile(BitmapUtil.drawableToBitmap(getBackground()), getSize(), getSize());
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(getSize(), getSize(), Bitmap.Config.ARGB_8888);
        }
        Bitmap bitmapTint = BitmapUtil.tint(bitmapCreateBitmap, num.intValue());
        if (getShape() == AbstractColorPickerPreference.PreviewShape.CIRCLE) {
            return BitmapUtil.clipCircle(bitmapTint, getSize(), getBorderWidth(), getBorderColor());
        }
        return BitmapUtil.clipSquare(bitmapTint, getSize(), getBorderWidth(), getBorderColor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.mrapp.android.util.multithreading.AbstractDataBinder
    public final void onPostExecute(ImageView imageView, Bitmap bitmap, long j, Void... voidArr) {
        imageView.setImageBitmap(bitmap);
    }
}
