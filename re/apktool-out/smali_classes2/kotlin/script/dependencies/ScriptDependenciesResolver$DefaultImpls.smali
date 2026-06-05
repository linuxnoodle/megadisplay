.class public final Lkotlin/script/dependencies/ScriptDependenciesResolver$DefaultImpls;
.super Ljava/lang/Object;
.source "resolvers_deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/dependencies/ScriptDependenciesResolver;
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
.method public static resolve(Lkotlin/script/dependencies/ScriptDependenciesResolver;Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/ScriptDependenciesResolver;",
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

    const-string p0, "script"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "report"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance p0, Lkotlin/script/dependencies/PseudoFuture;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/script/dependencies/PseudoFuture;-><init>(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/concurrent/Future;

    return-object p0
.end method
