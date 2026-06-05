.class public final Lcom/mikepenz/fastadapter/select/SelectExtension;
.super Ljava/lang/Object;
.source "SelectExtension.kt"

# interfaces
.implements Lcom/mikepenz/fastadapter/IAdapterExtension;


# annotations
.annotation runtime Lcom/mikepenz/fastadapter/dsl/FastAdapterDsl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/select/SelectExtension$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem<",
        "+",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/mikepenz/fastadapter/IAdapterExtension<",
        "TItem;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectExtension.kt\ncom/mikepenz/fastadapter/select/SelectExtension\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,499:1\n1426#2:500\n1648#2,2:501\n1427#2:503\n1648#2,2:504\n*E\n*S KotlinDebug\n*F\n+ 1 SelectExtension.kt\ncom/mikepenz/fastadapter/select/SelectExtension\n*L\n80#1:500\n80#1,2:501\n80#1:503\n272#1,2:504\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0010\u001d\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 g*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005:\u0001gB\u0013\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000)J\u0006\u0010*\u001a\u00020+J1\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00028\u00002\u0008\u0008\u0002\u0010-\u001a\u00020&2\u0010\u0008\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010/H\u0007\u00a2\u0006\u0002\u00100J\"\u0010*\u001a\u00020+2\u0006\u0010-\u001a\u00020&2\u0010\u0008\u0002\u0010.\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010/H\u0007J\u0014\u0010*\u001a\u00020+2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020&02J\u000e\u00103\u001a\u00020+2\u0006\u00104\u001a\u000205J\u0014\u00106\u001a\u00020+2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u0002050%J\u0014\u00108\u001a\u00020+2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00028\u00000%J\'\u0010:\u001a\u00020+2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010,\u001a\u00028\u00002\u0006\u0010-\u001a\u00020&H\u0002\u00a2\u0006\u0002\u0010=J\u0008\u0010>\u001a\u00020+H\u0016J\u0018\u0010?\u001a\u00020+2\u0006\u0010@\u001a\u00020&2\u0006\u0010A\u001a\u00020&H\u0016J\"\u0010B\u001a\u00020+2\u0006\u0010-\u001a\u00020&2\u0006\u0010C\u001a\u00020&2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0016J\u0018\u0010F\u001a\u00020+2\u0006\u0010-\u001a\u00020&2\u0006\u0010C\u001a\u00020&H\u0016J\u0018\u0010G\u001a\u00020+2\u0006\u0010-\u001a\u00020&2\u0006\u0010C\u001a\u00020&H\u0016J3\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020<2\u0006\u0010J\u001a\u00020&2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010,\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010KJ3\u0010L\u001a\u00020\n2\u0006\u0010I\u001a\u00020<2\u0006\u0010J\u001a\u00020&2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010,\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010KJ;\u0010M\u001a\u00020\n2\u0006\u0010I\u001a\u00020<2\u0006\u0010N\u001a\u00020O2\u0006\u0010-\u001a\u00020&2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010,\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010PJ\u0012\u0010Q\u001a\u00020+2\u0008\u0010R\u001a\u0004\u0018\u00010SH\u0016J\u001a\u0010T\u001a\u00020+2\u0008\u0010U\u001a\u0004\u0018\u00010V2\u0006\u0010W\u001a\u00020XH\u0016J\u001b\u0010Y\u001a\u00020+2\u0006\u0010,\u001a\u00028\u00002\u0006\u0010Z\u001a\u00020\n\u00a2\u0006\u0002\u0010[J9\u0010Y\u001a\u00020+2\u000c\u0010\\\u001a\u0008\u0012\u0004\u0012\u00028\u00000]2\u0006\u0010,\u001a\u00028\u00002\u0006\u0010-\u001a\u00020&2\u0006\u0010^\u001a\u00020\n2\u0006\u0010Z\u001a\u00020\n\u00a2\u0006\u0002\u0010_J\u0012\u0010Y\u001a\u00020+2\u0008\u0008\u0002\u0010Z\u001a\u00020\nH\u0007J$\u0010Y\u001a\u00020+2\u0006\u0010-\u001a\u00020&2\u0008\u0008\u0002\u0010^\u001a\u00020\n2\u0008\u0008\u0002\u0010Z\u001a\u00020\nH\u0007J\u0014\u0010Y\u001a\u00020+2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020&0`J\u001e\u0010a\u001a\u00020+2\u0006\u00104\u001a\u0002052\u0006\u0010^\u001a\u00020\n2\u0006\u0010Z\u001a\u00020\nJ$\u0010b\u001a\u00020+2\u000c\u00107\u001a\u0008\u0012\u0004\u0012\u0002050%2\u0006\u0010^\u001a\u00020\n2\u0006\u0010Z\u001a\u00020\nJ\u001f\u0010c\u001a\u00020+2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00028\u00000)2\u0006\u0010d\u001a\u00020\nH\u0096\u0002J\u000e\u0010e\u001a\u00020+2\u0006\u0010-\u001a\u00020&J\u001a\u0010f\u001a\u00020+2\u0008\u0010U\u001a\u0004\u0018\u00010V2\u0006\u0010W\u001a\u00020XH\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0011\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\"\u0004\u0008\u0013\u0010\u000eR\u001a\u0010\u0014\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\u001a\u0010\u0017\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000c\"\u0004\u0008\u0019\u0010\u000eR\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\"\u0010\u001e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0017\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001d\u00a8\u0006h"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/select/SelectExtension;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "Lcom/mikepenz/fastadapter/IAdapterExtension;",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "(Lcom/mikepenz/fastadapter/FastAdapter;)V",
        "allowDeselection",
        "",
        "getAllowDeselection",
        "()Z",
        "setAllowDeselection",
        "(Z)V",
        "isSelectable",
        "setSelectable",
        "multiSelect",
        "getMultiSelect",
        "setMultiSelect",
        "selectOnLongClick",
        "getSelectOnLongClick",
        "setSelectOnLongClick",
        "selectWithItemUpdate",
        "getSelectWithItemUpdate",
        "setSelectWithItemUpdate",
        "selectedItems",
        "",
        "getSelectedItems",
        "()Ljava/util/Set;",
        "selectionListener",
        "Lcom/mikepenz/fastadapter/ISelectionListener;",
        "getSelectionListener",
        "()Lcom/mikepenz/fastadapter/ISelectionListener;",
        "setSelectionListener",
        "(Lcom/mikepenz/fastadapter/ISelectionListener;)V",
        "selections",
        "",
        "",
        "getSelections",
        "deleteAllSelectedItems",
        "",
        "deselect",
        "",
        "item",
        "position",
        "entries",
        "",
        "(Lcom/mikepenz/fastadapter/IItem;ILjava/util/Iterator;)V",
        "positions",
        "",
        "deselectByIdentifier",
        "identifier",
        "",
        "deselectByIdentifiers",
        "identifiers",
        "deselectByItems",
        "items",
        "handleSelection",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V",
        "notifyAdapterDataSetChanged",
        "notifyAdapterItemMoved",
        "fromPosition",
        "toPosition",
        "notifyAdapterItemRangeChanged",
        "itemCount",
        "payload",
        "",
        "notifyAdapterItemRangeInserted",
        "notifyAdapterItemRangeRemoved",
        "onClick",
        "v",
        "pos",
        "(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z",
        "onLongClick",
        "onTouch",
        "event",
        "Landroid/view/MotionEvent;",
        "(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z",
        "performFiltering",
        "constraint",
        "",
        "saveInstanceState",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "prefix",
        "",
        "select",
        "considerSelectableFlag",
        "(Lcom/mikepenz/fastadapter/IItem;Z)V",
        "adapter",
        "Lcom/mikepenz/fastadapter/IAdapter;",
        "fireEvent",
        "(Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;IZZ)V",
        "",
        "selectByIdentifier",
        "selectByIdentifiers",
        "set",
        "resetFilter",
        "toggleSelection",
        "withSavedInstanceState",
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
.field private static final BUNDLE_SELECTIONS:Ljava/lang/String; = "bundle_selections"

.field public static final Companion:Lcom/mikepenz/fastadapter/select/SelectExtension$Companion;


# instance fields
.field private allowDeselection:Z

.field private final fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private isSelectable:Z

.field private multiSelect:Z

.field private selectOnLongClick:Z

.field private selectWithItemUpdate:Z

.field private selectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/ISelectionListener<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mikepenz/fastadapter/select/SelectExtension$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mikepenz/fastadapter/select/SelectExtension;->Companion:Lcom/mikepenz/fastadapter/select/SelectExtension$Companion;

    .line 495
    sget-object v0, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->INSTANCE:Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;

    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtensionFactory;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/select/SelectExtensionFactory;-><init>()V

    check-cast v1, Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/extensions/ExtensionsFactories;->register(Lcom/mikepenz/fastadapter/extensions/ExtensionFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;)V"
        }
    .end annotation

    const-string v0, "fastAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->allowDeselection:Z

    return-void
.end method

.method public static synthetic deselect$default(Lcom/mikepenz/fastadapter/select/SelectExtension;ILjava/util/Iterator;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 385
    move-object p3, p2

    check-cast p3, Ljava/util/Iterator;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    return-void
.end method

.method public static synthetic deselect$default(Lcom/mikepenz/fastadapter/select/SelectExtension;Lcom/mikepenz/fastadapter/IItem;ILjava/util/Iterator;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 400
    move-object p4, p3

    check-cast p4, Ljava/util/Iterator;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(Lcom/mikepenz/fastadapter/IItem;ILjava/util/Iterator;)V

    return-void
.end method

.method private final handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;I)V"
        }
    .end annotation

    .line 194
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->allowDeselection:Z

    if-nez v0, :cond_1

    return-void

    .line 203
    :cond_1
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    .line 205
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectWithItemUpdate:Z

    if-nez v1, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    .line 215
    :cond_2
    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->multiSelect:Z

    if-nez p3, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelectedItems()Ljava/util/Set;

    move-result-object p3

    .line 218
    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselectByItems(Ljava/util/Set;)V

    :cond_3
    xor-int/lit8 p3, v0, 0x1

    .line 223
    invoke-interface {p2, p3}, Lcom/mikepenz/fastadapter/IItem;->setSelected(Z)V

    xor-int/lit8 p3, v0, 0x1

    .line 224
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    .line 227
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz p1, :cond_7

    xor-int/lit8 p3, v0, 0x1

    invoke-interface {p1, p2, p3}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    goto :goto_1

    .line 206
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->multiSelect:Z

    if-nez p1, :cond_5

    .line 207
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect()V

    :cond_5
    if-eqz v0, :cond_6

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 210
    invoke-static {p0, p3, p2, p1, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect$default(Lcom/mikepenz/fastadapter/select/SelectExtension;ILjava/util/Iterator;ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p3

    .line 212
    invoke-static/range {v0 .. v5}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;IZZILjava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;IZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 283
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(IZZ)V

    return-void
.end method

.method public static synthetic select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Z)V

    return-void
.end method


# virtual methods
.method public final deleteAllSelectedItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 464
    iget-object v2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v3, Lcom/mikepenz/fastadapter/select/SelectExtension$deleteAllSelectedItems$1;

    invoke-direct {v3, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension$deleteAllSelectedItems$1;-><init>(Ljava/util/ArrayList;)V

    check-cast v3, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    .line 482
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 483
    iget-object v3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "positions[i]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v3

    .line 484
    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getItem()Lcom/mikepenz/fastadapter/IItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getItem()Lcom/mikepenz/fastadapter/IItem;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    invoke-virtual {v3}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getAdapter()Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v3

    instance-of v4, v3, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-nez v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    check-cast v3, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mikepenz/fastadapter/IItemAdapter;->remove(I)Lcom/mikepenz/fastadapter/IItemAdapter;

    goto :goto_0

    .line 488
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final deselect()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtension$deselect$1;

    invoke-direct {v1, p0}, Lcom/mikepenz/fastadapter/select/SelectExtension$deselect$1;-><init>(Lcom/mikepenz/fastadapter/select/SelectExtension;)V

    check-cast v1, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    .line 362
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final deselect(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect$default(Lcom/mikepenz/fastadapter/select/SelectExtension;ILjava/util/Iterator;ILjava/lang/Object;)V

    return-void
.end method

.method public final deselect(ILjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0, v0, p1, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(Lcom/mikepenz/fastadapter/IItem;ILjava/util/Iterator;)V

    :cond_0
    return-void
.end method

.method public final deselect(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect$default(Lcom/mikepenz/fastadapter/select/SelectExtension;Lcom/mikepenz/fastadapter/IItem;ILjava/util/Iterator;ILjava/lang/Object;)V

    return-void
.end method

.method public final deselect(Lcom/mikepenz/fastadapter/IItem;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;I)V"
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect$default(Lcom/mikepenz/fastadapter/select/SelectExtension;Lcom/mikepenz/fastadapter/IItem;ILjava/util/Iterator;ILjava/lang/Object;)V

    return-void
.end method

.method public final deselect(Lcom/mikepenz/fastadapter/IItem;ILjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;I",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 401
    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/IItem;->setSelected(Z)V

    if-eqz p3, :cond_0

    .line 402
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    :cond_0
    if-ltz p2, :cond_1

    .line 404
    iget-object p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p3, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 406
    :cond_1
    iget-object p2, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1, v0}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    :cond_2
    return-void
.end method

.method public final deselect(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 372
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect(ILjava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final deselectByIdentifier(J)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtension$deselectByIdentifier$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension$deselectByIdentifier$1;-><init>(Lcom/mikepenz/fastadapter/select/SelectExtension;J)V

    check-cast v1, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    return-void
.end method

.method public final deselectByIdentifiers(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "identifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtension$deselectByIdentifiers$1;

    invoke-direct {v1, p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension$deselectByIdentifiers$1;-><init>(Lcom/mikepenz/fastadapter/select/SelectExtension;Ljava/util/Set;)V

    check-cast v1, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    return-void
.end method

.method public final deselectByItems(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TItem;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtension$deselectByItems$1;

    invoke-direct {v1, p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension$deselectByItems$1;-><init>(Lcom/mikepenz/fastadapter/select/SelectExtension;Ljava/util/Set;)V

    check-cast v1, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    return-void
.end method

.method public final getAllowDeselection()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->allowDeselection:Z

    return v0
.end method

.method public final getMultiSelect()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->multiSelect:Z

    return v0
.end method

.method public final getSelectOnLongClick()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectOnLongClick:Z

    return v0
.end method

.method public final getSelectWithItemUpdate()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectWithItemUpdate:Z

    return v0
.end method

.method public final getSelectedItems()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TItem;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v2, Lcom/mikepenz/fastadapter/select/SelectExtension$selectedItems$1;

    invoke-direct {v2, v0}, Lcom/mikepenz/fastadapter/select/SelectExtension$selectedItems$1;-><init>(Landroidx/collection/ArraySet;)V

    check-cast v2, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    .line 104
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectionListener()Lcom/mikepenz/fastadapter/ISelectionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/ISelectionListener<",
            "TItem;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    return-object v0
.end method

.method public final getSelections()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 501
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    iget-object v4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v4, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 500
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_2
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public final isSelectable()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->isSelectable:Z

    return v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemMoved(II)V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemRangeInserted(II)V
    .locals 0

    return-void
.end method

.method public notifyAdapterItemRangeRemoved(II)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectOnLongClick:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->isSelectable:Z

    if-eqz p3, :cond_0

    .line 132
    invoke-direct {p0, p1, p4, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/view/View;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastAdapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectOnLongClick:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->isSelectable:Z

    if-eqz p3, :cond_0

    .line 145
    invoke-direct {p0, p1, p4, p2}, Lcom/mikepenz/fastadapter/select/SelectExtension;->handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/IItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            "I",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;TItem;)Z"
        }
    .end annotation

    const-string p3, "v"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fastAdapter"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public performFiltering(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/select/SelectExtension;->getSelectedItems()Ljava/util/Set;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 121
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    .line 122
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bundle_selections"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void
.end method

.method public final select()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;ZILjava/lang/Object;)V

    return-void
.end method

.method public final select(I)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;IZZILjava/lang/Object;)V

    return-void
.end method

.method public final select(IZ)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;IZZILjava/lang/Object;)V

    return-void
.end method

.method public final select(IZZ)V
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getItem()Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->getAdapter()Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 287
    invoke-virtual/range {v1 .. v6}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select(Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;IZZ)V

    :cond_0
    return-void
.end method

.method public final select(Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;TItem;IZZ)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 302
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 p5, 0x1

    .line 306
    invoke-interface {p2, p5}, Lcom/mikepenz/fastadapter/IItem;->setSelected(Z)V

    .line 308
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 310
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p5}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    :cond_1
    if-eqz p4, :cond_2

    .line 313
    iget-object p4, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p4}, Lcom/mikepenz/fastadapter/FastAdapter;->getOnClickListener()Lkotlin/jvm/functions/Function4;

    move-result-object p4

    if-eqz p4, :cond_2

    const/4 p5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p5, p1, p2, p3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method public final select(Lcom/mikepenz/fastadapter/IItem;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;Z)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 259
    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 262
    invoke-interface {p1, p2}, Lcom/mikepenz/fastadapter/IItem;->setSelected(Z)V

    .line 263
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/ISelectionListener;->onSelectionChanged(Lcom/mikepenz/fastadapter/IItem;Z)V

    :cond_1
    return-void
.end method

.method public final select(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 272
    invoke-static/range {v1 .. v6}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;IZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final select(Z)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtension$select$1;

    invoke-direct {v1, p0, p1}, Lcom/mikepenz/fastadapter/select/SelectExtension$select$1;-><init>(Lcom/mikepenz/fastadapter/select/SelectExtension;Z)V

    check-cast v1, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    .line 249
    iget-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final selectByIdentifier(JZZ)V
    .locals 8

    .line 325
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v7, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifier$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifier$1;-><init>(Lcom/mikepenz/fastadapter/select/SelectExtension;JZZ)V

    check-cast v7, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x1

    invoke-virtual {v0, v7, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    return-void
.end method

.method public final selectByIdentifiers(Ljava/util/Set;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "identifiers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/select/SelectExtension$selectByIdentifiers$1;-><init>(Lcom/mikepenz/fastadapter/select/SelectExtension;Ljava/util/Set;ZZ)V

    check-cast v1, Lcom/mikepenz/fastadapter/utils/AdapterPredicate;

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->recursive(Lcom/mikepenz/fastadapter/utils/AdapterPredicate;Z)Lcom/mikepenz/fastadapter/utils/Triple;

    return-void
.end method

.method public set(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TItem;>;Z)V"
        }
    .end annotation

    const-string p2, "items"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setAllowDeselection(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->allowDeselection:Z

    return-void
.end method

.method public final setMultiSelect(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->multiSelect:Z

    return-void
.end method

.method public final setSelectOnLongClick(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectOnLongClick:Z

    return-void
.end method

.method public final setSelectWithItemUpdate(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectWithItemUpdate:Z

    return-void
.end method

.method public final setSelectable(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->isSelectable:Z

    return-void
.end method

.method public final setSelectionListener(Lcom/mikepenz/fastadapter/ISelectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/ISelectionListener<",
            "TItem;>;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectionListener:Lcom/mikepenz/fastadapter/ISelectionListener;

    return-void
.end method

.method public final toggleSelection(I)V
    .locals 8

    .line 180
    iget-object v0, p0, Lcom/mikepenz/fastadapter/select/SelectExtension;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 181
    invoke-static {p0, p1, v1, v0, v1}, Lcom/mikepenz/fastadapter/select/SelectExtension;->deselect$default(Lcom/mikepenz/fastadapter/select/SelectExtension;ILjava/util/Iterator;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    .line 183
    invoke-static/range {v2 .. v7}, Lcom/mikepenz/fastadapter/select/SelectExtension;->select$default(Lcom/mikepenz/fastadapter/select/SelectExtension;IZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bundle_selections"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "savedInstanceState?.getL\u2026TIONS + prefix) ?: return"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-wide v2, p1, v1

    const/4 v4, 0x1

    .line 110
    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/mikepenz/fastadapter/select/SelectExtension;->selectByIdentifier(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
