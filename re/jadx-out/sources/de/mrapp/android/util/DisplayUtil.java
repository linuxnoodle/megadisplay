package de.mrapp.android.util;

import android.content.Context;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayUtil {
    protected static final float PIXEL_DP_RATIO = 160.0f;

    public enum Orientation {
        PORTRAIT,
        LANDSCAPE,
        SQUARE
    }

    public enum DeviceType {
        PHONE("phone"),
        PHABLET("phablet"),
        TABLET("tablet");

        private String value;

        DeviceType(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }

        public static DeviceType fromValue(String str) {
            for (DeviceType deviceType : values()) {
                if (deviceType.getValue().equals(str)) {
                    return deviceType;
                }
            }
            throw new IllegalArgumentException("Invalid enum value: " + str);
        }
    }

    private DisplayUtil() {
    }

    public static int pixelsToDp(Context context, int i) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return Math.round(i / (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO));
    }

    public static long pixelsToDp(Context context, long j) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return Math.round(j / (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO));
    }

    public static float pixelsToDp(Context context, float f) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return f / (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO);
    }

    public static double pixelsToDp(Context context, double d) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return d / ((double) (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO));
    }

    public static int dpToPixels(Context context, int i) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return Math.round(i * (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO));
    }

    public static long dpToPixels(Context context, long j) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return Math.round(j * (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO));
    }

    public static float dpToPixels(Context context, float f) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return f * (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO);
    }

    public static double dpToPixels(Context context, double d) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return d * ((double) (context.getResources().getDisplayMetrics().densityDpi / PIXEL_DP_RATIO));
    }

    public static Orientation getOrientation(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        int i = context.getResources().getConfiguration().orientation;
        if (i != 0) {
            if (i == 2) {
                return Orientation.LANDSCAPE;
            }
            if (i == 1) {
                return Orientation.PORTRAIT;
            }
            return Orientation.SQUARE;
        }
        int displayWidth = getDisplayWidth(context);
        int displayHeight = getDisplayHeight(context);
        if (displayWidth > displayHeight) {
            return Orientation.LANDSCAPE;
        }
        if (displayWidth < displayHeight) {
            return Orientation.PORTRAIT;
        }
        return Orientation.SQUARE;
    }

    public static DeviceType getDeviceType(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return DeviceType.fromValue(context.getString(R.string.device_type));
    }

    public static int getDisplayWidth(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getDisplayHeight(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getDensity(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        return context.getResources().getDisplayMetrics().density;
    }
}
