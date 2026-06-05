.class public Lde/mrapp/android/preference/EditTextPreference;
.super Lde/mrapp/android/preference/AbstractValidateableDialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/EditTextPreference$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/preference/AbstractValidateableDialogPreference<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private hint:Ljava/lang/CharSequence;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 209
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 230
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/EditTextPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 257
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/EditTextPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/EditTextPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    const p1, 0x104000a

    .line 141
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 142
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method private obtainHint(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 183
    sget v0, Lde/mrapp/android/preference/R$styleable;->EditTextPreference_android_hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->EditTextPreference:[I

    .line 164
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->obtainHint(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    throw p2
.end method


# virtual methods
.method protected createDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)Lde/mrapp/android/dialog/AbstractButtonBarDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)",
            "Lde/mrapp/android/dialog/AbstractButtonBarDialog;"
        }
    .end annotation

    .line 376
    check-cast p1, Lde/mrapp/android/dialog/EditTextDialog$Builder;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    return-object p1
.end method

.method protected createDialogBuilder(I)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;"
        }
    .end annotation

    .line 349
    new-instance v0, Lde/mrapp/android/dialog/EditTextDialog$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lde/mrapp/android/dialog/EditTextDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 295
    iget-object v0, p0, Lde/mrapp/android/preference/EditTextPreference;->hint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->isValueShownAsSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lde/mrapp/android/preference/EditTextPreference;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected final needInputMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 382
    instance-of p2, p1, Lde/mrapp/android/dialog/EditTextDialog;

    if-eqz p2, :cond_0

    .line 383
    check-cast p1, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/EditTextDialog;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 398
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 355
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V

    .line 356
    check-cast p1, Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 357
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getValidators()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->addAllValidators(Ljava/util/Collection;)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 358
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->isValidatedOnValueChange()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->validateOnValueChange(Z)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 359
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->isValidatedOnFocusLost()Z

    move-result v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->validateOnFocusLost(Z)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 360
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->setHelperText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 361
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getHelperTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->setHelperTextColor(I)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 362
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getErrorColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->setErrorColor(I)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 363
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->setHint(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    .line 365
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getValidationListeners()Lde/mrapp/util/datastructure/ListenerList;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/ValidationListener;

    .line 366
    invoke-virtual {p1, v1}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->addValidationListener(Lde/mrapp/android/validation/ValidationListener;)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->setText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 423
    instance-of v0, p1, Lde/mrapp/android/preference/EditTextPreference$SavedState;

    if-eqz v0, :cond_0

    .line 424
    check-cast p1, Lde/mrapp/android/preference/EditTextPreference$SavedState;

    .line 425
    iget-object v0, p1, Lde/mrapp/android/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p1}, Lde/mrapp/android/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 409
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    new-instance v1, Lde/mrapp/android/preference/EditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 413
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lde/mrapp/android/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 403
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final setHint(I)V
    .locals 1

    .line 317
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lde/mrapp/android/preference/EditTextPreference;->hint:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 277
    iput-object p1, p0, Lde/mrapp/android/preference/EditTextPreference;->text:Ljava/lang/String;

    .line 278
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 279
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result p1

    if-eq p1, v0, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->notifyChanged()V

    return-void
.end method

.method public final shouldDisableDependents()Z
    .locals 1

    .line 331
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final validate()Z
    .locals 2

    .line 336
    invoke-virtual {p0}, Lde/mrapp/android/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 338
    instance-of v1, v0, Lde/mrapp/android/validation/Validateable;

    if-eqz v1, :cond_0

    .line 339
    check-cast v0, Lde/mrapp/android/validation/Validateable;

    invoke-interface {v0}, Lde/mrapp/android/validation/Validateable;->validate()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
