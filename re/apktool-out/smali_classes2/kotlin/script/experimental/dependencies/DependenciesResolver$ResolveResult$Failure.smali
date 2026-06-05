.class public final Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;
.super Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;
.source "resolvers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0002\u0010\u0007J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006H\u00c6\u0003J\u0019\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;",
        "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;",
        "reports",
        "",
        "Lkotlin/script/experimental/dependencies/ScriptReport;",
        "([Lkotlin/script/experimental/dependencies/ScriptReport;)V",
        "",
        "(Ljava/util/List;)V",
        "dependencies",
        "Lkotlin/script/experimental/dependencies/ScriptDependencies;",
        "getDependencies",
        "()Lkotlin/script/experimental/dependencies/ScriptDependencies;",
        "getReports",
        "()Ljava/util/List;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final reports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/script/experimental/dependencies/ScriptReport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/dependencies/ScriptReport;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reports"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lkotlin/script/experimental/dependencies/ScriptReport;)V
    .locals 1

    const-string v0, "reports"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;Ljava/util/List;ILjava/lang/Object;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->copy(Ljava/util/List;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/dependencies/ScriptReport;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/dependencies/ScriptReport;",
            ">;)",
            "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;"
        }
    .end annotation

    const-string v0, "reports"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;

    invoke-direct {v0, p1}, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    iget-object p1, p1, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getDependencies()Lkotlin/script/experimental/dependencies/ScriptDependencies;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/script/experimental/dependencies/ScriptReport;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failure(reports="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Failure;->reports:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
