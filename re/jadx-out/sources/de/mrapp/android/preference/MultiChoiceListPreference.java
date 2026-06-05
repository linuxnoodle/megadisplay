package de.mrapp.android.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.dialog.builder.AbstractListDialogBuilder;
import de.mrapp.android.util.view.AbstractSavedState;
import de.mrapp.util.Condition;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class MultiChoiceListPreference extends AbstractListPreference {
    private Set<Integer> selectedIndices;
    private Set<String> values;

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.MultiChoiceListPreference.SavedState.1
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
        public Set<String> values;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.values = new HashSet(arrayList);
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeStringList(new ArrayList(this.values));
        }
    }

    private void initialize() {
        this.selectedIndices = null;
        setNegativeButtonText(android.R.string.cancel);
        setPositiveButtonText(android.R.string.ok);
    }

    private Set<String> getPersistedSet(Set<String> set) {
        return !shouldPersist() ? set : getPreferenceManager().getSharedPreferences().getStringSet(getKey(), set);
    }

    private List<Integer> indicesOf(Set<String> set) {
        ArrayList arrayList = new ArrayList();
        if (set != null && getEntryValues() != null) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                int iIndexOf = indexOf(it.next());
                if (iIndexOf >= 0) {
                    arrayList.add(Integer.valueOf(iIndexOf));
                }
            }
        }
        return arrayList;
    }

    private boolean persistSet(Set<String> set) {
        if (set == null || !shouldPersist()) {
            return false;
        }
        if (set.equals(getPersistedSet(null))) {
            return true;
        }
        SharedPreferences.Editor editorEdit = getPreferenceManager().getSharedPreferences().edit();
        editorEdit.putStringSet(getKey(), set);
        editorEdit.apply();
        return true;
    }

    private DialogInterface.OnMultiChoiceClickListener createListItemListener() {
        return new DialogInterface.OnMultiChoiceClickListener() { // from class: de.mrapp.android.preference.MultiChoiceListPreference.1
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public void onClick(DialogInterface dialogInterface, int i, boolean z) {
                if (z) {
                    MultiChoiceListPreference.this.selectedIndices.add(Integer.valueOf(i));
                } else {
                    MultiChoiceListPreference.this.selectedIndices.remove(Integer.valueOf(i));
                }
            }
        };
    }

    public MultiChoiceListPreference(Context context) {
        this(context, null);
    }

    public MultiChoiceListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public MultiChoiceListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize();
    }

    public MultiChoiceListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize();
    }

    public final Set<String> getValues() {
        return this.values;
    }

    public final void setValues(Set<String> set) {
        if (set == null || set.equals(this.values)) {
            return;
        }
        this.values = set;
        persistSet(set);
        notifyChanged();
    }

    public final void addValue(String str) {
        Condition.INSTANCE.ensureNotNull(str, "The value may not be null");
        Set<String> set = this.values;
        if (set != null) {
            if (set.add(str) && persistSet(this.values)) {
                notifyChanged();
                return;
            }
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(str);
        setValues(hashSet);
    }

    public final void removeValue(String str) {
        Condition.INSTANCE.ensureNotNull(str, "The value may not be null");
        Set<String> set = this.values;
        if (set != null && set.remove(str) && persistSet(this.values)) {
            notifyChanged();
        }
    }

    public final void addAllValues(Collection<String> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The values may not be null");
        Set<String> set = this.values;
        if (set != null) {
            if (set.addAll(collection) && persistSet(this.values)) {
                notifyChanged();
                return;
            }
            return;
        }
        setValues(new HashSet(collection));
    }

    public final void removeAllValues(Collection<String> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The values may not be null");
        Set<String> set = this.values;
        if (set != null && set.removeAll(collection) && persistSet(this.values)) {
            notifyChanged();
        }
    }

    public final CharSequence[] getSelectedEntries() {
        List<Integer> listIndicesOf = indicesOf(this.values);
        Collections.sort(listIndicesOf);
        if (listIndicesOf.isEmpty()) {
            return null;
        }
        CharSequence[] charSequenceArr = new CharSequence[listIndicesOf.size()];
        Iterator<Integer> it = listIndicesOf.iterator();
        int i = 0;
        while (it.hasNext()) {
            charSequenceArr[i] = getEntries()[it.next().intValue()];
            i++;
        }
        return charSequenceArr;
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (isValueShownAsSummary()) {
            CharSequence[] selectedEntries = getSelectedEntries();
            if (selectedEntries != null && selectedEntries.length > 0) {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < selectedEntries.length; i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(selectedEntries[i]);
                }
                return sb.toString();
            }
            return super.getSummary();
        }
        return super.getSummary();
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        if (textArray == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        setValues(obj == null ? getPersistedSet(getValues()) : (Set) obj);
    }

    @Override // de.mrapp.android.preference.AbstractListPreference, de.mrapp.android.preference.DialogPreference
    protected final void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        super.onPrepareDialog(abstractButtonBarDialogBuilder);
        this.selectedIndices = new HashSet(indicesOf(this.values));
        boolean[] zArr = new boolean[getEntryValues().length];
        Iterator<Integer> it = this.selectedIndices.iterator();
        while (it.hasNext()) {
            zArr[it.next().intValue()] = true;
        }
        ((AbstractListDialogBuilder) abstractButtonBarDialogBuilder).setMultiChoiceItems(getEntries(), zArr, createListItemListener());
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z && this.selectedIndices != null && getEntryValues() != null) {
            Set<String> hashSet = new HashSet<>();
            Iterator<Integer> it = this.selectedIndices.iterator();
            while (it.hasNext()) {
                hashSet.add(getEntryValues()[it.next().intValue()].toString());
            }
            if (callChangeListener(hashSet)) {
                setValues(hashSet);
            }
        }
        this.selectedIndices = null;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.values = getValues();
        return savedState;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setValues(savedState.values);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
