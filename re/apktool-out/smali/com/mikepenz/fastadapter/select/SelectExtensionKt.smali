.class public final Lcom/mikepenz/fastadapter/select/SelectExtensionKt;
.super Ljava/lang/Object;
.source "SelectExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectExtension.kt\ncom/mikepenz/fastadapter/select/SelectExtensionKt\n+ 2 FastAdapter.kt\ncom/mikepenz/fastadapter/FastAdapter\n*L\n1#1,499:1\n241#2:500\n*E\n*S KotlinDebug\n*F\n+ 1 SelectExtension.kt\ncom/mikepenz/fastadapter/select/SelectExtensionKt\n*L\n26#1:500\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a,\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0014\u0008\u0000\u0010\u0002*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u0005*\u0008\u0012\u0004\u0012\u0002H\u00020\u0006\u001aH\u0010\u0007\u001a\u00020\u0008\"\u0014\u0008\u0000\u0010\u0002*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003j\u0002`\u0005*\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\u001d\u0010\t\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0002\u0008\u000bH\u0086\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "getSelectExtension",
        "Lcom/mikepenz/fastadapter/select/SelectExtension;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "selectExtension",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "fastadapter"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final getSelectExtension(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/select/SelectExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, "$this$getSelectExtension"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/mikepenz/fastadapter/select/SelectExtension;->Companion:Lcom/mikepenz/fastadapter/select/SelectExtension$Companion;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/select/SelectExtension$Companion;->toString()Ljava/lang/String;

    .line 500
    const-class v0, Lcom/mikepenz/fastadapter/select/SelectExtension;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getOrCreateExtension(Ljava/lang/Class;)Lcom/mikepenz/fastadapter/IAdapterExtension;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p0, Lcom/mikepenz/fastadapter/select/SelectExtension;

    return-object p0
.end method

.method public static final selectExtension(Lcom/mikepenz/fastadapter/FastAdapter;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Item::",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/mikepenz/fastadapter/select/SelectExtension<",
            "TItem;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$selectExtension"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/mikepenz/fastadapter/select/SelectExtensionKt;->getSelectExtension(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/select/SelectExtension;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
