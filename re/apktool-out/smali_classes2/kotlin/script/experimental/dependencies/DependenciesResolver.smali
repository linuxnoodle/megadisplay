.class public interface abstract Lkotlin/script/experimental/dependencies/DependenciesResolver;
.super Ljava/lang/Object;
.source "resolvers.kt"

# interfaces
.implements Lkotlin/script/dependencies/ScriptDependenciesResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/dependencies/DependenciesResolver$DefaultImpls;,
        Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;,
        Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u000b\u000cJ*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007j\u0002`\nH&\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/script/experimental/dependencies/DependenciesResolver;",
        "Lkotlin/script/dependencies/ScriptDependenciesResolver;",
        "resolve",
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;",
        "scriptContents",
        "Lkotlin/script/dependencies/ScriptContents;",
        "environment",
        "",
        "",
        "",
        "Lkotlin/script/dependencies/Environment;",
        "NoDependencies",
        "ResolveResult",
        "kotlin-script-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract resolve(Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/ScriptContents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;"
        }
    .end annotation
.end method
