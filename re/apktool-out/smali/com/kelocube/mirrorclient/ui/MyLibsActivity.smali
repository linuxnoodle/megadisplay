.class public final Lcom/kelocube/mirrorclient/ui/MyLibsActivity;
.super Lcom/mikepenz/aboutlibraries/ui/LibsActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\nH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ui/MyLibsActivity;",
        "Lcom/mikepenz/aboutlibraries/ui/LibsActivity;",
        "()V",
        "dialogOwner",
        "Lcom/kelocube/mirrorclient/ui/DialogOwner;",
        "getDialogOwner",
        "()Lcom/kelocube/mirrorclient/ui/DialogOwner;",
        "setDialogOwner",
        "(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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
.field public dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/mikepenz/aboutlibraries/ui/LibsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDialogOwner()Lcom/kelocube/mirrorclient/ui/DialogOwner;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;->dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dialogOwner"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcom/mikepenz/aboutlibraries/ui/LibsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance p1, Lcom/kelocube/mirrorclient/ui/DialogOwner;

    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    invoke-direct {p1, v0}, Lcom/kelocube/mirrorclient/ui/DialogOwner;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;->setDialogOwner(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;->getDialogOwner()Lcom/kelocube/mirrorclient/ui/DialogOwner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->close()V

    .line 46
    invoke-super {p0}, Lcom/mikepenz/aboutlibraries/ui/LibsActivity;->onDestroy()V

    return-void
.end method

.method public final setDialogOwner(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/MyLibsActivity;->dialogOwner:Lcom/kelocube/mirrorclient/ui/DialogOwner;

    return-void
.end method
