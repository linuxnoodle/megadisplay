.class public Lde/mrapp/android/dialog/view/Divider;
.super Landroid/view/View;
.source "Divider.java"


# instance fields
.field private visibleByDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/dialog/view/Divider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/Divider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/Divider;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 152
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/Divider;->initialize()V

    return-void
.end method

.method static synthetic access$001(Lde/mrapp/android/dialog/view/Divider;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Lde/mrapp/android/dialog/view/Divider;I)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private createVisibilityAnimationListener(Z)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 61
    new-instance v0, Lde/mrapp/android/dialog/view/Divider$1;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/dialog/view/Divider$1;-><init>(Lde/mrapp/android/dialog/view/Divider;Z)V

    return-object v0
.end method

.method private initialize()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lde/mrapp/android/dialog/view/Divider;->visibleByDefault:Z

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/view/Divider;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final isVisibleByDefault()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lde/mrapp/android/dialog/view/Divider;->visibleByDefault:Z

    return v0
.end method

.method public final setVisibility(I)V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/view/Divider;->setVisibility(IZ)V

    return-void
.end method

.method public final setVisibility(IZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 182
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/Divider;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 183
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/mrapp/android/dialog/view/Divider;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eq p2, p1, :cond_6

    .line 187
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/Divider;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/Divider;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->cancel()V

    .line 192
    :cond_2
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/Divider;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 193
    invoke-virtual {p0}, Lde/mrapp/android/dialog/view/Divider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 192
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 194
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/view/Divider;->createVisibilityAnimationListener(Z)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    .line 197
    :goto_2
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final setVisibleByDefault(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lde/mrapp/android/dialog/view/Divider;->visibleByDefault:Z

    return-void
.end method
