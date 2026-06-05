.class public final Lde/mrapp/android/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 2

    .line 99
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p0, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 102
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .line 82
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view tree observer may not be null"

    invoke-virtual {v0, p0, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 59
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p0, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
