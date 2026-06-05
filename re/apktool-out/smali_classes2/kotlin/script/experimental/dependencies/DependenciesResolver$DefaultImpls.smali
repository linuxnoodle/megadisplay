.class public final Lkotlin/script/experimental/dependencies/DependenciesResolver$DefaultImpls;
.super Ljava/lang/Object;
.source "resolvers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/dependencies/DependenciesResolver;
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
.method public static resolve(Lkotlin/script/experimental/dependencies/DependenciesResolver;Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/dependencies/DependenciesResolver;",
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

    .line 26
    check-cast p0, Lkotlin/script/dependencies/ScriptDependenciesResolver;

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/script/dependencies/ScriptDependenciesResolver$DefaultImpls;->resolve(Lkotlin/script/dependencies/ScriptDependenciesResolver;Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
