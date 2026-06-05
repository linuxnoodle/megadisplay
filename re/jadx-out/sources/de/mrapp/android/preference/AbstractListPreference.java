package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.builder.AbstractListDialogBuilder;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractListPreference extends DialogPreference {
    private ColorStateList dialogItemColor;
    private Typeface dialogItemTypeface;
    private CharSequence[] entries;
    private CharSequence[] entryValues;

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        this.entries = new CharSequence[0];
        this.entryValues = new CharSequence[0];
        obtainStyledAttributes(attributeSet, i, i2);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractListPreference, i, i2);
        try {
            obtainDialogItemColor(typedArrayObtainStyledAttributes);
            obtainEntries(typedArrayObtainStyledAttributes);
            obtainEntryValues(typedArrayObtainStyledAttributes);
            obtainDialogScrollableArea(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainDialogItemColor(TypedArray typedArray) {
        ColorStateList colorStateList = typedArray.getColorStateList(R.styleable.AbstractListPreference_dialogItemColor);
        if (colorStateList != null) {
            setDialogItemColor(colorStateList);
        }
    }

    private void obtainEntries(TypedArray typedArray) {
        CharSequence[] textArray = typedArray.getTextArray(R.styleable.AbstractListPreference_android_entries);
        if (textArray != null) {
            setEntries(textArray);
        }
    }

    private void obtainEntryValues(TypedArray typedArray) {
        CharSequence[] textArray = typedArray.getTextArray(R.styleable.AbstractListPreference_android_entryValues);
        if (textArray != null) {
            setEntryValues(textArray);
        }
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
        if (areaFromIndex == null) {
            areaFromIndex = area;
        }
        setDialogScrollableArea(area, areaFromIndex);
    }

    protected final int indexOf(CharSequence charSequence) {
        CharSequence[] charSequenceArr;
        if (charSequence == null || (charSequenceArr = this.entryValues) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            CharSequence charSequence2 = this.entryValues[length];
            if (charSequence2 == charSequence || (charSequence2 != null && charSequence2.equals(charSequence))) {
                return length;
            }
        }
        return -1;
    }

    public AbstractListPreference(Context context) {
        this(context, null);
    }

    public AbstractListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AbstractListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public AbstractListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final ColorStateList getDialogItemColor() {
        return this.dialogItemColor;
    }

    public final void setDialogItemColor(int i) {
        setDialogItemColor(ColorStateList.valueOf(i));
    }

    public final void setDialogItemColor(ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(colorStateList, "The color state list may not be null");
        this.dialogItemColor = colorStateList;
    }

    public final Typeface getDialogItemTypeface() {
        return this.dialogItemTypeface;
    }

    public final void setDialogItemTypeface(Typeface typeface) {
        this.dialogItemTypeface = typeface;
    }

    public final CharSequence[] getEntries() {
        return this.entries;
    }

    public final void setEntries(CharSequence[] charSequenceArr) {
        Condition.INSTANCE.ensureNotNull(charSequenceArr, "The entries may not be null");
        this.entries = charSequenceArr;
    }

    public final void setEntries(int i) {
        setEntries(getContext().getResources().getTextArray(i));
    }

    public final void setEntryValues(CharSequence[] charSequenceArr) {
        Condition.INSTANCE.ensureNotNull(charSequenceArr, "The entry values may not be null");
        this.entryValues = charSequenceArr;
    }

    public final CharSequence[] getEntryValues() {
        return this.entryValues;
    }

    public final void setEntryValues(int i) {
        setEntryValues(getContext().getResources().getTextArray(i));
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        AbstractListDialogBuilder abstractListDialogBuilder = (AbstractListDialogBuilder) abstractButtonBarDialogBuilder;
        if (getDialogItemColor() != null) {
            abstractListDialogBuilder.setItemColor(getDialogItemColor());
        }
        if (getDialogItemTypeface() != null) {
            abstractListDialogBuilder.setItemTypeface(getDialogItemTypeface());
        }
    }
}
