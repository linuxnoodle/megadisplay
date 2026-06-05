.class final Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;
.super Ljava/lang/Object;
.source "IconDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onShow"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $state:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialog;


# direct methods
.method constructor <init>(Lcom/maltaisn/icondialog/IconDialog;Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    iput-object p2, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->$state:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 181
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 182
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "dialog.window!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "window.decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 184
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 185
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 186
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    .line 189
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getMaxDialogWidth$p(Lcom/maltaisn/icondialog/IconDialog;)I

    move-result p1

    if-le v1, p1, :cond_1

    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getMaxDialogWidth$p(Lcom/maltaisn/icondialog/IconDialog;)I

    move-result v1

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getMaxDialogHeight$p(Lcom/maltaisn/icondialog/IconDialog;)I

    move-result p1

    if-le v2, p1, :cond_2

    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getMaxDialogHeight$p(Lcom/maltaisn/icondialog/IconDialog;)I

    move-result v2

    .line 191
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 194
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getDialogView$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->$dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getDialogView$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 198
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    new-instance v0, Lcom/maltaisn/icondialog/IconDialogPresenter;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter;-><init>()V

    check-cast v0, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    invoke-static {p1, v0}, Lcom/maltaisn/icondialog/IconDialog;->access$setPresenter$p(Lcom/maltaisn/icondialog/IconDialog;Lcom/maltaisn/icondialog/IconDialogContract$Presenter;)V

    .line 199
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    check-cast v0, Lcom/maltaisn/icondialog/IconDialogContract$View;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;->$state:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->attach(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method
