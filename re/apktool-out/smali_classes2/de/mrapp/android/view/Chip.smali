.class public Lde/mrapp/android/view/Chip;
.super Landroid/widget/FrameLayout;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/view/Chip$CloseListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private closable:Z

.field private closeButton:Landroid/widget/ImageButton;

.field private color:I

.field private imageView:Landroid/widget/ImageView;

.field private listeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/view/Chip$CloseListener;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/view/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 281
    invoke-direct {p0, p2}, Lde/mrapp/android/view/Chip;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 300
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 301
    invoke-direct {p0, p2}, Lde/mrapp/android/view/Chip;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 326
    invoke-direct {p0, p2}, Lde/mrapp/android/view/Chip;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/view/Chip;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lde/mrapp/android/view/Chip;->notifyOnChipClosed()V

    return-void
.end method

.method private createCloseButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 142
    new-instance v0, Lde/mrapp/android/view/Chip$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/view/Chip$1;-><init>(Lde/mrapp/android/view/Chip;)V

    return-object v0
.end method

.method private inflateLayout()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$layout;->chip:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020006

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lde/mrapp/android/view/Chip;->imageView:Landroid/widget/ImageView;

    const v1, 0x1020014

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    const v1, 0x1020027

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lde/mrapp/android/view/Chip;->closeButton:Landroid/widget/ImageButton;

    .line 129
    invoke-direct {p0}, Lde/mrapp/android/view/Chip;->createCloseButtonListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lde/mrapp/android/view/R$dimen;->chip_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    .line 131
    invoke-virtual {p0, v0, v2, v1}, Lde/mrapp/android/view/Chip;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 2

    .line 114
    new-instance v0, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {v0}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/view/Chip;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    .line 115
    invoke-direct {p0}, Lde/mrapp/android/view/Chip;->inflateLayout()V

    .line 116
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$drawable;->chip_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    invoke-static {p0, v0}, Lde/mrapp/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-direct {p0, p1}, Lde/mrapp/android/view/Chip;->obtainStyledAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private notifyOnChipClosed()V
    .locals 2

    .line 253
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/view/Chip$CloseListener;

    .line 254
    invoke-interface {v1, p0}, Lde/mrapp/android/view/Chip$CloseListener;->onChipClosed(Lde/mrapp/android/view/Chip;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainClosable(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 229
    sget v0, Lde/mrapp/android/view/R$styleable;->Chip_closable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setClosable(Z)V

    return-void
.end method

.method private obtainCloseIcon(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 241
    sget v0, Lde/mrapp/android/view/R$styleable;->Chip_closeButtonIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setCloseButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private obtainColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$color;->chip_color_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 206
    sget v1, Lde/mrapp/android/view/R$styleable;->Chip_android_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setColor(I)V

    return-void
.end method

.method private obtainIcon(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 217
    sget v0, Lde/mrapp/android/view/R$styleable;->Chip_android_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/view/R$styleable;->Chip:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 163
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/view/Chip;->obtainText(Landroid/content/res/TypedArray;)V

    .line 164
    invoke-direct {p0, p1}, Lde/mrapp/android/view/Chip;->obtainTextColor(Landroid/content/res/TypedArray;)V

    .line 165
    invoke-direct {p0, p1}, Lde/mrapp/android/view/Chip;->obtainColor(Landroid/content/res/TypedArray;)V

    .line 166
    invoke-direct {p0, p1}, Lde/mrapp/android/view/Chip;->obtainIcon(Landroid/content/res/TypedArray;)V

    .line 167
    invoke-direct {p0, p1}, Lde/mrapp/android/view/Chip;->obtainClosable(Landroid/content/res/TypedArray;)V

    .line 168
    invoke-direct {p0, p1}, Lde/mrapp/android/view/Chip;->obtainCloseIcon(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    throw v0
.end method

.method private obtainText(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 182
    sget v0, Lde/mrapp/android/view/R$styleable;->Chip_android_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainTextColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$color;->chip_text_color_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 194
    sget v1, Lde/mrapp/android/view/R$styleable;->Chip_android_textColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final addCloseListener(Lde/mrapp/android/view/Chip$CloseListener;)V
    .locals 2

    .line 337
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCloseButtonIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 529
    iget-boolean v0, p0, Lde/mrapp/android/view/Chip;->closable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/view/Chip;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getColor()I
    .locals 1

    .line 444
    iget v0, p0, Lde/mrapp/android/view/Chip;->color:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 489
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 361
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 413
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public final isClosable()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lde/mrapp/android/view/Chip;->closable:Z

    return v0
.end method

.method public final removeCloseListener(Lde/mrapp/android/view/Chip$CloseListener;)V
    .locals 2

    .line 350
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setClosable(Z)V
    .locals 4

    .line 508
    iput-boolean p1, p0, Lde/mrapp/android/view/Chip;->closable:Z

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->closeButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 512
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    .line 513
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 512
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 515
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->closeButton:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 516
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 517
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lde/mrapp/android/view/R$dimen;->chip_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    .line 518
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 516
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public final setCloseButtonIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 552
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The icon may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setCloseButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 540
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The icon may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setColor(I)V
    .locals 2

    .line 423
    iput p1, p0, Lde/mrapp/android/view/Chip;->color:I

    .line 424
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorResource(I)V
    .locals 1

    .line 435
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setColor(I)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$dimen;->chip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 468
    iget-object v1, p0, Lde/mrapp/android/view/Chip;->imageView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lde/mrapp/android/util/BitmapUtil;->clipCircle(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 469
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    .line 471
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 470
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->imageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object p1, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    .line 476
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/view/R$dimen;->chip_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    .line 477
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    .line 478
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 475
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 455
    invoke-static {p1}, Lde/mrapp/android/util/BitmapUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 393
    iget-object v0, p0, Lde/mrapp/android/view/Chip;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setTextColorResource(I)V
    .locals 1

    .line 404
    invoke-virtual {p0}, Lde/mrapp/android/view/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/Chip;->setTextColor(I)V

    return-void
.end method
