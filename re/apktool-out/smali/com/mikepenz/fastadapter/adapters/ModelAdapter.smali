.class public Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
.super Lcom/mikepenz/fastadapter/AbstractAdapter;
.source "ModelAdapter.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IItemAdapter;


# annotations
.annotation runtime Lcom/mikepenz/fastadapter/dsl/FastAdapterDsl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Lcom/mikepenz/fastadapter/AbstractAdapter<",
        "TItem;>;",
        "Lcom/mikepenz/fastadapter/IItemAdapter<",
        "TModel;TItem;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModelAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelAdapter.kt\ncom/mikepenz/fastadapter/adapters/ModelAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,502:1\n1418#2,9:503\n1648#2,2:512\n1427#2:514\n1648#2,2:515\n*E\n*S KotlinDebug\n*F\n+ 1 ModelAdapter.kt\ncom/mikepenz/fastadapter/adapters/ModelAdapter\n*L\n122#1,9:503\n122#1,2:512\n122#1:514\n227#1,2:515\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 m*\u0004\u0008\u0000\u0010\u0001*\u0014\u0008\u0001\u0010\u0002*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u00052\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0007:\u0001mB,\u0008\u0016\u0012#\u0010\u0008\u001a\u001f\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u00010\t\u00a2\u0006\u0002\u0010\rB8\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000f\u0012#\u0010\u0008\u001a\u001f\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u00010\t\u00a2\u0006\u0002\u0010\u0010J-\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000A\"\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010BJ5\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0012\u0010@\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000A\"\u00028\u0000H\u0017\u00a2\u0006\u0002\u0010DJ*\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000:H\u0016J\"\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000:H\u0016J*\u0010E\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00010:H\u0016J\"\u0010E\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00010:H\u0016J\u0014\u0010F\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H\u0016J\u0012\u0010G\u001a\u00020H2\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0015\u0010K\u001a\u00028\u00012\u0006\u0010C\u001a\u00020\u0019H\u0016\u00a2\u0006\u0002\u0010LJ\u0015\u0010M\u001a\u00020\u00192\u0006\u0010N\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010OJ\u0010\u0010M\u001a\u00020\u00192\u0006\u0010P\u001a\u00020QH\u0016J\u0010\u0010R\u001a\u00020\u00192\u0006\u0010C\u001a\u00020\u0019H\u0016J\u0017\u0010S\u001a\u0004\u0018\u00018\u00012\u0006\u0010T\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010UJ\u001c\u0010S\u001a\u0008\u0012\u0004\u0012\u00028\u00010:2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00028\u00000:H\u0016J$\u0010V\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010W\u001a\u00020\u00192\u0006\u0010X\u001a\u00020\u0019H\u0016J0\u0010Y\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00190Z2\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00028\u00010\\2\u0006\u0010]\u001a\u00020\u0012H\u0016J\u0008\u0010^\u001a\u00020HH\u0016J\u001c\u0010_\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u0019H\u0016J\u001c\u0010`\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010P\u001a\u00020QH\u0016J$\u0010a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u0010b\u001a\u00020\u0019H\u0016J*\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u0010N\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010dJ\"\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000:H\u0016J+\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u00028\u00000:2\u0006\u0010f\u001a\u00020\u0012H\u0084\u0002J5\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u00028\u00000:2\u0006\u0010f\u001a\u00020\u00122\u0008\u0010g\u001a\u0004\u0018\u00010hH\u0096\u0002J)\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u0010N\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010jJ4\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00010:2\u0006\u0010f\u001a\u00020\u00122\u0008\u0010g\u001a\u0004\u0018\u00010hH\u0016J*\u0010k\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00028\u00000:2\u0006\u0010l\u001a\u00020\u0012H\u0016R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR4\u0010 \u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010!2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010!8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R \u0010&\u001a\u0008\u0012\u0004\u0012\u00028\u00010\'X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R7\u0010\u0008\u001a\u001f\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010\rR\u001a\u0010/\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0015\"\u0004\u00080\u0010\u0017R&\u00101\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000102X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u001a\u00109\u001a\u0008\u0012\u0004\u0012\u00028\u00000:8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u001fR9\u0010<\u001a!\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010-\"\u0004\u0008>\u0010\r\u00a8\u0006n"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "Model",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/AbstractAdapter;",
        "Lcom/mikepenz/fastadapter/IItemAdapter;",
        "interceptor",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "element",
        "(Lkotlin/jvm/functions/Function1;)V",
        "itemList",
        "Lcom/mikepenz/fastadapter/IItemList;",
        "(Lcom/mikepenz/fastadapter/IItemList;Lkotlin/jvm/functions/Function1;)V",
        "value",
        "",
        "active",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "adapterItemCount",
        "",
        "getAdapterItemCount",
        "()I",
        "adapterItems",
        "",
        "getAdapterItems",
        "()Ljava/util/List;",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "getFastAdapter",
        "()Lcom/mikepenz/fastadapter/FastAdapter;",
        "setFastAdapter",
        "(Lcom/mikepenz/fastadapter/FastAdapter;)V",
        "idDistributor",
        "Lcom/mikepenz/fastadapter/IIdDistributor;",
        "getIdDistributor",
        "()Lcom/mikepenz/fastadapter/IIdDistributor;",
        "setIdDistributor",
        "(Lcom/mikepenz/fastadapter/IIdDistributor;)V",
        "getInterceptor",
        "()Lkotlin/jvm/functions/Function1;",
        "setInterceptor",
        "isUseIdDistributor",
        "setUseIdDistributor",
        "itemFilter",
        "Lcom/mikepenz/fastadapter/adapters/ItemFilter;",
        "getItemFilter",
        "()Lcom/mikepenz/fastadapter/adapters/ItemFilter;",
        "setItemFilter",
        "(Lcom/mikepenz/fastadapter/adapters/ItemFilter;)V",
        "getItemList",
        "()Lcom/mikepenz/fastadapter/IItemList;",
        "models",
        "",
        "getModels",
        "reverseInterceptor",
        "getReverseInterceptor",
        "setReverseInterceptor",
        "add",
        "items",
        "",
        "([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "position",
        "(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "addInternal",
        "clear",
        "filter",
        "",
        "constraint",
        "",
        "getAdapterItem",
        "(I)Lcom/mikepenz/fastadapter/IItem;",
        "getAdapterPosition",
        "item",
        "(Lcom/mikepenz/fastadapter/IItem;)I",
        "identifier",
        "",
        "getGlobalPosition",
        "intercept",
        "model",
        "(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;",
        "move",
        "fromPosition",
        "toPosition",
        "recursive",
        "Lcom/mikepenz/fastadapter/utils/Triple;",
        "predicate",
        "Lcom/mikepenz/fastadapter/utils/AdapterPredicate;",
        "stopOnMatch",
        "remapMappedTypes",
        "remove",
        "removeByIdentifier",
        "removeRange",
        "itemCount",
        "set",
        "(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "list",
        "resetFilter",
        "adapterNotifier",
        "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
        "setInternal",
        "(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;",
        "setNewList",
        "retainFilter",
        "Companion",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;


# instance fields
.field private active:Z

.field private idDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private interceptor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TModel;+TItem;>;"
        }
    .end annotation
.end field

.field private isUseIdDistributor:Z

.field private itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;"
        }
    .end annotation
.end field

.field private final itemList:Lcom/mikepenz/fastadapter/IItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IItemList<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private reverseInterceptor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TItem;+TModel;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->Companion:Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/fastadapter/IItemList;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItemList<",
            "TItem;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TModel;+TItem;>;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/AbstractAdapter;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->interceptor:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->active:Z

    .line 52
    sget-object p2, Lcom/mikepenz/fastadapter/IIdDistributor;->DEFAULT:Lcom/mikepenz/fastadapter/IIdDistributor;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->idDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    .line 57
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    .line 63
    new-instance p1, Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    invoke-direct {p1, p0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;-><init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;)V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    return-void

    .line 52
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.mikepenz.fastadapter.IIdDistributor<Item>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TModel;+TItem;>;)V"
        }
    .end annotation

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/mikepenz/fastadapter/utils/DefaultItemListImpl;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/mikepenz/fastadapter/IItemList;

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;-><init>(Lcom/mikepenz/fastadapter/IItemList;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final models(Lkotlin/jvm/functions/Function1;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
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

    sget-object v0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->Companion:Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;

    invoke-virtual {v0, p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;->models(Lkotlin/jvm/functions/Function1;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public bridge synthetic add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public bridge synthetic add(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public varargs add(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public bridge synthetic addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public addInternal(ILjava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 335
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/IItemList;->addAll(ILjava/util/List;I)V

    :cond_2
    return-object p0
.end method

.method public addInternal(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/mikepenz/fastadapter/IItemList;->addAll(Ljava/util/List;I)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/IItemList;->addAll(Ljava/util/List;I)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object v0
.end method

.method public clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IItemList;->clear(I)V

    return-object p0
.end method

.method public filter(Ljava/lang/CharSequence;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getActive()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->active:Z

    return v0
.end method

.method public getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemList;->get(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A normal ModelAdapter does not allow null items."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public getAdapterItemCount()I
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemList;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterPosition(J)I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/IItemList;->getAdapterPosition(J)I

    move-result p1

    return p1
.end method

.method public getAdapterPosition(Lcom/mikepenz/fastadapter/IItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)I"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterPosition(J)I

    move-result p1

    return p1
.end method

.method public getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lcom/mikepenz/fastadapter/AbstractAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalPosition(I)I
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method public getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->idDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    return-object v0
.end method

.method public final getInterceptor()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->interceptor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    return-object v0
.end method

.method public final getItemList()Lcom/mikepenz/fastadapter/IItemList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemList<",
            "TItem;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    return-object v0
.end method

.method public getModels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TModel;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IItemList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IItemList;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IItem;

    .line 76
    instance-of v3, v2, Lcom/mikepenz/fastadapter/IModelItem;

    if-eqz v3, :cond_2

    .line 77
    check-cast v2, Lcom/mikepenz/fastadapter/IModelItem;

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IModelItem;->getModel()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Object;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getReverseInterceptor()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getReverseInterceptor()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 87
    const-string v1, "to get the list of models, the item either needs to implement `IModelItem` or you have to provide a `reverseInterceptor`"

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 91
    :cond_4
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getReverseInterceptor()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TItem;TModel;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->reverseInterceptor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)TItem;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->interceptor:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1
.end method

.method public intercept(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;)",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    check-cast p1, Ljava/lang/Iterable;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 512
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 122
    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final isUseIdDistributor()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    return v0
.end method

.method public bridge synthetic move(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public move(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/IItemList;->move(III)V

    return-object p0
.end method

.method public recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/utils/AdapterPredicate<",
            "TItem;>;Z)",
            "Lcom/mikepenz/fastadapter/utils/Triple<",
            "Ljava/lang/Boolean;",
            "TItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result v3

    .line 450
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getAdapterItemCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    add-int v8, v5, v3

    .line 454
    invoke-virtual {v0, v8}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v6

    .line 455
    invoke-virtual {v6}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getItem()Lcom/mikepenz/fastadapter/IItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 457
    invoke-virtual {v6}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getAdapter()Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 458
    invoke-interface {p1, v9, v8, v7, v8}, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;->apply(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IItem;I)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p2, :cond_0

    .line 465
    new-instance p1, Lcom/mikepenz/fastadapter/utils/Triple;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v7, v0}, Lcom/mikepenz/fastadapter/utils/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 468
    :cond_0
    instance-of v9, v7, Lcom/mikepenz/fastadapter/IExpandable;

    if-nez v9, :cond_1

    move-object v7, v2

    :cond_1
    move-object v9, v7

    check-cast v9, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v9, :cond_2

    .line 469
    invoke-virtual {v6}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getAdapter()Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 470
    sget-object v6, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    move-object v10, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->recursiveSub(Lcom/mikepenz/fastadapter/IAdapter;ILcom/mikepenz/fastadapter/IExpandable;Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    move-result-object v6

    .line 477
    invoke-virtual {v6}, Lcom/mikepenz/fastadapter/utils/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_2

    return-object v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    :cond_3
    new-instance p1, Lcom/mikepenz/fastadapter/utils/Triple;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2, v2, v2}, Lcom/mikepenz/fastadapter/utils/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public remapMappedTypes()V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->clearTypeInstance()V

    :cond_0
    return-void
.end method

.method public bridge synthetic remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public remove(I)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/mikepenz/fastadapter/IItemList;->remove(II)V

    return-object p0
.end method

.method public removeByIdentifier(J)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 408
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter$removeByIdentifier$1;-><init>(Lcom/mikepenz/fastadapter/adapters/ModelAdapter;J)V

    check-cast v0, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    return-object p0
.end method

.method public bridge synthetic removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public removeRange(II)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/IItemList;->removeRange(III)V

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITModel;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public set(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->set(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected final set(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;Z",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final setActive(Z)V
    .locals 1

    .line 45
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->active:Z

    .line 46
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemList;->setActive(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    instance-of v1, v0, Lcom/mikepenz/fastadapter/utils/DefaultItemList;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 35
    check-cast v0, Lcom/mikepenz/fastadapter/utils/DefaultItemList;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/utils/DefaultItemList;->setFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.mikepenz.fastadapter.utils.DefaultItemList<Item>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/mikepenz/fastadapter/AbstractAdapter;->setFastAdapter(Lcom/mikepenz/fastadapter/FastAdapter;)V

    return-void
.end method

.method public setIdDistributor(Lcom/mikepenz/fastadapter/IIdDistributor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "TItem;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->idDistributor:Lcom/mikepenz/fastadapter/IIdDistributor;

    return-void
.end method

.method public final setInterceptor(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TModel;+TItem;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->interceptor:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public setInternal(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/mikepenz/fastadapter/IIdentifyable;

    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCount(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lcom/mikepenz/fastadapter/IItemList;->set(ILcom/mikepenz/fastadapter/IItem;I)V

    return-object p0
.end method

.method public setInternal(Ljava/util/List;ZLcom/mikepenz/fastadapter/IAdapterNotifier;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;Z",
            "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
            ")",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    :cond_0
    if-eqz p2, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->resetFilter()V

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getExtensions()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 515
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    .line 228
    invoke-interface {v1, p1, p2}, Lcom/mikepenz/fastadapter/IAdapterExtension;->set(Ljava/util/List;Z)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getFastAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getOrder()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getPreItemCountByOrder(I)I

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/IItemList;->set(Ljava/util/List;ILcom/mikepenz/fastadapter/IAdapterNotifier;)V

    return-object p0
.end method

.method public setItemFilter(Lcom/mikepenz/fastadapter/adapters/ItemFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/adapters/ItemFilter<",
            "TModel;TItem;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    return-void
.end method

.method public bridge synthetic setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p1
.end method

.method public setNewList(Ljava/util/List;Z)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TModel;>;Z)",
            "Lcom/mikepenz/fastadapter/adapters/ModelAdapter<",
            "TModel;TItem;>;"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->intercept(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 248
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getIdDistributor()Lcom/mikepenz/fastadapter/IIdDistributor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IIdDistributor;->checkIds(Ljava/util/List;)Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 253
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 254
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->getConstraint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 256
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->resetFilter()V

    :cond_1
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->getItemFilter()Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filterItems(Ljava/lang/CharSequence;)V

    .line 265
    :cond_3
    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->itemList:Lcom/mikepenz/fastadapter/IItemList;

    xor-int/lit8 v0, v2, 0x1

    invoke-interface {p2, p1, v0}, Lcom/mikepenz/fastadapter/IItemList;->setNewList(Ljava/util/List;Z)V

    return-object p0
.end method

.method public setReverseInterceptor(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TItem;+TModel;>;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->reverseInterceptor:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setUseIdDistributor(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/adapters/ModelAdapter;->isUseIdDistributor:Z

    return-void
.end method
