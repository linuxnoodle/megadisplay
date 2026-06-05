.class public abstract Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;
.super Ljava/lang/Object;
.source "resolvers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/dependencies/DependenciesResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ResolveResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;,
        Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u000c\rB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u0082\u0001\u0002\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;",
        "",
        "()V",
        "dependencies",
        "Lkotlin/script/experimental/dependencies/ScriptDependencies;",
        "getDependencies",
        "()Lkotlin/script/experimental/dependencies/ScriptDependencies;",
        "reports",
        "",
        "Lkotlin/script/experimental/dependencies/ScriptReport;",
        "getReports",
        "()Ljava/util/List;",
        "Failure",
        "Success",
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;",
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDependencies()Lkotlin/script/experimental/dependencies/ScriptDependencies;
.end method

.method public abstract getReports()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/dependencies/ScriptReport;",
            ">;"
        }
    .end annotation
.end method
