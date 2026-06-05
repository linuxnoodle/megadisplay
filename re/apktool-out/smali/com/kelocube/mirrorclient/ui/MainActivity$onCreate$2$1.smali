.class public final Lcom/kelocube/mirrorclient/ui/MainActivity$onCreate$2$1;
.super Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListenerImpl;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/kelocube/mirrorclient/ui/MainActivity$onCreate$2$1",
        "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListenerImpl;",
        "onExtraClicked",
        "",
        "v",
        "Landroid/view/View;",
        "specialButton",
        "Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;",
        "onIconLongClicked",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$onCreate$2$1;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    .line 86
    invoke-direct {p0}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;)Z
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialButton"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;->ordinal()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 105
    :cond_0
    sget-object p2, Lcom/kelocube/mirrorclient/ui/Util;->INSTANCE:Lcom/kelocube/mirrorclient/ui/Util;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$onCreate$2$1;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    sget v2, Lcom/kelocube/mirrorclient/R$string;->about_help_url:I

    invoke-virtual {v1, v2}, Lcom/kelocube/mirrorclient/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v1}, Lcom/kelocube/mirrorclient/ui/Util;->openURL(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;->getDialogOwner()Lcom/kelocube/mirrorclient/ui/DialogOwner;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p2, Lcom/kelocube/mirrorclient/ui/MainActivity$onCreate$2$1$onExtraClicked$1;->INSTANCE:Lcom/kelocube/mirrorclient/ui/MainActivity$onCreate$2$1$onExtraClicked$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, p2, v0, v1}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showDialog$default(Lcom/kelocube/mirrorclient/ui/DialogOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return v0
.end method

.method public onIconLongClicked(Landroid/view/View;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;->getDialogOwner()Lcom/kelocube/mirrorclient/ui/DialogOwner;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$onCreate$2$1;->this$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    .line 113
    invoke-static {v0, p1}, Lcom/kelocube/mirrorclient/ui/MainActivity;->access$showErrorReportDialog(Lcom/kelocube/mirrorclient/ui/MainActivity;Lcom/kelocube/mirrorclient/ui/DialogOwner;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
