package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.kelocube.mirrorclient.R;
import com.woxthebox.draglistview.DragListView;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityEditActionMenuBinding implements ViewBinding {
    public final FloatingActionButton addButton;
    public final DragListView buttonList;
    private final FrameLayout rootView;
    public final View view2;

    private ActivityEditActionMenuBinding(FrameLayout frameLayout, FloatingActionButton floatingActionButton, DragListView dragListView, View view) {
        this.rootView = frameLayout;
        this.addButton = floatingActionButton;
        this.buttonList = dragListView;
        this.view2 = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static ActivityEditActionMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityEditActionMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_edit_action_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityEditActionMenuBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.add_button;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i);
        if (floatingActionButton != null) {
            i = R.id.button_list;
            DragListView dragListView = (DragListView) ViewBindings.findChildViewById(view, i);
            if (dragListView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view2))) != null) {
                return new ActivityEditActionMenuBinding((FrameLayout) view, floatingActionButton, dragListView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
