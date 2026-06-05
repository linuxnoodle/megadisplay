.class public final Lcom/maltaisn/icondialog/filter/IconFilter$DefaultImpls;
.super Ljava/lang/Object;
.source "IconFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/filter/IconFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static synthetic queryIcons$default(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/pack/IconPack;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 33
    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/maltaisn/icondialog/filter/IconFilter;->queryIcons(Lcom/maltaisn/icondialog/pack/IconPack;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: queryIcons"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
