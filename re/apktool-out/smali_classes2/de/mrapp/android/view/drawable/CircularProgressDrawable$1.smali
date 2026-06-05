.class Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;
.super Landroid/util/Property;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/view/drawable/CircularProgressDrawable;->createAngleProperty()Landroid/util/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lde/mrapp/android/view/drawable/CircularProgressDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lde/mrapp/android/view/drawable/CircularProgressDrawable;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)Ljava/lang/Float;
    .locals 0

    .line 157
    iget-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-static {p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->access$000(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p1, Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-virtual {p0, p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;->get(Lde/mrapp/android/view/drawable/CircularProgressDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lde/mrapp/android/view/drawable/CircularProgressDrawable;Ljava/lang/Float;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->access$002(Lde/mrapp/android/view/drawable/CircularProgressDrawable;F)F

    .line 163
    iget-object p1, p0, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;->this$0:Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    invoke-virtual {p1}, Lde/mrapp/android/view/drawable/CircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Lde/mrapp/android/view/drawable/CircularProgressDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/view/drawable/CircularProgressDrawable$1;->set(Lde/mrapp/android/view/drawable/CircularProgressDrawable;Ljava/lang/Float;)V

    return-void
.end method
