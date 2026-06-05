package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kelocube.mirrorclient.R;

/* JADX INFO: loaded from: classes.dex */
public final class DialogBillingTrialExpiredBinding implements ViewBinding {
    public final Button buttonBuy;
    public final Button buttonCancel;
    private final LinearLayoutCompat rootView;
    public final TextView textBody;
    public final TextView textDiscount;
    public final TextView textTitle;

    private DialogBillingTrialExpiredBinding(LinearLayoutCompat linearLayoutCompat, Button button, Button button2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayoutCompat;
        this.buttonBuy = button;
        this.buttonCancel = button2;
        this.textBody = textView;
        this.textDiscount = textView2;
        this.textTitle = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    public static DialogBillingTrialExpiredBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogBillingTrialExpiredBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_billing_trial_expired, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogBillingTrialExpiredBinding bind(View view) {
        int i = R.id.button_buy;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.button_cancel;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.text_body;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.text_discount;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R.id.text_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            return new DialogBillingTrialExpiredBinding((LinearLayoutCompat) view, button, button2, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
