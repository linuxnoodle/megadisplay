.class public abstract Lde/mrapp/android/preference/AbstractValidateableDialogPreference;
.super Lde/mrapp/android/preference/DialogPreference;
.source "AbstractValidateableDialogPreference.java"

# interfaces
.implements Lde/mrapp/android/dialog/DialogValidator;
.implements Lde/mrapp/android/validation/Validateable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Lde/mrapp/android/preference/DialogPreference;",
        "Lde/mrapp/android/dialog/DialogValidator;",
        "Lde/mrapp/android/validation/Validateable<",
        "TValueType;>;"
    }
.end annotation


# instance fields
.field private errorColor:I

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextColor:I

.field private validateOnFocusLost:Z

.field private validateOnValueChange:Z

.field private transient validationListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TValueType;>;>;"
        }
    .end annotation
.end field

.field private transient validators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 273
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 274
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 301
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 1

    .line 111
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validators:Ljava/util/Set;

    .line 112
    new-instance v0, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {v0}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainErrorColor(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 180
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractValidateableView_errorColor:I

    .line 181
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/preference/R$color;->default_error_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->setErrorColor(I)V

    return-void
.end method

.method private obtainHelperText(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 157
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractValidateableView_helperText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->setHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainHelperTextColor(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 168
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractValidateableView_helperTextColor:I

    .line 169
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/preference/R$color;->default_helper_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->setHelperTextColor(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractValidateableView:[I

    .line 135
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->obtainHelperText(Landroid/content/res/TypedArray;)V

    .line 140
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->obtainHelperTextColor(Landroid/content/res/TypedArray;)V

    .line 141
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->obtainErrorColor(Landroid/content/res/TypedArray;)V

    .line 142
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->obtainValidateOnValueChange(Landroid/content/res/TypedArray;)V

    .line 143
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->obtainValidateOnFocusLost(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    throw p2
.end method

.method private obtainValidateOnFocusLost(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->validateable_dialog_preference_default_validate_on_focus_lost:I

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 213
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractValidateableView_validateOnFocusLost:I

    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 213
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validateOnFocusLost(Z)V

    return-void
.end method

.method private obtainValidateOnValueChange(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->validateable_dialog_preference_default_validate_on_value_change:I

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 196
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractValidateableView_validateOnValueChange:I

    .line 197
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 196
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validateOnValueChange(Z)V

    return-void
.end method


# virtual methods
.method public final addAllValidators(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;)V"
        }
    .end annotation

    .line 395
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Validator;

    .line 398
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->addValidator(Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 405
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 408
    invoke-virtual {p0, v2}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->addValidator(Lde/mrapp/android/validation/Validator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 465
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 389
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getErrorColor()I
    .locals 1

    .line 343
    iget v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->errorColor:I

    return v0
.end method

.method public final getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 311
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->helperText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHelperTextColor()I
    .locals 1

    .line 363
    iget v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->helperTextColor:I

    return v0
.end method

.method protected final getValidationListeners()Lde/mrapp/util/datastructure/ListenerList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TValueType;>;>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    return-object v0
.end method

.method public final getValidators()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validators:Ljava/util/Set;

    return-object v0
.end method

.method public final isValidatedOnFocusLost()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validateOnFocusLost:Z

    return v0
.end method

.method public final isValidatedOnValueChange()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validateOnValueChange:Z

    return v0
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 480
    invoke-virtual {p1, p0}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;->addDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;

    return-void
.end method

.method public final removeAllValidators()V
    .locals 1

    .line 440
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validators:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final removeAllValidators(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;)V"
        }
    .end annotation

    .line 421
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Validator;

    .line 424
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->removeValidator(Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 431
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 434
    invoke-virtual {p0, v2}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->removeValidator(Lde/mrapp/android/validation/Validator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 472
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 414
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setErrorColor(I)V
    .locals 0

    .line 353
    iput p1, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->errorColor:I

    return-void
.end method

.method public final setHelperText(I)V
    .locals 1

    .line 334
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->setHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHelperText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->helperText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setHelperTextColor(I)V
    .locals 0

    .line 374
    iput p1, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->helperTextColor:I

    return-void
.end method

.method public final validate(Lde/mrapp/android/dialog/model/ValidateableDialog;)Z
    .locals 0

    .line 379
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validate()Z

    move-result p1

    return p1
.end method

.method public final validateOnFocusLost(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validateOnFocusLost:Z

    return-void
.end method

.method public final validateOnValueChange(Z)V
    .locals 0

    .line 450
    iput-boolean p1, p0, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->validateOnValueChange:Z

    return-void
.end method
