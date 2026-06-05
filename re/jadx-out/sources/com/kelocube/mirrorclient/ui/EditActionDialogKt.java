package com.kelocube.mirrorclient.ui;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.callbacks.DialogCallbackExtKt;
import com.afollestad.materialdialogs.customview.DialogCustomViewExtKt;
import com.kelocube.mirrorclient.databinding.DialogEditActionBinding;
import com.kelocube.mirrorclient.models.Action;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EditActionDialog.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a2\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\t¨\u0006\u000b"}, d2 = {"editActionDialog", "Lcom/afollestad/materialdialogs/MaterialDialog;", "context", "Landroid/content/Context;", "title", "", "action", "", "onAccept", "Lkotlin/Function1;", "", "app_release"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class EditActionDialogKt {
    public static final MaterialDialog editActionDialog(Context context, String title, int i, Function1<? super Integer, Unit> onAccept) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(onAccept, "onAccept");
        Action.ParseContext parseContext = new Action.ParseContext(context);
        MaterialDialog materialDialog = new MaterialDialog(context, null, 2, null);
        DialogEditActionBinding dialogEditActionBindingInflate = DialogEditActionBinding.inflate(materialDialog.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(dialogEditActionBindingInflate, "inflate(...)");
        DialogCustomViewExtKt.customView$default(materialDialog, null, dialogEditActionBindingInflate.getRoot(), true, true, false, false, 49, null);
        DialogCallbackExtKt.onPreShow(materialDialog, new EditActionDialogKt$editActionDialog$1$1(dialogEditActionBindingInflate, title, context, parseContext, i, onAccept, materialDialog));
        materialDialog.show();
        return materialDialog;
    }
}
