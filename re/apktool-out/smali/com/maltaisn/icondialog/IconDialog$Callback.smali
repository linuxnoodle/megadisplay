.class public interface abstract Lcom/maltaisn/icondialog/IconDialog$Callback;
.super Ljava/lang/Object;
.source "IconDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/IconDialog$Callback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialog$Callback;",
        "",
        "iconDialogIconPack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "getIconDialogIconPack",
        "()Lcom/maltaisn/icondialog/pack/IconPack;",
        "onIconDialogCancelled",
        "",
        "onIconDialogIconsSelected",
        "dialog",
        "Lcom/maltaisn/icondialog/IconDialog;",
        "icons",
        "",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract getIconDialogIconPack()Lcom/maltaisn/icondialog/pack/IconPack;
.end method

.method public abstract onIconDialogCancelled()V
.end method

.method public abstract onIconDialogIconsSelected(Lcom/maltaisn/icondialog/IconDialog;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maltaisn/icondialog/IconDialog;",
            "Ljava/util/List<",
            "Lcom/maltaisn/icondialog/data/Icon;",
            ">;)V"
        }
    .end annotation
.end method
