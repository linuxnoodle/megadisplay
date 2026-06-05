.class public final Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;
.super Ljava/lang/Object;
.source "ExtensionsFactories.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J[\u0010\u000c\u001a\u0018\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t\u0018\u00010\u0006\"\u001e\u0008\u0000\u0010\r\u0018\u0001*\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t0\u00062\u001a\u0010\u000e\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t0\u000fH\u0086\u0008J\\\u0010\u000c\u001a\u0018\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t\u0018\u00010\u00062\u001a\u0010\u000e\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t0\u000f2\"\u0010\u0010\u001a\u001e\u0012\u001a\u0008\u0001\u0012\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t0\u00060\u0005J\u0012\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\nRj\u0010\u0003\u001a^\u0012 \u0012\u001e\u0012\u001a\u0008\u0001\u0012\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t0\u00060\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\u0004j.\u0012 \u0012\u001e\u0012\u001a\u0008\u0001\u0012\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007j\u0002`\t0\u00060\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;",
        "",
        "()V",
        "factories",
        "Ljava/util/LinkedHashMap;",
        "Ljava/lang/Class;",
        "Lcom/mikepenz/fastadapter/IAdapterExtension;",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;",
        "Lkotlin/collections/LinkedHashMap;",
        "create",
        "T",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "clazz",
        "register",
        "",
        "factory",
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
.field public static final INSTANCE:Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;

.field private static final factories:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;>;",
            "Lcom/mikepenz/fastadapter/extensions/ExtensionFactory<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;-><init>()V

    sput-object v0, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->INSTANCE:Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->factories:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;>(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "fastAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 23
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Lcom/mikepenz/fastadapter/IAdapterExtension;

    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->create(Lcom/mikepenz/fastadapter/FastAdapter;Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lcom/mikepenz/fastadapter/FastAdapter;Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;>;)",
            "Lcom/mikepenz/fastadapter/IAdapterExtension<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "fastAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->factories:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;->create(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final register(Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/extensions/ExtensionFactory<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->factories:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;->getClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
