package de.mrapp.android.util;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import de.mrapp.util.Condition;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public final class PermissionUtil {
    private PermissionUtil() {
    }

    public static boolean isPermissionGranted(Context context, String str) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The permission may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The permission may not be empty");
        return Build.VERSION.SDK_INT < 23 || ContextCompat.checkSelfPermission(context, str) == 0;
    }

    public static boolean areAllPermissionsGranted(Context context, String... strArr) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(strArr, "The array may not be null");
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        for (String str : strArr) {
            if (!isPermissionGranted(context, str)) {
                return false;
            }
        }
        return true;
    }

    public static String[] getNotGrantedPermissions(Context context, String... strArr) {
        Condition.INSTANCE.ensureNotNull(strArr, "The array may not be null");
        LinkedList linkedList = new LinkedList();
        for (String str : strArr) {
            if (!isPermissionGranted(context, str)) {
                linkedList.add(str);
            }
        }
        String[] strArr2 = new String[linkedList.size()];
        linkedList.toArray(strArr2);
        return strArr2;
    }

    public static boolean shouldShowRequestPermissionRationale(Activity activity, String... strArr) {
        Condition.INSTANCE.ensureNotNull(activity, "The activity may not be null");
        Condition.INSTANCE.ensureNotNull(strArr, "The array may not be null");
        if (Build.VERSION.SDK_INT >= 23) {
            for (String str : strArr) {
                if (ActivityCompat.shouldShowRequestPermissionRationale(activity, str)) {
                    return true;
                }
            }
        }
        return false;
    }
}
