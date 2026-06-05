.class public final Lcom/maltaisn/icondialog/IconDialogPresenter;
.super Ljava/lang/Object;
.source "IconDialogPresenter.kt"

# interfaces
.implements Lcom/maltaisn/icondialog/IconDialogContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/IconDialogPresenter$Item;,
        Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;,
        Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;,
        Lcom/maltaisn/icondialog/IconDialogPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconDialogPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconDialogPresenter.kt\ncom/maltaisn/icondialog/IconDialogPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,405:1\n1366#2:406\n1435#2,3:407\n310#2,7:410\n1366#2:417\n1435#2,3:418\n1366#2:421\n1435#2,3:422\n*E\n*S KotlinDebug\n*F\n+ 1 IconDialogPresenter.kt\ncom/maltaisn/icondialog/IconDialogPresenter\n*L\n314#1:406\n314#1,3:407\n323#1,7:410\n345#1:417\n345#1,3:418\n372#1:421\n372#1,3:422\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0000\u0018\u0000 >2\u00020\u0001:\u0004>?@AB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0008H\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u0008H\u0016J\u0018\u0010#\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u0008H\u0016J\u0010\u0010%\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0008H\u0016J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0008H\u0002J\u001a\u0010(\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0010\u0010)\u001a\u00020*2\u0006\u0010 \u001a\u00020\u0008H\u0016J\u0018\u0010+\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010,\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020\u001aH\u0016J\u0008\u00101\u001a\u00020\u001aH\u0016J\u0008\u00102\u001a\u00020\u001aH\u0016J\u0010\u00103\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u0008H\u0016J\u0010\u00104\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000fH\u0016J\u0008\u00106\u001a\u00020\u001aH\u0016J\u0010\u00107\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000fH\u0016J\u0010\u00108\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000fH\u0016J\u0008\u00109\u001a\u00020\u001aH\u0016J\u0010\u0010:\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010;\u001a\u00020\u001aH\u0002J\u0008\u0010<\u001a\u00020\u001aH\u0002J\u001a\u0010=\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0011j\u0008\u0012\u0004\u0012\u00020\u0008`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogPresenter;",
        "Lcom/maltaisn/icondialog/IconDialogContract$Presenter;",
        "()V",
        "iconPack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "getIconPack",
        "()Lcom/maltaisn/icondialog/pack/IconPack;",
        "itemCount",
        "",
        "getItemCount",
        "()I",
        "listItems",
        "",
        "Lcom/maltaisn/icondialog/IconDialogPresenter$Item;",
        "searchQuery",
        "",
        "selectedIconIds",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "settings",
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
        "getSettings",
        "()Lcom/maltaisn/icondialog/IconDialogSettings;",
        "view",
        "Lcom/maltaisn/icondialog/IconDialogContract$View;",
        "attach",
        "",
        "state",
        "Landroid/os/Bundle;",
        "confirmSelection",
        "detach",
        "getHeaderPositionForItem",
        "pos",
        "getItemId",
        "",
        "getItemSpanCount",
        "max",
        "getItemType",
        "getPosByIconId",
        "id",
        "initialize",
        "isHeader",
        "",
        "onBindHeaderItemView",
        "itemView",
        "Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;",
        "onBindIconItemView",
        "Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;",
        "onCancelBtnClicked",
        "onClearBtnClicked",
        "onDialogCancelled",
        "onIconItemClicked",
        "onSearchActionEvent",
        "query",
        "onSearchClearBtnClicked",
        "onSearchQueryChanged",
        "onSearchQueryEntered",
        "onSelectBtnClicked",
        "saveState",
        "updateList",
        "updateSearchAndTitleVisibility",
        "waitForIconPack",
        "Companion",
        "HeaderItem",
        "IconItem",
        "Item",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/maltaisn/icondialog/IconDialogPresenter$Companion;

.field private static final ICON_PACK_CHECK_DELAY:J = 0x64L

.field public static final ITEM_TYPE_HEADER:I = 0x1

.field public static final ITEM_TYPE_ICON:I = 0x0

.field public static final ITEM_TYPE_STICKY_HEADER:I = 0x2


# instance fields
.field private final listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maltaisn/icondialog/IconDialogPresenter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private searchQuery:Ljava/lang/String;

.field private final selectedIconIds:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private view:Lcom/maltaisn/icondialog/IconDialogContract$View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/maltaisn/icondialog/IconDialogPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maltaisn/icondialog/IconDialogPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/maltaisn/icondialog/IconDialogPresenter;->Companion:Lcom/maltaisn/icondialog/IconDialogPresenter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getIconPack$p(Lcom/maltaisn/icondialog/IconDialogPresenter;)Lcom/maltaisn/icondialog/pack/IconPack;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSettings$p(Lcom/maltaisn/icondialog/IconDialogPresenter;)Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initialize(Lcom/maltaisn/icondialog/IconDialogPresenter;Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->initialize(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$waitForIconPack(Lcom/maltaisn/icondialog/IconDialogPresenter;Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->waitForIconPack(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    return-void
.end method

.method private final confirmSelection()V
    .locals 5

    .line 313
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v2, Ljava/lang/Iterable;

    .line 406
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 407
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 408
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 314
    invoke-virtual {v0, v4}, Lcom/maltaisn/icondialog/pack/IconPack;->getIcon(I)Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 314
    invoke-interface {v1, v3}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setSelectionResult(Ljava/util/List;)V

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->exit()V

    :cond_3
    return-void
.end method

.method private final getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v0

    return-object v0
.end method

.method private final getPosByIconId(I)I
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 412
    check-cast v2, Lcom/maltaisn/icondialog/IconDialogPresenter$Item;

    .line 323
    instance-of v3, v2, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private final getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    return-object v0
.end method

.method private final initialize(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
    .locals 5

    .line 86
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_3

    .line 90
    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->getSelectedIconIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 92
    invoke-virtual {v0, v3}, Lcom/maltaisn/icondialog/pack/IconPack;->getIcon(I)Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Selected icon ID "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not found in icon pack."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 97
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getMaxSelection()I

    move-result v2

    if-le v0, v2, :cond_2

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getMaxSelection()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getMaxSelection()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Collection;

    const-string v1, "selectedIconIds"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v2, "state.getIntegerArrayList(\"selectedIconIds\")!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 106
    const-string v0, "searchQuery"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    .line 110
    :goto_1
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->updateSearchAndTitleVisibility()V

    .line 112
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getDialogTitle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->updateTitle(I)V

    .line 113
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getShowSelectBtn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setFooterVisible(Z)V

    .line 114
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setSelectBtnEnabled(Z)V

    .line 115
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getShowSelectBtn()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getShowClearBtn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-interface {p1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setClearBtnVisible(Z)V

    .line 116
    invoke-interface {p1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setProgressBarVisible(Z)V

    .line 117
    invoke-interface {p1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setNoResultLabelVisible(Z)V

    .line 118
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-interface {p1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setClearSearchBtnVisible(Z)V

    .line 120
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getHeadersVisibility()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    move-result-object v0

    sget-object v2, Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;->STICKY:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    if-ne v0, v2, :cond_8

    .line 121
    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->addStickyHeaderDecoration()V

    .line 126
    :cond_8
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->updateList()V

    if-nez p2, :cond_9

    .line 130
    iget-object p2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v1

    if-eqz p2, :cond_9

    .line 131
    iget-object p2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getPosByIconId(I)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->scrollToItemPosition(I)V

    :cond_9
    return-void

    .line 86
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Icon pack must be initialized."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final updateList()V
    .locals 8

    .line 330
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 331
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maltaisn/icondialog/IconDialogSettings;->getIconFilter()Lcom/maltaisn/icondialog/filter/IconFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/maltaisn/icondialog/filter/IconFilter;->queryIcons(Lcom/maltaisn/icondialog/pack/IconPack;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 334
    new-instance v2, Lcom/maltaisn/icondialog/IconDialogPresenter$updateList$1;

    invoke-direct {v2, p0}, Lcom/maltaisn/icondialog/IconDialogPresenter$updateList$1;-><init>(Lcom/maltaisn/icondialog/IconDialogPresenter;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 344
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 345
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    .line 417
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 418
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 419
    check-cast v4, Lcom/maltaisn/icondialog/data/Icon;

    .line 345
    new-instance v5, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    iget-object v6, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;-><init>(Lcom/maltaisn/icondialog/data/Icon;Z)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_0
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 345
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 348
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maltaisn/icondialog/IconDialogSettings;->getHeadersVisibility()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    move-result-object v1

    sget-object v2, Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;->HIDE:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 350
    :goto_1
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 351
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/data/Icon;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 352
    :goto_2
    iget-object v3, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    invoke-virtual {v3}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maltaisn/icondialog/data/Icon;->getCategoryId()I

    move-result v3

    if-nez v2, :cond_2

    goto :goto_3

    .line 353
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_4

    :goto_3
    const/4 v2, -0x1

    if-eq v3, v2, :cond_4

    .line 354
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    new-instance v4, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;

    invoke-virtual {v0, v3}, Lcom/maltaisn/icondialog/pack/IconPack;->getCategory(I)Lcom/maltaisn/icondialog/data/Category;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-direct {v4, v3}, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;-><init>(Lcom/maltaisn/icondialog/data/Category;)V

    invoke-interface {v2, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->notifyAllIconsChanged()V

    .line 362
    :cond_7
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setNoResultLabelVisible(Z)V

    :cond_8
    return-void
.end method

.method private final updateSearchAndTitleVisibility()V
    .locals 6

    .line 366
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_7

    .line 367
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/maltaisn/icondialog/pack/IconPack;->getLocales()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 372
    :goto_0
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getSearchVisibility()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    move-result-object v2

    sget-object v3, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->ALWAYS:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 370
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-nez v2, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getSearchVisibility()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    move-result-object v2

    sget-object v3, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->IF_LANGUAGE_AVAILABLE:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    if-ne v2, v3, :cond_4

    .line 372
    check-cast v1, Ljava/lang/Iterable;

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 422
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 423
    check-cast v3, Ljava/util/Locale;

    .line 372
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 424
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 372
    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 374
    :goto_2
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getTitleVisibility()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    move-result-object v2

    sget-object v3, Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;->ALWAYS:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    if-eq v2, v3, :cond_5

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getTitleVisibility()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    move-result-object v2

    sget-object v3, Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;->IF_SEARCH_HIDDEN:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    if-ne v2, v3, :cond_6

    if-nez v1, :cond_6

    :cond_5
    const/4 v4, 0x1

    .line 375
    :cond_6
    invoke-interface {v0, v1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setSearchBarVisible(Z)V

    .line 376
    invoke-interface {v0, v4}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setTitleVisible(Z)V

    if-nez v1, :cond_7

    if-nez v4, :cond_7

    .line 377
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 378
    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->removeLayoutPadding()V

    :cond_7
    return-void
.end method

.method private final waitForIconPack(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
    .locals 3

    .line 75
    new-instance v0, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/maltaisn/icondialog/IconDialogPresenter$waitForIconPack$1;-><init>(Lcom/maltaisn/icondialog/IconDialogPresenter;Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v1, 0x64

    invoke-interface {p1, v1, v2, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->postDelayed(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 45
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    .line 47
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getDialogTitle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->updateTitle(I)V

    .line 55
    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings;->getShowSelectBtn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setFooterVisible(Z)V

    .line 56
    invoke-interface {p1, v1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setProgressBarVisible(Z)V

    .line 57
    invoke-interface {p1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setSelectBtnEnabled(Z)V

    .line 58
    invoke-interface {p1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setClearBtnVisible(Z)V

    .line 59
    invoke-interface {p1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setNoResultLabelVisible(Z)V

    .line 60
    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->notifyAllIconsChanged()V

    .line 62
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->updateSearchAndTitleVisibility()V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->waitForIconPack(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->initialize(Lcom/maltaisn/icondialog/IconDialogContract$View;Landroid/os/Bundle;)V

    :goto_1
    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Presenter already attached."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public detach()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->cancelCallbacks()V

    :cond_0
    const/4 v0, 0x0

    .line 138
    move-object v1, v0

    check-cast v1, Lcom/maltaisn/icondialog/IconDialogContract$View;

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    return-void
.end method

.method public getHeaderPositionForItem(I)I
    .locals 1

    :goto_0
    if-ltz p1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/maltaisn/icondialog/IconDialogPresenter$Item;

    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogPresenter$Item;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemSpanCount(II)I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    return p2
.end method

.method public getItemType(I)I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isHeader(I)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;

    return p1
.end method

.method public onBindHeaderItemView(ILcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;

    .line 221
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;->getCategory()Lcom/maltaisn/icondialog/data/Category;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;->bindView(Lcom/maltaisn/icondialog/data/Category;)V

    return-void

    .line 220
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.HeaderItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindIconItemView(ILcom/maltaisn/icondialog/IconDialogContract$IconItemView;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    .line 216
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getSelected()Z

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;->bindView(Lcom/maltaisn/icondialog/data/Icon;Z)V

    return-void

    .line 215
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCancelBtnClicked()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->onDialogCancelled()V

    return-void
.end method

.method public onClearBtnClicked()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 156
    const-string v3, "id"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getPosByIconId(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    .line 159
    invoke-virtual {v3, v2}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->setSelected(Z)V

    .line 160
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->notifyIconItemChanged(I)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 165
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_3

    invoke-interface {v0, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setClearBtnVisible(Z)V

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setSelectBtnEnabled(Z)V

    :cond_4
    return-void
.end method

.method public onDialogCancelled()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->cancelCallbacks()V

    .line 172
    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setCancelResult()V

    .line 173
    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->exit()V

    :cond_0
    return-void
.end method

.method public onIconItemClicked(I)V
    .locals 8

    .line 239
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->hideKeyboard()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem"

    if-eqz v0, :cond_f

    check-cast v0, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    .line 242
    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/data/Icon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getShowSelectBtn()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_a

    .line 248
    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v0, v4}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->setSelected(Z)V

    .line 251
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maltaisn/icondialog/IconDialogSettings;->getMaxSelection()I

    move-result v6

    if-ne v2, v6, :cond_7

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getMaxSelection()I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 257
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getShowMaxSelectionMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->showMaxSelectionMessage()V

    :cond_3
    return-void

    .line 263
    :cond_4
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 264
    iget-object v6, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 265
    invoke-direct {p0, v2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getPosByIconId(I)I

    move-result v2

    if-eq v2, v3, :cond_6

    .line 267
    iget-object v3, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    .line 268
    invoke-virtual {v3, v4}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->setSelected(Z)V

    .line 269
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->notifyIconItemChanged(I)V

    goto :goto_0

    .line 267
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_6
    :goto_0
    invoke-virtual {v0, v5}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->setSelected(Z)V

    .line 274
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_7
    invoke-virtual {v0, v5}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->setSelected(Z)V

    .line 279
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    .line 285
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setSelectBtnEnabled(Z)V

    .line 286
    :cond_8
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v1, :cond_d

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maltaisn/icondialog/IconDialogSettings;->getShowClearBtn()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    const/4 v4, 0x1

    :cond_9
    invoke-interface {v1, v4}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setClearBtnVisible(Z)V

    goto :goto_3

    .line 290
    :cond_a
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_c

    .line 292
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 293
    iget-object v6, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v6, Ljava/util/Collection;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 294
    invoke-direct {p0, v2}, Lcom/maltaisn/icondialog/IconDialogPresenter;->getPosByIconId(I)I

    move-result v2

    if-eq v2, v3, :cond_c

    .line 296
    iget-object v3, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->listItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    check-cast v3, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;

    .line 297
    invoke-virtual {v3, v4}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->setSelected(Z)V

    .line 298
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v1, :cond_c

    invoke-interface {v1, v2}, Lcom/maltaisn/icondialog/IconDialogContract$View;->notifyIconItemChanged(I)V

    goto :goto_2

    .line 296
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_c
    :goto_2
    invoke-virtual {v0, v5}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->setSelected(Z)V

    .line 304
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;->getIcon()Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->confirmSelection()V

    .line 309
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->notifyIconItemChanged(I)V

    :cond_e
    return-void

    .line 241
    :cond_f
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSearchActionEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->hideKeyboard()V

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/maltaisn/icondialog/IconDialogPresenter;->onSearchQueryEntered(Ljava/lang/String;)V

    return-void
.end method

.method public onSearchClearBtnClicked()V
    .locals 2

    .line 195
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->onSearchQueryEntered(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setSearchQuery(Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setClearSearchBtnVisible(Z)V

    :cond_1
    return-void
.end method

.method public onSearchQueryChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->view:Lcom/maltaisn/icondialog/IconDialogContract$View;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$View;->setClearSearchBtnVisible(Z)V

    :cond_1
    return-void
.end method

.method public onSearchQueryEntered(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 184
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->updateList()V

    :cond_0
    return-void
.end method

.method public onSelectBtnClicked()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogPresenter;->confirmSelection()V

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->selectedIconIds:Ljava/util/LinkedHashSet;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "selectedIconIds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    const-string v0, "searchQuery"

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogPresenter;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
