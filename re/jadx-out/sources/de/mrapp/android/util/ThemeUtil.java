package de.mrapp.android.util;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public final class ThemeUtil {
    private static TypedArray obtainStyledAttributes(Context context, int i, int i2) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Resources.Theme theme = context.getTheme();
        int[] iArr = {i2};
        if (i != -1) {
            return theme.obtainStyledAttributes(i, iArr);
        }
        return theme.obtainStyledAttributes(iArr);
    }

    private ThemeUtil() {
    }

    public static int getColor(Context context, int i) {
        return getColor(context, -1, i);
    }

    public static int getColor(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
            try {
                int color = typedArrayObtainStyledAttributes.getColor(0, -1);
                if (color == -1 && (color = ContextCompat.getColor(context, typedArrayObtainStyledAttributes.getResourceId(0, -1))) == 0) {
                    throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
                }
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return color;
            } catch (Throwable th) {
                th = th;
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            typedArrayObtainStyledAttributes = null;
        }
    }

    public static ColorStateList getColorStateList(Context context, int i) {
        return getColorStateList(context, -1, i);
    }

    public static ColorStateList getColorStateList(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(0);
            if (colorStateList != null) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return colorStateList;
            }
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static String getString(Context context, int i) {
        return getString(context, -1, i);
    }

    public static String getString(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
            try {
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (string != null) {
                    if (typedArrayObtainStyledAttributes != null) {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                    return string;
                }
                throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
            } catch (Throwable th) {
                th = th;
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            typedArrayObtainStyledAttributes = null;
        }
    }

    public static CharSequence getText(Context context, int i) {
        return getText(context, -1, i);
    }

    public static CharSequence getText(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            CharSequence text = typedArrayObtainStyledAttributes.getText(0);
            if (text != null) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return text;
            }
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static CharSequence[] getTextArray(Context context, int i) {
        return getTextArray(context, -1, i);
    }

    public static CharSequence[] getTextArray(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            CharSequence[] textArray = typedArrayObtainStyledAttributes.getTextArray(0);
            if (textArray != null) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return textArray;
            }
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static float getDimension(Context context, int i) {
        return getDimension(context, -1, i);
    }

    public static float getDimension(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
            try {
                float dimension = typedArrayObtainStyledAttributes.getDimension(0, -1.0f);
                if (dimension != -1.0f) {
                    if (typedArrayObtainStyledAttributes != null) {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                    return dimension;
                }
                throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
            } catch (Throwable th) {
                th = th;
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            typedArrayObtainStyledAttributes = null;
        }
    }

    public static int getDimensionPixelSize(Context context, int i) {
        return getDimensionPixelSize(context, -1, i);
    }

    public static int getDimensionPixelSize(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
            if (dimensionPixelSize != -1) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return dimensionPixelSize;
            }
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static int getDimensionPixelOffset(Context context, int i) {
        return getDimensionPixelOffset(context, -1, i);
    }

    public static int getDimensionPixelOffset(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
            if (dimensionPixelOffset != -1) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return dimensionPixelOffset;
            }
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static Drawable getDrawable(Context context, int i) {
        return getDrawable(context, -1, i);
    }

    public static Drawable getDrawable(Context context, int i, int i2) throws Throwable {
        TypedArray typedArray = null;
        try {
            TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
            try {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
                Drawable drawable = resourceId != -1 ? AppCompatResources.getDrawable(context, resourceId) : null;
                if (drawable != null) {
                    if (typedArrayObtainStyledAttributes != null) {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                    return drawable;
                }
                throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
            } catch (Throwable th) {
                th = th;
                typedArray = typedArrayObtainStyledAttributes;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static float getFraction(Context context, int i, int i2, int i3) {
        return getFraction(context, -1, i, i2, i3);
    }

    public static float getFraction(Context context, int i, int i2, int i3, int i4) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
            try {
                float fraction = typedArrayObtainStyledAttributes.getFraction(0, i3, i4, -1.0f);
                if (fraction != -1.0f) {
                    if (typedArrayObtainStyledAttributes != null) {
                        typedArrayObtainStyledAttributes.recycle();
                    }
                    return fraction;
                }
                throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i2) + " is not valid");
            } catch (Throwable th) {
                th = th;
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            typedArrayObtainStyledAttributes = null;
        }
    }

    public static boolean getBoolean(Context context, int i, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static boolean getBoolean(Context context, int i, boolean z) {
        return getBoolean(context, -1, i, z);
    }

    public static boolean getBoolean(Context context, int i, int i2, boolean z) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, z);
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return z2;
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static int getInt(Context context, int i, int i2) {
        return getInt(context, -1, i, i2);
    }

    public static int getInt(Context context, int i, int i2, int i3) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            int integer = typedArrayObtainStyledAttributes.getInteger(0, i3);
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return integer;
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static float getFloat(Context context, int i, float f) {
        return getFloat(context, -1, i, f);
    }

    public static float getFloat(Context context, int i, int i2, float f) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            float f2 = typedArrayObtainStyledAttributes.getFloat(0, f);
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return f2;
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static int getResId(Context context, int i, int i2) {
        return getResId(context, -1, i, i2);
    }

    public static int getResId(Context context, int i, int i2, int i3) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        try {
            typedArrayObtainStyledAttributes = obtainStyledAttributes(context, i, i2);
        } catch (Throwable th) {
            th = th;
            typedArrayObtainStyledAttributes = null;
        }
        try {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, i3);
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return resourceId;
        } catch (Throwable th2) {
            th = th2;
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }
}
