.class public Lde/mrapp/android/preference/NumberPickerPreference;
.super Lde/mrapp/android/preference/AbstractNumberPickerPreference;
.source "NumberPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/NumberPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private currentIndex:I

.field private maxNumber:I

.field private minNumber:I

.field private numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

.field private stepSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/NumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 330
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/NumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 351
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 352
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 379
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 380
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/NumberPickerPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$002(Lde/mrapp/android/preference/NumberPickerPreference;I)I
    .locals 0

    .line 49
    iput p1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->currentIndex:I

    return p1
.end method

.method private adaptToStepSize(I)I
    .locals 3

    .line 245
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMinNumber()I

    move-result v0

    sub-int/2addr p1, v0

    .line 247
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v0

    rem-int v0, p1, v0

    .line 248
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    sub-int/2addr p1, v0

    .line 250
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMinNumber()I

    move-result v0

    add-int/2addr p1, v0

    .line 251
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMaxNumber()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method private createDisplayedValues()[Ljava/lang/String;
    .locals 5

    .line 264
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getRange()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 265
    new-array v1, v0, [Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMinNumber()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 269
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 270
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMaxNumber()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private createNumberPickerListener()Landroid/widget/NumberPicker$OnValueChangeListener;
    .locals 1

    .line 283
    new-instance v0, Lde/mrapp/android/preference/NumberPickerPreference$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/preference/NumberPickerPreference$1;-><init>(Lde/mrapp/android/preference/NumberPickerPreference;)V

    return-object v0
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/NumberPickerPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainMaxNumber(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->number_picker_preference_default_max_number:I

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 203
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference_android_max:I

    .line 204
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 203
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->setMaxNumber(I)V

    return-void
.end method

.method private obtainMinNumber(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->number_picker_preference_default_min_number:I

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 217
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference_min:I

    .line 218
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 217
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->setMinNumber(I)V

    return-void
.end method

.method private obtainStepSize(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->number_picker_preference_default_step_size:I

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 232
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference_stepSize:I

    .line 233
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->setStepSize(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference:[I

    .line 181
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 185
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->obtainMaxNumber(Landroid/content/res/TypedArray;)V

    .line 186
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->obtainMinNumber(Landroid/content/res/TypedArray;)V

    .line 187
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->obtainStepSize(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    throw p2
.end method


# virtual methods
.method protected final getCurrentIndex()I
    .locals 1

    .line 302
    iget v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->currentIndex:I

    return v0
.end method

.method public final getMaxNumber()I
    .locals 1

    .line 412
    iget v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->maxNumber:I

    return v0
.end method

.method public final getMinNumber()I
    .locals 1

    .line 389
    iget v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->minNumber:I

    return v0
.end method

.method public final getRange()I
    .locals 2

    .line 436
    iget v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->maxNumber:I

    iget v1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->minNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getStepSize()I
    .locals 1

    .line 447
    iget v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->stepSize:I

    return v0
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 534
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getCurrentIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getCurrentIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->setNumber(I)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getNumber()I

    move-result p1

    iput p1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->currentIndex:I

    :goto_0
    const/4 p1, 0x0

    .line 540
    iput-object p1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

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

    .line 502
    invoke-virtual {p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$layout;->number_picker:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    sget v1, Lde/mrapp/android/preference/R$id;->number_picker_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 507
    invoke-direct {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->createDisplayedValues()[Ljava/lang/String;

    move-result-object v2

    .line 508
    new-instance v4, Lde/mrapp/android/preference/view/NumberPicker;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/mrapp/android/preference/view/NumberPicker;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    .line 509
    invoke-virtual {v4, v2}, Lde/mrapp/android/preference/view/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 510
    iget-object v4, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lde/mrapp/android/preference/view/NumberPicker;->setMinValue(I)V

    .line 511
    iget-object v4, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Lde/mrapp/android/preference/view/NumberPicker;->setMaxValue(I)V

    .line 512
    iget-object v2, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    .line 513
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getCurrentIndex()I

    move-result v4

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMinNumber()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 512
    invoke-virtual {v2, v4}, Lde/mrapp/android/preference/view/NumberPicker;->setValue(I)V

    .line 514
    iget-object v2, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->isSelectorWheelWrapped()Z

    move-result v4

    invoke-virtual {v2, v4}, Lde/mrapp/android/preference/view/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 515
    iget-object v2, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    .line 516
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->isInputMethodUsed()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x20000

    goto :goto_0

    :cond_0
    const/high16 v4, 0x60000

    .line 515
    :goto_0
    invoke-virtual {v2, v4}, Lde/mrapp/android/preference/view/NumberPicker;->setDescendantFocusability(I)V

    .line 518
    iget-object v2, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    invoke-direct {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->createNumberPickerListener()Landroid/widget/NumberPicker$OnValueChangeListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lde/mrapp/android/preference/view/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 519
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 521
    iget-object v3, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    invoke-virtual {v1, v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 523
    sget v2, Lde/mrapp/android/preference/R$id;->unit_text_view:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 524
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v5, 0x8

    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setView(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 555
    instance-of v0, p1, Lde/mrapp/android/preference/NumberPickerPreference$SavedState;

    if-eqz v0, :cond_0

    .line 556
    check-cast p1, Lde/mrapp/android/preference/NumberPickerPreference$SavedState;

    .line 557
    iget v0, p1, Lde/mrapp/android/preference/NumberPickerPreference$SavedState;->currentNumber:I

    iput v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->currentIndex:I

    .line 558
    invoke-virtual {p1}, Lde/mrapp/android/preference/NumberPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 546
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 547
    new-instance v1, Lde/mrapp/android/preference/NumberPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/NumberPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 548
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getCurrentIndex()I

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/NumberPickerPreference$SavedState;->currentNumber:I

    return-object v1
.end method

.method public final setMaxNumber(I)V
    .locals 3

    .line 423
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMinNumber()I

    move-result v1

    const-string v2, "The maximum number must be greater than the minimum number"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureGreater(IILjava/lang/String;)V

    .line 425
    iput p1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->maxNumber:I

    .line 426
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getNumber()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->setNumber(I)V

    return-void
.end method

.method public final setMinNumber(I)V
    .locals 3

    .line 400
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMaxNumber()I

    move-result v1

    const-string v2, "The minimum number must be less than the maximum number"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureSmaller(IILjava/lang/String;)V

    .line 402
    iput p1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->minNumber:I

    .line 403
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getNumber()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->setNumber(I)V

    return-void
.end method

.method public final setNumber(I)V
    .locals 3

    .line 469
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMinNumber()I

    move-result v1

    const-string v2, "The number must be at least the minimum number"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 471
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getMaxNumber()I

    move-result v1

    const-string v2, "The number must be at maximum the maximum number"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    .line 473
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->adaptToStepSize(I)I

    move-result p1

    .line 474
    iput p1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->currentIndex:I

    .line 475
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->setNumber(I)V

    return-void
.end method

.method public final setStepSize(I)V
    .locals 3

    .line 460
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The step size must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 461
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getRange()I

    move-result v1

    const-string v2, "The step size must be at maximum the range"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    .line 463
    iput p1, p0, Lde/mrapp/android/preference/NumberPickerPreference;->stepSize:I

    .line 464
    invoke-virtual {p0}, Lde/mrapp/android/preference/NumberPickerPreference;->getNumber()I

    move-result p1

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->adaptToStepSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/NumberPickerPreference;->setNumber(I)V

    return-void
.end method

.method public final useInputMethod(Z)V
    .locals 1

    .line 480
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->useInputMethod(Z)V

    .line 482
    iget-object v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x20000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x60000

    .line 483
    :goto_0
    invoke-virtual {v0, p1}, Lde/mrapp/android/preference/view/NumberPicker;->setDescendantFocusability(I)V

    :cond_1
    return-void
.end method

.method public final wrapSelectorWheel(Z)V
    .locals 1

    .line 491
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractNumberPickerPreference;->wrapSelectorWheel(Z)V

    .line 493
    iget-object v0, p0, Lde/mrapp/android/preference/NumberPickerPreference;->numberPicker:Lde/mrapp/android/preference/view/NumberPicker;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0, p1}, Lde/mrapp/android/preference/view/NumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    return-void
.end method
