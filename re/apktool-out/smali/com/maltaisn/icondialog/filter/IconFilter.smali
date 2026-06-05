.class public interface abstract Lcom/maltaisn/icondialog/filter/IconFilter;
.super Ljava/lang/Object;
.source "IconFilter.kt"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/filter/IconFilter$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/maltaisn/icondialog/data/Icon;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u00032\u00020\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&J\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/filter/IconFilter;",
        "Ljava/util/Comparator;",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "Lkotlin/Comparator;",
        "Landroid/os/Parcelable;",
        "compare",
        "",
        "icon1",
        "icon2",
        "queryIcons",
        "",
        "pack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "query",
        "",
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
.method public abstract compare(Lcom/maltaisn/icondialog/data/Icon;Lcom/maltaisn/icondialog/data/Icon;)I
.end method

.method public abstract queryIcons(Lcom/maltaisn/icondialog/pack/IconPack;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maltaisn/icondialog/pack/IconPack;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/maltaisn/icondialog/data/Icon;",
            ">;"
        }
    .end annotation
.end method
