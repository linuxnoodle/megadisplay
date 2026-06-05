.class public Lde/mrapp/android/preference/ResolutionPreference;
.super Lde/mrapp/android/preference/AbstractValidateableDialogPreference;
.source "ResolutionPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/ResolutionPreference$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/preference/AbstractValidateableDialogPreference<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_VALUE_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private height:I

.field private heightEditText:Lde/mrapp/android/validation/EditText;

.field private heightHint:Ljava/lang/CharSequence;

.field private unit:Ljava/lang/CharSequence;

.field private width:I

.field private widthEditText:Lde/mrapp/android/validation/EditText;

.field private widthHint:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    const-string v0, "^(?!0).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/preference/ResolutionPreference;->MIN_VALUE_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/ResolutionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 303
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/ResolutionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 325
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/ResolutionPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 352
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 353
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/ResolutionPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static formatResolution(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    .line 406
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p0, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    sget v0, Lde/mrapp/android/preference/R$string;->resolution_preference_separator:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/ResolutionPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    const p1, 0x104000a

    .line 184
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 185
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setNegativeButtonText(I)V

    .line 187
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lde/mrapp/android/preference/R$string;->resolution_not_empty_error_message:I

    invoke-static {p1, p2}, Lde/mrapp/android/validation/Validators;->notEmpty(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->addValidator(Lde/mrapp/android/validation/Validator;)V

    .line 188
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lde/mrapp/android/preference/R$string;->resolution_number_error_message:I

    invoke-static {p1, p2}, Lde/mrapp/android/validation/Validators;->number(Landroid/content/Context;I)Lde/mrapp/android/validation/Validator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->addValidator(Lde/mrapp/android/validation/Validator;)V

    .line 190
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lde/mrapp/android/preference/R$string;->resolution_min_value_error_message:I

    sget-object p3, Lde/mrapp/android/preference/ResolutionPreference;->MIN_VALUE_REGEX:Ljava/util/regex/Pattern;

    invoke-static {p1, p2, p3}, Lde/mrapp/android/validation/Validators;->regex(Landroid/content/Context;ILjava/util/regex/Pattern;)Lde/mrapp/android/validation/Validator;

    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->addValidator(Lde/mrapp/android/validation/Validator;)V

    return-void
.end method

.method private obtainHeightHint(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 269
    sget v0, Lde/mrapp/android/preference/R$styleable;->ResolutionPreference_heightHint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lde/mrapp/android/preference/R$string;->resolution_preference_height_hint:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setHeightHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractUnitPreference:[I

    .line 212
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 216
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->obtainUnit(Landroid/content/res/TypedArray;)V

    .line 217
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->obtainWidthHint(Landroid/content/res/TypedArray;)V

    .line 218
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->obtainHeightHint(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    throw p2
.end method

.method private obtainUnit(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 233
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractUnitPreference_unit:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lde/mrapp/android/preference/R$string;->resolution_preference_unit:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setUnit(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainWidthHint(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 251
    sget v0, Lde/mrapp/android/preference/R$styleable;->ResolutionPreference_widthHint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 254
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lde/mrapp/android/preference/R$string;->resolution_preference_width_hint:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setWidthHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static parseResolution(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 370
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p0, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The resolution may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The resolution may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 373
    sget v0, Lde/mrapp/android/preference/R$string;->resolution_preference_separator:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 374
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 376
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 381
    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 382
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resolution contains invalid dimension: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 377
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed resolution: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 426
    iget v0, p0, Lde/mrapp/android/preference/ResolutionPreference;->height:I

    return v0
.end method

.method public final getHeightHint()Ljava/lang/CharSequence;
    .locals 1

    .line 522
    iget-object v0, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 549
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->isValueShownAsSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$string;->resolution_preference_separator:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 553
    :cond_0
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getUnit()Ljava/lang/CharSequence;
    .locals 1

    .line 455
    iget-object v0, p0, Lde/mrapp/android/preference/ResolutionPreference;->unit:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 417
    iget v0, p0, Lde/mrapp/android/preference/ResolutionPreference;->width:I

    return v0
.end method

.method public final getWidthHint()Ljava/lang/CharSequence;
    .locals 1

    .line 489
    iget-object v0, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final needInputMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 608
    iget-object p1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p1}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 609
    iget-object p2, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p2}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 611
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lde/mrapp/android/preference/ResolutionPreference;->formatResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ResolutionPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/preference/ResolutionPreference;->setResolution(II)V

    :cond_0
    const/4 p1, 0x0

    .line 616
    iput-object p1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    .line 617
    iput-object p1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    return-void
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 627
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 567
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V

    .line 568
    invoke-virtual {p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$layout;->resolution:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 569
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    const/4 v3, -0x1

    .line 572
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 573
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    sget v1, Lde/mrapp/android/preference/R$id;->unit_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 575
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getUnit()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    sget v1, Lde/mrapp/android/preference/R$id;->width_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/EditText;

    iput-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    .line 578
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getValidators()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->addAllValidators(Ljava/util/Collection;)V

    .line 579
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->isValidatedOnValueChange()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->validateOnValueChange(Z)V

    .line 580
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->isValidatedOnFocusLost()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->validateOnFocusLost(Z)V

    .line 581
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getErrorColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->setErrorColor(I)V

    .line 582
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getWidthHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 584
    sget v1, Lde/mrapp/android/preference/R$id;->height_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/EditText;

    iput-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    .line 585
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getValidators()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->addAllValidators(Ljava/util/Collection;)V

    .line 586
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->isValidatedOnValueChange()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->validateOnValueChange(Z)V

    .line 587
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->isValidatedOnFocusLost()Z

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->validateOnFocusLost(Z)V

    .line 588
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getErrorColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->setErrorColor(I)V

    .line 589
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getHeightHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getValidationListeners()Lde/mrapp/util/datastructure/ListenerList;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/validation/ValidationListener;

    .line 592
    iget-object v3, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {v3, v2}, Lde/mrapp/android/validation/EditText;->addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V

    .line 593
    iget-object v3, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {v3, v2}, Lde/mrapp/android/validation/EditText;->addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V

    goto :goto_0

    .line 596
    :cond_0
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    .line 599
    invoke-virtual {v1}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    invoke-virtual {v2}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 598
    :goto_1
    invoke-virtual {v1, v2}, Lde/mrapp/android/validation/EditText;->setSelection(I)V

    .line 600
    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setView(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 657
    instance-of v0, p1, Lde/mrapp/android/preference/ResolutionPreference$SavedState;

    if-eqz v0, :cond_0

    .line 658
    check-cast p1, Lde/mrapp/android/preference/ResolutionPreference$SavedState;

    .line 659
    iget v0, p1, Lde/mrapp/android/preference/ResolutionPreference$SavedState;->width:I

    iget v1, p1, Lde/mrapp/android/preference/ResolutionPreference$SavedState;->height:I

    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/preference/ResolutionPreference;->setResolution(II)V

    .line 660
    invoke-virtual {p1}, Lde/mrapp/android/preference/ResolutionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 642
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractValidateableDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 644
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    new-instance v1, Lde/mrapp/android/preference/ResolutionPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/ResolutionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 646
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getWidth()I

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/ResolutionPreference$SavedState;->width:I

    .line 647
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getHeight()I

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/ResolutionPreference$SavedState;->height:I

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    .line 633
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lde/mrapp/android/preference/ResolutionPreference;->formatResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 635
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->parseResolution(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 636
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setResolution(II)V

    return-void
.end method

.method public final setHeightHint(I)V
    .locals 1

    .line 544
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setHeightHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHeightHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightHint:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setResolution(II)V
    .locals 3

    .line 440
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The width must be at least 1"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 441
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The height must be at least 1"

    invoke-virtual {v0, p2, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 442
    iput p1, p0, Lde/mrapp/android/preference/ResolutionPreference;->width:I

    .line 443
    iput p2, p0, Lde/mrapp/android/preference/ResolutionPreference;->height:I

    .line 444
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lde/mrapp/android/preference/ResolutionPreference;->formatResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->persistString(Ljava/lang/String;)Z

    .line 445
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->notifyChanged()V

    return-void
.end method

.method public final setUnit(I)V
    .locals 1

    .line 479
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setUnit(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setUnit(Ljava/lang/CharSequence;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lde/mrapp/android/preference/ResolutionPreference;->unit:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setWidthHint(I)V
    .locals 1

    .line 511
    invoke-virtual {p0}, Lde/mrapp/android/preference/ResolutionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference;->setWidthHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setWidthHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthHint:Ljava/lang/CharSequence;

    return-void
.end method

.method public final validate()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lde/mrapp/android/preference/ResolutionPreference;->widthEditText:Lde/mrapp/android/validation/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/validation/EditText;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lde/mrapp/android/preference/ResolutionPreference;->heightEditText:Lde/mrapp/android/validation/EditText;

    if-eqz v0, :cond_2

    .line 560
    invoke-virtual {v0}, Lde/mrapp/android/validation/EditText;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
