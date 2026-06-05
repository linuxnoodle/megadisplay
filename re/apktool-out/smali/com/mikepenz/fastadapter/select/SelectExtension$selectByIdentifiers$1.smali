.class public final Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;
.super Ljava/lang/Object;
.source "SelectExtension.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/utils/AdapterPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/select/SelectExtension;->selectByIdentifiers(Ljava/util/Set;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/utils/AdapterPredicate<",
        "TItem;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J3\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1",
        "Lcom/mikepenz/fastadapter/utils/AdapterPredicate;",
        "apply",
        "",
        "lastParentAdapter",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "lastParentPosition",
        "",
        "item",
        "position",
        "(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IItem;I)Z",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $considerSelectableFlag:Z

.field final synthetic $fireEvent:Z

.field final synthetic $identifiers:Ljava/util/Set;

.field final synthetic this$0:Lcom/mikepenz/fastadapter/select/SelectExtension;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/select/SelectExtension;Ljava/util/Set;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set;",
            "ZZ)V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->this$0:Lcom/mikepenz/fastadapter/select/SelectExtension;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->$identifiers:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->$fireEvent:Z

    iput-boolean p4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->$considerSelectableFlag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IItem;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;ITItem;I)Z"
        }
    .end annotation

    const-string p2, "lastParentAdapter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object p2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->$identifiers:Ljava/util/Set;

    invoke-interface {p3}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->this$0:Lcom/mikepenz/fastadapter/select/SelectExtension;

    iget-boolean v4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->$fireEvent:Z

    iget-boolean v5, p0, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;->$considerSelectableFlag:Z

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;IZZ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
