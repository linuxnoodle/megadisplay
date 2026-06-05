package com.maltaisn.icondialog;

import java.text.Normalizer;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: extensions.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0000¨\u0006\u0002"}, d2 = {"normalize", "", "lib_release"}, k = 2, mv = {1, 1, 16})
public final class ExtensionsKt {
    public static final String normalize(String normalize) {
        Intrinsics.checkParameterIsNotNull(normalize, "$this$normalize");
        Locale locale = Locale.ROOT;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.ROOT");
        String lowerCase = normalize.toLowerCase(locale);
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        if (lowerCase == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
        }
        String strNormalize = Normalizer.normalize(StringsKt.trim((CharSequence) lowerCase).toString(), Normalizer.Form.NFKD);
        Intrinsics.checkExpressionValueIsNotNull(strNormalize, "Normalizer.normalize(nor…ed, Normalizer.Form.NFKD)");
        StringBuilder sb = new StringBuilder();
        int length = strNormalize.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = strNormalize.charAt(i);
            if (('a' <= cCharAt && 'z' >= cCharAt) || ('0' <= cCharAt && '9' >= cCharAt)) {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "sb.toString()");
        return string;
    }
}
