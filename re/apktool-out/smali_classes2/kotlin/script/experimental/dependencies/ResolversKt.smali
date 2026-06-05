.class public final Lkotlin/script/experimental/dependencies/ResolversKt;
.super Ljava/lang/Object;
.source "resolvers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "asSuccess",
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;",
        "Lkotlin/script/experimental/dependencies/ScriptDependencies;",
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
.method public static final asSuccess(Lkotlin/script/experimental/dependencies/ScriptDependencies;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;-><init>(Lkotlin/script/experimental/dependencies/ScriptDependencies;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
