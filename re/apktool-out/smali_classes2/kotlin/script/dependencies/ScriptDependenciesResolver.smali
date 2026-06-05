.class public interface abstract Lkotlin/script/dependencies/ScriptDependenciesResolver;
.super Ljava/lang/Object;
.source "resolvers_deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/dependencies/ScriptDependenciesResolver$DefaultImpls;,
        Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0001\u0011Jb\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0008j\u0004\u0018\u0001`\n2 \u0010\u000b\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/script/dependencies/ScriptDependenciesResolver;",
        "",
        "resolve",
        "Ljava/util/concurrent/Future;",
        "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
        "script",
        "Lkotlin/script/dependencies/ScriptContents;",
        "environment",
        "",
        "",
        "Lkotlin/script/dependencies/Environment;",
        "report",
        "Lkotlin/Function3;",
        "Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;",
        "Lkotlin/script/dependencies/ScriptContents$Position;",
        "",
        "previousDependencies",
        "ReportSeverity",
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
.method public abstract resolve(Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
.end method
