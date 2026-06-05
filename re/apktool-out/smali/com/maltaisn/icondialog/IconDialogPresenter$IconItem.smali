.class final Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;
.super Ljava/lang/Object;
.source "IconDialogPresenter.kt"

# interfaces
.implements Lcom/maltaisn/icondialog/IconDialogPresenter$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialogPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IconItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;",
        "Lcom/maltaisn/icondialog/IconDialogPresenter$Item;",
        "icon",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "selected",
        "",
        "(Lcom/maltaisn/icondialog/data/Icon;Z)V",
        "getIcon",
        "()Lcom/maltaisn/icondialog/data/Icon;",
        "id",
        "",
        "getId",
        "()J",
        "getSelected",
        "()Z",
        "setSelected",
        "(Z)V",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final icon:Lcom/maltaisn/icondialog/data/Icon;

.field private selected:Z


# direct methods
.method public constructor <init>(Lcom/maltaisn/icondialog/data/Icon;Z)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->icon:Lcom/maltaisn/icondialog/data/Icon;

    iput-boolean p2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->selected:Z

    return-void
.end method


# virtual methods
.method public final getIcon()Lcom/maltaisn/icondialog/data/Icon;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->icon:Lcom/maltaisn/icondialog/data/Icon;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->icon:Lcom/maltaisn/icondialog/data/Icon;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getSelected()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->selected:Z

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 386
    iput-boolean p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->selected:Z

    return-void
.end method
