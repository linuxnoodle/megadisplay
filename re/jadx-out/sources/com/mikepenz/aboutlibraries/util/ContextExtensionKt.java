package com.mikepenz.aboutlibraries.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContextExtension.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a%\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a \u0010\u0007\u001a\u0004\u0018\u00010\u0005*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u001a\u000e\u0010\b\u001a\u0004\u0018\u00010\t*\u00020\u0002H\u0001\u001a\u000e\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u0002H\u0001\u001a\u0014\u0010\f\u001a\u00020\r*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0005H\u0001\u001a\u0014\u0010\u000f\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0005H\u0001¨\u0006\u0010"}, d2 = {"extractBooleanBundleOrResource", "", "Landroid/content/Context;", "value", "resName", "", "(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;", "extractStringBundleOrResource", "getApplicationInfo", "Landroid/content/pm/ApplicationInfo;", "getPackageInfo", "Landroid/content/pm/PackageInfo;", "getRawResourceId", "", "aString", "getStringResourceByName", "aboutlibraries-core"}, k = 2, mv = {1, 1, 16})
public final class ContextExtensionKt {
    public static final PackageInfo getPackageInfo(Context getPackageInfo) {
        Intrinsics.checkParameterIsNotNull(getPackageInfo, "$this$getPackageInfo");
        try {
            return getPackageInfo.getPackageManager().getPackageInfo(getPackageInfo.getPackageName(), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static final ApplicationInfo getApplicationInfo(Context getApplicationInfo) {
        Intrinsics.checkParameterIsNotNull(getApplicationInfo, "$this$getApplicationInfo");
        try {
            return getApplicationInfo.getPackageManager().getApplicationInfo(getApplicationInfo.getPackageName(), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static final int getRawResourceId(Context getRawResourceId, String aString) {
        Intrinsics.checkParameterIsNotNull(getRawResourceId, "$this$getRawResourceId");
        Intrinsics.checkParameterIsNotNull(aString, "aString");
        return getRawResourceId.getResources().getIdentifier(aString, "raw", getRawResourceId.getPackageName());
    }

    public static final String getStringResourceByName(Context getStringResourceByName, String aString) {
        Intrinsics.checkParameterIsNotNull(getStringResourceByName, "$this$getStringResourceByName");
        Intrinsics.checkParameterIsNotNull(aString, "aString");
        int identifier = getStringResourceByName.getResources().getIdentifier(aString, "string", getStringResourceByName.getPackageName());
        if (identifier == 0) {
            return "";
        }
        String string = getStringResourceByName.getString(identifier);
        Intrinsics.checkExpressionValueIsNotNull(string, "getString(resId)");
        return string;
    }

    public static final Boolean extractBooleanBundleOrResource(Context extractBooleanBundleOrResource, Boolean bool, String resName) {
        Intrinsics.checkParameterIsNotNull(extractBooleanBundleOrResource, "$this$extractBooleanBundleOrResource");
        Intrinsics.checkParameterIsNotNull(resName, "resName");
        if (bool != null) {
            return bool;
        }
        String stringResourceByName = getStringResourceByName(extractBooleanBundleOrResource, resName);
        if (stringResourceByName.length() > 0) {
            try {
                return Boolean.valueOf(Boolean.parseBoolean(stringResourceByName));
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static final String extractStringBundleOrResource(Context extractStringBundleOrResource, String str, String resName) {
        Intrinsics.checkParameterIsNotNull(extractStringBundleOrResource, "$this$extractStringBundleOrResource");
        Intrinsics.checkParameterIsNotNull(resName, "resName");
        if (str != null) {
            return str;
        }
        String stringResourceByName = getStringResourceByName(extractStringBundleOrResource, resName);
        if (stringResourceByName.length() > 0) {
            return stringResourceByName;
        }
        return null;
    }
}
