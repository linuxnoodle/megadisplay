.class final Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;
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
    name = "HeaderItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;",
        "Lcom/maltaisn/icondialog/IconDialogPresenter$Item;",
        "category",
        "Lcom/maltaisn/icondialog/data/Category;",
        "(Lcom/maltaisn/icondialog/data/Category;)V",
        "getCategory",
        "()Lcom/maltaisn/icondialog/data/Category;",
        "id",
        "",
        "getId",
        "()J",
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
.field private final category:Lcom/maltaisn/icondialog/data/Category;


# direct methods
.method public constructor <init>(Lcom/maltaisn/icondialog/data/Category;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;->category:Lcom/maltaisn/icondialog/data/Category;

    return-void
.end method


# virtual methods
.method public final getCategory()Lcom/maltaisn/icondialog/data/Category;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;->category:Lcom/maltaisn/icondialog/data/Category;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;->category:Lcom/maltaisn/icondialog/data/Category;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/data/Category;->getId()I

    move-result v0

    not-int v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
