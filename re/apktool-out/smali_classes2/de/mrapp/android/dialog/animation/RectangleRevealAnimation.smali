.class public Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;
.super Lde/mrapp/android/dialog/animation/DialogAnimation;
.source "RectangleRevealAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/animation/RectangleRevealAnimation$Builder;
    }
.end annotation


# instance fields
.field private height:Ljava/lang/Integer;

.field private width:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private y:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/animation/DialogAnimation;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->x:Ljava/lang/Integer;

    .line 190
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->y:Ljava/lang/Integer;

    .line 191
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->width:Ljava/lang/Integer;

    .line 192
    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->height:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 236
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 225
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getX()Ljava/lang/Integer;
    .locals 1

    .line 203
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getY()Ljava/lang/Integer;
    .locals 1

    .line 214
    iget-object v0, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->y:Ljava/lang/Integer;

    return-object v0
.end method

.method protected final setHeight(I)V
    .locals 3

    .line 175
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The height must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->height:Ljava/lang/Integer;

    return-void
.end method

.method protected final setWidth(I)V
    .locals 3

    .line 163
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The width must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->width:Ljava/lang/Integer;

    return-void
.end method

.method protected final setX(I)V
    .locals 0

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->x:Ljava/lang/Integer;

    return-void
.end method

.method protected final setY(I)V
    .locals 0

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/animation/RectangleRevealAnimation;->y:Ljava/lang/Integer;

    return-void
.end method
