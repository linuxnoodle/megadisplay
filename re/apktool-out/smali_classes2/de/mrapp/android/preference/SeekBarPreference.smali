.class public Lde/mrapp/android/preference/SeekBarPreference;
.super Lde/mrapp/android/preference/DialogPreference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/SeekBarPreference$SavedState;
    }
.end annotation


# static fields
.field private static final NUMERIC_SYSTEM:D = 10.0


# instance fields
.field private currentValue:F

.field private decimals:I

.field private floatingPointSeparator:Ljava/lang/CharSequence;

.field private maxValue:I

.field private minValue:I

.field private showProgress:Z

.field private stepSize:I

.field private summaries:[Ljava/lang/CharSequence;

.field private unit:Ljava/lang/CharSequence;

.field private value:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 491
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 511
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 532
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 533
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/SeekBarPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 560
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 561
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/SeekBarPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/preference/SeekBarPreference;)F
    .locals 0

    .line 59
    iget p0, p0, Lde/mrapp/android/preference/SeekBarPreference;->currentValue:F

    return p0
.end method

.method static synthetic access$002(Lde/mrapp/android/preference/SeekBarPreference;F)F
    .locals 0

    .line 59
    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->currentValue:F

    return p1
.end method

.method static synthetic access$100(Lde/mrapp/android/preference/SeekBarPreference;)I
    .locals 0

    .line 59
    invoke-direct {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMultiplier()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lde/mrapp/android/preference/SeekBarPreference;F)F
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->adaptToStepSize(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lde/mrapp/android/preference/SeekBarPreference;F)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->getProgressText(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private adaptToStepSize(F)F
    .locals 3

    .line 433
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getStepSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMinValue()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 435
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getStepSize()I

    move-result v0

    int-to-float v0, v0

    rem-float v0, p1, v0

    .line 436
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getStepSize()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getStepSize()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    :cond_0
    sub-float/2addr p1, v0

    .line 438
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMinValue()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 439
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMaxValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_1
    return p1
.end method

.method private createSeekBarListener(Landroid/widget/TextView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 401
    new-instance v0, Lde/mrapp/android/preference/SeekBarPreference$1;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/preference/SeekBarPreference$1;-><init>(Lde/mrapp/android/preference/SeekBarPreference;Landroid/widget/TextView;)V

    return-object v0
.end method

.method private getMultiplier()I
    .locals 4

    .line 385
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getDecimals()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getProgressText(F)Ljava/lang/String;
    .locals 4

    .line 454
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getFloatingPointSeparator()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Ljava/text/DecimalFormat;

    if-eqz v1, :cond_0

    .line 457
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 458
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getFloatingPointSeparator()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 459
    move-object v2, v0

    check-cast v2, Ljava/text/DecimalFormat;

    invoke-virtual {v2, v1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 462
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getDecimals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 463
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getDecimals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    float-to-double v1, p1

    .line 464
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/SeekBarPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    const p1, 0x104000a

    .line 207
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 208
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method private obtainDecimals(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->seek_bar_preference_default_decimals:I

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 264
    sget v1, Lde/mrapp/android/preference/R$styleable;->SeekBarPreference_decimals:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setDecimals(I)V

    return-void
.end method

.method private obtainFloatingPointSeparator(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 330
    sget v0, Lde/mrapp/android/preference/R$styleable;->SeekBarPreference_floatingPointSeparator:I

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 330
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setFloatingPointSeparator(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainMaxValue(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->seek_bar_preference_default_max_value:I

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 290
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference_android_max:I

    .line 291
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 290
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setMaxValue(I)V

    return-void
.end method

.method private obtainMinValue(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->seek_bar_preference_default_min_value:I

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 277
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference_min:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setMinValue(I)V

    return-void
.end method

.method private obtainShowProgress(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->seek_bar_preference_default_show_progress:I

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 345
    sget v1, Lde/mrapp/android/preference/R$styleable;->SeekBarPreference_showProgress:I

    .line 346
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 345
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->showProgress(Z)V

    return-void
.end method

.method private obtainStepSize(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->seek_bar_preference_default_step_size:I

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 305
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference_stepSize:I

    .line 306
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 305
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setStepSize(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 4

    .line 229
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->SeekBarPreference:[I

    .line 230
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lde/mrapp/android/preference/R$styleable;->AbstractUnitPreference:[I

    .line 233
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 235
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lde/mrapp/android/preference/R$styleable;->AbstractNumericPreference:[I

    .line 236
    invoke-virtual {v2, p1, v3, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 240
    :try_start_0
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/SeekBarPreference;->obtainDecimals(Landroid/content/res/TypedArray;)V

    .line 241
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->obtainMaxValue(Landroid/content/res/TypedArray;)V

    .line 242
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->obtainMinValue(Landroid/content/res/TypedArray;)V

    .line 243
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->obtainStepSize(Landroid/content/res/TypedArray;)V

    .line 244
    invoke-direct {p0, v1}, Lde/mrapp/android/preference/SeekBarPreference;->obtainUnit(Landroid/content/res/TypedArray;)V

    .line 245
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/SeekBarPreference;->obtainFloatingPointSeparator(Landroid/content/res/TypedArray;)V

    .line 246
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/SeekBarPreference;->obtainShowProgress(Landroid/content/res/TypedArray;)V

    .line 247
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/SeekBarPreference;->obtainSummaries(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    throw p1
.end method

.method private obtainSummaries(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 359
    :try_start_0
    sget v0, Lde/mrapp/android/preference/R$styleable;->SeekBarPreference_android_summary:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setSummaries([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 361
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setSummaries([Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private obtainUnit(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 318
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractUnitPreference_unit:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setUnit(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private roundToDecimals(F)F
    .locals 1

    .line 373
    invoke-direct {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMultiplier()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMultiplier()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method protected final getCurrentValue()F
    .locals 1

    .line 479
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->currentValue:F

    return v0
.end method

.method public final getDecimals()I
    .locals 1

    .line 689
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->decimals:I

    return v0
.end method

.method public final getFloatingPointSeparator()Ljava/lang/CharSequence;
    .locals 1

    .line 749
    iget-object v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->floatingPointSeparator:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getMaxValue()I
    .locals 1

    .line 624
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->maxValue:I

    return v0
.end method

.method public final getMinValue()I
    .locals 1

    .line 601
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->minValue:I

    return v0
.end method

.method public final getRange()I
    .locals 2

    .line 648
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->maxValue:I

    iget v1, p0, Lde/mrapp/android/preference/SeekBarPreference;->minValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getStepSize()I
    .locals 1

    .line 658
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->stepSize:I

    return v0
.end method

.method public final getSummaries()[Ljava/lang/CharSequence;
    .locals 1

    .line 809
    iget-object v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->summaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 825
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->isValueShownAsSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/preference/SeekBarPreference;->getProgressText(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 827
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getRange()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 829
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMinValue()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 830
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 831
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    .line 833
    :cond_1
    invoke-super {p0}, Lde/mrapp/android/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getUnit()Ljava/lang/CharSequence;
    .locals 1

    .line 715
    iget-object v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->unit:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getValue()F
    .locals 1

    .line 570
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->value:F

    return v0
.end method

.method public final isProgressShown()Z
    .locals 1

    .line 787
    iget-boolean v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->showProgress:Z

    return v0
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 887
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getCurrentValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 888
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getCurrentValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setValue(Ljava/lang/Float;)V

    goto :goto_0

    .line 890
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result p1

    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->currentValue:F

    :goto_0
    return-void
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 855
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 867
    invoke-virtual {p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$layout;->seek_bar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 868
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    sget v1, Lde/mrapp/android/preference/R$id;->progress_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 872
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getCurrentValue()F

    move-result v2

    invoke-direct {p0, v2}, Lde/mrapp/android/preference/SeekBarPreference;->getProgressText(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->isProgressShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 875
    sget v2, Lde/mrapp/android/preference/R$id;->seek_bar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/preference/view/SeekBar;

    .line 876
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getRange()I

    move-result v3

    invoke-direct {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMultiplier()I

    move-result v4

    mul-int v3, v3, v4

    invoke-virtual {v2, v3}, Lde/mrapp/android/preference/view/SeekBar;->setMax(I)V

    .line 877
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getCurrentValue()F

    move-result v3

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMinValue()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMultiplier()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/mrapp/android/preference/view/SeekBar;->setProgress(I)V

    .line 878
    invoke-direct {p0, v1}, Lde/mrapp/android/preference/SeekBarPreference;->createSeekBarListener(Landroid/widget/TextView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Lde/mrapp/android/preference/view/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 880
    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setView(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 913
    instance-of v0, p1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;

    if-eqz v0, :cond_1

    .line 914
    check-cast p1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;

    .line 915
    iget v0, p1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;->currentValue:F

    iput v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->currentValue:F

    .line 917
    iget v0, p1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;->value:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 918
    iget v0, p1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/SeekBarPreference;->setValue(Ljava/lang/Float;)V

    .line 921
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 923
    :cond_1
    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 897
    invoke-super {p0}, Lde/mrapp/android/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 898
    new-instance v1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 899
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getCurrentValue()F

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;->currentValue:F

    .line 901
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;->value:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 904
    iput v0, v1, Lde/mrapp/android/preference/SeekBarPreference$SavedState;->value:F

    :goto_0
    return-object v1
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 860
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->getPersistedFloat(F)F

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setValue(Ljava/lang/Float;)V

    return-void
.end method

.method public final setDecimals(I)V
    .locals 3

    .line 703
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The decimals must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 704
    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->decimals:I

    .line 705
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->roundToDecimals(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setValue(Ljava/lang/Float;)V

    return-void
.end method

.method public final setFloatingPointSeparator(I)V
    .locals 1

    .line 778
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setFloatingPointSeparator(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setFloatingPointSeparator(Ljava/lang/CharSequence;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 763
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "The floating point separator\'s length must be 1"

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    .line 766
    :cond_0
    iput-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->floatingPointSeparator:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setMaxValue(I)V
    .locals 3

    .line 635
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMinValue()I

    move-result v1

    const-string v2, "The maximum value must be greater than the minimum value"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureGreater(IILjava/lang/String;)V

    .line 637
    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->maxValue:I

    .line 638
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setValue(Ljava/lang/Float;)V

    return-void
.end method

.method public final setMinValue(I)V
    .locals 3

    .line 612
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMaxValue()I

    move-result v1

    const-string v2, "The minimum value must be less than the maximum value"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureSmaller(IILjava/lang/String;)V

    .line 614
    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->minValue:I

    .line 615
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setValue(Ljava/lang/Float;)V

    return-void
.end method

.method public final setStepSize(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 671
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The step size must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 672
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getRange()I

    move-result v1

    const-string v2, "The step size must be at maximum the range"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtMaximum(IILjava/lang/String;)V

    .line 676
    :cond_0
    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->stepSize:I

    .line 677
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getValue()F

    move-result p1

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->adaptToStepSize(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setValue(Ljava/lang/Float;)V

    return-void
.end method

.method public final setSummaries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->summaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final setSummary(I)V
    .locals 1

    .line 847
    :try_start_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/SeekBarPreference;->setSummaries([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 849
    :catch_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 839
    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 840
    iput-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->summaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final setUnit(I)V
    .locals 1

    .line 737
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->setUnit(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setUnit(Ljava/lang/CharSequence;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->unit:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setValue(Ljava/lang/Float;)V
    .locals 4

    .line 581
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMinValue()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "The value must be at least the minimum value"

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureAtLeast(FFLjava/lang/String;)V

    .line 583
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->getMaxValue()I

    move-result v2

    int-to-float v2, v2

    const-string v3, "The value must be at maximum the maximum value"

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureAtMaximum(FFLjava/lang/String;)V

    .line 585
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->roundToDecimals(F)F

    move-result p1

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->adaptToStepSize(F)F

    move-result p1

    .line 587
    iget v0, p0, Lde/mrapp/android/preference/SeekBarPreference;->value:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 588
    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->value:F

    .line 589
    iput p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->currentValue:F

    .line 590
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SeekBarPreference;->persistFloat(F)Z

    .line 591
    invoke-virtual {p0}, Lde/mrapp/android/preference/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final showProgress(Z)V
    .locals 0

    .line 798
    iput-boolean p1, p0, Lde/mrapp/android/preference/SeekBarPreference;->showProgress:Z

    return-void
.end method
