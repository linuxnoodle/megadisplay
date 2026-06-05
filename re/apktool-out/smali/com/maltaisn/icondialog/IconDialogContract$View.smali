.class public interface abstract Lcom/maltaisn/icondialog/IconDialogContract$View;
.super Ljava/lang/Object;
.source "IconDialogContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0014H&J\u0008\u0010\u0016\u001a\u00020\u0014H&J\u0008\u0010\u0017\u001a\u00020\u0014H&J\u0008\u0010\u0018\u001a\u00020\u0014H&J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000cH&J\u001e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001fH&J\u0008\u0010 \u001a\u00020\u0014H&J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000cH&J\u0008\u0010\"\u001a\u00020\u0014H&J\u0010\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010&\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010\'\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010(\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010)\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010*\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020-H&J\u0010\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020%H&J\u0016\u00100\u001a\u00020\u00142\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002020\u000bH&J\u0010\u00103\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0008\u00104\u001a\u00020\u0014H&J\u0012\u00105\u001a\u00020\u00142\u0008\u0008\u0001\u00106\u001a\u00020\u000cH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u00067"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogContract$View;",
        "",
        "iconPack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "getIconPack",
        "()Lcom/maltaisn/icondialog/pack/IconPack;",
        "locale",
        "Ljava/util/Locale;",
        "getLocale",
        "()Ljava/util/Locale;",
        "selectedIconIds",
        "",
        "",
        "getSelectedIconIds",
        "()Ljava/util/List;",
        "settings",
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
        "getSettings",
        "()Lcom/maltaisn/icondialog/IconDialogSettings;",
        "addStickyHeaderDecoration",
        "",
        "cancelCallbacks",
        "exit",
        "hideKeyboard",
        "notifyAllIconsChanged",
        "notifyIconItemChanged",
        "pos",
        "postDelayed",
        "delay",
        "",
        "action",
        "Lkotlin/Function0;",
        "removeLayoutPadding",
        "scrollToItemPosition",
        "setCancelResult",
        "setClearBtnVisible",
        "visible",
        "",
        "setClearSearchBtnVisible",
        "setFooterVisible",
        "setNoResultLabelVisible",
        "setProgressBarVisible",
        "setSearchBarVisible",
        "setSearchQuery",
        "query",
        "",
        "setSelectBtnEnabled",
        "enabled",
        "setSelectionResult",
        "selected",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "setTitleVisible",
        "showMaxSelectionMessage",
        "updateTitle",
        "titleRes",
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
.method public abstract addStickyHeaderDecoration()V
.end method

.method public abstract cancelCallbacks()V
.end method

.method public abstract exit()V
.end method

.method public abstract getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getSelectedIconIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract notifyAllIconsChanged()V
.end method

.method public abstract notifyIconItemChanged(I)V
.end method

.method public abstract postDelayed(JLkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeLayoutPadding()V
.end method

.method public abstract scrollToItemPosition(I)V
.end method

.method public abstract setCancelResult()V
.end method

.method public abstract setClearBtnVisible(Z)V
.end method

.method public abstract setClearSearchBtnVisible(Z)V
.end method

.method public abstract setFooterVisible(Z)V
.end method

.method public abstract setNoResultLabelVisible(Z)V
.end method

.method public abstract setProgressBarVisible(Z)V
.end method

.method public abstract setSearchBarVisible(Z)V
.end method

.method public abstract setSearchQuery(Ljava/lang/String;)V
.end method

.method public abstract setSelectBtnEnabled(Z)V
.end method

.method public abstract setSelectionResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maltaisn/icondialog/data/Icon;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTitleVisible(Z)V
.end method

.method public abstract showMaxSelectionMessage()V
.end method

.method public abstract updateTitle(I)V
.end method
