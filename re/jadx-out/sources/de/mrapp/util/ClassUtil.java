package de.mrapp.util;

import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: ClassUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006¨\u0006\u0007"}, d2 = {"Lde/mrapp/util/ClassUtil;", "", "()V", "getTruncatedName", "", "clazz", "Ljava/lang/Class;", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class ClassUtil {
    public static final ClassUtil INSTANCE = new ClassUtil();

    private ClassUtil() {
    }

    public final String getTruncatedName(Class<?> clazz) {
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        Condition.INSTANCE.ensureNotNull(clazz, "The class may not be null");
        String fullQualifiedName = clazz.getName();
        Intrinsics.checkExpressionValueIsNotNull(fullQualifiedName, "fullQualifiedName");
        List<String> listSplit = new Regex("\\.").split(fullQualifiedName, 0);
        StringBuilder sb = new StringBuilder();
        int size = listSplit.size();
        for (int i = 0; i < size; i++) {
            if (i != listSplit.size() - 1) {
                String str = listSplit.get(i);
                if (str == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                String strSubstring = str.substring(0, 1);
                Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                sb.append(strSubstring);
                sb.append(FileUtil.SUFFIX_SEPARATOR);
            } else {
                sb.append(listSplit.get(i));
            }
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "stringBuilder.toString()");
        return string;
    }
}
