package com.kelocube.mirrorclient.models;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: Action.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0010"}, d2 = {"Lcom/kelocube/mirrorclient/models/ActionMenuButton;", "", "()V", "holdAction", "", "getHoldAction", "()I", "setHoldAction", "(I)V", "icon", "getIcon", "setIcon", "tapAction", "getTapAction", "setTapAction", "Companion", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ActionMenuButton {
    public static final int DEFAULT_ICON = 957;
    private int holdAction;
    private int icon = DEFAULT_ICON;
    private int tapAction;

    public final int getIcon() {
        return this.icon;
    }

    public final void setIcon(int i) {
        this.icon = i;
    }

    public final int getTapAction() {
        return this.tapAction;
    }

    public final void setTapAction(int i) {
        this.tapAction = i;
    }

    public final int getHoldAction() {
        return this.holdAction;
    }

    public final void setHoldAction(int i) {
        this.holdAction = i;
    }
}
