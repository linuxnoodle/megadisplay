.class public abstract Lde/mrapp/android/preference/AbstractNumberPickerPreference;
.super Lde/mrapp/android/preference/DialogPreference;
.source "AbstractNumberPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private number:I

.field private unit:Ljava/lang/CharSequence;

.field private useInputMethod:Z

.field private wrapSelectorWheel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 277
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 305
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    const p1, 0x104000a

    .line 147
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 148
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumberPickerPreference:[I

    .line 170
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/preference/R$styleable;->AbstractUnitPreference:[I

    .line 173
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 177
    :try_start_0
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->obtainUseInputMethod(Landroid/content/res/TypedArray;)V

    .line 178
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->obtainWrapSelectorWheel(Landroid/content/res/TypedArray;)V

    .line 179
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->obtainUnit(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    throw p1
.end method

.method private obtainUnit(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 227
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractUnitPreference_unit:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setUnit(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainUseInputMethod(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->number_picker_preference_default_use_input_method:I

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 196
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumberPickerPreference_useInputMethod:I

    .line 197
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 196
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->useInputMethod(Z)V

    return-void
.end method

.method private obtainWrapSelectorWheel(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->number_picker_preference_default_wrap_selector_wheel:I

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 213
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumberPickerPreference_wrapSelectorWheel:I

    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 213
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->wrapSelectorWheel(Z)V

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 314
    iget v0, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->number:I

    return v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 407
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->isValueShownAsSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 411
    :cond_1
    invoke-super {p0}, Lde/mrapp/android/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getUnit()Ljava/lang/CharSequence;
    .locals 1

    .line 380
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->unit:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isInputMethodUsed()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->useInputMethod:Z

    return v0
.end method

.method public final isSelectorWheelWrapped()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->wrapSelectorWheel:Z

    return v0
.end method

.method protected final needInputMethod()Z
    .locals 1

    .line 417
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->isInputMethodUsed()Z

    move-result v0

    return v0
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 447
    instance-of v0, p1, Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;

    if-eqz v0, :cond_0

    .line 448
    check-cast p1, Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;

    .line 449
    iget v0, p1, Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;->number:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setNumber(I)V

    .line 450
    invoke-virtual {p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 452
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 433
    invoke-super {p0}, Lde/mrapp/android/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    new-instance v1, Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 437
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getNumber()I

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/AbstractNumberPickerPreference$SavedState;->number:I

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setNumber(I)V

    return-void
.end method

.method public setNumber(I)V
    .locals 1

    .line 324
    iget v0, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->number:I

    if-eq v0, p1, :cond_0

    .line 325
    iput p1, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->number:I

    .line 326
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->persistInt(I)Z

    .line 327
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setUnit(I)V
    .locals 1

    .line 402
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setUnit(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setUnit(Ljava/lang/CharSequence;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->unit:Ljava/lang/CharSequence;

    return-void
.end method

.method public useInputMethod(Z)V
    .locals 0

    .line 347
    iput-boolean p1, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->useInputMethod:Z

    return-void
.end method

.method public wrapSelectorWheel(Z)V
    .locals 0

    .line 370
    iput-boolean p1, p0, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->wrapSelectorWheel:Z

    return-void
.end method
