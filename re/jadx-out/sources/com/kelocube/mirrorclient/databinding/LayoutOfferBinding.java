package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kelocube.mirrorclient.R;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutOfferBinding implements ViewBinding {
    public final Button buttonPurchase2;
    public final ImageButton imageButton;
    private final LinearLayoutCompat rootView;
    public final TextView textView;
    public final TextView textView3;
    public final TextView textView4;

    private LayoutOfferBinding(LinearLayoutCompat linearLayoutCompat, Button button, ImageButton imageButton, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayoutCompat;
        this.buttonPurchase2 = button;
        this.imageButton = imageButton;
        this.textView = textView;
        this.textView3 = textView2;
        this.textView4 = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    public static LayoutOfferBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutOfferBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_offer, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutOfferBinding bind(View view) {
        int i = R.id.button_purchase2;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.imageButton;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
            if (imageButton != null) {
                i = R.id.textView;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.textView3;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R.id.textView4;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            return new LayoutOfferBinding((LinearLayoutCompat) view, button, imageButton, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
