package com.kelocube.mirrorclient;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: Input.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\u001a\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"FLAG_BUTTON", "", "FLAG_CONTACT", "FLAG_HOVER", "MS_TICK_TIME", "", "NS_MIN_REPEAT_TIME", "SPEN_ACTION_CANCEL", "SPEN_ACTION_DOWN", "SPEN_ACTION_MOVE", "SPEN_ACTION_UP", "translateSamsungAction", "action", "app_release"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class InputKt {
    private static final int FLAG_BUTTON = 4;
    private static final int FLAG_CONTACT = 1;
    private static final int FLAG_HOVER = 2;
    private static final long MS_TICK_TIME = 50;
    private static final long NS_MIN_REPEAT_TIME = 50000000;
    private static final int SPEN_ACTION_CANCEL = 214;
    private static final int SPEN_ACTION_DOWN = 211;
    private static final int SPEN_ACTION_MOVE = 213;
    private static final int SPEN_ACTION_UP = 212;

    /* JADX INFO: Access modifiers changed from: private */
    public static final int translateSamsungAction(int i) {
        switch (i) {
            case SPEN_ACTION_DOWN /* 211 */:
                return 0;
            case SPEN_ACTION_UP /* 212 */:
                return 1;
            case SPEN_ACTION_MOVE /* 213 */:
                return 2;
            case SPEN_ACTION_CANCEL /* 214 */:
                return 3;
            default:
                return i;
        }
    }
}
