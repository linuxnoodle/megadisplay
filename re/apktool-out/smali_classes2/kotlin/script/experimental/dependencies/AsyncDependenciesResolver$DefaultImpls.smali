.class public final Lkotlin/script/experimental/dependencies/AsyncDependenciesResolver$DefaultImpls;
.super Ljava/lang/Object;
.source "AsyncDependenciesResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/dependencies/AsyncDependenciesResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static resolve(Lkotlin/script/experimental/dependencies/AsyncDependenciesResolver;Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/dependencies/AsyncDependenciesResolver;",
            "Lkotlin/script/dependencies/ScriptContents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/script/dependencies/ScriptContents$Position;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ">;"
        }
    .end annotation

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "report"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p0, Lkotlin/script/experimental/dependencies/DependenciesResolver;

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/script/experimental/dependencies/DependenciesResolver$DefaultImpls;->resolve(Lkotlin/script/experimental/dependencies/DependenciesResolver;Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Lkotlin/script/experimental/dependencies/AsyncDependenciesResolver;Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/dependencies/AsyncDependenciesResolver;",
            "Lkotlin/script/dependencies/ScriptContents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;"
        }
    .end annotation

    const-string p0, "scriptContents"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "environment"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p0, Lkotlin/NotImplementedError;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method
