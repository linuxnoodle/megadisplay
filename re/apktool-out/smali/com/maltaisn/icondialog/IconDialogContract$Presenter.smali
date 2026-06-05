.class public interface abstract Lcom/maltaisn/icondialog/IconDialogContract$Presenter;
.super Ljava/lang/Object;
.source "IconDialogContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0008\u0010\u000c\u001a\u00020\u0007H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u001aH&J\u0008\u0010\u001b\u001a\u00020\u0007H&J\u0008\u0010\u001c\u001a\u00020\u0007H&J\u0008\u0010\u001d\u001a\u00020\u0007H&J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H&J\u0008\u0010\"\u001a\u00020\u0007H&J\u0010\u0010#\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H&J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H&J\u0008\u0010%\u001a\u00020\u0007H&J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogContract$Presenter;",
        "",
        "itemCount",
        "",
        "getItemCount",
        "()I",
        "attach",
        "",
        "view",
        "Lcom/maltaisn/icondialog/IconDialogContract$View;",
        "state",
        "Landroid/os/Bundle;",
        "detach",
        "getHeaderPositionForItem",
        "pos",
        "getItemId",
        "",
        "getItemSpanCount",
        "max",
        "getItemType",
        "isHeader",
        "",
        "onBindHeaderItemView",
        "itemView",
        "Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;",
        "onBindIconItemView",
        "Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;",
        "onCancelBtnClicked",
        "onClearBtnClicked",
        "onDialogCancelled",
        "onIconItemClicked",
        "onSearchActionEvent",
        "query",
        "",
        "onSearchClearBtnClicked",
        "onSearchQueryChanged",
        "onSearchQueryEntered",
        "onSelectBtnClicked",
        "saveState",
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
.method public abstract attach(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
.end method

.method public abstract detach()V
.end method

.method public abstract getHeaderPositionForItem(I)I
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemId(I)J
.end method

.method public abstract getItemSpanCount(II)I
.end method

.method public abstract getItemType(I)I
.end method

.method public abstract isHeader(I)Z
.end method

.method public abstract onBindHeaderItemView(ILcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;)V
.end method

.method public abstract onBindIconItemView(ILcom/maltaisn/icondialog/IconDialogContract$IconItemView;)V
.end method

.method public abstract onCancelBtnClicked()V
.end method

.method public abstract onClearBtnClicked()V
.end method

.method public abstract onDialogCancelled()V
.end method

.method public abstract onIconItemClicked(I)V
.end method

.method public abstract onSearchActionEvent(Ljava/lang/String;)V
.end method

.method public abstract onSearchClearBtnClicked()V
.end method

.method public abstract onSearchQueryChanged(Ljava/lang/String;)V
.end method

.method public abstract onSearchQueryEntered(Ljava/lang/String;)V
.end method

.method public abstract onSelectBtnClicked()V
.end method

.method public abstract saveState(Landroid/os/Bundle;)V
.end method
