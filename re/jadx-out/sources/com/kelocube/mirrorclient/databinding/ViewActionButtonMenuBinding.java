package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kelocube.mirrorclient.R;

/* JADX INFO: loaded from: classes.dex */
public final class ViewActionButtonMenuBinding implements ViewBinding {
    public final ImageButton buttonMain;
    private final FrameLayout rootView;
    public final FrameLayout viewRoot;

    private ViewActionButtonMenuBinding(FrameLayout frameLayout, ImageButton imageButton, FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.buttonMain = imageButton;
        this.viewRoot = frameLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ViewActionButtonMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ViewActionButtonMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.view_action_button_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ViewActionButtonMenuBinding bind(View view) {
        int i = R.id.button_main;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new ViewActionButtonMenuBinding(frameLayout, imageButton, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
