package de.mrapp.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import androidx.core.view.ViewCompat;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public final class ElevationUtil {
    private static final float BOTTOM_SCALE_FACTOR = 1.0f;
    private static final float FULL_ARC_DEGRESS = 360.0f;
    private static final float LEFT_SCALE_FACTOR = 0.5f;
    private static final int MAX_BOTTOM_ALPHA = 51;
    public static final int MAX_ELEVATION = 16;
    private static final int MAX_LEFT_ALPHA = 49;
    private static final int MAX_RIGHT_ALPHA = 49;
    private static final int MAX_TOP_ALPHA = 15;
    private static final int MIN_BOTTOM_ALPHA = 45;
    private static final int MIN_LEFT_ALPHA = 26;
    private static final int MIN_RIGHT_ALPHA = 26;
    private static final int MIN_TOP_ALPHA = 8;
    private static final float QUARTER_ARC_DEGRESS = 90.0f;
    private static final int REFERENCE_ELEVATION = 10;
    private static final float REFERENCE_SHADOW_WIDTH = 16.5f;
    private static final float RIGHT_SCALE_FACTOR = 0.5f;
    private static final float TOP_SCALE_FACTOR = 0.33333334f;

    public enum Orientation {
        LEFT(0),
        TOP(1),
        RIGHT(2),
        BOTTOM(3),
        TOP_LEFT(4),
        TOP_RIGHT(5),
        BOTTOM_LEFT(6),
        BOTTOM_RIGHT(7);

        private int value;

        Orientation(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }

        public static Orientation fromValue(int i) {
            for (Orientation orientation : values()) {
                if (orientation.getValue() == i) {
                    return orientation;
                }
            }
            throw new IllegalArgumentException("Invalid enum value: " + i);
        }
    }

    private static Bitmap createEdgeShadow(Context context, int i, Orientation orientation, boolean z) {
        if (i == 0) {
            return null;
        }
        float shadowWidth = getShadowWidth(context, i, orientation, z);
        int shadowColor = getShadowColor(i, orientation, z);
        int iRound = (int) Math.round((orientation == Orientation.LEFT || orientation == Orientation.RIGHT) ? Math.ceil(shadowWidth) : 1.0d);
        int iRound2 = (int) Math.round((orientation == Orientation.TOP || orientation == Orientation.BOTTOM) ? Math.ceil(shadowWidth) : 1.0d);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iRound, iRound2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Shader shaderCreateLinearGradient = createLinearGradient(orientation, iRound, iRound2, shadowWidth, shadowColor);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setShader(shaderCreateLinearGradient);
        canvas.drawRect(0.0f, 0.0f, iRound, iRound2, paint);
        return bitmapCreateBitmap;
    }

    private static Bitmap createCornerShadow(Context context, int i, Orientation orientation, boolean z) {
        if (i == 0) {
            return null;
        }
        float horizontalShadowWidth = getHorizontalShadowWidth(context, i, orientation, z);
        float verticalShadowWidth = getVerticalShadowWidth(context, i, orientation, z);
        int horizontalShadowColor = getHorizontalShadowColor(i, orientation, z);
        int verticalShadowColor = getVerticalShadowColor(i, orientation, z);
        int iRound = (int) Math.round(Math.ceil(verticalShadowWidth));
        int iRound2 = (int) Math.round(Math.ceil(horizontalShadowWidth));
        int iMax = Math.max(iRound, iRound2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        RectF cornerBounds = getCornerBounds(orientation, iMax);
        float cornerAngle = getCornerAngle(orientation);
        int[] cornerColors = getCornerColors(orientation, horizontalShadowColor, verticalShadowColor);
        float fWidth = cornerBounds.left + (cornerBounds.width() / 2.0f);
        float fHeight = cornerBounds.top + (cornerBounds.height() / 2.0f);
        float f = cornerAngle / FULL_ARC_DEGRESS;
        paint.setShader(new SweepGradient(fWidth, fHeight, cornerColors, new float[]{f, f + 0.25f}));
        canvas.drawArc(cornerBounds, cornerAngle, QUARTER_ARC_DEGRESS, true, paint);
        paint.setShader(createRadialGradient(orientation, iMax, Math.max(horizontalShadowWidth, verticalShadowWidth)));
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        float f2 = iMax;
        canvas.drawRect(0.0f, 0.0f, f2, f2, paint);
        return BitmapUtil.resize(bitmapCreateBitmap, iRound, iRound2);
    }

    /* JADX INFO: renamed from: de.mrapp.android.util.ElevationUtil$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation;

        static {
            int[] iArr = new int[Orientation.values().length];
            $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation = iArr;
            try {
                iArr[Orientation.TOP_RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[Orientation.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[Orientation.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[Orientation.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[Orientation.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[Orientation.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[Orientation.RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[Orientation.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private static int[] getCornerColors(Orientation orientation, int i, int i2) {
        int i3 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i3 == 1) {
            return new int[]{i, i2};
        }
        if (i3 == 2 || i3 == 3 || i3 == 4) {
            return new int[]{i2, i};
        }
        throw new IllegalArgumentException("Invalid orientation: " + orientation);
    }

    private static RectF getCornerBounds(Orientation orientation, int i) {
        int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i2 == 1) {
            return new RectF(-i, 0.0f, i, i * 2);
        }
        if (i2 == 2) {
            float f = i * 2;
            return new RectF(0.0f, 0.0f, f, f);
        }
        if (i2 == 3) {
            return new RectF(0.0f, -i, i * 2, i);
        }
        if (i2 == 4) {
            float f2 = -i;
            float f3 = i;
            return new RectF(f2, f2, f3, f3);
        }
        throw new IllegalArgumentException("Invalid orientation: " + orientation);
    }

    private static float getHorizontalShadowWidth(Context context, int i, Orientation orientation, boolean z) {
        int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i2 == 1 || i2 == 2) {
            return getShadowWidth(context, i, Orientation.TOP, z);
        }
        if (i2 == 3 || i2 == 4) {
            return getShadowWidth(context, i, Orientation.BOTTOM, z);
        }
        throw new IllegalArgumentException("Invalid orientation: " + orientation);
    }

    private static float getVerticalShadowWidth(Context context, int i, Orientation orientation, boolean z) {
        int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return getShadowWidth(context, i, Orientation.LEFT, z);
            }
            if (i2 != 4) {
                throw new IllegalArgumentException("Invalid orientation: " + orientation);
            }
        }
        return getShadowWidth(context, i, Orientation.RIGHT, z);
    }

    private static float getShadowWidth(Context context, int i, Orientation orientation, boolean z) {
        float f;
        float f2 = (i / 10.0f) * REFERENCE_SHADOW_WIDTH;
        if (z) {
            f = f2 * 1.0f;
        } else {
            int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
            if (i2 == 5) {
                f = f2 * 0.5f;
            } else if (i2 != 6) {
                if (i2 != 7) {
                    if (i2 != 8) {
                        throw new IllegalArgumentException("Invalid orientation: " + orientation);
                    }
                    f = f2 * 1.0f;
                }
                f = f2 * 0.5f;
            } else {
                f = f2 * TOP_SCALE_FACTOR;
            }
        }
        return DisplayUtil.dpToPixels(context, f);
    }

    private static int getHorizontalShadowColor(int i, Orientation orientation, boolean z) {
        int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i2 == 1 || i2 == 2) {
            return getShadowColor(i, Orientation.TOP, z);
        }
        if (i2 == 3 || i2 == 4) {
            return getShadowColor(i, Orientation.BOTTOM, z);
        }
        throw new IllegalArgumentException("Invalid orientation: " + orientation);
    }

    private static int getVerticalShadowColor(int i, Orientation orientation, boolean z) {
        int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return getShadowColor(i, Orientation.LEFT, z);
            }
            if (i2 != 4) {
                throw new IllegalArgumentException("Invalid orientation: " + orientation);
            }
        }
        return getShadowColor(i, Orientation.RIGHT, z);
    }

    private static int getShadowColor(int i, Orientation orientation, boolean z) {
        int shadowAlpha;
        if (z) {
            shadowAlpha = getShadowAlpha(i, 45, 51);
        } else {
            int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
            if (i2 == 5) {
                shadowAlpha = getShadowAlpha(i, 26, 49);
            } else if (i2 == 6) {
                shadowAlpha = getShadowAlpha(i, 8, 15);
            } else if (i2 == 7) {
                shadowAlpha = getShadowAlpha(i, 26, 49);
            } else if (i2 == 8) {
                shadowAlpha = getShadowAlpha(i, 45, 51);
            } else {
                throw new IllegalArgumentException("Invalid orientation: " + orientation);
            }
        }
        return Color.argb(shadowAlpha, 0, 0, 0);
    }

    private static int getShadowAlpha(int i, int i2, int i3) {
        return Math.round(i2 + ((i / 16.0f) * (i3 - i2)));
    }

    private static Shader createLinearGradient(Orientation orientation, int i, int i2, float f, int i3) {
        RectF rectF = new RectF();
        int i4 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i4 == 5) {
            float f2 = i;
            rectF.left = f2;
            rectF.right = f2 - f;
        } else if (i4 == 6) {
            float f3 = i2;
            rectF.top = f3;
            rectF.bottom = f3 - f;
        } else if (i4 == 7) {
            rectF.right = f;
        } else if (i4 == 8) {
            rectF.bottom = f;
        } else {
            throw new IllegalArgumentException("Invalid orientation: " + orientation);
        }
        return new LinearGradient(rectF.left, rectF.top, rectF.right, rectF.bottom, i3, 0, Shader.TileMode.CLAMP);
    }

    private static Shader createRadialGradient(Orientation orientation, int i, float f) {
        PointF pointF = new PointF();
        int i2 = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i2 == 1) {
            pointF.y = i;
        } else if (i2 == 2) {
            float f2 = i;
            pointF.x = f2;
            pointF.y = f2;
        } else if (i2 == 3) {
            pointF.x = i;
        } else if (i2 != 4) {
            throw new IllegalArgumentException("Invalid orientation: " + orientation);
        }
        return new RadialGradient(pointF.x, pointF.y, f, 0, ViewCompat.MEASURED_STATE_MASK, Shader.TileMode.CLAMP);
    }

    private static float getCornerAngle(Orientation orientation) {
        int i = AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()];
        if (i == 1) {
            return 270.0f;
        }
        if (i == 2) {
            return 180.0f;
        }
        if (i == 3) {
            return QUARTER_ARC_DEGRESS;
        }
        if (i == 4) {
            return 0.0f;
        }
        throw new IllegalArgumentException("Invalid orientation: " + orientation);
    }

    private ElevationUtil() {
    }

    public static Bitmap createElevationShadow(Context context, int i, Orientation orientation) {
        return createElevationShadow(context, i, orientation, false);
    }

    public static Bitmap createElevationShadow(Context context, int i, Orientation orientation, boolean z) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureAtLeast(i, 0, "The elevation must be at least 0");
        Condition.INSTANCE.ensureAtMaximum(i, 16, "The elevation must be at maximum 16");
        Condition.INSTANCE.ensureNotNull(orientation, "The orientation may not be null");
        switch (AnonymousClass1.$SwitchMap$de$mrapp$android$util$ElevationUtil$Orientation[orientation.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                return createCornerShadow(context, i, orientation, z);
            case 5:
            case 6:
            case 7:
            case 8:
                return createEdgeShadow(context, i, orientation, z);
            default:
                throw new IllegalArgumentException("Invalid orientation: " + orientation);
        }
    }
}
