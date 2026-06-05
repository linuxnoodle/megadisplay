package de.mrapp.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.core.util.Pair;
import androidx.core.view.ViewCompat;
import de.mrapp.util.Condition;
import de.mrapp.util.StreamUtil;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class BitmapUtil {
    private static final int COMPLETE_ARC_ANGLE = 360;

    private static int getSampleSize(Pair<Integer, Integer> pair, int i, int i2) {
        Condition.INSTANCE.ensureNotNull(pair, "The image dimensions may not be null");
        int i3 = 1;
        Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum width must be at least 1");
        Condition.INSTANCE.ensureAtLeast(i2, 1, "The maximum height must be at least 1");
        int iIntValue = pair.first.intValue();
        int iIntValue2 = pair.second.intValue();
        if (iIntValue > i || iIntValue2 > i2) {
            int i4 = iIntValue / 2;
            int i5 = iIntValue2 / 2;
            while (i4 / i3 > i && i5 / i3 > i2) {
                i3 *= 2;
            }
        }
        return i3;
    }

    private BitmapUtil() {
    }

    public static Bitmap clipCircle(Bitmap bitmap) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        return clipCircle(bitmap, bitmap.getWidth() >= bitmap.getHeight() ? bitmap.getHeight() : bitmap.getWidth());
    }

    public static Bitmap clipCircle(Bitmap bitmap, int i) {
        Bitmap bitmapClipSquare = clipSquare(bitmap, i);
        int width = bitmapClipSquare.getWidth();
        float f = width / 2.0f;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, width, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        canvas.drawCircle(f, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmapClipSquare, new Rect(0, 0, width, width), new Rect(0, 0, width, width), paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap clipCircle(Bitmap bitmap, int i, int i2) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        return clipCircle(bitmap, bitmap.getWidth() >= bitmap.getHeight() ? bitmap.getHeight() : bitmap.getWidth(), i, i2);
    }

    public static Bitmap clipCircle(Bitmap bitmap, int i, int i2, int i3) {
        Condition.INSTANCE.ensureAtLeast(i2, 0, "The border width must be at least 0");
        Bitmap bitmapClipCircle = clipCircle(bitmap, i);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapClipCircle.getWidth(), bitmapClipCircle.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f = i2;
        float f2 = f / 2.0f;
        canvas.drawBitmap(bitmapClipCircle, new Rect(0, 0, bitmapClipCircle.getWidth(), bitmapClipCircle.getHeight()), new RectF(f2, f2, bitmapCreateBitmap.getWidth() - f2, bitmapCreateBitmap.getHeight() - f2), (Paint) null);
        if (i2 > 0 && Color.alpha(i3) != 0) {
            Paint paint = new Paint();
            paint.setFilterBitmap(false);
            paint.setAntiAlias(true);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(f);
            paint.setColor(i3);
            canvas.drawArc(new RectF(f2, f2, bitmapCreateBitmap.getWidth() - f2, bitmapCreateBitmap.getWidth() - f2), 0.0f, 360.0f, false, paint);
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap clipSquare(Bitmap bitmap) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        return clipSquare(bitmap, bitmap.getWidth() >= bitmap.getHeight() ? bitmap.getHeight() : bitmap.getWidth());
    }

    public static Bitmap clipSquare(Bitmap bitmap, int i) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Condition.INSTANCE.ensureAtLeast(i, 1, "The size must be at least 1");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width > height) {
            bitmap = Bitmap.createBitmap(bitmap, (width / 2) - (height / 2), 0, height, height);
        } else if (bitmap.getWidth() < bitmap.getHeight()) {
            bitmap = Bitmap.createBitmap(bitmap, 0, (bitmap.getHeight() / 2) - (width / 2), width, width);
        }
        return bitmap.getWidth() != i ? resize(bitmap, i, i) : bitmap;
    }

    public static Bitmap clipSquare(Bitmap bitmap, int i, int i2) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        return clipSquare(bitmap, bitmap.getWidth() >= bitmap.getHeight() ? bitmap.getHeight() : bitmap.getWidth(), i, i2);
    }

    public static Bitmap clipSquare(Bitmap bitmap, int i, int i2, int i3) {
        Condition.INSTANCE.ensureAtLeast(i2, 0, "The border width must be at least 0");
        Bitmap bitmapClipSquare = clipSquare(bitmap, i);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapClipSquare.getWidth(), bitmapClipSquare.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        float f = i2;
        float f2 = f / 2.0f;
        canvas.drawBitmap(bitmapClipSquare, new Rect(0, 0, bitmapClipSquare.getWidth(), bitmapClipSquare.getHeight()), new RectF(f2, f2, bitmapCreateBitmap.getWidth() - f2, bitmapCreateBitmap.getHeight() - f2), (Paint) null);
        if (i2 > 0 && Color.alpha(i3) != 0) {
            Paint paint = new Paint();
            paint.setFilterBitmap(false);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(f);
            paint.setColor(i3);
            canvas.drawRect(new RectF(f2, f2, bitmapCreateBitmap.getWidth() - f2, bitmapCreateBitmap.getWidth() - f2), paint);
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap resize(Bitmap bitmap, int i, int i2) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Condition.INSTANCE.ensureAtLeast(i, 1, "The width must be at least 1");
        Condition.INSTANCE.ensureAtLeast(i2, 1, "The height must be at least 1");
        return Bitmap.createScaledBitmap(bitmap, i, i2, false);
    }

    public static Pair<Bitmap, Bitmap> splitHorizontally(Bitmap bitmap) {
        return splitHorizontally(bitmap, bitmap.getHeight() / 2);
    }

    public static Pair<Bitmap, Bitmap> splitHorizontally(Bitmap bitmap, int i) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Condition.INSTANCE.ensureGreater(i, 0, "The split point must be greater than 0");
        Condition.INSTANCE.ensureSmaller(i, bitmap.getHeight(), "The split point must be smaller than " + bitmap.getHeight());
        return new Pair<>(Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), i), Bitmap.createBitmap(bitmap, 0, i, bitmap.getWidth(), bitmap.getHeight() - i));
    }

    public static Pair<Bitmap, Bitmap> splitVertically(Bitmap bitmap) {
        return splitVertically(bitmap, bitmap.getWidth() / 2);
    }

    public static Pair<Bitmap, Bitmap> splitVertically(Bitmap bitmap, int i) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Condition.INSTANCE.ensureGreater(i, 0, "The split point must be greater than 0");
        Condition.INSTANCE.ensureSmaller(i, bitmap.getWidth(), "The split point must be smaller than " + bitmap.getWidth());
        return new Pair<>(Bitmap.createBitmap(bitmap, 0, 0, i, bitmap.getHeight()), Bitmap.createBitmap(bitmap, i, 0, bitmap.getWidth() - i, bitmap.getHeight()));
    }

    public static Bitmap tile(Bitmap bitmap, int i, int i2) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Condition.INSTANCE.ensureAtLeast(i, 1, "The width must be at least 1");
        Condition.INSTANCE.ensureAtLeast(i2, 1, "The height must be at least 1");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        for (int i3 = 0; i3 < i; i3 += width) {
            for (int i4 = 0; i4 < i; i4 += height) {
                int i5 = i - i3;
                if (i5 >= width) {
                    i5 = width;
                }
                int i6 = i2 - i4;
                if (i6 >= height) {
                    i6 = height;
                }
                canvas.drawBitmap(bitmap, new Rect(0, 0, i5, i6), new Rect(i3, i4, i5 + i3, i6 + i4), (Paint) null);
            }
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap tint(Bitmap bitmap, int i) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint();
        paint.setColor(i);
        canvas.drawRect(new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), paint);
        return bitmap;
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        Bitmap bitmapCreateBitmap;
        Condition.INSTANCE.ensureNotNull(drawable, "The drawable may not be null");
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap textToBitmap(Context context, int i, int i2, int i3, CharSequence charSequence, float f, int i4) {
        return textToBitmap(context, i, i2, i3, charSequence, f, i4, null);
    }

    public static Bitmap textToBitmap(Context context, int i, int i2, int i3, CharSequence charSequence, float f, int i4, Typeface typeface) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(charSequence, "The text may not be null");
        Condition.INSTANCE.ensureNotEmpty(charSequence, "The text may not be empty");
        Condition.INSTANCE.ensureAtLeast(f, 1.0f, "The text size must be at least 1");
        Bitmap bitmapColorToBitmap = colorToBitmap(i, i2, i3);
        Canvas canvas = new Canvas(bitmapColorToBitmap);
        Paint paint = new Paint(1);
        paint.setColor(i4);
        paint.setTextSize(f * DisplayUtil.getDensity(context));
        paint.setTextAlign(Paint.Align.CENTER);
        if (typeface != null) {
            paint.setTypeface(typeface);
        }
        canvas.drawText(charSequence.toString(), bitmapColorToBitmap.getWidth() / 2, (int) ((bitmapColorToBitmap.getHeight() / 2) - ((paint.descent() + paint.ascent()) / 2.0f)), paint);
        return bitmapColorToBitmap;
    }

    public static Bitmap colorToBitmap(int i, int i2, int i3) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The width must be at least 1");
        Condition.INSTANCE.ensureAtLeast(i2, 1, "The height must be at least 1");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColor(i3);
        canvas.drawRect(0.0f, 0.0f, i, i2, paint);
        return bitmapCreateBitmap;
    }

    public static Pair<Integer, Integer> getImageDimensions(File file) throws IOException {
        Condition.INSTANCE.ensureNotNull(file, "The file may not be null");
        Condition.INSTANCE.ensureFileIsNoDirectory(file, "The file must exist and must not be a directory");
        String path = file.getPath();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, options);
        int i = options.outWidth;
        int i2 = options.outHeight;
        if (i == -1 || i2 == -1) {
            throw new IOException("Failed to decode image \"" + path + "\"");
        }
        return Pair.create(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static Pair<Integer, Integer> getImageDimensions(Context context, int i) throws IOException {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(context.getResources(), i, options);
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        if (i2 == -1 || i3 == -1) {
            throw new IOException("Failed to decode image resource with id " + i);
        }
        return Pair.create(Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public static Bitmap loadThumbnail(File file, int i, int i2) throws IOException {
        int sampleSize = getSampleSize(getImageDimensions(file), i, i2);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = sampleSize;
        String absolutePath = file.getAbsolutePath();
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(absolutePath, options);
        if (bitmapDecodeFile != null) {
            return bitmapDecodeFile;
        }
        throw new IOException("Failed to decode image \"" + absolutePath + "\"");
    }

    public static Bitmap loadThumbnail(Context context, int i, int i2, int i3) throws IOException {
        int sampleSize = getSampleSize(getImageDimensions(context, i), i2, i3);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = sampleSize;
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i, options);
        if (bitmapDecodeResource != null) {
            return bitmapDecodeResource;
        }
        throw new IOException("Failed to decode image resource with id " + i);
    }

    public static void compressToFile(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, int i) throws Throwable {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Condition.INSTANCE.ensureNotNull(file, "The file may not be null");
        Condition.INSTANCE.ensureNotNull(compressFormat, "The format may not be null");
        Condition.INSTANCE.ensureAtLeast(i, 0, "The quality must be at least 0");
        Condition.INSTANCE.ensureAtMaximum(i, 100, "The quality must be at maximum 100");
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                if (!bitmap.compress(compressFormat, i, fileOutputStream2)) {
                    throw new IOException("Failed to compress bitmap to file \"" + file + "\" using format " + compressFormat + " and quality " + i);
                }
                StreamUtil.INSTANCE.close(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                StreamUtil.INSTANCE.close(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static byte[] compressToByteArray(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i) throws Throwable {
        Condition.INSTANCE.ensureNotNull(bitmap, "The bitmap may not be null");
        Condition.INSTANCE.ensureNotNull(compressFormat, "The format may not be null");
        Condition.INSTANCE.ensureAtLeast(i, 0, "The quality must be at least 0");
        Condition.INSTANCE.ensureAtMaximum(i, 100, "The quality must be at maximum 100");
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                if (bitmap.compress(compressFormat, i, byteArrayOutputStream2)) {
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    StreamUtil.INSTANCE.close(byteArrayOutputStream2);
                    return byteArray;
                }
                throw new IOException("Failed to compress bitmap to byte array using format " + compressFormat + " and quality " + i);
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                StreamUtil.INSTANCE.close(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
