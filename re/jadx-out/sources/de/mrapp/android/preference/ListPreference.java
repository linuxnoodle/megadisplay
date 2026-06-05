package de.mrapp.android.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.builder.AbstractListDialogBuilder;
import de.mrapp.android.util.view.AbstractSavedState;

/* JADX INFO: loaded from: classes2.dex */
public class ListPreference extends AbstractListPreference {
    private int selectedIndex;
    private String value;

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.ListPreference.SavedState.1
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
        public String value;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.value = parcel.readString();
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.value);
        }
    }

    private void initialize() {
        this.selectedIndex = -1;
        setNegativeButtonText(android.R.string.cancel);
        setPositiveButtonText((CharSequence) null);
    }

    private DialogInterface.OnClickListener createListItemListener() {
        return new DialogInterface.OnClickListener() { // from class: de.mrapp.android.preference.ListPreference.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ListPreference.this.selectedIndex = i;
                ListPreference.this.onClick(dialogInterface, -1);
                dialogInterface.dismiss();
            }
        };
    }

    public ListPreference(Context context) {
        this(context, null);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize();
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize();
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String str) {
        if (TextUtils.equals(this.value, str)) {
            return;
        }
        this.value = str;
        persistString(str);
        notifyChanged();
    }

    public final void setValueIndex(int i) {
        if (getEntryValues() != null) {
            setValue(getEntryValues()[i].toString());
        }
    }

    public final CharSequence getEntry() {
        int iIndexOf = indexOf(this.value);
        if (iIndexOf < 0 || getEntries() == null) {
            return null;
        }
        return getEntries()[iIndexOf];
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (isValueShownAsSummary()) {
            return getEntry();
        }
        return super.getSummary();
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        setValue(obj == null ? getPersistedString(getValue()) : (String) obj);
    }

    @Override // de.mrapp.android.preference.AbstractListPreference, de.mrapp.android.preference.DialogPreference
    protected void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        super.onPrepareDialog(abstractButtonBarDialogBuilder);
        this.selectedIndex = indexOf(getValue());
        ((AbstractListDialogBuilder) abstractButtonBarDialogBuilder).setSingleChoiceItems(getEntries(), this.selectedIndex, createListItemListener());
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z && this.selectedIndex >= 0 && getEntryValues() != null) {
            String string = getEntryValues()[this.selectedIndex].toString();
            if (callChangeListener(string)) {
                setValue(string);
            }
        }
        this.selectedIndex = -1;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.value = getValue();
        return savedState;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setValue(savedState.value);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
