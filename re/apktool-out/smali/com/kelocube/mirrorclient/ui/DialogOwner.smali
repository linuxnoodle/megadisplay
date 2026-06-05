.class public final Lcom/kelocube/mirrorclient/ui/DialogOwner;
.super Ljava/lang/Object;
.source "DialogOwner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogOwner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogOwner.kt\ncom/kelocube/mirrorclient/ui/DialogOwner\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,63:1\n1726#2,3:64\n*S KotlinDebug\n*F\n+ 1 DialogOwner.kt\ncom/kelocube/mirrorclient/ui/DialogOwner\n*L\n47#1:64,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u001dB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0015\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\u0015\u001a\u00020\u0016J&\u0010\u0017\u001a\u00020\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\u001bJ\u0008\u0010\u001c\u001a\u00020\u0016H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ui/DialogOwner;",
        "",
        "activity",
        "Landroidx/activity/ComponentActivity;",
        "(Landroidx/activity/ComponentActivity;)V",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "owner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "context",
        "Landroid/content/Context;",
        "(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)V",
        "dialog",
        "Landroid/app/Dialog;",
        "getDialog",
        "()Landroid/app/Dialog;",
        "setDialog",
        "(Landroid/app/Dialog;)V",
        "vm",
        "Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;",
        "close",
        "",
        "showDialog",
        "tag",
        "",
        "factory",
        "Lkotlin/Function1;",
        "showNext",
        "VM",
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
.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private final vm:Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;


# direct methods
.method public static synthetic $r8$lambda$IohMq5qxZkbrRFkiy8bsPrfgPao(Lcom/kelocube/mirrorclient/ui/DialogOwner;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showNext$lambda$2$lambda$1$lambda$0(Lcom/kelocube/mirrorclient/ui/DialogOwner;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QYwFrmqnJ9yxSfCrZ_l_6x9igdk(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->close$lambda$5$lambda$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/kelocube/mirrorclient/ui/DialogOwner;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "requireContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/kelocube/mirrorclient/ui/DialogOwner;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->context:Landroid/content/Context;

    .line 25
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->vm:Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    .line 26
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showNext()V

    return-void
.end method

.method private static final close$lambda$5$lambda$4(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public static synthetic showDialog$default(Lcom/kelocube/mirrorclient/ui/DialogOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 46
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final showNext()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    .line 34
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->vm:Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;->getQueue()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 36
    new-instance v1, Lcom/kelocube/mirrorclient/ui/DialogOwner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/kelocube/mirrorclient/ui/DialogOwner$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    iput-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private static final showNext$lambda$2$lambda$1$lambda$0(Lcom/kelocube/mirrorclient/ui/DialogOwner;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->vm:Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;->getQueue()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->vm:Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;->getQueue()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showNext()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Lcom/kelocube/mirrorclient/ui/DialogOwner$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/kelocube/mirrorclient/ui/DialogOwner$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 58
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public final setDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public final showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Landroid/app/Dialog;",
            ">;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->vm:Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;->getQueue()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 64
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 47
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    .line 48
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->vm:Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ui/DialogOwner;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_3

    .line 50
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/ui/DialogOwner;->showNext()V

    :cond_3
    :goto_1
    return-void
.end method
