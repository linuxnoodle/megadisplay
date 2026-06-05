package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kelocube.mirrorclient.R;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutOnboardingBubbleBinding implements ViewBinding {
    public final Button buttonOk;
    public final ImageView imageView2;
    private final FrameLayout rootView;
    public final TextView textBody;
    public final TextView textView2;

    private LayoutOnboardingBubbleBinding(FrameLayout frameLayout, Button button, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.buttonOk = button;
        this.imageView2 = imageView;
        this.textBody = textView;
        this.textView2 = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LayoutOnboardingBubbleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutOnboardingBubbleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_onboarding_bubble, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutOnboardingBubbleBinding bind(View view) {
        int i = R.id.button_ok;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.imageView2;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R.id.text_body;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.textView2;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new LayoutOnboardingBubbleBinding((FrameLayout) view, button, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
