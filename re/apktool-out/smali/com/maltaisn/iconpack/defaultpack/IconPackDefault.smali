.class public final Lcom/maltaisn/iconpack/defaultpack/IconPackDefault;
.super Ljava/lang/Object;
.source "iconPackDefault.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "createDefaultIconPack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "loader",
        "Lcom/maltaisn/icondialog/pack/IconPackLoader;",
        "iconpack-default_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final createDefaultIconPack(Lcom/maltaisn/icondialog/pack/IconPackLoader;)Lcom/maltaisn/icondialog/pack/IconPack;
    .locals 9

    const-string v0, "loader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget v2, Lcom/maltaisn/iconpack/defaultpack/R$xml;->iconpack_default_icons:I

    sget v3, Lcom/maltaisn/iconpack/defaultpack/R$xml;->iconpack_default_tags:I

    .line 30
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/util/Locale;

    const-string v4, "fr"

    invoke-direct {v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v4, Ljava/util/Locale;

    const-string v5, "es"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v5, Ljava/util/Locale;

    const-string v6, "de"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v6, Ljava/util/Locale;

    const-string v7, "pt"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/util/Locale;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    .line 30
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 29
    invoke-static/range {v1 .. v7}, Lcom/maltaisn/icondialog/pack/IconPackLoader;->load$default(Lcom/maltaisn/icondialog/pack/IconPackLoader;IILjava/util/List;Lcom/maltaisn/icondialog/pack/IconPack;ILjava/lang/Object;)Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object p0

    return-object p0
.end method
