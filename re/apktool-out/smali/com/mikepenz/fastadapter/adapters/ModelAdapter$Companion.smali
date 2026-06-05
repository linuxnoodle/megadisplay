.class public final Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;
.super Ljava/lang/Object;
.source "ModelAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JU\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0004\u0008\u0002\u0010\u0005\"\u0014\u0008\u0003\u0010\u0006*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t2#\u0010\n\u001a\u001f\u0012\u0013\u0012\u0011H\u0005\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u000bH\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;",
        "",
        "()V",
        "models",
        "Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "Model",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "interceptor",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "element",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final models(Lkotlin/jvm/functions/Function1;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lkotlin/jvm/functions/Function1<",
            "-TModel;+TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    invoke-direct {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
