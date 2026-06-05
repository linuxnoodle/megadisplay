.class public final Lcom/maltaisn/icondialog/pack/IconPackLoaderKt;
.super Ljava/lang/Object;
.source "IconPackLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "parseError",
        "",
        "message",
        "",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final synthetic access$parseError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/maltaisn/icondialog/pack/IconPackLoaderKt;->parseError(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method private static final parseError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .line 371
    new-instance v0, Lcom/maltaisn/icondialog/pack/IconPackParseException;

    invoke-direct {v0, p0}, Lcom/maltaisn/icondialog/pack/IconPackParseException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
