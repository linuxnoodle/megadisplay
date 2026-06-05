.class public final Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;
.super Ljava/lang/Object;
.source "resolvers.kt"

# interfaces
.implements Lkotlin/script/experimental/dependencies/DependenciesResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/dependencies/DependenciesResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoDependencies"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0008j\u0002`\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;",
        "Lkotlin/script/experimental/dependencies/DependenciesResolver;",
        "()V",
        "resolve",
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;",
        "scriptContents",
        "Lkotlin/script/dependencies/ScriptContents;",
        "environment",
        "",
        "",
        "",
        "Lkotlin/script/dependencies/Environment;",
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


# static fields
.field public static final INSTANCE:Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;

    invoke-direct {v0}, Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;-><init>()V

    sput-object v0, Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;->INSTANCE:Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;
    .locals 0
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

    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/script/experimental/dependencies/DependenciesResolver$DefaultImpls;->resolve(Lkotlin/script/experimental/dependencies/DependenciesResolver;Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;Lkotlin/jvm/functions/Function3;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/ScriptContents;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;"
        }
    .end annotation

    const-string v0, "scriptContents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "environment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lkotlin/script/experimental/dependencies/ScriptDependencies;->Companion:Lkotlin/script/experimental/dependencies/ScriptDependencies$Companion;

    invoke-virtual {p1}, Lkotlin/script/experimental/dependencies/ScriptDependencies$Companion;->getEmpty()Lkotlin/script/experimental/dependencies/ScriptDependencies;

    move-result-object p1

    invoke-static {p1}, Lkotlin/script/experimental/dependencies/ResolversKt;->asSuccess(Lkotlin/script/experimental/dependencies/ScriptDependencies;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolve(Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/dependencies/DependenciesResolver$NoDependencies;->resolve(Lkotlin/script/dependencies/ScriptContents;Ljava/util/Map;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;

    move-result-object p1

    check-cast p1, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;

    return-object p1
.end method
