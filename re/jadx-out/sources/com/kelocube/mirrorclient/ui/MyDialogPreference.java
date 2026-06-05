package com.kelocube.mirrorclient.ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.preference.DialogPreference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MyDialogPreference.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Lcom/kelocube/mirrorclient/ui/MyDialogPreference;", "Landroidx/preference/DialogPreference;", "arg0", "Landroid/content/Context;", "(Landroid/content/Context;)V", "arg1", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "arg2", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "arg3", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class MyDialogPreference extends DialogPreference {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyDialogPreference(Context arg0) {
        super(arg0);
        Intrinsics.checkNotNullParameter(arg0, "arg0");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyDialogPreference(Context arg0, AttributeSet arg1) {
        super(arg0, arg1);
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        Intrinsics.checkNotNullParameter(arg1, "arg1");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyDialogPreference(Context arg0, AttributeSet arg1, int i) {
        super(arg0, arg1, i);
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        Intrinsics.checkNotNullParameter(arg1, "arg1");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyDialogPreference(Context arg0, AttributeSet arg1, int i, int i2) {
        super(arg0, arg1, i, i2);
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        Intrinsics.checkNotNullParameter(arg1, "arg1");
    }
}
