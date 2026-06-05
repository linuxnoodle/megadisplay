package de.mrapp.android.validation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.SpinnerAdapter;
import de.mrapp.android.validation.adapter.ProxySpinnerAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class Spinner extends AbstractValidateableView<android.widget.Spinner, Object> {
    CharSequence hint;
    ColorStateList hintColor;
    AdapterView.OnItemSelectedListener itemSelectedListener;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.validation.Spinner.SavedState.1
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
        private CharSequence hint;
        private ColorStateList hintColor;
        private int selectedItemPosition;
        private Parcelable viewState;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.viewState = parcel.readParcelable(Parcelable.class.getClassLoader());
            this.hint = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.hintColor = (ColorStateList) parcel.readParcelable(ColorStateList.class.getClassLoader());
            this.selectedItemPosition = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.viewState, i);
            TextUtils.writeToParcel(this.hint, parcel, i);
            parcel.writeParcelable(this.hintColor, i);
            parcel.writeInt(this.selectedItemPosition);
        }
    }

    private void initialize(AttributeSet attributeSet) {
        obtainStyledAttributes(attributeSet);
        getView().setOnItemSelectedListener(createItemSelectedListener());
    }

    private void obtainStyledAttributes(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.Spinner);
        try {
            obtainHint(typedArrayObtainStyledAttributes);
            obtainHintColor(typedArrayObtainStyledAttributes);
            obtainSpinnerStyledAttributes(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainHint(TypedArray typedArray) {
        setHint(typedArray.getText(R.styleable.Spinner_android_hint));
    }

    private void obtainHintColor(TypedArray typedArray) {
        ColorStateList colorStateList = typedArray.getColorStateList(R.styleable.Spinner_android_textColorHint);
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(getContext().getTheme().obtainStyledAttributes(new int[]{android.R.attr.textColorSecondary}).getColor(0, 0));
        }
        setHintTextColor(colorStateList);
    }

    private void obtainSpinnerStyledAttributes(TypedArray typedArray) {
        CharSequence[] textArray;
        for (int i = 0; i < typedArray.getIndexCount(); i++) {
            int index = typedArray.getIndex(i);
            if (index == R.styleable.Spinner_android_dropDownHorizontalOffset) {
                setDropDownHorizontalOffset(typedArray.getDimensionPixelSize(index, getDropDownHorizontalOffset()));
            } else if (index == R.styleable.Spinner_android_dropDownVerticalOffset) {
                setDropDownVerticalOffset(typedArray.getDimensionPixelSize(index, getDropDownVerticalOffset()));
            } else if (index == R.styleable.Spinner_dropDownWidth) {
                setDropDownWidth(typedArray.getLayoutDimension(index, getDropDownWidth()));
            } else if (index == R.styleable.Spinner_popupBackground) {
                Drawable drawable = typedArray.getDrawable(index);
                if (drawable != null) {
                    setPopupBackgroundDrawable(drawable);
                }
            } else if (index == R.styleable.Spinner_prompt) {
                CharSequence string = typedArray.getString(index);
                if (string != null) {
                    setPrompt(string);
                }
            } else if (index == R.styleable.Spinner_android_entries && (textArray = typedArray.getTextArray(index)) != null) {
                ArrayAdapter arrayAdapter = new ArrayAdapter(getContext(), R.layout.spinner_item, textArray);
                arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                setAdapter(arrayAdapter);
            }
        }
    }

    private AdapterView.OnItemSelectedListener createItemSelectedListener() {
        return new AdapterView.OnItemSelectedListener() { // from class: de.mrapp.android.validation.Spinner.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (Spinner.this.getOnItemSelectedListener() != null) {
                    Spinner.this.getOnItemSelectedListener().onItemSelected(adapterView, view, i, j);
                }
                if (!Spinner.this.isValidatedOnValueChange() || i == 0) {
                    return;
                }
                Spinner.this.validate();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                if (Spinner.this.getOnItemSelectedListener() != null) {
                    Spinner.this.getOnItemSelectedListener().onNothingSelected(adapterView);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.mrapp.android.validation.AbstractValidateableView
    public final android.widget.Spinner createView() {
        return new android.widget.Spinner(getContext());
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView
    protected final ViewGroup createParentView() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        LayoutInflater.from(getContext()).inflate(R.layout.spinner_arrow_image_view, (ViewGroup) frameLayout, true);
        return frameLayout;
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView
    protected final Object getValue() {
        return getView().getSelectedItem();
    }

    public Spinner(Context context) {
        super(context);
        initialize(null);
    }

    public Spinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public Spinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    public Spinner(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet);
    }

    public final CharSequence getHint() {
        return this.hint;
    }

    public final void setHint(CharSequence charSequence) {
        this.hint = charSequence;
        if (getAdapter() != null) {
            setAdapter(((ProxySpinnerAdapter) getAdapter()).getAdapter());
        }
    }

    public final void setHint(int i) {
        setHint(getResources().getText(i));
    }

    public final ColorStateList getHintTextColors() {
        return this.hintColor;
    }

    public final void setHintTextColor(int i) {
        setHintTextColor(ColorStateList.valueOf(i));
    }

    public final void setHintTextColor(ColorStateList colorStateList) {
        this.hintColor = colorStateList;
        if (getAdapter() != null) {
            setAdapter(((ProxySpinnerAdapter) getAdapter()).getAdapter());
        }
    }

    public final void setPopupBackgroundDrawable(Drawable drawable) {
        getView().setPopupBackgroundDrawable(drawable);
    }

    public final void setPopupBackgroundResource(int i) {
        getView().setPopupBackgroundResource(i);
    }

    public final Drawable getPopupBackground() {
        return getView().getPopupBackground();
    }

    public final void setDropDownVerticalOffset(int i) {
        getView().setDropDownVerticalOffset(i);
    }

    public final int getDropDownVerticalOffset() {
        return getView().getDropDownVerticalOffset();
    }

    public final void setDropDownHorizontalOffset(int i) {
        getView().setDropDownHorizontalOffset(i);
    }

    public final int getDropDownHorizontalOffset() {
        return getView().getDropDownHorizontalOffset();
    }

    public final void setDropDownWidth(int i) {
        getView().setDropDownWidth(i);
    }

    public final int getDropDownWidth() {
        return getView().getDropDownWidth();
    }

    public final void setTextGravity(int i) {
        getView().setGravity(i);
    }

    public final int getTextGravity() {
        return getView().getGravity();
    }

    public final void setAdapter(SpinnerAdapter spinnerAdapter) {
        getView().setAdapter((SpinnerAdapter) new ProxySpinnerAdapter(getContext(), spinnerAdapter, R.layout.spinner_hint_item, getHint(), getHintTextColors()));
    }

    public final SpinnerAdapter getAdapter() {
        return getView().getAdapter();
    }

    public final void setPrompt(CharSequence charSequence) {
        getView().setPrompt(charSequence);
    }

    public final void setPromptId(int i) {
        getView().setPromptId(i);
    }

    public final CharSequence getPrompt() {
        return getView().getPrompt();
    }

    public final void setSelection(int i, boolean z) {
        getView().setSelection(i, z);
    }

    public final int pointToPosition(int i, int i2) {
        return getView().pointToPosition(i, i2);
    }

    public final void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        getView().setOnItemClickListener(onItemClickListener);
    }

    public final AdapterView.OnItemClickListener getOnItemClickListener() {
        return getView().getOnItemClickListener();
    }

    public final boolean performItemClick(View view, int i, long j) {
        return getView().performItemClick(view, i, j);
    }

    public final void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        getView().setOnItemLongClickListener(onItemLongClickListener);
    }

    public final AdapterView.OnItemLongClickListener getOnItemLongClickListener() {
        return getView().getOnItemLongClickListener();
    }

    public final void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.itemSelectedListener = onItemSelectedListener;
    }

    public final AdapterView.OnItemSelectedListener getOnItemSelectedListener() {
        return this.itemSelectedListener;
    }

    public final int getSelectedItemPosition() {
        return getView().getSelectedItemPosition();
    }

    public final long getSelectedItemId() {
        return getView().getSelectedItemId();
    }

    public final View getSelectedView() {
        return getView().getSelectedView();
    }

    public final Object getSelectedItem() {
        return getView().getSelectedItem();
    }

    public final int getCount() {
        return getView().getCount();
    }

    public final int getPositionForView(View view) {
        return getView().getPositionForView(view);
    }

    public final int getFirstVisiblePosition() {
        return getView().getFirstVisiblePosition();
    }

    public final int getLastVisiblePosition() {
        return getView().getLastVisiblePosition();
    }

    public final void setSelection(int i) {
        getView().setSelection(i);
    }

    public final void setEmptyView(View view) {
        getView().setEmptyView(view);
    }

    public final View getEmptyView() {
        return getView().getEmptyView();
    }

    public final Object getItemAtPosition(int i) {
        return getView().getItemAtPosition(i);
    }

    public final long getItemIdAtPosition(int i) {
        return getView().getItemIdAtPosition(i);
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView, android.view.View
    protected final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            return null;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.viewState = getView().onSaveInstanceState();
        savedState.hint = getHint();
        savedState.hintColor = getHintTextColors();
        savedState.selectedItemPosition = getSelectedItemPosition();
        return savedState;
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView, android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            validateOnValueChange(false);
            getView().onRestoreInstanceState(savedState.viewState);
            setHint(savedState.hint);
            setHintTextColor(savedState.hintColor);
            setSelection(savedState.selectedItemPosition);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
