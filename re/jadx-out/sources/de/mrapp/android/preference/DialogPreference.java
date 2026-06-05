package de.mrapp.android.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.MaterialDialog;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.animation.DialogAnimation;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.util.view.AbstractSavedState;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class DialogPreference extends Preference implements DialogInterface.OnClickListener, DialogInterface.OnShowListener, DialogInterface.OnDismissListener, DialogInterface.OnCancelListener, DialogInterface.OnKeyListener {
    private View customDialogButtonBarView;
    private int customDialogButtonBarViewId;
    private View customDialogHeaderView;
    private int customDialogHeaderViewId;
    private View customDialogMessageView;
    private int customDialogMessageViewId;
    private View customDialogTitleView;
    private int customDialogTitleViewId;
    private AbstractButtonBarDialog dialog;
    private Drawable dialogBackground;
    private Bitmap dialogBackgroundBitmap;
    private int dialogBackgroundColor;
    private int dialogBackgroundId;
    private ColorStateList dialogButtonTextColor;
    private Typeface dialogButtonTypeface;
    private DialogAnimation dialogCancelAnimation;
    private DialogAnimation dialogDismissAnimation;
    private int dialogDividerColor;
    private int dialogDividerMargin;
    private boolean[] dialogFitsSystemWindows;
    private boolean dialogFullscreen;
    private int dialogGravity;
    private Drawable dialogHeaderBackground;
    private Bitmap dialogHeaderBackgroundBitmap;
    private int dialogHeaderBackgroundColor;
    private int dialogHeaderBackgroundId;
    private Drawable dialogHeaderIcon;
    private Bitmap dialogHeaderIconBitmap;
    private int dialogHeaderIconId;
    private ColorStateList dialogHeaderIconTintList;
    private PorterDuff.Mode dialogHeaderIconTintMode;
    private int dialogHeight;
    private Drawable dialogIcon;
    private Bitmap dialogIconBitmap;
    private int dialogIconId;
    private ColorStateList dialogIconTintList;
    private PorterDuff.Mode dialogIconTintMode;
    private int[] dialogMargin;
    private int dialogMaxHeight;
    private int dialogMaxWidth;
    private CharSequence dialogMessage;
    private int dialogMessageColor;
    private Typeface dialogMessageTypeface;
    private int[] dialogPadding;
    private boolean dialogResultPositive;
    private ScrollableArea dialogScrollableArea;
    private DialogAnimation dialogShowAnimation;
    private int dialogTheme;
    private CharSequence dialogTitle;
    private int dialogTitleColor;
    private Typeface dialogTitleTypeface;
    private int dialogWidth;
    private Drawable dialogWindowBackground;
    private Bitmap dialogWindowBackgroundBitmap;
    private int dialogWindowBackgroundId;
    private CharSequence negativeButtonText;
    private DialogInterface.OnCancelListener onCancelListener;
    private DialogInterface.OnClickListener onClickListener;
    private DialogInterface.OnDismissListener onDismissListener;
    private DialogInterface.OnKeyListener onKeyListener;
    private DialogInterface.OnShowListener onShowListener;
    private CharSequence positiveButtonText;
    private boolean showDialogButtonBarDivider;
    private boolean showDialogDividersOnScroll;
    private boolean showDialogHeader;
    private boolean showValueAsSummary;

    protected boolean needInputMethod() {
        return false;
    }

    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
    }

    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
    }

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.DialogPreference.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public Bundle dialogState;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.dialogState = parcel.readBundle(getClass().getClassLoader());
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.dialogState);
        }
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.DialogPreference, i, i2);
        try {
            obtainDialogTheme(typedArrayObtainStyledAttributes);
            obtainDialogFullscreen(typedArrayObtainStyledAttributes);
            obtainDialogGravity(typedArrayObtainStyledAttributes);
            obtainDialogWidth(typedArrayObtainStyledAttributes);
            obtainDialogHeight(typedArrayObtainStyledAttributes);
            obtainDialogMaxWidth(typedArrayObtainStyledAttributes);
            obtainDialogMaxHeight(typedArrayObtainStyledAttributes);
            obtainDialogMargin(typedArrayObtainStyledAttributes);
            obtainDialogPadding(typedArrayObtainStyledAttributes);
            obtainDialogFitsSystemWindows(typedArrayObtainStyledAttributes);
            obtainDialogTitle(typedArrayObtainStyledAttributes);
            obtainDialogMessage(typedArrayObtainStyledAttributes);
            obtainDialogIcon(typedArrayObtainStyledAttributes);
            obtainDialogIconTintList(typedArrayObtainStyledAttributes);
            obtainPositiveButtonText(typedArrayObtainStyledAttributes);
            obtainNegativeButtonText(typedArrayObtainStyledAttributes);
            obtainDialogTitleColor(typedArrayObtainStyledAttributes);
            obtainDialogMessageColor(typedArrayObtainStyledAttributes);
            obtainDialogButtonTextColor(typedArrayObtainStyledAttributes);
            obtainDialogBackground(typedArrayObtainStyledAttributes);
            obtainDialogWindowBackground(typedArrayObtainStyledAttributes);
            obtainShowValueAsSummary(typedArrayObtainStyledAttributes);
            obtainShowDialogHeader(typedArrayObtainStyledAttributes);
            obtainDialogHeaderBackground(typedArrayObtainStyledAttributes);
            obtainDialogHeaderIcon(typedArrayObtainStyledAttributes);
            obtainDialogHeaderIconTintList(typedArrayObtainStyledAttributes);
            obtainShowDialogButtonBarDivider(typedArrayObtainStyledAttributes);
            obtainDialogButtonBarDividerColor(typedArrayObtainStyledAttributes);
            obtainDialogButtonBarDividerMargin(typedArrayObtainStyledAttributes);
            obtainShowDialogDividersOnScroll(typedArrayObtainStyledAttributes);
            obtainDialogScrollableArea(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainDialogTheme(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.DialogPreference_dialogThemeResource, 0);
        if (resourceId == 0) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(R.attr.preferenceDialogTheme, typedValue, true);
            resourceId = typedValue.resourceId;
        }
        if (resourceId == 0) {
            resourceId = R.style.MaterialDialog_Light;
        }
        this.dialogTheme = resourceId;
    }

    private void obtainDialogFullscreen(TypedArray typedArray) {
        setDialogFullscreen(typedArray.getBoolean(R.styleable.DialogPreference_dialogFullscreen, false));
    }

    private void obtainDialogGravity(TypedArray typedArray) {
        setDialogGravity(typedArray.getInteger(R.styleable.DialogPreference_dialogGravity, -1));
    }

    private void obtainDialogWidth(TypedArray typedArray) {
        int integer;
        try {
            integer = typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogWidth, 0);
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            integer = typedArray.getInteger(0, 0);
        }
        if (integer != 0) {
            setDialogWidth(integer);
        }
    }

    private void obtainDialogHeight(TypedArray typedArray) {
        int integer;
        try {
            integer = typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogHeight, 0);
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            integer = typedArray.getInteger(0, 0);
        }
        if (integer != 0) {
            setDialogHeight(integer);
        }
    }

    private void obtainDialogMaxWidth(TypedArray typedArray) {
        try {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogMaxWidth, -1);
            if (dimensionPixelSize != -1) {
                setDialogMaxWidth(dimensionPixelSize);
            }
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
        }
    }

    private void obtainDialogMaxHeight(TypedArray typedArray) {
        try {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogMaxHeight, -1);
            if (dimensionPixelSize != -1) {
                setDialogMaxHeight(dimensionPixelSize);
            }
        } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
        }
    }

    private void obtainDialogMargin(TypedArray typedArray) {
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.dialog_horizontal_margin);
        int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.dialog_vertical_margin);
        setDialogMargin(typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogMarginLeft, dimensionPixelSize), typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogMarginTop, dimensionPixelSize2), typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogMarginRight, dimensionPixelSize), typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogMarginBottom, dimensionPixelSize2));
    }

    private void obtainDialogPadding(TypedArray typedArray) {
        setDialogPadding(typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogPaddingLeft, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_left_padding)), typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogPaddingTop, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_top_padding)), typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogPaddingRight, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_right_padding)), typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogPaddingBottom, getContext().getResources().getDimensionPixelSize(R.dimen.dialog_bottom_padding)));
    }

    private void obtainDialogFitsSystemWindows(TypedArray typedArray) {
        setDialogFitsSystemWindows(typedArray.getBoolean(R.styleable.DialogPreference_dialogFitsSystemWindowsLeft, true), typedArray.getBoolean(R.styleable.DialogPreference_dialogFitsSystemWindowsTop, true), typedArray.getBoolean(R.styleable.DialogPreference_dialogFitsSystemWindowsRight, true), typedArray.getBoolean(R.styleable.DialogPreference_dialogFitsSystemWindowsBottom, true));
    }

    private void obtainDialogTitle(TypedArray typedArray) {
        CharSequence text = typedArray.getText(R.styleable.DialogPreference_android_dialogTitle);
        if (text == null) {
            text = getTitle();
        }
        setDialogTitle(text);
    }

    private void obtainDialogMessage(TypedArray typedArray) {
        setDialogMessage(typedArray.getText(R.styleable.DialogPreference_android_dialogMessage));
    }

    private void obtainDialogIcon(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.DialogPreference_android_dialogIcon, -1);
        if (resourceId != -1) {
            setDialogIcon(resourceId);
        }
    }

    private void obtainDialogIconTintList(TypedArray typedArray) {
        setDialogIconTintList(typedArray.getColorStateList(R.styleable.DialogPreference_dialogIconTint));
    }

    private void obtainPositiveButtonText(TypedArray typedArray) {
        setPositiveButtonText(typedArray.getText(R.styleable.DialogPreference_android_positiveButtonText));
    }

    private void obtainNegativeButtonText(TypedArray typedArray) {
        setNegativeButtonText(typedArray.getText(R.styleable.DialogPreference_android_negativeButtonText));
    }

    private void obtainDialogTitleColor(TypedArray typedArray) {
        setDialogTitleColor(typedArray.getColor(R.styleable.DialogPreference_dialogTitleColor, -1));
    }

    private void obtainDialogMessageColor(TypedArray typedArray) {
        setDialogMessageColor(typedArray.getColor(R.styleable.DialogPreference_dialogMessageColor, -1));
    }

    private void obtainDialogButtonTextColor(TypedArray typedArray) {
        ColorStateList colorStateList = typedArray.getColorStateList(R.styleable.DialogPreference_dialogButtonTextColor);
        if (colorStateList != null) {
            setDialogButtonTextColor(colorStateList);
        }
    }

    private void obtainDialogBackground(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.DialogPreference_dialogBackground, -1);
        if (resourceId != -1) {
            setDialogBackground(resourceId);
            return;
        }
        int color = typedArray.getColor(R.styleable.DialogPreference_dialogBackground, -1);
        if (color != -1) {
            setDialogBackgroundColor(color);
        }
    }

    private void obtainDialogWindowBackground(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.DialogPreference_dialogWindowBackground, -1);
        if (resourceId != -1) {
            setDialogWindowBackground(resourceId);
        }
    }

    private void obtainShowValueAsSummary(TypedArray typedArray) {
        showValueAsSummary(typedArray.getBoolean(R.styleable.DialogPreference_showValueAsSummary, getContext().getResources().getBoolean(R.bool.dialog_preference_default_show_value_as_summary)));
    }

    private void obtainShowDialogHeader(TypedArray typedArray) {
        showDialogHeader(typedArray.getBoolean(R.styleable.DialogPreference_showDialogHeader, getContext().getResources().getBoolean(R.bool.dialog_preference_default_show_dialog_header)));
    }

    private void obtainDialogHeaderBackground(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.DialogPreference_dialogHeaderBackground, -1);
        if (resourceId != -1) {
            setDialogHeaderBackground(resourceId);
            return;
        }
        int color = typedArray.getColor(R.styleable.DialogPreference_dialogHeaderBackground, -1);
        if (color != -1) {
            setDialogHeaderBackgroundColor(color);
        }
    }

    private void obtainDialogHeaderIcon(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.DialogPreference_dialogHeaderIcon, -1);
        if (resourceId != -1) {
            setDialogHeaderIcon(resourceId);
        }
    }

    private void obtainDialogHeaderIconTintList(TypedArray typedArray) {
        setDialogHeaderIconTintList(typedArray.getColorStateList(R.styleable.DialogPreference_dialogHeaderIconTint));
    }

    private void obtainShowDialogButtonBarDivider(TypedArray typedArray) {
        showDialogButtonBarDivider(typedArray.getBoolean(R.styleable.DialogPreference_showDialogButtonBarDivider, getContext().getResources().getBoolean(R.bool.dialog_preference_default_show_dialog_button_bar_divider)));
    }

    private void obtainDialogButtonBarDividerColor(TypedArray typedArray) {
        setDialogDividerColor(typedArray.getColor(R.styleable.DialogPreference_dialogDividerColor, ContextCompat.getColor(getContext(), R.color.divider_color_light)));
    }

    private void obtainDialogButtonBarDividerMargin(TypedArray typedArray) {
        setDialogDividerMargin(typedArray.getDimensionPixelSize(R.styleable.DialogPreference_dialogDividerMargin, 0));
    }

    private void obtainShowDialogDividersOnScroll(TypedArray typedArray) {
        showDialogDividersOnScroll(typedArray.getBoolean(R.styleable.DialogPreference_showDialogDividersOnScroll, true));
    }

    private void obtainDialogScrollableArea(TypedArray typedArray) {
        ScrollableArea.Area areaFromIndex;
        int i = typedArray.getInt(R.styleable.DialogPreference_dialogScrollableAreaTop, -1);
        if (i != -1) {
            ScrollableArea.Area areaFromIndex2 = ScrollableArea.Area.fromIndex(i);
            int i2 = typedArray.getInt(R.styleable.DialogPreference_dialogScrollableAreaBottom, -1);
            areaFromIndex = i2 != -1 ? ScrollableArea.Area.fromIndex(i2) : null;
            area = areaFromIndex2;
        } else {
            areaFromIndex = null;
        }
        if (area == null) {
            area = ScrollableArea.Area.TITLE;
            areaFromIndex = ScrollableArea.Area.CONTENT;
        }
        if (areaFromIndex == null) {
            areaFromIndex = area;
        }
        setDialogScrollableArea(area, areaFromIndex);
    }

    private void showDialog(Bundle bundle) {
        AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilderCreateDialogBuilder = createDialogBuilder(this.dialogTheme);
        abstractButtonBarDialogBuilderCreateDialogBuilder.setFullscreen(isDialogFullscreen());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setMaxWidth(getDialogMaxWidth());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setMaxHeight(getDialogMaxHeight());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setMargin(getDialogLeftMargin(), getDialogTopMargin(), getDialogRightMargin(), getDialogBottomMargin());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setPadding(getDialogPaddingLeft(), getDialogPaddingTop(), getDialogPaddingRight(), getDialogPaddingBottom());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setFitsSystemWindows(isDialogFitsSystemWindowsLeft(), isDialogFitsSystemWindowsTop(), isDialogFitsSystemWindowsRight(), isDialogFitsSystemWindowsBottom());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setTitle(getDialogTitle());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setMessage(getDialogMessage());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setPositiveButton(getPositiveButtonText(), this);
        abstractButtonBarDialogBuilderCreateDialogBuilder.setNegativeButton(getNegativeButtonText(), this);
        abstractButtonBarDialogBuilderCreateDialogBuilder.showHeader(isDialogHeaderShown());
        abstractButtonBarDialogBuilderCreateDialogBuilder.showButtonBarDivider(isDialogButtonBarDividerShown());
        abstractButtonBarDialogBuilderCreateDialogBuilder.showDividersOnScroll(areDialogDividersShownOnScroll());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setShowAnimation(getDialogShowAnimation());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setDismissAnimation(getDialogDismissAnimation());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setCancelAnimation(getDialogCancelAnimation());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setIconTintList(getDialogIconTintList());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setIconTintMode(getDialogIconTintMode());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setHeaderIconTintList(getDialogHeaderIconTintList());
        abstractButtonBarDialogBuilderCreateDialogBuilder.setHeaderIconTintMode(getDialogHeaderIconTintMode());
        ScrollableArea scrollableArea = this.dialogScrollableArea;
        if (scrollableArea != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setScrollableArea(scrollableArea.getTopScrollableArea(), this.dialogScrollableArea.getBottomScrollableArea());
        }
        int i = this.dialogIconId;
        if (i != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setIcon(i);
        } else {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setIcon(this.dialogIconBitmap);
        }
        int i2 = this.dialogBackgroundId;
        if (i2 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setBackground(i2);
        } else {
            int i3 = this.dialogBackgroundColor;
            if (i3 != -1) {
                abstractButtonBarDialogBuilderCreateDialogBuilder.setBackgroundColor(i3);
            } else {
                Bitmap bitmap = this.dialogBackgroundBitmap;
                if (bitmap != null) {
                    abstractButtonBarDialogBuilderCreateDialogBuilder.setBackground(bitmap);
                }
            }
        }
        int i4 = this.dialogWindowBackgroundId;
        if (i4 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setWindowBackground(i4);
        } else {
            Bitmap bitmap2 = this.dialogWindowBackgroundBitmap;
            if (bitmap2 != null) {
                abstractButtonBarDialogBuilderCreateDialogBuilder.setBackground(bitmap2);
            }
        }
        int i5 = this.dialogHeaderBackgroundId;
        if (i5 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setHeaderBackground(i5);
        } else {
            int i6 = this.dialogHeaderBackgroundColor;
            if (i6 != -1) {
                abstractButtonBarDialogBuilderCreateDialogBuilder.setHeaderBackgroundColor(i6);
            } else {
                Bitmap bitmap3 = this.dialogHeaderBackgroundBitmap;
                if (bitmap3 != null) {
                    abstractButtonBarDialogBuilderCreateDialogBuilder.setHeaderBackground(bitmap3);
                }
            }
        }
        int i7 = this.dialogHeaderIconId;
        if (i7 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setHeaderIcon(i7);
        } else {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setHeaderIcon(this.dialogHeaderIconBitmap);
        }
        if (getDialogGravity() != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setGravity(getDialogGravity());
        }
        if (getDialogWidth() != 0) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setWidth(getDialogWidth());
        }
        if (getDialogHeight() != 0) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setHeight(getDialogHeight());
        }
        if (getDialogTitleColor() != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setTitleColor(getDialogTitleColor());
        }
        if (getDialogTitleTypeface() != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setTitleTypeface(getDialogTitleTypeface());
        }
        if (getDialogMessageColor() != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setMessageColor(getDialogMessageColor());
        }
        if (getDialogMessageTypeface() != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setMessageTypeface(getDialogMessageTypeface());
        }
        if (getDialogButtonTextColor() != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setButtonTextColor(getDialogButtonTextColor());
        }
        if (getDialogButtonTypeface() != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setButtonTypeface(getDialogButtonTypeface());
        }
        if (getDialogDividerColor() != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setDividerColor(getDialogDividerColor());
        }
        View view = this.customDialogTitleView;
        if (view != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomTitle(view);
        }
        int i8 = this.customDialogTitleViewId;
        if (i8 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomTitle(i8);
        }
        View view2 = this.customDialogMessageView;
        if (view2 != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomMessage(view2);
        }
        int i9 = this.customDialogMessageViewId;
        if (i9 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomMessage(i9);
        }
        View view3 = this.customDialogButtonBarView;
        if (view3 != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomButtonBar(view3);
        }
        int i10 = this.customDialogButtonBarViewId;
        if (i10 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomButtonBar(i10);
        }
        View view4 = this.customDialogHeaderView;
        if (view4 != null) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomHeader(view4);
        }
        int i11 = this.customDialogHeaderViewId;
        if (i11 != -1) {
            abstractButtonBarDialogBuilderCreateDialogBuilder.setCustomHeader(i11);
        }
        onPrepareDialog(abstractButtonBarDialogBuilderCreateDialogBuilder);
        AbstractButtonBarDialog abstractButtonBarDialogCreateDialog = createDialog(abstractButtonBarDialogBuilderCreateDialogBuilder);
        this.dialog = abstractButtonBarDialogCreateDialog;
        abstractButtonBarDialogCreateDialog.setOnShowListener(this);
        this.dialog.setOnDismissListener(this);
        this.dialog.setOnCancelListener(this);
        this.dialog.setOnKeyListener(this);
        if (bundle != null) {
            this.dialog.onRestoreInstanceState(bundle);
        }
        requestInputMode();
        this.dialogResultPositive = false;
        this.dialog.show();
    }

    private void requestInputMode() {
        Window window;
        if (!needInputMethod() || (window = this.dialog.getWindow()) == null) {
            return;
        }
        window.setSoftInputMode(5);
    }

    public DialogPreference(Context context) {
        this(context, null);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dialogGravity = -1;
        this.dialogWidth = 0;
        this.dialogHeight = 0;
        this.dialogMaxWidth = -1;
        this.dialogMaxHeight = -1;
        this.dialogIconId = -1;
        this.dialogIconTintMode = PorterDuff.Mode.SRC_ATOP;
        this.dialogBackgroundId = -1;
        this.dialogBackgroundColor = -1;
        this.dialogWindowBackgroundId = -1;
        this.dialogHeaderBackgroundId = -1;
        this.dialogHeaderBackgroundColor = -1;
        this.dialogHeaderIconId = -1;
        this.dialogHeaderIconTintMode = PorterDuff.Mode.SRC_ATOP;
        this.customDialogTitleViewId = -1;
        this.customDialogMessageViewId = -1;
        this.customDialogButtonBarViewId = -1;
        this.customDialogHeaderViewId = -1;
        obtainStyledAttributes(attributeSet, i, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.dialogGravity = -1;
        this.dialogWidth = 0;
        this.dialogHeight = 0;
        this.dialogMaxWidth = -1;
        this.dialogMaxHeight = -1;
        this.dialogIconId = -1;
        this.dialogIconTintMode = PorterDuff.Mode.SRC_ATOP;
        this.dialogBackgroundId = -1;
        this.dialogBackgroundColor = -1;
        this.dialogWindowBackgroundId = -1;
        this.dialogHeaderBackgroundId = -1;
        this.dialogHeaderBackgroundColor = -1;
        this.dialogHeaderIconId = -1;
        this.dialogHeaderIconTintMode = PorterDuff.Mode.SRC_ATOP;
        this.customDialogTitleViewId = -1;
        this.customDialogMessageViewId = -1;
        this.customDialogButtonBarViewId = -1;
        this.customDialogHeaderViewId = -1;
        obtainStyledAttributes(attributeSet, i, i2);
    }

    protected AbstractButtonBarDialogBuilder<?, ?> createDialogBuilder(int i) {
        return new MaterialDialog.Builder(getContext(), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected AbstractButtonBarDialog createDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        return (AbstractButtonBarDialog) ((MaterialDialog.Builder) abstractButtonBarDialogBuilder).create();
    }

    public final Dialog getDialog() {
        if (isDialogShown()) {
            return this.dialog;
        }
        return null;
    }

    public final boolean isDialogShown() {
        AbstractButtonBarDialog abstractButtonBarDialog = this.dialog;
        return abstractButtonBarDialog != null && abstractButtonBarDialog.isShowing();
    }

    public final boolean isDialogFullscreen() {
        return this.dialogFullscreen;
    }

    public final void setDialogFullscreen(boolean z) {
        this.dialogFullscreen = z;
    }

    public final int getDialogGravity() {
        return this.dialogGravity;
    }

    public final void setDialogGravity(int i) {
        this.dialogGravity = i;
    }

    public final int getDialogWidth() {
        return this.dialogWidth;
    }

    public final void setDialogWidth(int i) {
        this.dialogWidth = i;
    }

    public final int getDialogHeight() {
        return this.dialogHeight;
    }

    public final void setDialogHeight(int i) {
        this.dialogHeight = i;
    }

    public final int getDialogMaxWidth() {
        return this.dialogMaxWidth;
    }

    public final void setDialogMaxWidth(int i) {
        this.dialogMaxWidth = i;
    }

    public final int getDialogMaxHeight() {
        return this.dialogMaxHeight;
    }

    public final void setDialogMaxHeight(int i) {
        this.dialogMaxHeight = i;
    }

    public final int getDialogLeftMargin() {
        return this.dialogMargin[0];
    }

    public final int getDialogTopMargin() {
        return this.dialogMargin[1];
    }

    public final int getDialogRightMargin() {
        return this.dialogMargin[2];
    }

    public final int getDialogBottomMargin() {
        return this.dialogMargin[3];
    }

    public final void setDialogMargin(int i, int i2, int i3, int i4) {
        this.dialogMargin = new int[]{i, i2, i3, i4};
    }

    public final int getDialogPaddingLeft() {
        return this.dialogPadding[0];
    }

    public final int getDialogPaddingTop() {
        return this.dialogPadding[1];
    }

    public final int getDialogPaddingRight() {
        return this.dialogPadding[2];
    }

    public final int getDialogPaddingBottom() {
        return this.dialogPadding[3];
    }

    public final void setDialogPadding(int i, int i2, int i3, int i4) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The left padding must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i2, 0, "The top padding must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i3, 0, "The right padding must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i4, 0, "The bottom padding must be at least 0");
        this.dialogPadding = new int[]{i, i2, i3, i4};
    }

    public final boolean isDialogFitsSystemWindowsLeft() {
        return this.dialogFitsSystemWindows[0];
    }

    public final boolean isDialogFitsSystemWindowsTop() {
        return this.dialogFitsSystemWindows[1];
    }

    public final boolean isDialogFitsSystemWindowsRight() {
        return this.dialogFitsSystemWindows[2];
    }

    public final boolean isDialogFitsSystemWindowsBottom() {
        return this.dialogFitsSystemWindows[3];
    }

    public final void setDialogFitsSystemWindows(boolean z) {
        setDialogFitsSystemWindows(z, z, z, z);
    }

    public final void setDialogFitsSystemWindows(boolean z, boolean z2, boolean z3, boolean z4) {
        this.dialogFitsSystemWindows = new boolean[]{z, z2, z3, z4};
    }

    public final CharSequence getDialogTitle() {
        return this.dialogTitle;
    }

    public final void setDialogTitle(CharSequence charSequence) {
        this.dialogTitle = charSequence;
    }

    public final void setDialogTitle(int i) {
        setDialogTitle(getContext().getString(i));
    }

    public final CharSequence getDialogMessage() {
        return this.dialogMessage;
    }

    public final void setDialogMessage(CharSequence charSequence) {
        this.dialogMessage = charSequence;
    }

    public final void setDialogMessage(int i) {
        setDialogMessage(getContext().getString(i));
    }

    public final Drawable getDialogIcon() {
        return this.dialogIcon;
    }

    public final void setDialogIcon(Bitmap bitmap) {
        this.dialogIcon = new BitmapDrawable(getContext().getResources(), bitmap);
        this.dialogIconBitmap = bitmap;
        this.dialogIconId = -1;
    }

    public final void setDialogIcon(int i) {
        this.dialogIcon = AppCompatResources.getDrawable(getContext(), i);
        this.dialogIconBitmap = null;
        this.dialogIconId = i;
    }

    public final ColorStateList getDialogIconTintList() {
        return this.dialogIconTintList;
    }

    public final void setDialogIconTint(int i) {
        setDialogIconTintList(ColorStateList.valueOf(i));
    }

    public final void setDialogIconTintList(ColorStateList colorStateList) {
        this.dialogIconTintList = colorStateList;
    }

    public final PorterDuff.Mode getDialogIconTintMode() {
        return this.dialogIconTintMode;
    }

    public final void setDialogIconTintMode(PorterDuff.Mode mode) {
        Condition.INSTANCE.ensureNotNull(mode, "The dialog icon tint mode may not be null");
        this.dialogIconTintMode = mode;
    }

    public final CharSequence getPositiveButtonText() {
        return this.positiveButtonText;
    }

    public final void setPositiveButtonText(CharSequence charSequence) {
        this.positiveButtonText = charSequence;
    }

    public final void setPositiveButtonText(int i) {
        setPositiveButtonText(getContext().getString(i));
    }

    public final CharSequence getNegativeButtonText() {
        return this.negativeButtonText;
    }

    public final void setNegativeButtonText(CharSequence charSequence) {
        this.negativeButtonText = charSequence;
    }

    public final void setNegativeButtonText(int i) {
        setNegativeButtonText(getContext().getString(i));
    }

    public final int getDialogTitleColor() {
        return this.dialogTitleColor;
    }

    public final void setDialogTitleColor(int i) {
        this.dialogTitleColor = i;
    }

    public final Typeface getDialogTitleTypeface() {
        return this.dialogTitleTypeface;
    }

    public final void setDialogTitleTypeface(Typeface typeface) {
        this.dialogTitleTypeface = typeface;
    }

    public final int getDialogMessageColor() {
        return this.dialogMessageColor;
    }

    public final void setDialogMessageColor(int i) {
        this.dialogMessageColor = i;
    }

    public final Typeface getDialogMessageTypeface() {
        return this.dialogMessageTypeface;
    }

    public final void setDialogMessageTypeface(Typeface typeface) {
        this.dialogMessageTypeface = typeface;
    }

    public final ColorStateList getDialogButtonTextColor() {
        return this.dialogButtonTextColor;
    }

    public final void setDialogButtonTextColor(int i) {
        setDialogButtonTextColor(ColorStateList.valueOf(i));
    }

    public final void setDialogButtonTextColor(ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(colorStateList, "The color state list may not be null");
        this.dialogButtonTextColor = colorStateList;
    }

    public final Typeface getDialogButtonTypeface() {
        return this.dialogButtonTypeface;
    }

    public final void setDialogButtonTypeface(Typeface typeface) {
        this.dialogButtonTypeface = typeface;
    }

    public final Drawable getDialogBackground() {
        return this.dialogBackground;
    }

    public final void setDialogBackground(Bitmap bitmap) {
        this.dialogBackground = new BitmapDrawable(getContext().getResources(), bitmap);
        this.dialogBackgroundBitmap = bitmap;
        this.dialogBackgroundId = -1;
        this.dialogBackgroundColor = -1;
    }

    public final void setDialogBackground(int i) {
        this.dialogBackground = ContextCompat.getDrawable(getContext(), i);
        this.dialogBackgroundBitmap = null;
        this.dialogBackgroundId = i;
        this.dialogBackgroundColor = -1;
    }

    public final void setDialogBackgroundColor(int i) {
        this.dialogBackground = new ColorDrawable(i);
        this.dialogBackgroundBitmap = null;
        this.dialogBackgroundId = -1;
        this.dialogBackgroundColor = i;
    }

    public final Drawable getDialogWindowBackground() {
        return this.dialogWindowBackground;
    }

    public final void setDialogWindowBackground(int i) {
        this.dialogWindowBackground = ContextCompat.getDrawable(getContext(), i);
        this.dialogWindowBackgroundBitmap = null;
        this.dialogWindowBackgroundId = i;
    }

    public final void setDialogWindowBackground(Bitmap bitmap) {
        this.dialogWindowBackground = bitmap != null ? new BitmapDrawable(bitmap) : null;
        this.dialogWindowBackgroundBitmap = bitmap;
        this.dialogWindowBackgroundId = -1;
    }

    public final boolean isValueShownAsSummary() {
        return this.showValueAsSummary;
    }

    public final void showValueAsSummary(boolean z) {
        this.showValueAsSummary = z;
    }

    public final boolean isDialogHeaderShown() {
        return this.showDialogHeader;
    }

    public final void showDialogHeader(boolean z) {
        this.showDialogHeader = z;
    }

    public final Drawable getDialogHeaderBackground() {
        return this.dialogHeaderBackground;
    }

    public final void setDialogHeaderBackground(Bitmap bitmap) {
        this.dialogHeaderBackground = new BitmapDrawable(getContext().getResources(), bitmap);
        this.dialogHeaderBackgroundBitmap = bitmap;
        this.dialogHeaderBackgroundId = -1;
        this.dialogHeaderBackgroundColor = -1;
    }

    public final void setDialogHeaderBackground(int i) {
        this.dialogHeaderBackground = ContextCompat.getDrawable(getContext(), i);
        this.dialogHeaderBackgroundBitmap = null;
        this.dialogHeaderBackgroundId = i;
        this.dialogHeaderBackgroundColor = -1;
    }

    public final void setDialogHeaderBackgroundColor(int i) {
        this.dialogHeaderBackground = new ColorDrawable(i);
        this.dialogHeaderBackgroundBitmap = null;
        this.dialogHeaderBackgroundId = -1;
        this.dialogHeaderBackgroundColor = i;
    }

    public final Drawable getDialogHeaderIcon() {
        return this.dialogHeaderIcon;
    }

    public final void setDialogHeaderIcon(Bitmap bitmap) {
        this.dialogHeaderIcon = new BitmapDrawable(getContext().getResources(), bitmap);
        this.dialogHeaderIconBitmap = bitmap;
        this.dialogHeaderIconId = -1;
    }

    public final void setDialogHeaderIcon(int i) {
        this.dialogHeaderIcon = AppCompatResources.getDrawable(getContext(), i);
        this.dialogHeaderIconBitmap = null;
        this.dialogHeaderIconId = i;
    }

    public final ColorStateList getDialogHeaderIconTintList() {
        return this.dialogHeaderIconTintList;
    }

    public final void setDialogHeaderIconTint(int i) {
        setDialogHeaderIconTintList(ColorStateList.valueOf(i));
    }

    public final void setDialogHeaderIconTintList(ColorStateList colorStateList) {
        this.dialogHeaderIconTintList = colorStateList;
    }

    public final PorterDuff.Mode getDialogHeaderIconTintMode() {
        return this.dialogHeaderIconTintMode;
    }

    public final void setDialogHeaderIconTintMode(PorterDuff.Mode mode) {
        Condition.INSTANCE.ensureNotNull(mode, "The dialog icon tint mode may not be null");
        this.dialogHeaderIconTintMode = mode;
    }

    public final boolean isDialogButtonBarDividerShown() {
        return this.showDialogButtonBarDivider;
    }

    public final void showDialogButtonBarDivider(boolean z) {
        this.showDialogButtonBarDivider = z;
    }

    public final int getDialogDividerColor() {
        return this.dialogDividerColor;
    }

    public final void setDialogDividerColor(int i) {
        this.dialogDividerColor = i;
    }

    public final int getDialogDividerMargin() {
        return this.dialogDividerMargin;
    }

    public final void setDialogDividerMargin(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The margin must be at least 0");
        this.dialogDividerMargin = i;
    }

    public final boolean areDialogDividersShownOnScroll() {
        return this.showDialogDividersOnScroll;
    }

    public final void showDialogDividersOnScroll(boolean z) {
        this.showDialogDividersOnScroll = z;
    }

    public final ScrollableArea getDialogScrollableArea() {
        return this.dialogScrollableArea;
    }

    public final void setDialogScrollableArea(ScrollableArea.Area area) {
        this.dialogScrollableArea = ScrollableArea.create(area);
    }

    public final void setDialogScrollableArea(ScrollableArea.Area area, ScrollableArea.Area area2) {
        this.dialogScrollableArea = ScrollableArea.create(area, area2);
    }

    public final DialogAnimation getDialogShowAnimation() {
        return this.dialogShowAnimation;
    }

    public final void setDialogShowAnimation(DialogAnimation dialogAnimation) {
        this.dialogShowAnimation = dialogAnimation;
    }

    public final DialogAnimation getDialogDismissAnimation() {
        return this.dialogDismissAnimation;
    }

    public final void setDialogDismissAnimation(DialogAnimation dialogAnimation) {
        this.dialogDismissAnimation = dialogAnimation;
    }

    public final DialogAnimation getDialogCancelAnimation() {
        return this.dialogCancelAnimation;
    }

    public final void setDialogCancelAnimation(DialogAnimation dialogAnimation) {
        this.dialogCancelAnimation = dialogAnimation;
    }

    public final void setCustomDialogTitle(View view) {
        this.customDialogTitleView = view;
        this.customDialogTitleViewId = -1;
    }

    public final void setCustomDialogTitle(int i) {
        this.customDialogTitleView = null;
        this.customDialogTitleViewId = i;
    }

    public final void setCustomDialogMessage(View view) {
        this.customDialogMessageView = view;
        this.customDialogMessageViewId = -1;
    }

    public final void setCustomDialogMessage(int i) {
        this.customDialogMessageView = null;
        this.customDialogMessageViewId = i;
    }

    public final void setCustomDialogButtonBar(View view) {
        this.customDialogButtonBarView = view;
        this.customDialogButtonBarViewId = -1;
    }

    public final void setCustomDialogButtonBar(int i) {
        this.customDialogButtonBarView = null;
        this.customDialogButtonBarViewId = i;
    }

    public final void setCustomDialogHeader(View view) {
        this.customDialogHeaderView = view;
        this.customDialogHeaderViewId = -1;
    }

    public final void setCustomDialogHeader(int i) {
        this.customDialogHeaderView = null;
        this.customDialogHeaderViewId = i;
    }

    public final void setOnClickListener(DialogInterface.OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
    }

    public final void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        this.onShowListener = onShowListener;
    }

    public final void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.onDismissListener = onDismissListener;
    }

    public final void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.onCancelListener = onCancelListener;
    }

    public final void setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        this.onKeyListener = onKeyListener;
    }

    @Override // de.mrapp.android.preference.Preference, androidx.preference.Preference
    public final void performClick() {
        onClick();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.dialogResultPositive = i == -1;
        DialogInterface.OnClickListener onClickListener = this.onClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(dialogInterface, i);
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        DialogInterface.OnShowListener onShowListener = this.onShowListener;
        if (onShowListener != null) {
            onShowListener.onShow(dialogInterface);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        DialogInterface.OnDismissListener onDismissListener = this.onDismissListener;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
        onDialogClosed((AbstractButtonBarDialog) dialogInterface, this.dialogResultPositive);
        this.dialog = null;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.onCancelListener;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener = this.onKeyListener;
        return onKeyListener != null && onKeyListener.onKey(dialogInterface, i, keyEvent);
    }

    @Override // androidx.preference.Preference
    protected void onClick() {
        if (isDialogShown()) {
            return;
        }
        showDialog(null);
    }

    @Override // androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (isDialogShown()) {
            savedState.dialogState = this.dialog.onSaveInstanceState();
            this.dialog.dismiss();
            this.dialog = null;
        }
        return savedState;
    }

    @Override // androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            if (savedState.dialogState != null) {
                showDialog(savedState.dialogState);
            }
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
