package com.kelocube.mirrorclient.ui;

import android.text.SpannableStringBuilder;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: compiled from: TextTools.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b¨\u0006\u000b"}, d2 = {"Lcom/kelocube/mirrorclient/ui/TextTools;", "", "()V", "linkify", "", "text", "", "onClick", "Lkotlin/Function1;", "", "", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class TextTools {
    public static final TextTools INSTANCE = new TextTools();

    private TextTools() {
    }

    public final CharSequence linkify(String text, final Function1<? super Integer, Unit> onClick) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int last = 0;
        final int i = 0;
        for (Object obj : Regex.findAll$default(new Regex("%L\\{(.*?)\\}"), text, 0, 2, null)) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            MatchResult matchResult = (MatchResult) obj;
            String strSubstring = text.substring(last, matchResult.getRange().getFirst());
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            spannableStringBuilder.append((CharSequence) strSubstring);
            last = matchResult.getRange().getLast() + 1;
            String str = matchResult.getGroupValues().get(1);
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) str);
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: com.kelocube.mirrorclient.ui.TextTools$linkify$1$1
                @Override // android.text.style.ClickableSpan
                public void onClick(View widget) {
                    Intrinsics.checkNotNullParameter(widget, "widget");
                    onClick.invoke(Integer.valueOf(i));
                }
            }, length, spannableStringBuilder.length(), 33);
            i = i2;
        }
        String strSubstring2 = text.substring(last);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
        spannableStringBuilder.append((CharSequence) strSubstring2);
        return spannableStringBuilder;
    }
}
