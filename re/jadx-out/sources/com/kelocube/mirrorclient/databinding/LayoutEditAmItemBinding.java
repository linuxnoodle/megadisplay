package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kelocube.mirrorclient.R;
import com.woxthebox.draglistview.swipe.ListSwipeItem;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutEditAmItemBinding implements ViewBinding {
    public final TextView actionHold;
    public final TextView actionTap;
    public final ImageButton icon;
    public final CardView itemLayout;
    public final View itemLeft;
    public final View itemRight;
    public final LinearLayoutCompat layoutRoot;
    private final ListSwipeItem rootView;

    private LayoutEditAmItemBinding(ListSwipeItem listSwipeItem, TextView textView, TextView textView2, ImageButton imageButton, CardView cardView, View view, View view2, LinearLayoutCompat linearLayoutCompat) {
        this.rootView = listSwipeItem;
        this.actionHold = textView;
        this.actionTap = textView2;
        this.icon = imageButton;
        this.itemLayout = cardView;
        this.itemLeft = view;
        this.itemRight = view2;
        this.layoutRoot = linearLayoutCompat;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ListSwipeItem getRoot() {
        return this.rootView;
    }

    public static LayoutEditAmItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutEditAmItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_edit_am_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutEditAmItemBinding bind(View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R.id.action_hold;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.action_tap;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.icon;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
                if (imageButton != null) {
                    i = R.id.item_layout;
                    CardView cardView = (CardView) ViewBindings.findChildViewById(view, i);
                    if (cardView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.item_left))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.item_right))) != null) {
                        i = R.id.layout_root;
                        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
                        if (linearLayoutCompat != null) {
                            return new LayoutEditAmItemBinding((ListSwipeItem) view, textView, textView2, imageButton, cardView, viewFindChildViewById, viewFindChildViewById2, linearLayoutCompat);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
