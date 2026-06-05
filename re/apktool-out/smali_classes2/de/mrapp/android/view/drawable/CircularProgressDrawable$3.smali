.class Lde/mrapp/android/view/drawable/CircularProgressDrawable$3;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/view/drawable/CircularProgressDrawable;->createSweepAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$3;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$3;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-static {p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->access$200(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->access$202(Lde/mrapp/android/view/drawable/CircularProgressDrawable;Z)Z

    .line 234
    iget-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$3;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-static {p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->access$200(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$3;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    .line 236
    invoke-static {p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->access$300(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)F

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    .line 235
    invoke-static {p1, v0}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->access$302(Lde/mrapp/android/view/drawable/CircularProgressDrawable;F)F

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
