.class public Lde/mrapp/android/util/view/SquareImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SquareImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/util/view/SquareImageView$Edge;
    }
.end annotation


# instance fields
.field private scaledEdge:Lde/mrapp/android/util/view/SquareImageView$Edge;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/util/view/SquareImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/util/view/SquareImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    invoke-direct {p0, p2, p3}, Lde/mrapp/android/util/view/SquareImageView;->initialize(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/util/view/SquareImageView;->obtainStyledAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private obtainScaledEdge(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 150
    sget-object v0, Lde/mrapp/android/util/view/SquareImageView$Edge;->VERTICAL:Lde/mrapp/android/util/view/SquareImageView$Edge;

    invoke-virtual {v0}, Lde/mrapp/android/util/view/SquareImageView$Edge;->getValue()I

    move-result v0

    .line 151
    sget v1, Lde/mrapp/android/util/R$styleable;->SquareImageView_scaledEdge:I

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 151
    invoke-static {p1}, Lde/mrapp/android/util/view/SquareImageView$Edge;->fromValue(I)Lde/mrapp/android/util/view/SquareImageView$Edge;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/SquareImageView;->setScaledEdge(Lde/mrapp/android/util/view/SquareImageView$Edge;)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 131
    invoke-virtual {p0}, Lde/mrapp/android/util/view/SquareImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/util/R$styleable;->SquareImageView:[I

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 136
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/SquareImageView;->obtainScaledEdge(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    throw p2
.end method


# virtual methods
.method public getScaledEdge()Lde/mrapp/android/util/view/SquareImageView$Edge;
    .locals 1

    .line 213
    iget-object v0, p0, Lde/mrapp/android/util/view/SquareImageView;->scaledEdge:Lde/mrapp/android/util/view/SquareImageView$Edge;

    return-object v0
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 233
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 235
    invoke-virtual {p0}, Lde/mrapp/android/util/view/SquareImageView;->getScaledEdge()Lde/mrapp/android/util/view/SquareImageView$Edge;

    move-result-object p1

    sget-object p2, Lde/mrapp/android/util/view/SquareImageView$Edge;->VERTICAL:Lde/mrapp/android/util/view/SquareImageView$Edge;

    if-ne p1, p2, :cond_0

    .line 236
    invoke-virtual {p0}, Lde/mrapp/android/util/view/SquareImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/util/view/SquareImageView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/util/view/SquareImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/SquareImageView;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lde/mrapp/android/util/view/SquareImageView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/util/view/SquareImageView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public final setScaledEdge(Lde/mrapp/android/util/view/SquareImageView$Edge;)V
    .locals 2

    .line 226
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The edge may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lde/mrapp/android/util/view/SquareImageView;->scaledEdge:Lde/mrapp/android/util/view/SquareImageView$Edge;

    .line 228
    invoke-virtual {p0}, Lde/mrapp/android/util/view/SquareImageView;->requestLayout()V

    return-void
.end method
