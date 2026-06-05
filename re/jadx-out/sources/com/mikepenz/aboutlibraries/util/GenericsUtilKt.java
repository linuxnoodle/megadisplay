package com.mikepenz.aboutlibraries.util;

import android.content.Context;
import com.mikepenz.aboutlibraries.Libs;
import de.mrapp.util.FileUtil;
import java.lang.reflect.Field;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: GenericsUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\u0000\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005*\u00020\u0006H\u0007¢\u0006\u0002\u0010\u0007\u001a\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005*\b\u0012\u0004\u0012\u00020\t0\u0005H\u0007¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"resolveRClass", "Ljava/lang/Class;", "packageName", "", "getFields", "", "Landroid/content/Context;", "(Landroid/content/Context;)[Ljava/lang/String;", "toStringArray", "Ljava/lang/reflect/Field;", "([Ljava/lang/reflect/Field;)[Ljava/lang/String;", "aboutlibraries-core"}, k = 2, mv = {1, 1, 16})
public final class GenericsUtilKt {
    public static final String[] getFields(Context getFields) {
        Field[] fields;
        String[] stringArray;
        Intrinsics.checkParameterIsNotNull(getFields, "$this$getFields");
        String packageName = getFields.getPackageName();
        Intrinsics.checkExpressionValueIsNotNull(packageName, "packageName");
        Class<?> clsResolveRClass = resolveRClass(packageName);
        return (clsResolveRClass == null || (fields = clsResolveRClass.getFields()) == null || (stringArray = toStringArray(fields)) == null) ? new String[0] : stringArray;
    }

    public static final Class<?> resolveRClass(String packageName) {
        Intrinsics.checkParameterIsNotNull(packageName, "packageName");
        do {
            try {
                return Class.forName(packageName + ".R$string");
            } catch (ClassNotFoundException unused) {
                String str = packageName;
                if (StringsKt.contains$default((CharSequence) str, (CharSequence) FileUtil.SUFFIX_SEPARATOR, false, 2, (Object) null)) {
                    int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, FileUtil.SUFFIX_SEPARATOR_CHAR, 0, false, 6, (Object) null);
                    if (packageName == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    packageName = packageName.substring(0, iLastIndexOf$default);
                    Intrinsics.checkExpressionValueIsNotNull(packageName, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                } else {
                    packageName = "";
                }
            }
        } while (packageName.length() > 0);
        return null;
    }

    public static final String[] toStringArray(Field[] toStringArray) {
        Intrinsics.checkParameterIsNotNull(toStringArray, "$this$toStringArray");
        ArrayList arrayList = new ArrayList(toStringArray.length);
        for (Field field : toStringArray) {
            arrayList.add(field.getName());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            String it = (String) obj;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (StringsKt.contains$default((CharSequence) it, (CharSequence) Libs.DEFINE_EXT, false, 2, (Object) null)) {
                arrayList2.add(obj);
            }
        }
        Object[] array = arrayList2.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
