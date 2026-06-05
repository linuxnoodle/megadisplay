package de.mrapp.android.validation;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractValidateableView<ViewType extends View, ValueType> extends LinearLayout implements Validateable<ValueType> {
    private static final boolean DEFAULT_VALIDATE_ON_FOCUS_LOST = true;
    private static final boolean DEFAULT_VALIDATE_ON_VALUE_CHANGE = true;
    private int errorColor;
    private CharSequence helperText;
    private int helperTextColor;
    private TextView leftMessage;
    private ListenerList<ValidationListener<ValueType>> listeners;
    private ViewGroup parentView;
    private TextView rightMessage;
    private boolean validateOnFocusLost;
    private boolean validateOnValueChange;
    private Set<Validator<ValueType>> validators;
    private ViewType view;

    protected abstract ViewGroup createParentView();

    protected abstract ViewType createView();

    protected abstract ValueType getValue();

    protected Collection<Validator<ValueType>> onGetLeftErrorMessage() {
        return null;
    }

    protected Collection<Validator<ValueType>> onGetRightErrorMessage() {
        return null;
    }

    protected void onValidate(boolean z) {
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.validation.AbstractValidateableView.SavedState.1
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
        boolean validateOnFocusLost;
        boolean validateOnValueChange;
        boolean validated;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.validated = parcel.readInt() == 1;
            this.validateOnValueChange = parcel.readInt() == 1;
            this.validateOnFocusLost = parcel.readInt() == 1;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.validated ? 1 : 0);
            parcel.writeInt(this.validateOnValueChange ? 1 : 0);
            parcel.writeInt(this.validateOnFocusLost ? 1 : 0);
        }
    }

    private void initialize(AttributeSet attributeSet) {
        this.validators = new LinkedHashSet();
        this.listeners = new ListenerList<>();
        setOrientation(1);
        inflateView();
        inflateErrorMessageTextViews();
        obtainStyledAttributes(attributeSet);
        setLeftMessage(null, null);
        setRightMessage(null);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.AbstractValidateableView);
        try {
            obtainHelperText(typedArrayObtainStyledAttributes);
            obtainHelperTextColor(typedArrayObtainStyledAttributes);
            obtainErrorColor(typedArrayObtainStyledAttributes);
            obtainValidateOnValueChange(typedArrayObtainStyledAttributes);
            obtainValidateOnFocusLost(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainHelperText(TypedArray typedArray) {
        setHelperText(typedArray.getString(R.styleable.AbstractValidateableView_helperText));
    }

    private void obtainHelperTextColor(TypedArray typedArray) {
        setHelperTextColor(typedArray.getColor(R.styleable.AbstractValidateableView_helperTextColor, ContextCompat.getColor(getContext(), R.color.default_helper_text_color)));
    }

    private void obtainErrorColor(TypedArray typedArray) {
        setErrorColor(typedArray.getColor(R.styleable.AbstractValidateableView_errorColor, ContextCompat.getColor(getContext(), R.color.default_error_color)));
    }

    private void obtainValidateOnValueChange(TypedArray typedArray) {
        validateOnValueChange(typedArray.getBoolean(R.styleable.AbstractValidateableView_validateOnValueChange, true));
    }

    private void obtainValidateOnFocusLost(TypedArray typedArray) {
        validateOnFocusLost(typedArray.getBoolean(R.styleable.AbstractValidateableView_validateOnFocusLost, true));
    }

    private void inflateView() {
        this.parentView = createParentView();
        ViewType viewtype = (ViewType) createView();
        this.view = viewtype;
        viewtype.setOnFocusChangeListener(createFocusChangeListener());
        this.view.setBackgroundResource(R.drawable.validateable_view_background);
        setLineColor(getAccentColor());
        ViewGroup viewGroup = this.parentView;
        if (viewGroup != null) {
            viewGroup.addView(this.view, -1, -2);
            addView(this.parentView, -1, -2);
        } else {
            addView(this.view, -1, -2);
        }
    }

    private void inflateErrorMessageTextViews() {
        View viewInflate = View.inflate(getContext(), R.layout.error_messages, null);
        addView(viewInflate, -1, -2);
        TextView textView = (TextView) viewInflate.findViewById(R.id.left_error_message);
        this.leftMessage = textView;
        textView.setTag(false);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.right_error_message);
        this.rightMessage = textView2;
        textView2.setTag(false);
    }

    private View.OnFocusChangeListener createFocusChangeListener() {
        return new View.OnFocusChangeListener() { // from class: de.mrapp.android.validation.AbstractValidateableView.1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (z || !AbstractValidateableView.this.isValidatedOnFocusLost()) {
                    return;
                }
                AbstractValidateableView.this.validate();
            }
        };
    }

    private void notifyOnValidationSuccess() {
        Iterator<ValidationListener<ValueType>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onValidationSuccess(this);
        }
    }

    private void notifyOnValidationFailure(Validator<ValueType> validator) {
        Iterator<ValidationListener<ValueType>> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onValidationFailure(this, validator);
        }
    }

    private Validator<ValueType> validateLeft() {
        Collection<Validator<ValueType>> collectionOnGetLeftErrorMessage = onGetLeftErrorMessage();
        Validator<ValueType> validator = null;
        if (collectionOnGetLeftErrorMessage != null) {
            for (Validator<ValueType> validator2 : collectionOnGetLeftErrorMessage) {
                notifyOnValidationFailure(validator2);
                if (validator == null) {
                    validator = validator2;
                }
            }
        }
        for (Validator<ValueType> validator3 : this.validators) {
            if (!validator3.validate(getValue())) {
                notifyOnValidationFailure(validator3);
                if (validator == null) {
                    validator = validator3;
                }
            }
        }
        return validator;
    }

    private Validator<ValueType> validateRight() {
        Collection<Validator<ValueType>> collectionOnGetRightErrorMessage = onGetRightErrorMessage();
        Validator<ValueType> validator = null;
        if (collectionOnGetRightErrorMessage != null) {
            for (Validator<ValueType> validator2 : collectionOnGetRightErrorMessage) {
                notifyOnValidationFailure(validator2);
                if (validator == null) {
                    validator = validator2;
                }
            }
        }
        return validator;
    }

    private int getAccentColor() {
        return getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.colorAccent}).getColor(0, 0);
    }

    private void setLineColor(int i) {
        this.view.getBackground().setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
    }

    private void setEnabledOnViewGroup(ViewGroup viewGroup, boolean z) {
        viewGroup.setEnabled(z);
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                setEnabledOnViewGroup((ViewGroup) childAt, z);
            } else {
                childAt.setEnabled(z);
            }
        }
    }

    private void setActivatedOnViewGroup(ViewGroup viewGroup, boolean z) {
        viewGroup.setActivated(z);
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                setActivatedOnViewGroup((ViewGroup) childAt, z);
            } else {
                childAt.setActivated(z);
            }
        }
    }

    protected final ViewType getView() {
        return this.view;
    }

    protected final void setLeftMessage(CharSequence charSequence, Drawable drawable) {
        setLeftMessage(charSequence, drawable, true);
    }

    protected final void setLeftMessage(CharSequence charSequence, Drawable drawable, boolean z) {
        if (charSequence != null) {
            this.leftMessage.setText(charSequence);
            this.leftMessage.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
            this.leftMessage.setTextColor(z ? getErrorColor() : getHelperTextColor());
            this.leftMessage.setTag(Boolean.valueOf(z));
            this.leftMessage.setVisibility(0);
            return;
        }
        if (getHelperText() != null) {
            setLeftMessage(getHelperText(), null, false);
        } else {
            this.leftMessage.setTag(false);
            this.leftMessage.setVisibility(8);
        }
    }

    protected final void setRightMessage(CharSequence charSequence) {
        setRightMessage(charSequence, true);
    }

    protected final void setRightMessage(CharSequence charSequence, boolean z) {
        if (charSequence != null) {
            this.rightMessage.setVisibility(0);
            this.rightMessage.setText(charSequence);
            this.rightMessage.setTextColor(z ? getErrorColor() : getHelperTextColor());
            this.rightMessage.setTag(Boolean.valueOf(z));
            return;
        }
        this.rightMessage.setTag(false);
        this.rightMessage.setVisibility(8);
    }

    public AbstractValidateableView(Context context) {
        super(context);
        initialize(null);
    }

    public AbstractValidateableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public AbstractValidateableView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    public AbstractValidateableView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final Collection<Validator<ValueType>> getValidators() {
        return this.validators;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addValidator(Validator<ValueType> validator) {
        Condition.INSTANCE.ensureNotNull(validator, "The validator may not be null");
        this.validators.add(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addAllValidators(Collection<Validator<ValueType>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Validator<ValueType>> it = collection.iterator();
        while (it.hasNext()) {
            addValidator(it.next());
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void addAllValidators(Validator<ValueType>... validatorArr) {
        Condition.INSTANCE.ensureNotNull(validatorArr, "The array may not be null");
        addAllValidators(Arrays.asList(validatorArr));
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidator(Validator<ValueType> validator) {
        Condition.INSTANCE.ensureNotNull(validator, "The validator may not be null");
        this.validators.remove(validator);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators(Collection<Validator<ValueType>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Validator<ValueType>> it = collection.iterator();
        while (it.hasNext()) {
            removeValidator(it.next());
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    @SafeVarargs
    public final void removeAllValidators(Validator<ValueType>... validatorArr) {
        Condition.INSTANCE.ensureNotNull(validatorArr, "The array may not be null");
        removeAllValidators(Arrays.asList(validatorArr));
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeAllValidators() {
        this.validators.clear();
    }

    public final CharSequence getHelperText() {
        return this.helperText;
    }

    public final void setHelperText(CharSequence charSequence) {
        this.helperText = charSequence;
        if (getError() == null) {
            setLeftMessage(charSequence, null, false);
        }
    }

    public final void setHelperText(int i) {
        setHelperText(getContext().getText(i));
    }

    public final int getErrorColor() {
        return this.errorColor;
    }

    public final void setErrorColor(int i) {
        this.errorColor = i;
        if (((Boolean) this.leftMessage.getTag()).booleanValue()) {
            this.leftMessage.setTextColor(i);
        }
        if (((Boolean) this.rightMessage.getTag()).booleanValue()) {
            this.rightMessage.setTextColor(i);
        }
    }

    public final int getHelperTextColor() {
        return this.helperTextColor;
    }

    public final void setHelperTextColor(int i) {
        this.helperTextColor = i;
        if (!((Boolean) this.leftMessage.getTag()).booleanValue()) {
            this.leftMessage.setTextColor(i);
        }
        if (((Boolean) this.rightMessage.getTag()).booleanValue()) {
            return;
        }
        this.rightMessage.setTextColor(i);
    }

    public final CharSequence getError() {
        if (this.leftMessage.getVisibility() == 0 && ((Boolean) this.leftMessage.getTag()).booleanValue()) {
            return this.leftMessage.getText();
        }
        return null;
    }

    public final void setError(CharSequence charSequence) {
        setError(charSequence, null);
    }

    public void setError(CharSequence charSequence, Drawable drawable) {
        setLeftMessage(charSequence, drawable);
        setActivated(charSequence != null);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            setError(null);
        }
        this.view.setEnabled(z);
        ViewGroup viewGroup = this.parentView;
        if (viewGroup != null) {
            setEnabledOnViewGroup(viewGroup, z);
        }
    }

    @Override // android.view.View
    public final void setActivated(boolean z) {
        super.setActivated(z);
        this.view.setActivated(z);
        ViewGroup viewGroup = this.parentView;
        if (viewGroup != null) {
            setActivatedOnViewGroup(viewGroup, z);
        }
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean validate() {
        Validator<ValueType> validatorValidateLeft = validateLeft();
        Validator<ValueType> validatorValidateRight = validateRight();
        setLeftMessage(validatorValidateLeft != null ? validatorValidateLeft.getErrorMessage() : null, validatorValidateLeft != null ? validatorValidateLeft.getIcon() : null);
        setRightMessage(validatorValidateRight != null ? validatorValidateRight.getErrorMessage() : null);
        if (validatorValidateLeft == null && validatorValidateRight == null) {
            notifyOnValidationSuccess();
            onValidate(true);
            setActivated(false);
            setLineColor(getAccentColor());
            return true;
        }
        onValidate(false);
        setActivated(true);
        setLineColor(getErrorColor());
        return false;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean isValidatedOnValueChange() {
        return this.validateOnValueChange;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void validateOnValueChange(boolean z) {
        this.validateOnValueChange = z;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final boolean isValidatedOnFocusLost() {
        return this.validateOnFocusLost;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void validateOnFocusLost(boolean z) {
        this.validateOnFocusLost = z;
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void addValidationListener(ValidationListener<ValueType> validationListener) {
        Condition.INSTANCE.ensureNotNull(validationListener, "The listener may not be null");
        this.listeners.add(validationListener);
    }

    @Override // de.mrapp.android.validation.Validateable
    public final void removeValidationListener(ValidationListener<ValueType> validationListener) {
        Condition.INSTANCE.ensureNotNull(validationListener, "The listener may not be null");
        this.listeners.remove(validationListener);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            return null;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.validated = getError() != null;
        savedState.validateOnValueChange = isValidatedOnValueChange();
        savedState.validateOnFocusLost = isValidatedOnFocusLost();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            if (savedState.validated) {
                validate();
            }
            validateOnValueChange(savedState.validateOnValueChange);
            validateOnFocusLost(savedState.validateOnFocusLost);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
