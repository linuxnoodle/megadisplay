package de.mrapp.util;

import kotlin.Metadata;
import kotlin.text.Regex;

/* JADX INFO: compiled from: TextUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\t\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\n"}, d2 = {"Lde/mrapp/util/TextUtil;", "", "()V", "hasNoText", "", "text", "", "hasText", "isEmpty", "isNotEmpty", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class TextUtil {
    public static final TextUtil INSTANCE = new TextUtil();

    private TextUtil() {
    }

    public final boolean isEmpty(CharSequence text) {
        return text == null || text.length() == 0;
    }

    public final boolean isNotEmpty(CharSequence text) {
        return !isEmpty(text);
    }

    public final boolean hasNoText(CharSequence text) {
        return text == null || text.length() == 0 || new Regex("\\s+").matches(text);
    }

    public final boolean hasText(CharSequence text) {
        return !hasNoText(text);
    }
}
