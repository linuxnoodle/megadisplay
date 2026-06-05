.class public final Lcom/mikepenz/fastadapter/select/SelectExtensionFactory;
.super Ljava/lang/Object;
.source "SelectExtensionFactory.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/extensions/ExtensionFactory<",
        "Lcom/mikepenz/fastadapter/select/SelectExtension<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J*\u0010\u0008\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u001a\u0010\t\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000bj\u0002`\r0\nH\u0016R\u001e\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/select/SelectExtensionFactory;",
        "Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;",
        "Lcom/mikepenz/fastadapter/select/SelectExtension;",
        "()V",
        "clazz",
        "Ljava/lang/Class;",
        "getClazz",
        "()Ljava/lang/Class;",
        "create",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
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
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-class v0, Lcom/mikepenz/fastadapter/select/SelectExtension;

    iput-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtensionFactory;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/IAdapterExtension;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtensionFactory;->create(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/select/SelectExtension;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapterExtension;

    return-object p1
.end method

.method public create(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "+",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "*>;"
        }
    .end annotation

    const-string v0, "fastAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-direct {v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    return-object v0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "*>;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtensionFactory;->clazz:Ljava/lang/Class;

    return-object v0
.end method
