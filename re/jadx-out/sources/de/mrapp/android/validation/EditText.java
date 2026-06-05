package de.mrapp.android.validation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.KeyListener;
import android.text.method.MovementMethod;
import android.text.method.TransformationMethod;
import android.text.style.URLSpan;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.widget.Scroller;
import android.widget.TextView;
import de.mrapp.util.Condition;
import java.io.IOException;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class EditText extends AbstractValidateableView<android.widget.EditText, CharSequence> {
    private static final int DEFAULT_MAX_NUMBER_OF_CHARACTERS = -1;
    private static final int ELLIPSIZE_END_VALUE = 3;
    private static final int ELLIPSIZE_MARQUEE_VALUE = 4;
    private static final int ELLIPSIZE_MIDDLE_VALUE = 2;
    private static final int ELLIPSIZE_START_VALUE = 1;
    private static final int TYPEFACE_MONOSPACE_VALUE = 3;
    private static final int TYPEFACE_SANS_SERIF_VALUE = 1;
    private static final int TYPEFACE_SERIF_VALUE = 2;
    private int maxNumberOfCharacters;

    @Override // de.mrapp.android.validation.AbstractValidateableView
    protected final ViewGroup createParentView() {
        return null;
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: de.mrapp.android.validation.EditText.SavedState.1
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
        int maxNumberOfCharacters;
        Parcelable viewState;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.viewState = parcel.readParcelable(Parcelable.class.getClassLoader());
            this.maxNumberOfCharacters = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.viewState, i);
            parcel.writeInt(this.maxNumberOfCharacters);
        }
    }

    private void initialize(AttributeSet attributeSet) {
        obtainStyledAttributes(attributeSet);
        getView().addTextChangedListener(createTextChangeListener());
    }

    private void obtainStyledAttributes(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.EditText);
        try {
            obtainMaxNumberOfCharacters(typedArrayObtainStyledAttributes);
            obtainEditTextStyledAttributes(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainMaxNumberOfCharacters(TypedArray typedArray) {
        setMaxNumberOfCharacters(typedArray.getInt(R.styleable.EditText_maxNumberOfCharacters, -1));
    }

    private void obtainEditTextStyledAttributes(TypedArray typedArray) {
        float f;
        float f2;
        int i;
        Drawable drawable;
        int imeActionId = getImeActionId();
        Drawable drawable2 = null;
        boolean z = false;
        Drawable drawable3 = null;
        Drawable drawable4 = null;
        Drawable drawable5 = null;
        CharSequence text = null;
        int i2 = 0;
        float dimensionPixelSize = -1.0f;
        float f3 = -1.0f;
        int i3 = 0;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        while (i2 < typedArray.getIndexCount()) {
            int index = typedArray.getIndex(i2);
            if (index == R.styleable.EditText_android_autoLink) {
                setAutoLinkMask(typedArray.getInt(index, getAutoLinkMask()));
            } else if (index == R.styleable.EditText_android_cursorVisible) {
                setCursorVisible(typedArray.getBoolean(index, isCursorVisible()));
            } else {
                if (index == R.styleable.EditText_android_drawableBottom) {
                    drawable5 = typedArray.getDrawable(index);
                } else {
                    if (index == R.styleable.EditText_android_drawableEnd) {
                        drawable = typedArray.getDrawable(index);
                    } else if (index == R.styleable.EditText_android_drawableLeft) {
                        drawable2 = typedArray.getDrawable(index);
                    } else if (index == R.styleable.EditText_android_drawablePadding) {
                        setCompoundDrawablePadding(typedArray.getDimensionPixelSize(index, getCompoundDrawablePadding()));
                    } else if (index == R.styleable.EditText_android_drawableRight) {
                        drawable = typedArray.getDrawable(index);
                    } else if (index == R.styleable.EditText_android_drawableStart) {
                        drawable2 = typedArray.getDrawable(index);
                    } else if (index == R.styleable.EditText_android_drawableTop) {
                        drawable3 = typedArray.getDrawable(index);
                    } else if (index == R.styleable.EditText_android_elegantTextHeight) {
                        setElegantTextHeight(typedArray.getBoolean(index, z));
                    } else if (index == R.styleable.EditText_android_ellipsize) {
                        int i4 = typedArray.getInt(index, -1);
                        if (i4 != -1) {
                            setEllipsize(parseEllipsize(i4));
                        }
                    } else if (index == R.styleable.EditText_android_ems) {
                        setEms(typedArray.getInt(index, -1));
                    } else if (index == R.styleable.EditText_android_fontFeatureSettings) {
                        setFontFeatureSettings(typedArray.getString(index));
                    } else if (index == R.styleable.EditText_android_freezesText) {
                        setFreezesText(typedArray.getBoolean(index, getFreezesText()));
                    } else if (index == R.styleable.EditText_android_hint) {
                        setHint(typedArray.getText(index));
                    } else if (index == R.styleable.EditText_android_imeActionId) {
                        imeActionId = typedArray.getInt(index, getImeActionId());
                    } else if (index == R.styleable.EditText_android_imeActionLabel) {
                        text = typedArray.getText(index);
                    } else if (index == R.styleable.EditText_android_imeOptions) {
                        setImeOptions(typedArray.getInt(index, getImeOptions()));
                    } else if (index == R.styleable.EditText_android_includeFontPadding) {
                        setIncludeFontPadding(typedArray.getBoolean(index, getIncludeFontPadding()));
                    } else if (index == R.styleable.EditText_android_inputType) {
                        setInputType(typedArray.getInt(index, getInputType()));
                    } else if (index == R.styleable.EditText_android_letterSpacing) {
                        setLetterSpacing(typedArray.getFloat(index, getLetterSpacing()));
                    } else if (index == R.styleable.EditText_android_lines) {
                        setLines(typedArray.getInt(index, -1));
                    } else if (index == R.styleable.EditText_android_lineSpacingExtra) {
                        dimensionPixelSize = typedArray.getDimensionPixelSize(index, -1);
                    } else if (index == R.styleable.EditText_android_lineSpacingMultiplier) {
                        f3 = typedArray.getFloat(index, -1.0f);
                    } else if (index == R.styleable.EditText_android_linksClickable) {
                        setLinksClickable(typedArray.getBoolean(index, getLinksClickable()));
                    } else if (index == R.styleable.EditText_android_marqueeRepeatLimit) {
                        setMarqueeRepeatLimit(typedArray.getInt(index, getMarqueeRepeatLimit()));
                    } else if (index == R.styleable.EditText_android_maxEms) {
                        setMaxEms(typedArray.getInt(index, getMaxEms()));
                    } else {
                        f = f4;
                        if (index == R.styleable.EditText_android_maxLength) {
                            int i5 = typedArray.getInt(index, -1);
                            if (i5 >= 0) {
                                setFilters(new InputFilter[]{new InputFilter.LengthFilter(i5)});
                            } else {
                                setFilters(new InputFilter[0]);
                            }
                        } else if (index == R.styleable.EditText_android_maxLines) {
                            setMaxLines(typedArray.getInt(index, -1));
                        } else if (index == R.styleable.EditText_android_minEms) {
                            setMinEms(typedArray.getInt(index, getMinEms()));
                        } else if (index == R.styleable.EditText_android_minLines) {
                            setMinLines(typedArray.getInt(index, getMinLines()));
                        } else if (index == R.styleable.EditText_android_privateImeOptions) {
                            setPrivateImeOptions(typedArray.getString(index));
                        } else {
                            if (index == R.styleable.EditText_android_scrollHorizontally) {
                                if (typedArray.getBoolean(index, false)) {
                                    setHorizontallyScrolling(true);
                                }
                            } else if (index == R.styleable.EditText_android_selectAllOnFocus) {
                                setSelectAllOnFocus(typedArray.getBoolean(index, false));
                            } else if (index == R.styleable.EditText_android_shadowColor) {
                                i3 = typedArray.getInt(index, 0);
                                f4 = f;
                                i2++;
                                z = false;
                            } else if (index == R.styleable.EditText_android_shadowDx) {
                                f4 = typedArray.getFloat(index, 0.0f);
                            } else {
                                if (index == R.styleable.EditText_android_shadowDy) {
                                    f5 = typedArray.getFloat(index, 0.0f);
                                } else if (index == R.styleable.EditText_android_shadowRadius) {
                                    f6 = typedArray.getFloat(index, f6);
                                } else {
                                    f2 = f6;
                                    if (index == R.styleable.EditText_android_singleLine) {
                                        setSingleLine(typedArray.getBoolean(index, false));
                                    } else if (index == R.styleable.EditText_android_text) {
                                        setText(typedArray.getText(index));
                                    } else if (index == R.styleable.EditText_android_textAllCaps) {
                                        setAllCaps(typedArray.getBoolean(index, false));
                                    } else if (index == R.styleable.EditText_android_textAppearance) {
                                        int resourceId = typedArray.getResourceId(index, -1);
                                        if (resourceId != -1 && resourceId != 16974317) {
                                            setTextAppearance(getContext(), resourceId);
                                        }
                                    } else if (index == R.styleable.EditText_android_textColor) {
                                        ColorStateList colorStateList = typedArray.getColorStateList(index);
                                        if (colorStateList != null) {
                                            setTextColor(colorStateList);
                                        }
                                    } else if (index == R.styleable.EditText_android_textColorHighlight) {
                                        int color = typedArray.getColor(index, -1);
                                        if (color != -1) {
                                            setHighlightColor(color);
                                        }
                                    } else if (index == R.styleable.EditText_android_textColorHint) {
                                        setHintTextColor(typedArray.getColorStateList(index));
                                    } else if (index == R.styleable.EditText_android_textColorLink) {
                                        setLinkTextColor(typedArray.getColorStateList(index));
                                    } else if (index == R.styleable.EditText_android_textIsSelectable) {
                                        setTextIsSelectable(typedArray.getBoolean(index, isTextSelectable()));
                                    } else if (index == R.styleable.EditText_android_textScaleX) {
                                        setTextScaleX(typedArray.getFloat(index, getTextScaleX()));
                                    } else if (index == R.styleable.EditText_android_textSize) {
                                        setTextSize(typedArray.getFloat(index, getTextSize()));
                                    } else if (index == R.styleable.EditText_android_typeface && (i = typedArray.getInt(index, -1)) != -1) {
                                        setTypeface(parseTypeface(i));
                                    }
                                    f6 = f2;
                                    f4 = f;
                                    i2++;
                                    z = false;
                                }
                                f4 = f;
                            }
                            f2 = f6;
                            f6 = f2;
                            f4 = f;
                            i2++;
                            z = false;
                        }
                        f2 = f6;
                        f6 = f2;
                        f4 = f;
                        i2++;
                        z = false;
                    }
                    drawable4 = drawable;
                }
                i2++;
                z = false;
            }
            f = f4;
            f2 = f6;
            f6 = f2;
            f4 = f;
            i2++;
            z = false;
        }
        float f7 = f4;
        float f8 = f6;
        setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable3, drawable4, drawable5);
        setImeActionLabel(text, imeActionId);
        if (dimensionPixelSize != -1.0f && f3 != -1.0f) {
            setLineSpacing(dimensionPixelSize, f3);
        }
        if (i3 != 0) {
            setShadowLayer(f8, f7, f5, i3);
        }
    }

    private TextUtils.TruncateAt parseEllipsize(int i) {
        if (i == 1) {
            return TextUtils.TruncateAt.START;
        }
        if (i == 2) {
            return TextUtils.TruncateAt.MIDDLE;
        }
        if (i == 3) {
            return TextUtils.TruncateAt.END;
        }
        if (i == 4) {
            return TextUtils.TruncateAt.MARQUEE;
        }
        return TextUtils.TruncateAt.END;
    }

    private Typeface parseTypeface(int i) {
        if (i == 1) {
            return Typeface.SANS_SERIF;
        }
        if (i == 2) {
            return Typeface.SERIF;
        }
        if (i == 3) {
            return Typeface.MONOSPACE;
        }
        return Typeface.DEFAULT;
    }

    private TextWatcher createTextChangeListener() {
        return new TextWatcher() { // from class: de.mrapp.android.validation.EditText.1
            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                if (EditText.this.isValidatedOnValueChange()) {
                    EditText.this.validate();
                }
                EditText.this.adaptMaxNumberOfCharactersMessage();
            }
        };
    }

    private CharSequence getMaxNumberOfCharactersMessage() {
        int maxNumberOfCharacters = getMaxNumberOfCharacters();
        return String.format(getResources().getString(R.string.edit_text_size_violation_error_message), Integer.valueOf(getView().length()), Integer.valueOf(maxNumberOfCharacters));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adaptMaxNumberOfCharactersMessage() {
        if (getMaxNumberOfCharacters() != -1) {
            setRightMessage(getMaxNumberOfCharactersMessage(), getView().length() > getMaxNumberOfCharacters());
        } else {
            setRightMessage(null);
        }
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView
    protected final Collection<Validator<CharSequence>> onGetRightErrorMessage() {
        CharSequence maxNumberOfCharactersMessage = getMaxNumberOfCharactersMessage();
        if (getMaxNumberOfCharacters() == -1) {
            return null;
        }
        Validator<CharSequence> validatorMaxLength = Validators.maxLength(maxNumberOfCharactersMessage, getMaxNumberOfCharacters());
        if (validatorMaxLength.validate(getValue())) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(validatorMaxLength);
        return linkedList;
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView
    protected final void onValidate(boolean z) {
        adaptMaxNumberOfCharactersMessage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // de.mrapp.android.validation.AbstractValidateableView
    public final android.widget.EditText createView() {
        return new android.widget.EditText(getContext());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // de.mrapp.android.validation.AbstractValidateableView
    public final CharSequence getValue() {
        return getView().getText();
    }

    public EditText(Context context) {
        super(context);
        initialize(null);
    }

    public EditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public EditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    public EditText(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet);
    }

    public final int getMaxNumberOfCharacters() {
        return this.maxNumberOfCharacters;
    }

    public final void setMaxNumberOfCharacters(int i) {
        if (i != -1) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum number of characters must be at least 1");
        }
        this.maxNumberOfCharacters = i;
        adaptMaxNumberOfCharactersMessage();
    }

    public final int getAutoLinkMask() {
        return getView().getAutoLinkMask();
    }

    public final void setAutoLinkMask(int i) {
        getView().setAutoLinkMask(i);
    }

    public final boolean isCursorVisible() {
        return getView().isCursorVisible();
    }

    public final void setCursorVisible(boolean z) {
        getView().setCursorVisible(z);
    }

    public final int getCompoundDrawablePadding() {
        return getView().getCompoundDrawablePadding();
    }

    public final void setCompoundDrawablePadding(int i) {
        getView().setCompoundDrawablePadding(i);
    }

    public final int getCompoundPaddingTop() {
        return getView().getCompoundPaddingTop();
    }

    public final int getCompoundPaddingBottom() {
        return getView().getCompoundPaddingBottom();
    }

    public final int getCompoundPaddingLeft() {
        return getView().getCompoundPaddingLeft();
    }

    public final int getCompoundPaddingRight() {
        return getView().getCompoundPaddingRight();
    }

    public final int getCompoundPaddingStart() {
        return getView().getCompoundPaddingStart();
    }

    public final int getCompoundPaddingEnd() {
        return getView().getCompoundPaddingEnd();
    }

    public final int getExtendedPaddingTop() {
        return getView().getExtendedPaddingTop();
    }

    public final int getExtendedPaddingBottom() {
        return getView().getExtendedPaddingBottom();
    }

    public final int getTotalPaddingLeft() {
        return getView().getTotalPaddingLeft();
    }

    public final int getTotalPaddingRight() {
        return getView().getTotalPaddingRight();
    }

    public final int getTotalPaddingStart() {
        return getView().getTotalPaddingStart();
    }

    public final int getTotalPaddingEnd() {
        return getView().getTotalPaddingEnd();
    }

    public final int getTotalPaddingTop() {
        return getView().getTotalPaddingTop();
    }

    public final int getTotalPaddingBottom() {
        return getView().getTotalPaddingBottom();
    }

    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        getView().setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        getView().setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        getView().setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        getView().setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        getView().setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        getView().setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    public final Drawable[] getCompoundDrawables() {
        return getView().getCompoundDrawables();
    }

    public final Drawable[] getCompoundDrawablesRelative() {
        return getView().getCompoundDrawablesRelative();
    }

    public final void setElegantTextHeight(boolean z) {
        getView().setElegantTextHeight(z);
    }

    public final TextUtils.TruncateAt getEllipsize() {
        return getView().getEllipsize();
    }

    public final void setEllipsize(TextUtils.TruncateAt truncateAt) {
        getView().setEllipsize(truncateAt);
    }

    public final void setEms(int i) {
        getView().setEms(i);
    }

    public final String getFontFeatureSettings() {
        return getView().getFontFeatureSettings();
    }

    public final void setFontFeatureSettings(String str) {
        getView().setFontFeatureSettings(str);
    }

    public final boolean getFreezesText() {
        return getView().getFreezesText();
    }

    public final void setFreezesText(boolean z) {
        getView().setFreezesText(z);
    }

    public final CharSequence getHint() {
        return getView().getHint();
    }

    public final void setHint(CharSequence charSequence) {
        getView().setHint(charSequence);
    }

    public final void setHint(int i) {
        getView().setHint(i);
    }

    public final void setImeOptions(int i) {
        getView().setImeOptions(i);
    }

    public final int getImeOptions() {
        return getView().getImeOptions();
    }

    public final void setImeActionLabel(CharSequence charSequence, int i) {
        getView().setImeActionLabel(charSequence, i);
    }

    public final CharSequence getImeActionLabel() {
        return getView().getImeActionLabel();
    }

    public final int getImeActionId() {
        return getView().getImeActionId();
    }

    public final void setIncludeFontPadding(boolean z) {
        getView().setIncludeFontPadding(z);
    }

    public final boolean getIncludeFontPadding() {
        return getView().getIncludeFontPadding();
    }

    public final int getInputType() {
        return getView().getInputType();
    }

    public final void setInputType(int i) {
        getView().setInputType(i);
    }

    public final float getLetterSpacing() {
        return getView().getLetterSpacing();
    }

    public final void setLetterSpacing(float f) {
        getView().setLetterSpacing(f);
    }

    public final void setLines(int i) {
        getView().setLines(i);
    }

    public final void setLineSpacing(float f, float f2) {
        getView().setLineSpacing(f, f2);
    }

    public final float getLineSpacingMultiplier() {
        return getView().getLineSpacingMultiplier();
    }

    public final float getLineSpacingExtra() {
        return getView().getLineSpacingExtra();
    }

    public final void setLinksClickable(boolean z) {
        getView().setLinksClickable(z);
    }

    public final boolean getLinksClickable() {
        return getView().getLinksClickable();
    }

    public final void setMarqueeRepeatLimit(int i) {
        getView().setMarqueeRepeatLimit(i);
    }

    public final int getMarqueeRepeatLimit() {
        return getView().getMarqueeRepeatLimit();
    }

    public final void setMaxEms(int i) {
        getView().setMaxEms(i);
    }

    public final int getMaxEms() {
        return getView().getMaxEms();
    }

    public final void setFilters(InputFilter[] inputFilterArr) {
        getView().setFilters(inputFilterArr);
    }

    public final InputFilter[] getFilters() {
        return getView().getFilters();
    }

    public final void setMaxLines(int i) {
        getView().setMaxLines(i);
    }

    public final int getMaxLines() {
        return getView().getMaxLines();
    }

    public final void setMinEms(int i) {
        getView().setMinEms(i);
    }

    public final int getMinEms() {
        return getView().getMinEms();
    }

    public final void setMinLines(int i) {
        getView().setMinLines(i);
    }

    public final int getMinLines() {
        return getView().getMinLines();
    }

    public final void setPrivateImeOptions(String str) {
        getView().setPrivateImeOptions(str);
    }

    public final String getPrivateImeOptions() {
        return getView().getPrivateImeOptions();
    }

    public final void setSelectAllOnFocus(boolean z) {
        getView().setSelectAllOnFocus(z);
    }

    public final void setShadowLayer(float f, float f2, float f3, int i) {
        getView().setShadowLayer(f, f2, f3, i);
    }

    public final float getShadowRadius() {
        return getView().getShadowRadius();
    }

    public final float getShadowDx() {
        return getView().getShadowDx();
    }

    public final float getShadowDy() {
        return getView().getShadowDy();
    }

    public final int getShadowColor() {
        return getView().getShadowColor();
    }

    public final void setSingleLine() {
        getView().setSingleLine();
    }

    public final void setSingleLine(boolean z) {
        getView().setSingleLine(z);
    }

    public final void setText(CharSequence charSequence) {
        getView().setText(charSequence);
    }

    public final void setTextKeepState(CharSequence charSequence) {
        getView().setTextKeepState(charSequence);
    }

    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        getView().setText(charSequence, bufferType);
    }

    public final void setText(char[] cArr, int i, int i2) {
        getView().setText(cArr, i, i2);
    }

    public final void setTextKeepState(CharSequence charSequence, TextView.BufferType bufferType) {
        getView().setTextKeepState(charSequence, bufferType);
    }

    public final void setText(int i) {
        getView().setText(i);
    }

    public final void setText(int i, TextView.BufferType bufferType) {
        getView().setText(i, bufferType);
    }

    public final void setAllCaps(boolean z) {
        getView().setAllCaps(z);
    }

    public final void setTextAppearance(Context context, int i) {
        getView().setTextAppearance(context, i);
    }

    public final void setTextColor(int i) {
        getView().setTextColor(i);
    }

    public final void setTextColor(ColorStateList colorStateList) {
        getView().setTextColor(colorStateList);
    }

    public final ColorStateList getTextColors() {
        return getView().getTextColors();
    }

    public final int getCurrentTextColor() {
        return getView().getCurrentTextColor();
    }

    public final void setHighlightColor(int i) {
        getView().setHighlightColor(i);
    }

    public final int getHighlightColor() {
        return getView().getHighlightColor();
    }

    public final void setShowSoftInputOnFocus(boolean z) {
        getView().setShowSoftInputOnFocus(z);
    }

    public final boolean getShowSoftInputOnFocus() {
        return getView().getShowSoftInputOnFocus();
    }

    public final void setHintTextColor(int i) {
        getView().setHintTextColor(i);
    }

    public final void setHintTextColor(ColorStateList colorStateList) {
        getView().setHintTextColor(colorStateList);
    }

    public final ColorStateList getHintTextColors() {
        return getView().getHintTextColors();
    }

    public final int getCurrentHintTextColor() {
        return getView().getCurrentHintTextColor();
    }

    public final void setLinkTextColor(int i) {
        getView().setLinkTextColor(i);
    }

    public final void setLinkTextColor(ColorStateList colorStateList) {
        getView().setLinkTextColor(colorStateList);
    }

    public final ColorStateList getLinkTextColors() {
        return getView().getLinkTextColors();
    }

    public final void setTextIsSelectable(boolean z) {
        getView().setTextIsSelectable(z);
    }

    public final boolean isTextSelectable() {
        return getView().isTextSelectable();
    }

    public final float getTextScaleX() {
        return getView().getTextScaleX();
    }

    public final void setTextScaleX(float f) {
        getView().setTextScaleX(f);
    }

    public final void setTextSize(float f) {
        getView().setTextSize(f);
    }

    public final void setTextSize(int i, float f) {
        getView().setTextSize(f);
    }

    public final float getTextSize() {
        return getView().getTextSize();
    }

    public final void setTypeface(Typeface typeface, int i) {
        getView().setTypeface(typeface, i);
    }

    public final void setTypeface(Typeface typeface) {
        getView().setTypeface(typeface);
    }

    public final Typeface getTypeface() {
        return getView().getTypeface();
    }

    public final int length() {
        return getView().length();
    }

    public final Editable getEditableText() {
        return getView().getEditableText();
    }

    public final int getLineHeight() {
        return getView().getLineHeight();
    }

    public final Layout getLayout() {
        return getView().getLayout();
    }

    public final KeyListener getKeyListener() {
        return getView().getKeyListener();
    }

    public final void setKeyListener(KeyListener keyListener) {
        getView().setKeyListener(keyListener);
    }

    public final MovementMethod getMovementMethod() {
        return getView().getMovementMethod();
    }

    public final void setMovementMethod(MovementMethod movementMethod) {
        getView().setMovementMethod(movementMethod);
    }

    public final TransformationMethod getTransformationMethod() {
        return getView().getTransformationMethod();
    }

    public final void setTransformationMethod(TransformationMethod transformationMethod) {
        getView().setTransformationMethod(transformationMethod);
    }

    public final Locale getTextLocale() {
        return getView().getTextLocale();
    }

    public final void setTextLocale(Locale locale) {
        getView().setTextLocale(locale);
    }

    public final TextPaint getPaint() {
        return getView().getPaint();
    }

    public final URLSpan[] getUrls() {
        return getView().getUrls();
    }

    public final void setTextGravity(int i) {
        getView().setGravity(i);
    }

    public final int getTextGravity() {
        return getView().getGravity();
    }

    public final int getPaintFlags() {
        return getView().getPaintFlags();
    }

    public final void setPaintFlags(int i) {
        getView().setPaintFlags(i);
    }

    public final void setHorizontallyScrolling(boolean z) {
        getView().setHorizontallyScrolling(z);
    }

    public final void append(CharSequence charSequence) {
        getView().append(charSequence);
    }

    public final void append(CharSequence charSequence, int i, int i2) {
        getView().append(charSequence, i, i2);
    }

    public final void setEditableFactory(Editable.Factory factory) {
        getView().setEditableFactory(factory);
    }

    public final void setSpannableFactory(Spannable.Factory factory) {
        getView().setSpannableFactory(factory);
    }

    public final void setRawInputType(int i) {
        getView().setRawInputType(i);
    }

    public final void setOnEditorActionListener(TextView.OnEditorActionListener onEditorActionListener) {
        getView().setOnEditorActionListener(onEditorActionListener);
    }

    public final void setInputExtras(int i) throws XmlPullParserException, IOException {
        getView().setInputExtras(i);
    }

    public final Bundle getInputExtras(boolean z) {
        return getView().getInputExtras(z);
    }

    public final int getLineCount() {
        return getView().getLineCount();
    }

    public final int getLineBounds(int i, Rect rect) {
        return getView().getLineBounds(i, rect);
    }

    public final boolean extractText(ExtractedTextRequest extractedTextRequest, ExtractedText extractedText) {
        return getView().extractText(extractedTextRequest, extractedText);
    }

    public final void setExtractedText(ExtractedText extractedText) {
        getView().setExtractedText(extractedText);
    }

    public final void beginBatchEdit() {
        getView().beginBatchEdit();
    }

    public final void endBatchEdit() {
        getView().endBatchEdit();
    }

    public final boolean bringPointIntoView(int i) {
        return getView().bringPointIntoView(i);
    }

    public final boolean moveCursorToVisibleOffset() {
        return getView().moveCursorToVisibleOffset();
    }

    public final int getSelectionStart() {
        return getView().getSelectionStart();
    }

    public final int getSelectionEnd() {
        return getView().getSelectionEnd();
    }

    public final boolean hasSelection() {
        return getView().hasSelection();
    }

    public final void addTextChangedListener(TextWatcher textWatcher) {
        getView().addTextChangedListener(textWatcher);
    }

    public final void removeTextChangedListener(TextWatcher textWatcher) {
        getView().removeTextChangedListener(textWatcher);
    }

    public final void clearComposingText() {
        getView().clearComposingText();
    }

    public final boolean didTouchFocusSelect() {
        return getView().didTouchFocusSelect();
    }

    public final void setScroller(Scroller scroller) {
        getView().setScroller(scroller);
    }

    public final boolean isInputMethodTarget() {
        return getView().isInputMethodTarget();
    }

    public final boolean isSuggestionsEnabled() {
        return getView().isSuggestionsEnabled();
    }

    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        getView().setCustomSelectionActionModeCallback(callback);
    }

    public final ActionMode.Callback getCustomSelectionActionModeCallback() {
        return getView().getCustomSelectionActionModeCallback();
    }

    public final int getOffsetForPosition(float f, float f2) {
        return getView().getOffsetForPosition(f, f2);
    }

    public final Editable getText() {
        return getView().getText();
    }

    public final void setSelection(int i, int i2) {
        Selection.setSelection(getText(), i, i2);
    }

    public final void setSelection(int i) {
        Selection.setSelection(getText(), i);
    }

    public final void selectAll() {
        Selection.selectAll(getText());
    }

    public final void extendSelection(int i) {
        Selection.extendSelection(getText(), i);
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView, android.view.View
    protected final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            return null;
        }
        SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
        savedState.viewState = getView().onSaveInstanceState();
        savedState.maxNumberOfCharacters = getMaxNumberOfCharacters();
        return savedState;
    }

    @Override // de.mrapp.android.validation.AbstractValidateableView, android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable != null && (parcelable instanceof SavedState)) {
            SavedState savedState = (SavedState) parcelable;
            validateOnValueChange(false);
            getView().onRestoreInstanceState(savedState.viewState);
            setMaxNumberOfCharacters(savedState.maxNumberOfCharacters);
            super.onRestoreInstanceState(savedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }
}
