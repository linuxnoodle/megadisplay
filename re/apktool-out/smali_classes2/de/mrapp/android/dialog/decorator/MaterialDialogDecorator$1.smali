.class Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator$1;
.super Ljava/lang/Object;
.source "MaterialDialogDecorator.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->createWindowInsetsListener()Landroidx/core/view/OnApplyWindowInsetsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 566
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->hasSystemWindowInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    .line 567
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 568
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 569
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 570
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 566
    :goto_0
    invoke-static {p1, v0}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->access$002(Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 571
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator$1;->this$0:Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;

    invoke-static {p1}, Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;->access$100(Lde/mrapp/android/dialog/decorator/MaterialDialogDecorator;)V

    return-object p2
.end method
