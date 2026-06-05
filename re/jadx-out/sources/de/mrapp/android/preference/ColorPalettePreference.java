package de.mrapp.android.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.builder.AbstractListDialogBuilder;
import de.mrapp.android.dialog.model.ListDialog;
import de.mrapp.android.preference.AbstractColorPickerPreference;
import de.mrapp.android.preference.adapter.ColorPaletteAdapter;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ColorPalettePreference extends AbstractColorPickerPreference {
    private ColorPaletteAdapter adapter;
    private int[] colorPalette;
    private Drawable dialogPreviewBackground;
    private int dialogPreviewBorderColor;
    private int dialogPreviewBorderWidth;
    private AbstractColorPickerPreference.PreviewShape dialogPreviewShape;
    private int dialogPreviewSize;
    private int numberOfColumns;
    private int selectedIndex;

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        this.colorPalette = new int[0];
        setNegativeButtonText(android.R.string.cancel);
        setPositiveButtonText((CharSequence) null);
        obtainStyledAttributes(attributeSet, i, i2);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ColorPalettePreference, i, i2);
        try {
            obtainColorPalette(typedArrayObtainStyledAttributes);
            obtainDialogPreviewSize(typedArrayObtainStyledAttributes);
            obtainDialogPreviewShape(typedArrayObtainStyledAttributes);
            obtainDialogPreviewBorderWidth(typedArrayObtainStyledAttributes);
            obtainDialogPreviewBorderColor(typedArrayObtainStyledAttributes);
            obtainDialogPreviewBackground(typedArrayObtainStyledAttributes);
            obtainNumberOfColumns(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainColorPalette(TypedArray typedArray) {
        int resourceId = typedArray.getResourceId(R.styleable.ColorPalettePreference_colorPalette, -1);
        if (resourceId != -1) {
            setColorPalette(getContext().getResources().getIntArray(resourceId));
        }
    }

    private void obtainDialogPreviewSize(TypedArray typedArray) {
        setDialogPreviewSize(typedArray.getDimensionPixelSize(R.styleable.ColorPalettePreference_dialogPreviewSize, getContext().getResources().getDimensionPixelSize(R.dimen.color_palette_preference_default_dialog_preview_size)));
    }

    private void obtainDialogPreviewShape(TypedArray typedArray) {
        setDialogPreviewShape(AbstractColorPickerPreference.PreviewShape.fromValue(typedArray.getInteger(R.styleable.ColorPalettePreference_dialogPreviewShape, getContext().getResources().getInteger(R.integer.color_palette_preference_default_dialog_preview_shape))));
    }

    private void obtainDialogPreviewBorderWidth(TypedArray typedArray) {
        setDialogPreviewBorderWidth(typedArray.getDimensionPixelSize(R.styleable.ColorPalettePreference_dialogPreviewBorderWidth, getContext().getResources().getDimensionPixelSize(R.dimen.color_palette_preference_default_dialog_preview_border_width)));
    }

    private void obtainDialogPreviewBorderColor(TypedArray typedArray) {
        setDialogPreviewBorderColor(typedArray.getColor(R.styleable.ColorPalettePreference_dialogPreviewBorderColor, ContextCompat.getColor(getContext(), R.color.color_palette_preference_default_dialog_preview_border_color)));
    }

    private void obtainDialogPreviewBackground(TypedArray typedArray) {
        int color = typedArray.getColor(R.styleable.ColorPalettePreference_dialogPreviewBackground, -1);
        if (color != -1) {
            setPreviewBackgroundColor(color);
        } else {
            setDialogPreviewBackground(ContextCompat.getDrawable(getContext(), typedArray.getResourceId(R.styleable.ColorPalettePreference_dialogPreviewBackground, R.drawable.color_picker_default_preview_background)));
        }
    }

    private void obtainNumberOfColumns(TypedArray typedArray) {
        setNumberOfColumns(typedArray.getInteger(R.styleable.ColorPalettePreference_android_numColumns, getContext().getResources().getInteger(R.integer.color_palette_preference_default_number_of_columns)));
    }

    private ListDialog.OnItemSelectedListener createItemSelectedListener() {
        return new ListDialog.OnItemSelectedListener() { // from class: de.mrapp.android.preference.ColorPalettePreference.1
            @Override // de.mrapp.android.dialog.model.ListDialog.OnItemSelectedListener
            public void onItemSelectionStateChanged(int i, boolean z) {
                if (z) {
                    ColorPalettePreference.this.selectedIndex = i;
                    ColorPalettePreference colorPalettePreference = ColorPalettePreference.this;
                    colorPalettePreference.onClick(colorPalettePreference.getDialog(), -1);
                    if (ColorPalettePreference.this.getDialog() != null) {
                        ColorPalettePreference.this.getDialog().dismiss();
                    }
                }
            }
        };
    }

    public ColorPalettePreference(Context context) {
        this(context, null);
    }

    public ColorPalettePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public ColorPalettePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.selectedIndex = -1;
        initialize(attributeSet, i, 0);
    }

    public ColorPalettePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.selectedIndex = -1;
        initialize(attributeSet, i, i2);
    }

    public final int[] getColorPalette() {
        return this.colorPalette;
    }

    public final void setColorPalette(int[] iArr) {
        Condition.INSTANCE.ensureNotNull(iArr, "The color palette may not be null");
        this.colorPalette = iArr;
    }

    public final void setColorPalette(int i) {
        setColorPalette(getContext().getResources().getIntArray(i));
    }

    public final int getDialogPreviewSize() {
        return this.dialogPreviewSize;
    }

    public final void setDialogPreviewSize(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The preview size must be at least 1");
        this.dialogPreviewSize = i;
    }

    public final AbstractColorPickerPreference.PreviewShape getDialogPreviewShape() {
        return this.dialogPreviewShape;
    }

    public final void setDialogPreviewShape(AbstractColorPickerPreference.PreviewShape previewShape) {
        Condition.INSTANCE.ensureNotNull(previewShape, "The preview shape may not be null");
        this.dialogPreviewShape = previewShape;
    }

    public final int getDialogPreviewBorderWidth() {
        return this.dialogPreviewBorderWidth;
    }

    public final void setDialogPreviewBorderWidth(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The border width must be at least 0");
        this.dialogPreviewBorderWidth = i;
    }

    public final int getDialogPreviewBorderColor() {
        return this.dialogPreviewBorderColor;
    }

    public final void setDialogPreviewBorderColor(int i) {
        this.dialogPreviewBorderColor = i;
    }

    public final Drawable getDialogPreviewBackground() {
        return this.dialogPreviewBackground;
    }

    public final void setDialogPreviewBackground(Drawable drawable) {
        this.dialogPreviewBackground = drawable;
    }

    public final void setDialogPreviewBackground(int i) {
        setDialogPreviewBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public final void setDialogPreviewBackgroundColor(int i) {
        setDialogPreviewBackground(new ColorDrawable(i));
    }

    public final int getNumberOfColumns() {
        return this.numberOfColumns;
    }

    public final void setNumberOfColumns(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 1, "The number of columns must be at least 1");
        this.numberOfColumns = i;
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        AbstractListDialogBuilder abstractListDialogBuilder = (AbstractListDialogBuilder) abstractButtonBarDialogBuilder;
        ColorPaletteAdapter colorPaletteAdapter = new ColorPaletteAdapter(abstractListDialogBuilder.getContext(), getColorPalette(), getDialogPreviewSize(), getDialogPreviewShape(), getDialogPreviewBorderWidth(), getDialogPreviewBorderColor(), getDialogPreviewBackground());
        this.adapter = colorPaletteAdapter;
        this.selectedIndex = colorPaletteAdapter.indexOf(getColor());
        abstractListDialogBuilder.setSingleChoiceItems(this.adapter, new GridLayoutManager(getContext(), getNumberOfColumns()), this.selectedIndex, (DialogInterface.OnClickListener) null);
        abstractListDialogBuilder.setOnItemSelectedListener(createItemSelectedListener());
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z) {
            int item = this.adapter.getItem(this.selectedIndex);
            if (callChangeListener(Integer.valueOf(item))) {
                setColor(item);
            }
        }
        this.adapter = null;
    }
}
