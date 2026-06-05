package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kelocube.mirrorclient.R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityMainBinding implements ViewBinding {
    public final View backView;
    public final ImageButton buttonAbout;
    public final Button buttonPurchase;
    public final ImageButton buttonSettings;
    public final ImageView imageView;
    public final FrameLayout layoutRoot;
    public final ProgressBar pbarStatus;
    private final FrameLayout rootView;
    public final TextView textStatusDesc;
    public final TextView textStatusLabel;
    public final View view;

    private ActivityMainBinding(FrameLayout frameLayout, View view, ImageButton imageButton, Button button, ImageButton imageButton2, ImageView imageView, FrameLayout frameLayout2, ProgressBar progressBar, TextView textView, TextView textView2, View view2) {
        this.rootView = frameLayout;
        this.backView = view;
        this.buttonAbout = imageButton;
        this.buttonPurchase = button;
        this.buttonSettings = imageButton2;
        this.imageView = imageView;
        this.layoutRoot = frameLayout2;
        this.pbarStatus = progressBar;
        this.textStatusDesc = textView;
        this.textStatusLabel = textView2;
        this.view = view2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_main, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityMainBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.back_view;
        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById2 != null) {
            i = R.id.button_about;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
            if (imageButton != null) {
                i = R.id.button_purchase;
                Button button = (Button) ViewBindings.findChildViewById(view, i);
                if (button != null) {
                    i = R.id.button_settings;
                    ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, i);
                    if (imageButton2 != null) {
                        i = R.id.imageView;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView != null) {
                            FrameLayout frameLayout = (FrameLayout) view;
                            i = R.id.pbar_status;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                            if (progressBar != null) {
                                i = R.id.text_status_desc;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    i = R.id.text_status_label;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view))) != null) {
                                        return new ActivityMainBinding(frameLayout, viewFindChildViewById2, imageButton, button, imageButton2, imageView, frameLayout, progressBar, textView, textView2, viewFindChildViewById);
                                    }
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
