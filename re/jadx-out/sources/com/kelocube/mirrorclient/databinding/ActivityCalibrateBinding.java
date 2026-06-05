package com.kelocube.mirrorclient.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.slider.RangeSlider;
import com.kelocube.mirrorclient.R;
import com.kelocube.mirrorclient.ui.CalibrateStylusActivity;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityCalibrateBinding implements ViewBinding {
    public final Button buttonCancel;
    public final Button buttonReset;
    public final Button buttonSave;
    public final LinearLayout layout2;
    public final CalibrateStylusActivity.DrawView layoutRoot;
    private final CalibrateStylusActivity.DrawView rootView;
    public final RangeSlider slider;
    public final TextView textView7;
    public final TextView textView8;
    public final View view4;

    private ActivityCalibrateBinding(CalibrateStylusActivity.DrawView drawView, Button button, Button button2, Button button3, LinearLayout linearLayout, CalibrateStylusActivity.DrawView drawView2, RangeSlider rangeSlider, TextView textView, TextView textView2, View view) {
        this.rootView = drawView;
        this.buttonCancel = button;
        this.buttonReset = button2;
        this.buttonSave = button3;
        this.layout2 = linearLayout;
        this.layoutRoot = drawView2;
        this.slider = rangeSlider;
        this.textView7 = textView;
        this.textView8 = textView2;
        this.view4 = view;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CalibrateStylusActivity.DrawView getRoot() {
        return this.rootView;
    }

    public static ActivityCalibrateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCalibrateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_calibrate, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityCalibrateBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.button_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.button_reset;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.button_save;
                Button button3 = (Button) ViewBindings.findChildViewById(view, i);
                if (button3 != null) {
                    i = R.id.layout2;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        CalibrateStylusActivity.DrawView drawView = (CalibrateStylusActivity.DrawView) view;
                        i = R.id.slider;
                        RangeSlider rangeSlider = (RangeSlider) ViewBindings.findChildViewById(view, i);
                        if (rangeSlider != null) {
                            i = R.id.textView7;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R.id.textView8;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view4))) != null) {
                                    return new ActivityCalibrateBinding(drawView, button, button2, button3, linearLayout, drawView, rangeSlider, textView, textView2, viewFindChildViewById);
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
