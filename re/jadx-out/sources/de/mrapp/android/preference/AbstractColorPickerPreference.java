package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.preference.PreferenceViewHolder;
import de.mrapp.android.preference.multithreading.ColorPreviewDataBinder;
import de.mrapp.android.util.view.AbstractSavedState;
import de.mrapp.util.Condition;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractColorPickerPreference extends DialogPreference {
    private int color;
    private ColorFormat colorFormat;
    private Drawable previewBackground;
    private int previewBorderColor;
    private int previewBorderWidth;
    private ColorPreviewDataBinder previewLoader;
    private PreviewShape previewShape;
    private int previewSize;
    private ImageView previewView;
    private boolean showPreview;

    public enum ColorFormat {
        RGB(0),
        ARGB(1),
        HEX_3_BYTES(2),
        HEX_4_BYTES(3);

        private final int value;

        ColorFormat(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }

        public static ColorFormat fromValue(int i) {
            for (ColorFormat colorFormat : values()) {
                if (colorFormat.getValue() == i) {
                    return colorFormat;
                }
            }
            throw new IllegalArgumentException("Invalid enum value");
        }
    }

    public enum PreviewShape {
        CIRCLE(0),
        SQUARE(1);

        private final int value;

        PreviewShape(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }

        public static PreviewShape fromValue(int i) {
            for (PreviewShape previewShape : values()) {
                if (previewShape.getValue() == i) {
                    return previewShape;
                }
            }
            throw new IllegalArgumentException("Invalid enum value");
        }
    }

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.AbstractColorPickerPreference.SavedState.1
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
        public int color;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.color = parcel.readInt();
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.color);
        }
    }

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        obtainStyledAttributes(attributeSet, i, i2);
        this.previewLoader = new ColorPreviewDataBinder(getContext(), getPreviewBackground(), getPreviewShape(), getPreviewSize(), getPreviewBorderWidth(), getPreviewBorderColor());
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractColorPickerPreference, i, i2);
        try {
            obtainShowPreview(typedArrayObtainStyledAttributes);
            obtainPreviewSize(typedArrayObtainStyledAttributes);
            obtainPreviewShape(typedArrayObtainStyledAttributes);
            obtainPreviewBorderWidth(typedArrayObtainStyledAttributes);
            obtainPreviewBorderColor(typedArrayObtainStyledAttributes);
            obtainPreviewBackground(typedArrayObtainStyledAttributes);
            obtainColorFormat(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainShowPreview(TypedArray typedArray) {
        showPreview(typedArray.getBoolean(R.styleable.AbstractColorPickerPreference_showPreview, getContext().getResources().getBoolean(R.bool.color_picker_preference_default_show_preview)));
    }

    private void obtainPreviewSize(TypedArray typedArray) {
        setPreviewSize(typedArray.getDimensionPixelSize(R.styleable.AbstractColorPickerPreference_previewSize, getContext().getResources().getDimensionPixelSize(R.dimen.color_picker_preference_default_preview_size)));
    }

    private void obtainPreviewShape(TypedArray typedArray) {
        setPreviewShape(PreviewShape.fromValue(typedArray.getInteger(R.styleable.AbstractColorPickerPreference_previewShape, getContext().getResources().getInteger(R.integer.color_picker_preference_default_preview_shape))));
    }

    private void obtainPreviewBorderWidth(TypedArray typedArray) {
        setPreviewBorderWidth(typedArray.getDimensionPixelSize(R.styleable.AbstractColorPickerPreference_previewBorderWidth, getContext().getResources().getDimensionPixelSize(R.dimen.color_picker_preference_default_preview_border_width)));
    }

    private void obtainPreviewBorderColor(TypedArray typedArray) {
        setPreviewBorderColor(typedArray.getColor(R.styleable.AbstractColorPickerPreference_previewBorderColor, ContextCompat.getColor(getContext(), R.color.color_picker_preference_default_preview_border_color)));
    }

    private void obtainPreviewBackground(TypedArray typedArray) {
        int color = typedArray.getColor(R.styleable.AbstractColorPickerPreference_previewBackground, -1);
        if (color != -1) {
            setPreviewBackgroundColor(color);
        } else {
            setPreviewBackground(ContextCompat.getDrawable(getContext(), typedArray.getResourceId(R.styleable.AbstractColorPickerPreference_previewBackground, R.drawable.color_picker_default_preview_background)));
        }
    }

    private void obtainColorFormat(TypedArray typedArray) {
        setColorFormat(ColorFormat.fromValue(typedArray.getInteger(R.styleable.AbstractColorPickerPreference_colorFormat, getContext().getResources().getInteger(R.integer.color_picker_preference_default_color_format))));
    }

    private CharSequence formatColor(ColorFormat colorFormat, int i) {
        Condition.INSTANCE.ensureNotNull(colorFormat, "The color format may not be null");
        if (colorFormat == ColorFormat.RGB) {
            return String.format(Locale.getDefault(), "R = %d, G = %d, B = %d", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)));
        }
        if (colorFormat == ColorFormat.ARGB) {
            return String.format(Locale.getDefault(), "A = %d, R = %d, G = %d, B = %d", Integer.valueOf(Color.alpha(i)), Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)));
        }
        return colorFormat == ColorFormat.HEX_3_BYTES ? String.format("#%06X", Integer.valueOf(16777215 & i)) : String.format("#%08X", Integer.valueOf(i));
    }

    private void adaptPreviewView() {
        if (this.previewView != null) {
            if (isPreviewShown()) {
                this.previewView.setVisibility(0);
                this.previewView.setLayoutParams(createPreviewLayoutParams());
                this.previewLoader.load(Integer.valueOf(getColor()), this.previewView, new Void[0]);
            } else {
                this.previewView.setVisibility(4);
                this.previewView.setImageBitmap(null);
            }
        }
    }

    private LinearLayout.LayoutParams createPreviewLayoutParams() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getPreviewSize(), getPreviewSize());
        layoutParams.gravity = 16;
        return layoutParams;
    }

    public AbstractColorPickerPreference(Context context) {
        this(context, null);
    }

    public AbstractColorPickerPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractColorPickerPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public AbstractColorPickerPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final int getColor() {
        return this.color;
    }

    public final void setColor(int i) {
        if (this.color != i) {
            this.color = i;
            persistInt(i);
            notifyChanged();
            adaptPreviewView();
        }
    }

    public final boolean isPreviewShown() {
        return this.showPreview;
    }

    public final void showPreview(boolean z) {
        this.showPreview = z;
        adaptPreviewView();
    }

    public final int getPreviewSize() {
        return this.previewSize;
    }

    public final void setPreviewSize(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The preview size must be at least 1");
        this.previewSize = i;
        ColorPreviewDataBinder colorPreviewDataBinder = this.previewLoader;
        if (colorPreviewDataBinder != null) {
            colorPreviewDataBinder.setSize(i);
        }
    }

    public final PreviewShape getPreviewShape() {
        return this.previewShape;
    }

    public final void setPreviewShape(PreviewShape previewShape) {
        Condition.INSTANCE.ensureNotNull(previewShape, "The preview shape may not be null");
        this.previewShape = previewShape;
        ColorPreviewDataBinder colorPreviewDataBinder = this.previewLoader;
        if (colorPreviewDataBinder != null) {
            colorPreviewDataBinder.setShape(previewShape);
        }
        adaptPreviewView();
    }

    public final int getPreviewBorderWidth() {
        return this.previewBorderWidth;
    }

    public final void setPreviewBorderWidth(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The border width must be at least 0");
        this.previewBorderWidth = i;
        ColorPreviewDataBinder colorPreviewDataBinder = this.previewLoader;
        if (colorPreviewDataBinder != null) {
            colorPreviewDataBinder.setBorderWidth(i);
        }
        adaptPreviewView();
    }

    public final int getPreviewBorderColor() {
        return this.previewBorderColor;
    }

    public final void setPreviewBorderColor(int i) {
        this.previewBorderColor = i;
        ColorPreviewDataBinder colorPreviewDataBinder = this.previewLoader;
        if (colorPreviewDataBinder != null) {
            colorPreviewDataBinder.setBorderColor(i);
        }
        adaptPreviewView();
    }

    public final Drawable getPreviewBackground() {
        return this.previewBackground;
    }

    public final void setPreviewBackground(Drawable drawable) {
        this.previewBackground = drawable;
        ColorPreviewDataBinder colorPreviewDataBinder = this.previewLoader;
        if (colorPreviewDataBinder != null) {
            colorPreviewDataBinder.setBackground(drawable);
        }
        adaptPreviewView();
    }

    public final void setPreviewBackground(int i) {
        setPreviewBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public final void setPreviewBackgroundColor(int i) {
        setPreviewBackground(new ColorDrawable(i));
    }

    public final ColorFormat getColorFormat() {
        return this.colorFormat;
    }

    public final void setColorFormat(ColorFormat colorFormat) {
        Condition.INSTANCE.ensureNotNull(colorFormat, "The color format may not be null");
        this.colorFormat = colorFormat;
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (isValueShownAsSummary()) {
            return formatColor(getColorFormat(), getColor());
        }
        return super.getSummary();
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        setColor(obj == null ? getPersistedInt(getColor()) : ((Integer) obj).intValue());
    }

    @Override // androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        ImageView imageView = (ImageView) preferenceViewHolder.findViewById(R.id.preview_view);
        this.previewView = imageView;
        if (imageView == null) {
            LinearLayout linearLayout = (LinearLayout) preferenceViewHolder.findViewById(android.R.id.widget_frame);
            linearLayout.setVisibility(0);
            ImageView imageView2 = new ImageView(getContext());
            this.previewView = imageView2;
            imageView2.setId(R.id.preview_view);
            linearLayout.addView(this.previewView, createPreviewLayoutParams());
        }
        adaptPreviewView();
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.color = getColor();
        return savedState;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setColor(savedState.color);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
