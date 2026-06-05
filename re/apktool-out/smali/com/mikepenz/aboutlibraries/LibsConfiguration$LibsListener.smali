.class public interface abstract Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;
.super Ljava/lang/Object;
.source "LibsConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/LibsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LibsListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;",
        "",
        "onExtraClicked",
        "",
        "v",
        "Landroid/view/View;",
        "specialButton",
        "Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;",
        "onIconClicked",
        "",
        "onIconLongClicked",
        "onLibraryAuthorClicked",
        "library",
        "Lcom/mikepenz/aboutlibraries/entity/Library;",
        "onLibraryAuthorLongClicked",
        "onLibraryBottomClicked",
        "onLibraryBottomLongClicked",
        "onLibraryContentClicked",
        "onLibraryContentLongClicked",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract onExtraClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;)Z
.end method

.method public abstract onIconClicked(Landroid/view/View;)V
.end method

.method public abstract onIconLongClicked(Landroid/view/View;)Z
.end method

.method public abstract onLibraryAuthorClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/entity/Library;)Z
.end method

.method public abstract onLibraryAuthorLongClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/entity/Library;)Z
.end method

.method public abstract onLibraryBottomClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/entity/Library;)Z
.end method

.method public abstract onLibraryBottomLongClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/entity/Library;)Z
.end method

.method public abstract onLibraryContentClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/entity/Library;)Z
.end method

.method public abstract onLibraryContentLongClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/entity/Library;)Z
.end method
