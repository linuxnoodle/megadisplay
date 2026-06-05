package de.mrapp.android.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import de.mrapp.android.dialog.AbstractButtonBarDialog;
import de.mrapp.android.dialog.EditTextDialog;
import de.mrapp.android.dialog.builder.AbstractButtonBarDialogBuilder;
import de.mrapp.android.util.view.AbstractSavedState;
import de.mrapp.android.validation.Validateable;
import de.mrapp.android.validation.ValidationListener;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class EditTextPreference extends AbstractValidateableDialogPreference<CharSequence> {
    private CharSequence hint;
    private String text;

    @Override // de.mrapp.android.preference.DialogPreference
    protected final boolean needInputMethod() {
        return true;
    }

    public static class SavedState extends AbstractSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.preference.EditTextPreference.SavedState.1
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
        public String text;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.text = parcel.readString();
        }

        @Override // de.mrapp.android.util.view.AbstractSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.text);
        }
    }

    private void initialize(AttributeSet attributeSet, int i, int i2) {
        obtainStyledAttributes(attributeSet, i, i2);
        setPositiveButtonText(android.R.string.ok);
        setNegativeButtonText(android.R.string.cancel);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.EditTextPreference, i, i2);
        try {
            obtainHint(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainHint(TypedArray typedArray) {
        setHint(typedArray.getText(R.styleable.EditTextPreference_android_hint));
    }

    public EditTextPreference(Context context) {
        this(context, null);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.dialogPreferenceStyle);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet, i, i2);
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        boolean zShouldDisableDependents = shouldDisableDependents();
        this.text = str;
        persistString(str);
        boolean zShouldDisableDependents2 = shouldDisableDependents();
        if (zShouldDisableDependents2 != zShouldDisableDependents) {
            notifyDependencyChange(zShouldDisableDependents2);
        }
        notifyChanged();
    }

    public final CharSequence getHint() {
        return this.hint;
    }

    public final void setHint(CharSequence charSequence) {
        this.hint = charSequence;
    }

    public final void setHint(int i) {
        setHint(getContext().getText(i));
    }

    @Override // androidx.preference.Preference
    public final CharSequence getSummary() {
        if (isValueShownAsSummary() && !TextUtils.isEmpty(getText())) {
            return getText();
        }
        return super.getSummary();
    }

    @Override // androidx.preference.Preference
    public final boolean shouldDisableDependents() {
        return TextUtils.isEmpty(getText()) || super.shouldDisableDependents();
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean validate() {
        KeyEvent.Callback dialog = getDialog();
        if (dialog instanceof Validateable) {
            return ((Validateable) dialog).validate();
        }
        return true;
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected AbstractButtonBarDialogBuilder<?, ?> createDialogBuilder(int i) {
        return new EditTextDialog.Builder(getContext(), i);
    }

    @Override // de.mrapp.android.preference.AbstractValidateableDialogPreference, de.mrapp.android.preference.DialogPreference
    protected final void onPrepareDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        super.onPrepareDialog(abstractButtonBarDialogBuilder);
        EditTextDialog.Builder builder = (EditTextDialog.Builder) abstractButtonBarDialogBuilder;
        builder.addAllValidators(getValidators());
        builder.validateOnValueChange(isValidatedOnValueChange());
        builder.validateOnFocusLost(isValidatedOnFocusLost());
        builder.setHelperText(getHelperText());
        builder.setHelperTextColor(getHelperTextColor());
        builder.setErrorColor(getErrorColor());
        builder.setHint(getHint());
        Iterator<ValidationListener<CharSequence>> it = getValidationListeners().iterator();
        while (it.hasNext()) {
            builder.addValidationListener(it.next());
        }
        builder.setText(getText());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // de.mrapp.android.preference.DialogPreference
    protected AbstractButtonBarDialog createDialog(AbstractButtonBarDialogBuilder<?, ?> abstractButtonBarDialogBuilder) {
        return (AbstractButtonBarDialog) ((EditTextDialog.Builder) abstractButtonBarDialogBuilder).create();
    }

    @Override // de.mrapp.android.preference.DialogPreference
    protected final void onDialogClosed(AbstractButtonBarDialog abstractButtonBarDialog, boolean z) {
        if (z && (abstractButtonBarDialog instanceof EditTextDialog)) {
            String string = ((EditTextDialog) abstractButtonBarDialog).getText().toString();
            if (callChangeListener(string)) {
                setText(string);
            }
        }
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        setText(obj == null ? getPersistedString(getText()) : (String) obj);
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.text = getText();
        return savedState;
    }

    @Override // de.mrapp.android.preference.DialogPreference, androidx.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            setText(savedState.text);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
