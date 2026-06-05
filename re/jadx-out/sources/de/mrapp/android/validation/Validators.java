package de.mrapp.android.validation;

import android.content.Context;
import de.mrapp.android.validation.validators.ConjunctiveValidator;
import de.mrapp.android.validation.validators.DisjunctiveValidator;
import de.mrapp.android.validation.validators.NegateValidator;
import de.mrapp.android.validation.validators.NotNullValidator;
import de.mrapp.android.validation.validators.misc.DomainNameValidator;
import de.mrapp.android.validation.validators.misc.EmailAddressValidator;
import de.mrapp.android.validation.validators.misc.IPv4AddressValidator;
import de.mrapp.android.validation.validators.misc.IPv6AddressValidator;
import de.mrapp.android.validation.validators.misc.IRIValidator;
import de.mrapp.android.validation.validators.misc.PhoneNumberValidator;
import de.mrapp.android.validation.validators.text.BeginsWithUppercaseLetterValidator;
import de.mrapp.android.validation.validators.text.Case;
import de.mrapp.android.validation.validators.text.EqualValidator;
import de.mrapp.android.validation.validators.text.LetterOrNumberValidator;
import de.mrapp.android.validation.validators.text.LetterValidator;
import de.mrapp.android.validation.validators.text.MaxLengthValidator;
import de.mrapp.android.validation.validators.text.MinLengthValidator;
import de.mrapp.android.validation.validators.text.NoWhitespaceValidator;
import de.mrapp.android.validation.validators.text.NotEmptyValidator;
import de.mrapp.android.validation.validators.text.NumberValidator;
import de.mrapp.android.validation.validators.text.RegexValidator;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class Validators {
    private Validators() {
    }

    public static <Type> Validator<Type> negate(CharSequence charSequence, Validator<Type> validator) {
        return NegateValidator.create(charSequence, validator);
    }

    public static <Type> Validator<Type> negate(Context context, int i, Validator<Type> validator) {
        return NegateValidator.create(context, i, validator);
    }

    public static <Type> Validator<Type> negate(Context context, Validator<Type> validator) {
        return NegateValidator.create(context, R.string.default_error_message, validator);
    }

    @SafeVarargs
    public static <Type> Validator<Type> conjunctive(CharSequence charSequence, Validator<Type>... validatorArr) {
        return ConjunctiveValidator.create(charSequence, validatorArr);
    }

    @SafeVarargs
    public static <Type> Validator<Type> conjunctive(Context context, int i, Validator<Type>... validatorArr) {
        return ConjunctiveValidator.create(context, i, validatorArr);
    }

    @SafeVarargs
    public static <Type> Validator<Type> conjunctive(Context context, Validator<Type>... validatorArr) {
        return ConjunctiveValidator.create(context, R.string.default_error_message, validatorArr);
    }

    @SafeVarargs
    public static <Type> Validator<Type> disjunctive(CharSequence charSequence, Validator<Type>... validatorArr) {
        return DisjunctiveValidator.create(charSequence, validatorArr);
    }

    @SafeVarargs
    public static <Type> Validator<Type> disjunctive(Context context, int i, Validator<Type>... validatorArr) {
        return DisjunctiveValidator.create(context, i, validatorArr);
    }

    @SafeVarargs
    public static <Type> Validator<Type> disjunctive(Context context, Validator<Type>... validatorArr) {
        return DisjunctiveValidator.create(context, R.string.default_error_message, validatorArr);
    }

    public static Validator<Object> notNull(CharSequence charSequence) {
        return new NotNullValidator(charSequence);
    }

    public static Validator<Object> notNull(Context context, int i) {
        return new NotNullValidator(context, i);
    }

    public static Validator<Object> notNull(Context context) {
        return new NotNullValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> regex(CharSequence charSequence, Pattern pattern) {
        return new RegexValidator(charSequence, pattern);
    }

    public static Validator<CharSequence> regex(Context context, int i, Pattern pattern) {
        return new RegexValidator(context, i, pattern);
    }

    public static Validator<CharSequence> regex(Context context, Pattern pattern) {
        return new RegexValidator(context, R.string.default_error_message, pattern);
    }

    public static Validator<CharSequence> notEmpty(CharSequence charSequence) {
        return new NotEmptyValidator(charSequence);
    }

    public static Validator<CharSequence> notEmpty(Context context, int i) {
        return new NotEmptyValidator(context, i);
    }

    public static Validator<CharSequence> notEmpty(Context context) {
        return new NotEmptyValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> minLength(CharSequence charSequence, int i) {
        return new MinLengthValidator(charSequence, i);
    }

    public static Validator<CharSequence> minLength(Context context, int i, int i2) {
        return new MinLengthValidator(context, i, i2);
    }

    public static Validator<CharSequence> minLength(Context context, int i) {
        return new MinLengthValidator(context, R.string.default_error_message, i);
    }

    public static Validator<CharSequence> maxLength(CharSequence charSequence, int i) {
        return new MaxLengthValidator(charSequence, i);
    }

    public static Validator<CharSequence> maxLength(Context context, int i, int i2) {
        return new MaxLengthValidator(context, i, i2);
    }

    public static Validator<CharSequence> maxLength(Context context, int i) {
        return new MaxLengthValidator(context, R.string.default_error_message, i);
    }

    public static Validator<CharSequence> noWhitespace(CharSequence charSequence) {
        return new NoWhitespaceValidator(charSequence);
    }

    public static Validator<CharSequence> noWhitespace(Context context, int i) {
        return new NoWhitespaceValidator(context, i);
    }

    public static Validator<CharSequence> noWhitespace(Context context) {
        return new NoWhitespaceValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> number(CharSequence charSequence) {
        return new NumberValidator(charSequence);
    }

    public static Validator<CharSequence> number(Context context, int i) {
        return new NumberValidator(context, i);
    }

    public static Validator<CharSequence> number(Context context) {
        return new NumberValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> letter(CharSequence charSequence, Case r2, boolean z, char... cArr) {
        return new LetterValidator(charSequence, r2, z, cArr);
    }

    public static Validator<CharSequence> letter(Context context, int i, Case r9, boolean z, char... cArr) {
        return new LetterValidator(context, i, r9, z, cArr);
    }

    public static Validator<CharSequence> letter(Context context, Case r8, boolean z, char... cArr) {
        return new LetterValidator(context, R.string.default_error_message, r8, z, cArr);
    }

    public static Validator<CharSequence> letterOrNumber(CharSequence charSequence, Case r2, boolean z, char... cArr) {
        return new LetterOrNumberValidator(charSequence, r2, z, cArr);
    }

    public static Validator<CharSequence> letterOrNumber(Context context, int i, Case r9, boolean z, char... cArr) {
        return new LetterOrNumberValidator(context, i, r9, z, cArr);
    }

    public static Validator<CharSequence> letterOrNumber(Context context, Case r8, boolean z, char... cArr) {
        return new LetterOrNumberValidator(context, R.string.default_error_message, r8, z, cArr);
    }

    public static Validator<CharSequence> beginsWithUppercaseLetter(CharSequence charSequence) {
        return new BeginsWithUppercaseLetterValidator(charSequence);
    }

    public static Validator<CharSequence> beginsWithUppercaseLetter(Context context, int i) {
        return new BeginsWithUppercaseLetterValidator(context, i);
    }

    public static Validator<CharSequence> beginsWithUppercaseLetter(Context context) {
        return new BeginsWithUppercaseLetterValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> equal(CharSequence charSequence, EditText editText) {
        return new EqualValidator(charSequence, editText);
    }

    public static Validator<CharSequence> equal(Context context, int i, EditText editText) {
        return new EqualValidator(context, i, editText);
    }

    public static Validator<CharSequence> equal(Context context, EditText editText) {
        return new EqualValidator(context, R.string.default_error_message, editText);
    }

    public static Validator<CharSequence> iPv4Address(CharSequence charSequence) {
        return new IPv4AddressValidator(charSequence);
    }

    public static Validator<CharSequence> iPv4Address(Context context, int i) {
        return new IPv4AddressValidator(context, i);
    }

    public static Validator<CharSequence> iPv4Address(Context context) {
        return new IPv4AddressValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> iPv6Address(CharSequence charSequence) {
        return new IPv6AddressValidator(charSequence);
    }

    public static Validator<CharSequence> iPv6Address(Context context, int i) {
        return new IPv6AddressValidator(context, i);
    }

    public static Validator<CharSequence> iPv6Address(Context context) {
        return new IPv6AddressValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> domainName(CharSequence charSequence) {
        return new DomainNameValidator(charSequence);
    }

    public static Validator<CharSequence> domainName(Context context, int i) {
        return new DomainNameValidator(context, i);
    }

    public static Validator<CharSequence> domainName(Context context) {
        return new DomainNameValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> emailAddress(CharSequence charSequence) {
        return new EmailAddressValidator(charSequence);
    }

    public static Validator<CharSequence> emailAddress(Context context, int i) {
        return new EmailAddressValidator(context, i);
    }

    public static Validator<CharSequence> emailAddress(Context context) {
        return new EmailAddressValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> iri(CharSequence charSequence) {
        return new IRIValidator(charSequence);
    }

    public static Validator<CharSequence> iri(Context context, int i) {
        return new IRIValidator(context, i);
    }

    public static Validator<CharSequence> iri(Context context) {
        return new IRIValidator(context, R.string.default_error_message);
    }

    public static Validator<CharSequence> phoneNumber(CharSequence charSequence) {
        return new PhoneNumberValidator(charSequence);
    }

    public static Validator<CharSequence> phoneNumber(Context context, int i) {
        return new PhoneNumberValidator(context, i);
    }

    public static Validator<CharSequence> phoneNumber(Context context) {
        return new PhoneNumberValidator(context, R.string.default_error_message);
    }
}
