.class final Lcom/maltaisn/icondialog/IconDialogPresenter$updateList$1;
.super Ljava/lang/Object;
.source "IconDialogPresenter.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialogPresenter;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/maltaisn/icondialog/data/Icon;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "icon1",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "kotlin.jvm.PlatformType",
        "icon2",
        "compare"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;


# direct methods
.method constructor <init>(Lcom/maltaisn/icondialog/IconDialogPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$updateList$1;->this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/maltaisn/icondialog/data/Icon;Lcom/maltaisn/icondialog/data/Icon;)I
    .locals 2

    .line 335
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getCategoryId()I

    move-result v0

    invoke-virtual {p2}, Lcom/maltaisn/icondialog/data/Icon;->getCategoryId()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$updateList$1;->this$0:Lcom/maltaisn/icondialog/IconDialogPresenter;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->access$getSettings$p(Lcom/maltaisn/icondialog/IconDialogPresenter;)Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getIconFilter()Lcom/maltaisn/icondialog/filter/IconFilter;

    move-result-object v0

    const-string v1, "icon1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "icon2"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Lcom/maltaisn/icondialog/filter/IconFilter;->compare(Lcom/maltaisn/icondialog/data/Icon;Lcom/maltaisn/icondialog/data/Icon;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/maltaisn/icondialog/data/Icon;

    check-cast p2, Lcom/maltaisn/icondialog/data/Icon;

    invoke-virtual {p0, p1, p2}, Lcom/maltaisn/icondialog/IconDialogPresenter$updateList$1;->compare(Lcom/maltaisn/icondialog/data/Icon;Lcom/maltaisn/icondialog/data/Icon;)I

    move-result p1

    return p1
.end method
