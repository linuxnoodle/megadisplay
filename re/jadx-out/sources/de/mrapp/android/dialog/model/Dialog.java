package de.mrapp.android.dialog.model;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public interface Dialog {
    public static final int MATCH_PARENT = -1;
    public static final int WRAP_CONTENT = -2;

    public interface Gravity {
        public static final int BOTTOM = 4096;
        public static final int CENTER = 17;
        public static final int CENTER_HORIZONTAL = 1;
        public static final int CENTER_VERTICAL = 16;
        public static final int LEFT = 65536;
        public static final int RIGHT = 1048576;
        public static final int TOP = 256;
    }

    Context getContext();
}
