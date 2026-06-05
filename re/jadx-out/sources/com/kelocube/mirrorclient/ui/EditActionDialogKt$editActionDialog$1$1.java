package com.kelocube.mirrorclient.ui;

import android.R;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.ArrayAdapter;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.afollestad.materialdialogs.MaterialDialog;
import com.kelocube.mirrorclient.databinding.DialogEditActionBinding;
import com.kelocube.mirrorclient.models.Action;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: EditActionDialog.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lcom/afollestad/materialdialogs/MaterialDialog;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
final class EditActionDialogKt$editActionDialog$1$1 extends Lambda implements Function1<MaterialDialog, Unit> {
    final /* synthetic */ int $action;
    final /* synthetic */ DialogEditActionBinding $binding;
    final /* synthetic */ Context $context;
    final /* synthetic */ Function1<Integer, Unit> $onAccept;
    final /* synthetic */ Action.ParseContext $parseContext;
    final /* synthetic */ MaterialDialog $this_show;
    final /* synthetic */ String $title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    EditActionDialogKt$editActionDialog$1$1(DialogEditActionBinding dialogEditActionBinding, String str, Context context, Action.ParseContext parseContext, int i, Function1<? super Integer, Unit> function1, MaterialDialog materialDialog) {
        super(1);
        this.$binding = dialogEditActionBinding;
        this.$title = str;
        this.$context = context;
        this.$parseContext = parseContext;
        this.$action = i;
        this.$onAccept = function1;
        this.$this_show = materialDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog) {
        invoke2(materialDialog);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(MaterialDialog it) {
        Intrinsics.checkNotNullParameter(it, "it");
        final DialogEditActionBinding dialogEditActionBinding = this.$binding;
        String str = this.$title;
        Context context = this.$context;
        final Action.ParseContext parseContext = this.$parseContext;
        int i = this.$action;
        final Function1<Integer, Unit> function1 = this.$onAccept;
        final MaterialDialog materialDialog = this.$this_show;
        dialogEditActionBinding.title.setText(str);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_dropdown_item_1line);
        String[] actions = Action.INSTANCE.getActions(parseContext);
        arrayAdapter.addAll(Arrays.copyOf(actions, actions.length));
        final Function1<Integer, Unit> function12 = new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.EditActionDialogKt$editActionDialog$1$1$1$updateMods$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i2) {
                boolean zCanModify = Action.INSTANCE.canModify(i2);
                DialogEditActionBinding dialogEditActionBinding2 = dialogEditActionBinding;
                dialogEditActionBinding2.modCtrl.setEnabled(zCanModify);
                dialogEditActionBinding2.modAlt.setEnabled(zCanModify);
                dialogEditActionBinding2.modShift.setEnabled(zCanModify);
            }
        };
        dialogEditActionBinding.keyView.setAdapter(arrayAdapter);
        dialogEditActionBinding.keyView.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditActionDialogKt$editActionDialog$1$1.invoke$lambda$4$lambda$0(dialogEditActionBinding, view);
            }
        });
        InstantAutoCompleteView keyView = dialogEditActionBinding.keyView;
        Intrinsics.checkNotNullExpressionValue(keyView, "keyView");
        keyView.addTextChangedListener(new TextWatcher() { // from class: com.kelocube.mirrorclient.ui.EditActionDialogKt$editActionDialog$1$1$invoke$lambda$4$$inlined$doOnTextChanged$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence text, int start, int before, int count) {
                function12.invoke(Integer.valueOf(Action.INSTANCE.parse(parseContext, String.valueOf(text), dialogEditActionBinding.modCtrl.isChecked(), dialogEditActionBinding.modAlt.isChecked(), dialogEditActionBinding.modShift.isChecked())));
            }
        });
        Action.INSTANCE.decompose(parseContext, i, new Function4<String, Boolean, Boolean, Boolean, Unit>() { // from class: com.kelocube.mirrorclient.ui.EditActionDialogKt$editActionDialog$1$1$1$3
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(String str2, Boolean bool, Boolean bool2, Boolean bool3) {
                invoke(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(String name, boolean z, boolean z2, boolean z3) {
                Intrinsics.checkNotNullParameter(name, "name");
                dialogEditActionBinding.keyView.setText(name);
                dialogEditActionBinding.modCtrl.setChecked(z);
                dialogEditActionBinding.modAlt.setChecked(z2);
                dialogEditActionBinding.modShift.setChecked(z3);
            }
        });
        dialogEditActionBinding.buttonOk.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditActionDialogKt$editActionDialog$1$1.invoke$lambda$4$lambda$2(function1, parseContext, dialogEditActionBinding, materialDialog, view);
            }
        });
        dialogEditActionBinding.buttonCancel.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.EditActionDialogKt$editActionDialog$1$1$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditActionDialogKt$editActionDialog$1$1.invoke$lambda$4$lambda$3(materialDialog, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$4$lambda$0(DialogEditActionBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.keyView.showDropDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$4$lambda$2(Function1 onAccept, Action.ParseContext parseContext, DialogEditActionBinding this_apply, MaterialDialog this_show, View view) {
        Intrinsics.checkNotNullParameter(onAccept, "$onAccept");
        Intrinsics.checkNotNullParameter(parseContext, "$parseContext");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this_show, "$this_show");
        onAccept.invoke(Integer.valueOf(Action.INSTANCE.parse(parseContext, this_apply.keyView.getText().toString(), this_apply.modCtrl.isChecked(), this_apply.modAlt.isChecked(), this_apply.modShift.isChecked())));
        this_show.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$4$lambda$3(MaterialDialog this_show, View view) {
        Intrinsics.checkNotNullParameter(this_show, "$this_show");
        this_show.dismiss();
    }
}
