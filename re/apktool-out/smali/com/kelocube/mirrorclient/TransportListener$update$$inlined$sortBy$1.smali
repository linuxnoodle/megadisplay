.class public final Lcom/kelocube/mirrorclient/TransportListener$update$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/TransportListener;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 TransportListener.kt\ncom/kelocube/mirrorclient/TransportListener\n*L\n1#1,328:1\n185#2,3:329\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "a",
        "kotlin.jvm.PlatformType",
        "b",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/kelocube/mirrorclient/MirrorClient;

    .line 329
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->getError()Lcom/kelocube/mirrorclient/AppException;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/kelocube/mirrorclient/MirrorClient$State;->Closed:Lcom/kelocube/mirrorclient/MirrorClient$State;

    const/4 v5, 0x4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 331
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/MirrorClient;->isRemote()Z

    move-result p1

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    add-int/2addr v0, p1

    .line 329
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Lcom/kelocube/mirrorclient/MirrorClient;

    .line 329
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/MirrorClient;->getError()Lcom/kelocube/mirrorclient/AppException;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 330
    :goto_3
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/MirrorClient;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/kelocube/mirrorclient/MirrorClient$State;->Closed:Lcom/kelocube/mirrorclient/MirrorClient$State;

    if-ne v0, v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    add-int/2addr v1, v5

    .line 331
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/MirrorClient;->isRemote()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v2, 0x2

    :cond_5
    add-int/2addr v1, v2

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
