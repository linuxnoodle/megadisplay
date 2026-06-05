package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kelocube.mirrorclient.R;
import com.kelocube.mirrorclient.ui.InstantAutoCompleteView;

/* JADX INFO: loaded from: classes.dex */
public final class DialogEditActionBinding implements ViewBinding {
    public final Button buttonCancel;
    public final Button buttonOk;
    public final InstantAutoCompleteView keyView;
    public final CheckBox modAlt;
    public final CheckBox modCtrl;
    public final CheckBox modShift;
    private final LinearLayoutCompat rootView;
    public final TextView title;

    private DialogEditActionBinding(LinearLayoutCompat linearLayoutCompat, Button button, Button button2, InstantAutoCompleteView instantAutoCompleteView, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, TextView textView) {
        this.rootView = linearLayoutCompat;
        this.buttonCancel = button;
        this.buttonOk = button2;
        this.keyView = instantAutoCompleteView;
        this.modAlt = checkBox;
        this.modCtrl = checkBox2;
        this.modShift = checkBox3;
        this.title = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    public static DialogEditActionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogEditActionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_edit_action, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogEditActionBinding bind(View view) {
        int i = R.id.button_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.button_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.key_view;
                InstantAutoCompleteView instantAutoCompleteView = (InstantAutoCompleteView) ViewBindings.findChildViewById(view, i);
                if (instantAutoCompleteView != null) {
                    i = R.id.mod_alt;
                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, i);
                    if (checkBox != null) {
                        i = R.id.mod_ctrl;
                        CheckBox checkBox2 = (CheckBox) ViewBindings.findChildViewById(view, i);
                        if (checkBox2 != null) {
                            i = R.id.mod_shift;
                            CheckBox checkBox3 = (CheckBox) ViewBindings.findChildViewById(view, i);
                            if (checkBox3 != null) {
                                i = R.id.title;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    return new DialogEditActionBinding((LinearLayoutCompat) view, button, button2, instantAutoCompleteView, checkBox, checkBox2, checkBox3, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
