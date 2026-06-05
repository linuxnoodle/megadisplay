.class public final Lkotlin/script/dependencies/Resolvers_deprecatedKt;
.super Ljava/lang/Object;
.source "resolvers_deprecated.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u0014\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u0004\u0018\u00010\u0002*&\u0010\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00042\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "asFuture",
        "Lkotlin/script/dependencies/PseudoFuture;",
        "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
        "Environment",
        "",
        "",
        "",
        "kotlin-script-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asFuture(Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Lkotlin/script/dependencies/PseudoFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ")",
            "Lkotlin/script/dependencies/PseudoFuture<",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lkotlin/script/dependencies/PseudoFuture;

    invoke-direct {v0, p0}, Lkotlin/script/dependencies/PseudoFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
