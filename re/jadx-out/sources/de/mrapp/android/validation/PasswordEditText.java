package de.mrapp.android.validation;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import de.mrapp.util.Condition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PasswordEditText extends EditText {
    private List<Constraint<CharSequence>> constraints;
    private List<Integer> helperTextColors;
    private List<CharSequence> helperTexts;
    private String passwordVerificationPrefix;
    private CharSequence regularHelperText;
    private int regularHelperTextColor;

    private void initialize(AttributeSet attributeSet) {
        this.constraints = new ArrayList();
        this.helperTexts = new ArrayList();
        this.helperTextColors = new ArrayList();
        this.regularHelperText = getHelperText();
        this.regularHelperTextColor = getHelperTextColor();
        obtainStyledAttributes(attributeSet);
        setInputType(129);
        getView().addTextChangedListener(createTextChangeListener());
    }

    private void obtainStyledAttributes(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.PasswordEditText);
        try {
            obtainPasswordVerificationPrefix(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainPasswordVerificationPrefix(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.PasswordEditText_passwordVerificationPrefix);
        if (string == null) {
            string = getResources().getString(R.string.password_verification_prefix);
        }
        setPasswordVerificationPrefix(string);
    }

    private TextWatcher createTextChangeListener() {
        return new TextWatcher() { // from class: de.mrapp.android.validation.PasswordEditText.1
            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                PasswordEditText.this.verifyPasswordStrength();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void verifyPasswordStrength() {
        if (isEnabled() && !this.constraints.isEmpty() && !TextUtils.isEmpty(getText())) {
            adaptHelperText(getPasswordStrength());
        } else {
            setHelperText(this.regularHelperText);
        }
    }

    private float getPasswordStrength() {
        Editable text = getView().getText();
        Iterator<Constraint<CharSequence>> it = this.constraints.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isSatisfied(text)) {
                i++;
            }
        }
        return i / this.constraints.size();
    }

    private void adaptHelperText(float f) {
        String str;
        if (!this.helperTexts.isEmpty()) {
            CharSequence helperText = getHelperText(f);
            if (helperText != null) {
                String str2 = "<font color=\"" + getHelperTextColor(f) + "\">" + ((Object) helperText) + "</font>";
                String passwordVerificationPrefix = getPasswordVerificationPrefix();
                if (passwordVerificationPrefix != null) {
                    str = "<font color=\"" + this.regularHelperTextColor + "\">" + passwordVerificationPrefix + ": </font>";
                } else {
                    str = "";
                }
                setHelperText(Html.fromHtml(str + ((Object) str2)));
                return;
            }
            setHelperText(this.regularHelperText);
            return;
        }
        setHelperText(this.regularHelperText);
    }

    private CharSequence getHelperText(float f) {
        if (this.helperTexts.isEmpty()) {
            return null;
        }
        return this.helperTexts.get(Math.min(Math.max(((int) Math.floor(f / (1.0f / this.helperTexts.size()))) - 1, 0), this.helperTexts.size() - 1));
    }

    private int getHelperTextColor(float f) {
        if (!this.helperTextColors.isEmpty()) {
            return this.helperTextColors.get(Math.min(Math.max(((int) Math.floor(f / (1.0f / this.helperTextColors.size()))) - 1, 0), this.helperTextColors.size() - 1)).intValue();
        }
        return this.regularHelperTextColor;
    }

    public PasswordEditText(Context context) {
        super(context);
        initialize(null);
    }

    public PasswordEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public PasswordEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    public PasswordEditText(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet);
    }

    public final Collection<Constraint<CharSequence>> getConstraints() {
        return this.constraints;
    }

    public final void addConstraint(Constraint<CharSequence> constraint) {
        Condition.INSTANCE.ensureNotNull(constraint, "The constraint may not be null");
        if (this.constraints.contains(constraint)) {
            return;
        }
        this.constraints.add(constraint);
        verifyPasswordStrength();
    }

    public final void addAllConstraints(Collection<Constraint<CharSequence>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Constraint<CharSequence>> it = collection.iterator();
        while (it.hasNext()) {
            addConstraint(it.next());
        }
    }

    @SafeVarargs
    public final void addAllConstraints(Constraint<CharSequence>... constraintArr) {
        Condition.INSTANCE.ensureNotNull(constraintArr, "The array may not be null");
        addAllConstraints(Arrays.asList(constraintArr));
    }

    public final void removeConstraint(Constraint<CharSequence> constraint) {
        Condition.INSTANCE.ensureNotNull(constraint, "The constraint may not be null");
        this.constraints.remove(constraint);
        verifyPasswordStrength();
    }

    public final void removeAllConstraints(Collection<Constraint<CharSequence>> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Constraint<CharSequence>> it = collection.iterator();
        while (it.hasNext()) {
            removeConstraint(it.next());
        }
    }

    @SafeVarargs
    public final void removeAllConstraints(Constraint<CharSequence>... constraintArr) {
        Condition.INSTANCE.ensureNotNull(constraintArr, "The array may not be null");
        removeAllConstraints(Arrays.asList(constraintArr));
    }

    public final void removeAllConstraints() {
        this.constraints.clear();
    }

    public final Collection<CharSequence> getHelperTexts() {
        return this.helperTexts;
    }

    public final void addHelperText(CharSequence charSequence) {
        Condition.INSTANCE.ensureNotNull(charSequence, "The helper text may not be null");
        Condition.INSTANCE.ensureNotEmpty(charSequence, "The helper text may not be empty");
        if (this.helperTexts.contains(charSequence)) {
            return;
        }
        this.helperTexts.add(charSequence);
        verifyPasswordStrength();
    }

    public final void addHelperTextId(int i) {
        addHelperText(getResources().getText(i));
    }

    public final void addAllHelperTexts(Collection<CharSequence> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<CharSequence> it = collection.iterator();
        while (it.hasNext()) {
            addHelperText(it.next());
        }
    }

    public final void addAllHelperTextIds(Collection<Integer> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            addHelperTextId(it.next().intValue());
        }
    }

    public final void addAllHelperTexts(CharSequence... charSequenceArr) {
        Condition.INSTANCE.ensureNotNull(charSequenceArr, "The array may not be null");
        addAllHelperTexts(Arrays.asList(charSequenceArr));
    }

    public final void addAllHelperTextIds(int... iArr) {
        Condition.INSTANCE.ensureNotNull(iArr, "The array may not be null");
        for (int i : iArr) {
            addHelperTextId(i);
        }
    }

    public final void removeHelperText(CharSequence charSequence) {
        Condition.INSTANCE.ensureNotNull(charSequence, "The helper text may not be null");
        Condition.INSTANCE.ensureNotEmpty(charSequence, "The helper text may not be empty");
        this.helperTexts.remove(charSequence);
        verifyPasswordStrength();
    }

    public final void removeHelperTextId(int i) {
        removeHelperText(getResources().getText(i));
    }

    public final void removeAllHelperTexts(Collection<CharSequence> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<CharSequence> it = collection.iterator();
        while (it.hasNext()) {
            removeHelperText(it.next());
        }
    }

    public final void removeAllHelperTextIds(Collection<Integer> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            removeHelperTextId(it.next().intValue());
        }
    }

    public final void removeAllHelperTexts(CharSequence... charSequenceArr) {
        Condition.INSTANCE.ensureNotNull(charSequenceArr, "The array may not be null");
        removeAllHelperTexts(Arrays.asList(charSequenceArr));
    }

    public final void removeAllHelperTextIds(int... iArr) {
        Condition.INSTANCE.ensureNotNull(iArr, "The array may not be null");
        for (int i : iArr) {
            removeHelperTextId(i);
        }
    }

    public final void removeAllHelperTexts() {
        this.helperTexts.clear();
    }

    public final Collection<Integer> getHelperTextColors() {
        return this.helperTextColors;
    }

    public final void addHelperTextColor(int i) {
        if (this.helperTextColors.contains(Integer.valueOf(i))) {
            return;
        }
        this.helperTextColors.add(Integer.valueOf(i));
        verifyPasswordStrength();
    }

    public final void addHelperTextColorId(int i) {
        addHelperTextColor(ContextCompat.getColor(getContext(), i));
    }

    public final void addAllHelperTextColors(Collection<Integer> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            addHelperTextColor(it.next().intValue());
        }
    }

    public final void addAllHelperTextColorIds(Collection<Integer> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            addHelperTextColorId(it.next().intValue());
        }
    }

    public final void addAllHelperTextColors(int... iArr) {
        Condition.INSTANCE.ensureNotNull(iArr, "The array may not be null");
        for (int i : iArr) {
            addHelperTextColor(i);
        }
    }

    public final void addAllHelperTextColorIds(int... iArr) {
        Condition.INSTANCE.ensureNotNull(iArr, "The array may not be null");
        for (int i : iArr) {
            addHelperTextColorId(i);
        }
    }

    public final void removeHelperTextColor(int i) {
        int iIndexOf = this.helperTextColors.indexOf(Integer.valueOf(i));
        if (iIndexOf != -1) {
            this.helperTextColors.remove(iIndexOf);
            verifyPasswordStrength();
        }
    }

    public final void removeHelperTextColorId(int i) {
        removeHelperTextColor(ContextCompat.getColor(getContext(), i));
    }

    public final void removeAllHelperTextColors(Collection<Integer> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            removeHelperTextColor(it.next().intValue());
        }
    }

    public final void removeAllHelperTextColorIds(Collection<Integer> collection) {
        Condition.INSTANCE.ensureNotNull(collection, "The collection may not be null");
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            removeHelperTextColorId(it.next().intValue());
        }
    }

    public final void removeAllHelperTextColors(int... iArr) {
        Condition.INSTANCE.ensureNotNull(iArr, "The array may not be null");
        for (int i : iArr) {
            removeHelperTextColor(i);
        }
    }

    public final void removeAllHelperTextColorIds(int... iArr) {
        Condition.INSTANCE.ensureNotNull(iArr, "The array may not be null");
        for (int i : iArr) {
            removeHelperTextColorId(i);
        }
    }

    public final void removeAllHelperTextColors() {
        this.helperTextColors.clear();
    }

    public final String getPasswordVerificationPrefix() {
        return this.passwordVerificationPrefix;
    }

    public final void setPasswordVerificationPrefix(String str) {
        this.passwordVerificationPrefix = str;
        verifyPasswordStrength();
    }

    public final void setPasswordVerificationPrefix(int i) {
        setPasswordVerificationPrefix(getResources().getString(i));
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView, android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        verifyPasswordStrength();
    }
}
