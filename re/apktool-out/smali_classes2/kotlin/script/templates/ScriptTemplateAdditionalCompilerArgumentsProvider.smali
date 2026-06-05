.class public Lkotlin/script/templates/ScriptTemplateAdditionalCompilerArgumentsProvider;
.super Ljava/lang/Object;
.source "annotations_deprecated.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "temporary workaround for missing functionality, will be replaced by the new API soon"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001c\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J,\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u001c\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\nj\u0004\u0018\u0001`\u000bH\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/script/templates/ScriptTemplateAdditionalCompilerArgumentsProvider;",
        "",
        "arguments",
        "",
        "",
        "(Ljava/lang/Iterable;)V",
        "getArguments",
        "()Ljava/lang/Iterable;",
        "getAdditionalCompilerArguments",
        "environment",
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


# instance fields
.field private final arguments:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlin/script/templates/ScriptTemplateAdditionalCompilerArgumentsProvider;-><init>(Ljava/lang/Iterable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lkotlin/script/templates/ScriptTemplateAdditionalCompilerArgumentsProvider;->arguments:Ljava/lang/Iterable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Iterable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    :cond_0
    invoke-direct {p0, p1}, Lkotlin/script/templates/ScriptTemplateAdditionalCompilerArgumentsProvider;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public getAdditionalCompilerArguments(Ljava/util/Map;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p1, p0, Lkotlin/script/templates/ScriptTemplateAdditionalCompilerArgumentsProvider;->arguments:Ljava/lang/Iterable;

    return-object p1
.end method

.method public final getArguments()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lkotlin/script/templates/ScriptTemplateAdditionalCompilerArgumentsProvider;->arguments:Ljava/lang/Iterable;

    return-object v0
.end method
