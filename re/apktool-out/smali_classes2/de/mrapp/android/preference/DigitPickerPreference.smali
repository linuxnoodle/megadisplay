.class public Lde/mrapp/android/preference/DigitPickerPreference;
.super Lde/mrapp/android/preference/AbstractNumberPickerPreference;
.source "DigitPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/DigitPickerPreference$SavedState;
    }
.end annotation


# static fields
.field private static final NUMERIC_SYTEM:I = 0xa


# instance fields
.field private currentNumber:I

.field private numberOfDigits:I

.field private numberPickers:[Lde/mrapp/android/preference/view/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/DigitPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 278
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/DigitPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 299
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 300
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/DigitPickerPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 327
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 328
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/DigitPickerPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/preference/DigitPickerPreference;)[Lde/mrapp/android/preference/view/NumberPicker;
    .locals 0

    .line 52
    iget-object p0, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberPickers:[Lde/mrapp/android/preference/view/NumberPicker;

    return-object p0
.end method

.method static synthetic access$102(Lde/mrapp/android/preference/DigitPickerPreference;I)I
    .locals 0

    .line 52
    iput p1, p0, Lde/mrapp/android/preference/DigitPickerPreference;->currentNumber:I

    return p1
.end method

.method private createNumberPickerListener()Landroid/widget/NumberPicker$OnValueChangeListener;
    .locals 1

    .line 191
    new-instance v0, Lde/mrapp/android/preference/DigitPickerPreference$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/preference/DigitPickerPreference$1;-><init>(Lde/mrapp/android/preference/DigitPickerPreference;)V

    return-object v0
.end method

.method private getDigit(II)I
    .locals 4

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getNumberOfDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    .line 222
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private getMaxNumber(I)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    int-to-double v1, v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    int-to-double v5, v0

    .line 238
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private obtainNumberOfDigits(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->digit_picker_preference_default_number_of_digits:I

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 179
    sget v1, Lde/mrapp/android/preference/R$styleable;->DigitPickerPreference_numberOfDigits:I

    .line 180
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 179
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DigitPickerPreference;->setNumberOfDigits(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumberPickerPreference:[I

    .line 159
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DigitPickerPreference;->obtainNumberOfDigits(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    throw p2
.end method


# virtual methods
.method protected final getCurrentNumber()I
    .locals 1

    .line 250
    iget v0, p0, Lde/mrapp/android/preference/DigitPickerPreference;->currentNumber:I

    return v0
.end method

.method public final getNumberOfDigits()I
    .locals 1

    .line 338
    iget v0, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberOfDigits:I

    return v0
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 425
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getCurrentNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DigitPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getCurrentNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DigitPickerPreference;->setNumber(I)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getNumber()I

    move-result p1

    iput p1, p0, Lde/mrapp/android/preference/DigitPickerPreference;->currentNumber:I

    :goto_0
    const/4 p1, 0x0

    .line 431
    iput-object p1, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberPickers:[Lde/mrapp/android/preference/view/NumberPicker;

    return-void
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$dimen;->digit_picker_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 393
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 394
    invoke-virtual {p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lde/mrapp/android/preference/R$layout;->number_picker:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 395
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    sget v2, Lde/mrapp/android/preference/R$id;->number_picker_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 398
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getNumberOfDigits()I

    move-result v3

    new-array v3, v3, [Lde/mrapp/android/preference/view/NumberPicker;

    iput-object v3, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberPickers:[Lde/mrapp/android/preference/view/NumberPicker;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 400
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getNumberOfDigits()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 401
    new-instance v5, Lde/mrapp/android/preference/view/NumberPicker;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lde/mrapp/android/preference/view/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v5, v3}, Lde/mrapp/android/preference/view/NumberPicker;->setMinValue(I)V

    const/16 v6, 0x9

    .line 403
    invoke-virtual {v5, v6}, Lde/mrapp/android/preference/view/NumberPicker;->setMaxValue(I)V

    .line 404
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getCurrentNumber()I

    move-result v6

    invoke-direct {p0, v4, v6}, Lde/mrapp/android/preference/DigitPickerPreference;->getDigit(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lde/mrapp/android/preference/view/NumberPicker;->setValue(I)V

    .line 405
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->isSelectorWheelWrapped()Z

    move-result v6

    invoke-virtual {v5, v6}, Lde/mrapp/android/preference/view/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 407
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->isInputMethodUsed()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x20000

    goto :goto_1

    :cond_0
    const/high16 v6, 0x60000

    .line 406
    :goto_1
    invoke-virtual {v5, v6}, Lde/mrapp/android/preference/view/NumberPicker;->setDescendantFocusability(I)V

    .line 409
    invoke-direct {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->createNumberPickerListener()Landroid/widget/NumberPicker$OnValueChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/mrapp/android/preference/view/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 410
    iget-object v6, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberPickers:[Lde/mrapp/android/preference/view/NumberPicker;

    aput-object v5, v6, v4

    .line 411
    invoke-virtual {v2, v5, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 414
    :cond_1
    sget v1, Lde/mrapp/android/preference/R$id;->unit_text_view:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 415
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setView(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 446
    instance-of v0, p1, Lde/mrapp/android/preference/DigitPickerPreference$SavedState;

    if-eqz v0, :cond_0

    .line 447
    check-cast p1, Lde/mrapp/android/preference/DigitPickerPreference$SavedState;

    .line 448
    iget v0, p1, Lde/mrapp/android/preference/DigitPickerPreference$SavedState;->currentNumber:I

    iput v0, p0, Lde/mrapp/android/preference/DigitPickerPreference;->currentNumber:I

    .line 449
    invoke-virtual {p1}, Lde/mrapp/android/preference/DigitPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 451
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 437
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 438
    new-instance v1, Lde/mrapp/android/preference/DigitPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/DigitPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 439
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getCurrentNumber()I

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/DigitPickerPreference$SavedState;->currentNumber:I

    return-object v1
.end method

.method public final setNumber(I)V
    .locals 5

    .line 357
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getNumberOfDigits()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The number must have at maximum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getNumberOfDigits()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " digits"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    .line 359
    iput p1, p0, Lde/mrapp/android/preference/DigitPickerPreference;->currentNumber:I

    .line 360
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setNumber(I)V

    return-void
.end method

.method public final setNumberOfDigits(I)V
    .locals 3

    .line 349
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The number of digits must be at least 1"

    .line 350
    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 351
    iput p1, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberOfDigits:I

    .line 352
    invoke-virtual {p0}, Lde/mrapp/android/preference/DigitPickerPreference;->getNumber()I

    move-result v0

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DigitPickerPreference;->getMaxNumber(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DigitPickerPreference;->setNumber(I)V

    return-void
.end method

.method public final useInputMethod(Z)V
    .locals 5

    .line 365
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->useInputMethod(Z)V

    .line 367
    iget-object v0, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberPickers:[Lde/mrapp/android/preference/view/NumberPicker;

    if-eqz v0, :cond_1

    .line 368
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz p1, :cond_0

    const/high16 v4, 0x20000

    goto :goto_1

    :cond_0
    const/high16 v4, 0x60000

    .line 369
    :goto_1
    invoke-virtual {v3, v4}, Lde/mrapp/android/preference/view/NumberPicker;->setDescendantFocusability(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final wrapSelectorWheel(Z)V
    .locals 4

    .line 378
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->wrapSelectorWheel(Z)V

    .line 380
    iget-object v0, p0, Lde/mrapp/android/preference/DigitPickerPreference;->numberPickers:[Lde/mrapp/android/preference/view/NumberPicker;

    if-eqz v0, :cond_0

    .line 381
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 382
    invoke-virtual {v3, p1}, Lde/mrapp/android/preference/view/NumberPicker;->setWrapSelectorWheel(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
