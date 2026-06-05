.class public abstract Lde/mrapp/android/preference/AbstractColorPickerPreference;
.super Lde/mrapp/android/preference/DialogPreference;
.source "AbstractColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;,
        Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;,
        Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;
    }
.end annotation


# instance fields
.field private color:I

.field private colorFormat:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

.field private previewBackground:Landroid/graphics/drawable/Drawable;

.field private previewBorderColor:I

.field private previewBorderWidth:I

.field private previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

.field private previewShape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

.field private previewSize:I

.field private previewView:Landroid/widget/ImageView;

.field private showPreview:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 535
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 550
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 570
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 571
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 597
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 598
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adaptPreviewView()V
    .locals 4

    .line 502
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->isPreviewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->createPreviewLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3, v1}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->load(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createPreviewLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 522
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPreviewSize()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPreviewSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 523
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private formatColor(Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;I)Ljava/lang/CharSequence;
    .locals 8

    .line 482
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color format may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    sget-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->RGB:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    .line 485
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 486
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v5, v2, v3

    aput-object p2, v2, v1

    .line 485
    const-string p2, "R = %d, G = %d, B = %d"

    invoke-static {p1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 487
    :cond_0
    sget-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->ARGB:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    if-ne p1, v0, :cond_1

    .line 488
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 489
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v5, v7, v3

    aput-object v6, v7, v1

    aput-object p2, v7, v2

    .line 488
    const-string p2, "A = %d, R = %d, G = %d, B = %d"

    invoke-static {p1, p2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 490
    :cond_1
    sget-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->HEX_3_BYTES:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    if-ne p1, v0, :cond_2

    const p1, 0xffffff

    and-int/2addr p1, p2

    .line 491
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    const-string p1, "#%06X"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 493
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v4

    const-string p1, "#%08X"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 7

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    .line 318
    new-instance p1, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    .line 319
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPreviewBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPreviewShape()Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    move-result-object v3

    .line 320
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPreviewSize()I

    move-result v4

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPreviewBorderWidth()I

    move-result v5

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPreviewBorderColor()I

    move-result v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;III)V

    iput-object p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    return-void
.end method

.method private obtainColorFormat(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->color_picker_preference_default_color_format:I

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 466
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_colorFormat:I

    .line 467
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 466
    invoke-static {p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->fromValue(I)Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setColorFormat(Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;)V

    return-void
.end method

.method private obtainPreviewBackground(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 442
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_previewBackground:I

    const/4 v1, -0x1

    .line 443
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 446
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewBackgroundColor(I)V

    goto :goto_0

    .line 448
    :cond_0
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_previewBackground:I

    sget v1, Lde/mrapp/android/preference/R$drawable;->color_picker_default_preview_background:I

    .line 449
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 451
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private obtainPreviewBorderColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$color;->color_picker_preference_default_preview_border_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 429
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_previewBorderColor:I

    .line 430
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 429
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewBorderColor(I)V

    return-void
.end method

.method private obtainPreviewBorderWidth(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 411
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$dimen;->color_picker_preference_default_preview_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 413
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_previewBorderWidth:I

    .line 414
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 413
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewBorderWidth(I)V

    return-void
.end method

.method private obtainPreviewShape(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 396
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->color_picker_preference_default_preview_shape:I

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 398
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_previewShape:I

    .line 399
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 398
    invoke-static {p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->fromValue(I)Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewShape(Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;)V

    return-void
.end method

.method private obtainPreviewSize(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 381
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$dimen;->color_picker_preference_default_preview_size:I

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 383
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_previewSize:I

    .line 384
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 383
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewSize(I)V

    return-void
.end method

.method private obtainShowPreview(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->color_picker_preference_default_show_preview:I

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 369
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference_showPreview:I

    .line 370
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 369
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->showPreview(Z)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractColorPickerPreference:[I

    .line 342
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainShowPreview(Landroid/content/res/TypedArray;)V

    .line 347
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainPreviewSize(Landroid/content/res/TypedArray;)V

    .line 348
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainPreviewShape(Landroid/content/res/TypedArray;)V

    .line 349
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainPreviewBorderWidth(Landroid/content/res/TypedArray;)V

    .line 350
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainPreviewBorderColor(Landroid/content/res/TypedArray;)V

    .line 351
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainPreviewBackground(Landroid/content/res/TypedArray;)V

    .line 352
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->obtainColorFormat(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    throw p2
.end method


# virtual methods
.method public final getColor()I
    .locals 1

    .line 607
    iget v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->color:I

    return v0
.end method

.method public final getColorFormat()Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;
    .locals 1

    .line 810
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->colorFormat:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    return-object v0
.end method

.method public final getPreviewBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 759
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPreviewBorderColor()I
    .locals 1

    .line 733
    iget v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewBorderColor:I

    return v0
.end method

.method public final getPreviewBorderWidth()I
    .locals 1

    .line 706
    iget v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewBorderWidth:I

    return v0
.end method

.method public final getPreviewShape()Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;
    .locals 1

    .line 678
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewShape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-object v0
.end method

.method public final getPreviewSize()I
    .locals 1

    .line 652
    iget v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewSize:I

    return v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 828
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->isValueShownAsSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getColorFormat()Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->formatColor(Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 831
    :cond_0
    invoke-super {p0}, Lde/mrapp/android/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final isPreviewShown()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->showPreview:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 848
    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 849
    sget v0, Lde/mrapp/android/preference/R$id;->preview_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x1020018

    .line 853
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 854
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 855
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    .line 856
    sget v1, Lde/mrapp/android/preference/R$id;->preview_view:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 857
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->createPreviewLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    :cond_0
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->adaptPreviewView()V

    return-void
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 837
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 880
    instance-of v0, p1, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;

    if-eqz v0, :cond_0

    .line 881
    check-cast p1, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;

    .line 882
    iget v0, p1, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;->color:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setColor(I)V

    .line 883
    invoke-virtual {p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 885
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 866
    invoke-super {p0}, Lde/mrapp/android/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 868
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    new-instance v1, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 870
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getColor()I

    move-result v0

    iput v0, v1, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;->color:I

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 842
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setColor(I)V

    return-void
.end method

.method public final setColor(I)V
    .locals 1

    .line 617
    iget v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->color:I

    if-eq v0, p1, :cond_0

    .line 618
    iput p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->color:I

    .line 619
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->persistInt(I)Z

    .line 620
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->notifyChanged()V

    .line 621
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->adaptPreviewView()V

    :cond_0
    return-void
.end method

.method public final setColorFormat(Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;)V
    .locals 2

    .line 822
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color format may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 823
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->colorFormat:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    return-void
.end method

.method public final setPreviewBackground(I)V
    .locals 1

    .line 787
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPreviewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 770
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewBackground:Landroid/graphics/drawable/Drawable;

    .line 772
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0, p1}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 776
    :cond_0
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->adaptPreviewView()V

    return-void
.end method

.method public final setPreviewBackgroundColor(I)V
    .locals 1

    .line 797
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->setPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPreviewBorderColor(I)V
    .locals 1

    .line 743
    iput p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewBorderColor:I

    .line 745
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0, p1}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setBorderColor(I)V

    .line 749
    :cond_0
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->adaptPreviewView()V

    return-void
.end method

.method public final setPreviewBorderWidth(I)V
    .locals 3

    .line 717
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The border width must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 718
    iput p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewBorderWidth:I

    .line 720
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0, p1}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setBorderWidth(I)V

    .line 724
    :cond_0
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->adaptPreviewView()V

    return-void
.end method

.method public final setPreviewShape(Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;)V
    .locals 2

    .line 689
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The preview shape may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewShape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    .line 692
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setShape(Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;)V

    .line 696
    :cond_0
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->adaptPreviewView()V

    return-void
.end method

.method public final setPreviewSize(I)V
    .locals 3

    .line 663
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The preview size must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 664
    iput p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewSize:I

    .line 666
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, p1}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setSize(I)V

    :cond_0
    return-void
.end method

.method public final showPreview(Z)V
    .locals 0

    .line 641
    iput-boolean p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference;->showPreview:Z

    .line 642
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractColorPickerPreference;->adaptPreviewView()V

    return-void
.end method
