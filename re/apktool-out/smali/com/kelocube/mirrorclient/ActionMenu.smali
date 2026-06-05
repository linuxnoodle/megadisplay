.class public final Lcom/kelocube/mirrorclient/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/ActionMenu$Button;,
        Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionMenu.kt\ncom/kelocube/mirrorclient/ActionMenu\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,341:1\n11155#2:342\n11266#2,4:343\n1855#3,2:347\n1549#3:349\n1620#3,3:350\n1855#3,2:355\n37#4,2:353\n37#5:357\n53#5:358\n1#6:359\n*S KotlinDebug\n*F\n+ 1 ActionMenu.kt\ncom/kelocube/mirrorclient/ActionMenu\n*L\n176#1:342\n176#1:343,4\n177#1:347,2\n197#1:349\n197#1:350,3\n70#1:355,2\n204#1:353,2\n324#1:357\n324#1:358\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u000278B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&J\u0008\u0010\'\u001a\u00020$H\u0002J\u000e\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020*J\u0006\u0010)\u001a\u00020$J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0008H\u0002J\u0006\u0010.\u001a\u00020$J\u000e\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020,J\u0018\u0010/\u001a\u00020$2\u0006\u0010-\u001a\u00020\u00082\u0006\u00100\u001a\u00020,H\u0002J\u0018\u00101\u001a\u00020$2\u0006\u00102\u001a\u00020\u00082\u0008\u0008\u0002\u00103\u001a\u000204J\u0006\u00105\u001a\u00020$J\u0008\u00106\u001a\u00020$H\u0002R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u00060\u000eR\u00020\u00000\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\n \u001d*\u0004\u0018\u00010\u001c0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ActionMenu;",
        "",
        "context",
        "Landroid/content/Context;",
        "callbacks",
        "Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;",
        "(Landroid/content/Context;Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;)V",
        "value",
        "",
        "activeCrop",
        "setActiveCrop",
        "(I)V",
        "buttons",
        "",
        "Lcom/kelocube/mirrorclient/ActionMenu$Button;",
        "loader",
        "Lcom/maltaisn/icondialog/pack/IconPackLoader;",
        "getLoader",
        "()Lcom/maltaisn/icondialog/pack/IconPackLoader;",
        "modeIndex",
        "modes",
        "",
        "[Ljava/lang/Integer;",
        "pack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "getPack",
        "()Lcom/maltaisn/icondialog/pack/IconPack;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "rootButton",
        "Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;",
        "touchFilter",
        "view",
        "Lcom/kelocube/mirrorclient/ui/ActionMenuView;",
        "configChanged",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "cycleTouchMode",
        "inflate",
        "layout",
        "Landroid/view/ViewGroup;",
        "loadCrop",
        "Lcom/kelocube/mirrorclient/CanvasScaler$Crop;",
        "i",
        "onConnected",
        "saveCrop",
        "crop",
        "setMode",
        "mode",
        "setDefault",
        "",
        "showOnboardingIfNecessary",
        "updateTouchMode",
        "Button",
        "Callbacks",
        "app_release"
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
.field private activeCrop:I

.field private final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kelocube/mirrorclient/ActionMenu$Button;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

.field private final context:Landroid/content/Context;

.field private final loader:Lcom/maltaisn/icondialog/pack/IconPackLoader;

.field private modeIndex:I

.field private final modes:[Ljava/lang/Integer;

.field private final pack:Lcom/maltaisn/icondialog/pack/IconPack;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final rootButton:Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

.field private final touchFilter:I

.field private final view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;


# direct methods
.method public static synthetic $r8$lambda$B47AgM4DjtrLJxTWWd-psnaDHC0(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kelocube/mirrorclient/ActionMenu;->showOnboardingIfNecessary$lambda$9(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->callbacks:Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    .line 57
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    .line 64
    const-string v0, "session_menu_active_crop"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->activeCrop:I

    .line 74
    sget-object p2, Lcom/kelocube/mirrorclient/ui/ActionButtonView;->Companion:Lcom/kelocube/mirrorclient/ui/ActionButtonView$Companion;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/ui/ActionButtonView$Companion;->getTOUCH_FILTER_TOUCH()I

    move-result p2

    sget-object v0, Lcom/kelocube/mirrorclient/ui/ActionButtonView;->Companion:Lcom/kelocube/mirrorclient/ui/ActionButtonView$Companion;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/ActionButtonView$Companion;->getTOUCH_FILTER_PEN()I

    move-result v0

    or-int/2addr p2, v0

    iput p2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->touchFilter:I

    .line 150
    new-instance v0, Lcom/maltaisn/icondialog/pack/IconPackLoader;

    invoke-direct {v0, p1}, Lcom/maltaisn/icondialog/pack/IconPackLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->loader:Lcom/maltaisn/icondialog/pack/IconPackLoader;

    .line 151
    invoke-static {v0}, Lcom/maltaisn/iconpack/defaultpack/IconPackDefault;->createDefaultIconPack(Lcom/maltaisn/icondialog/pack/IconPackLoader;)Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v2

    iput-object v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->pack:Lcom/maltaisn/icondialog/pack/IconPack;

    .line 152
    invoke-virtual {v0}, Lcom/maltaisn/icondialog/pack/IconPackLoader;->getDrawableLoader()Lcom/maltaisn/icondialog/pack/IconDrawableLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/maltaisn/icondialog/pack/IconPack;->loadDrawables(Lcom/maltaisn/icondialog/pack/IconDrawableLoader;)V

    .line 154
    new-instance v0, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

    sget v2, Lcom/kelocube/mirrorclient/R$layout;->view_action_button_menu:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, p2}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->rootButton:Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

    .line 155
    new-instance p2, Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-direct {p2, p1, v2}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    .line 157
    new-instance v2, Lcom/kelocube/mirrorclient/ActionMenu$1;

    invoke-direct {v2, p2}, Lcom/kelocube/mirrorclient/ActionMenu$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v2}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setOnTouch(Lkotlin/jvm/functions/Function2;)V

    .line 158
    new-instance v2, Lcom/kelocube/mirrorclient/ActionMenu$2;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/ActionMenu$2;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setOnClick(Lkotlin/jvm/functions/Function0;)V

    .line 161
    new-instance v2, Lcom/kelocube/mirrorclient/ActionMenu$3;

    invoke-direct {v2, p0}, Lcom/kelocube/mirrorclient/ActionMenu$3;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setOnHeld(Lkotlin/jvm/functions/Function0;)V

    .line 165
    new-instance v0, Lcom/kelocube/mirrorclient/ActionMenu$4;

    invoke-direct {v0, p0}, Lcom/kelocube/mirrorclient/ActionMenu$4;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v0}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->setStateChanged(Lkotlin/jvm/functions/Function1;)V

    .line 176
    sget-object p2, Lcom/kelocube/mirrorclient/Prefs;->Companion:Lcom/kelocube/mirrorclient/Prefs$Companion;

    invoke-virtual {p2, p1}, Lcom/kelocube/mirrorclient/Prefs$Companion;->getActionMenu(Landroid/content/Context;)[Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    move-result-object p1

    .line 342
    new-instance p2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 344
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v5, p1, v2

    add-int/lit8 v6, v4, 0x1

    .line 176
    new-instance v7, Lcom/kelocube/mirrorclient/ActionMenu$Button;

    invoke-direct {v7, p0, v5, v4}, Lcom/kelocube/mirrorclient/ActionMenu$Button;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/models/ActionMenuButton;I)V

    .line 345
    invoke-interface {p2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    .line 346
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 176
    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->buttons:Ljava/util/List;

    .line 177
    check-cast p2, Ljava/lang/Iterable;

    .line 347
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kelocube/mirrorclient/ActionMenu$Button;

    .line 178
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getItemCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/ActionMenu$Button;->getView()Lcom/kelocube/mirrorclient/ui/ActionButtonView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {v0, v2, p2}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->addItem(ILandroid/view/View;)V

    goto :goto_1

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    .line 183
    new-instance p2, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;

    .line 184
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "session_menu_open"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 185
    iget-object v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getMinEdgeOffset()F

    move-result v4

    const-string v5, "session_menu_x"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 186
    iget-object v4, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getMinEdgeOffset()F

    move-result v5

    const-string v6, "session_menu_y"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 187
    iget-object v5, p0, Lcom/kelocube/mirrorclient/ActionMenu;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 183
    :goto_2
    invoke-direct {p2, v0, v2, v4, v5}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;-><init>(ZFFZ)V

    .line 182
    invoke-virtual {p1, p2}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->setState(Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;)V

    const/4 p1, 0x2

    const/4 p2, -0x1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    .line 195
    const-string v2, "session_menu_modes"

    .line 196
    sget-object v4, Lcom/afollestad/materialdialogs/utils/MDUtil;->INSTANCE:Lcom/afollestad/materialdialogs/utils/MDUtil;

    iget-object v5, p0, Lcom/kelocube/mirrorclient/ActionMenu;->context:Landroid/content/Context;

    sget v7, Lcom/kelocube/mirrorclient/R$array;->pref_session_menu_modes_default:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/afollestad/materialdialogs/utils/MDUtil;->getStringArray(Landroid/content/Context;Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 194
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 350
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 351
    check-cast v4, Ljava/lang/String;

    .line 197
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 351
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 352
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 197
    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v3

    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 198
    iget-object v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "stylus_type"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    if-eq v2, v6, :cond_6

    if-eq v2, p1, :cond_6

    goto :goto_6

    .line 200
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 203
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_7
    check-cast v0, Ljava/util/Collection;

    .line 354
    new-array v2, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kelocube/mirrorclient/DiagnosticsKt;->traceMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    aput-object v0, v3, v1

    aput-object v2, v3, v6

    aput-object p2, v3, p1

    move-object v0, v3

    .line 192
    :goto_7
    iput-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modes:[Ljava/lang/Integer;

    .line 211
    iget-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    const-string p2, "session_menu_current_mode"

    const/16 v0, -0x3e7

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1, v6}, Lcom/kelocube/mirrorclient/ActionMenu;->setMode(IZ)V

    return-void
.end method

.method public static final synthetic access$cycleTouchMode(Lcom/kelocube/mirrorclient/ActionMenu;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/ActionMenu;->cycleTouchMode()V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->callbacks:Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/kelocube/mirrorclient/ActionMenu;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/kelocube/mirrorclient/ActionMenu;)Landroid/content/SharedPreferences;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final synthetic access$getRootButton$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->rootButton:Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

    return-object p0
.end method

.method public static final synthetic access$getTouchFilter$p(Lcom/kelocube/mirrorclient/ActionMenu;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->touchFilter:I

    return p0
.end method

.method public static final synthetic access$getView$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/ActionMenuView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    return-object p0
.end method

.method public static final synthetic access$setActiveCrop(Lcom/kelocube/mirrorclient/ActionMenu;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/ActionMenu;->setActiveCrop(I)V

    return-void
.end method

.method private final cycleTouchMode()V
    .locals 3

    .line 228
    iget v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modeIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modes:[Ljava/lang/Integer;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modeIndex:I

    .line 229
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modes:[Ljava/lang/Integer;

    iget v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "session_menu_current_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/ActionMenu;->updateTouchMode()V

    return-void
.end method

.method private final loadCrop(I)Lcom/kelocube/mirrorclient/CanvasScaler$Crop;
    .locals 5

    .line 260
    new-instance v0, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    invoke-direct {v0}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session_menu_crop_x_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setX(F)V

    .line 262
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "session_menu_crop_y_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setY(F)V

    .line 263
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "session_menu_crop_scale_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setA(F)V

    .line 264
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "session_menu_crop_theta_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->setT(F)V

    return-object v0
.end method

.method private final saveCrop(ILcom/kelocube/mirrorclient/CanvasScaler$Crop;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session_menu_crop_x_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getX()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session_menu_crop_y_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session_menu_crop_scale_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getA()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session_menu_crop_theta_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/CanvasScaler$Crop;->getT()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final setActiveCrop(I)V
    .locals 3

    .line 66
    iput p1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->activeCrop:I

    .line 67
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    const-string v1, "session_menu_active_crop"

    iget v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->activeCrop:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->buttons:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 355
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kelocube/mirrorclient/ActionMenu$Button;

    .line 70
    invoke-virtual {v1, p1}, Lcom/kelocube/mirrorclient/ActionMenu$Button;->onActiveCropChanged(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->callbacks:Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;->getOnSetCrop()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/ActionMenu;->loadCrop(I)Lcom/kelocube/mirrorclient/CanvasScaler$Crop;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic setMode$default(Lcom/kelocube/mirrorclient/ActionMenu;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 233
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kelocube/mirrorclient/ActionMenu;->setMode(IZ)V

    return-void
.end method

.method private static final showOnboardingIfNecessary$lambda$9(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;Landroid/view/View;)V
    .locals 10

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$binding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "session_menu_onboarded"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    const-string v0, "getRoot(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x12c

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 313
    new-instance v1, Lcom/kelocube/mirrorclient/EaseInBackInterpolator;

    invoke-direct {v1}, Lcom/kelocube/mirrorclient/EaseInBackInterpolator;-><init>()V

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    new-instance v1, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$1$2$1;

    invoke-direct {v1, p0, p2}, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$1$2$1;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;Landroid/widget/FrameLayout;)V

    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 321
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final updateTouchMode()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modes:[Ljava/lang/Integer;

    iget v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 245
    iget-object v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->callbacks:Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;->getOnSetTouchMode()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->rootButton:Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getButton()Landroid/widget/ImageButton;

    move-result-object v0

    .line 247
    iget-object v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->pack:Lcom/maltaisn/icondialog/pack/IconPack;

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/16 v1, 0x3bd

    goto :goto_0

    :cond_0
    const/16 v1, 0x376

    goto :goto_0

    :cond_1
    const/16 v1, 0x6f

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    goto :goto_0

    :cond_3
    const/16 v1, 0x1f8

    .line 254
    :goto_0
    iget-object v3, p0, Lcom/kelocube/mirrorclient/ActionMenu;->loader:Lcom/maltaisn/icondialog/pack/IconPackLoader;

    invoke-virtual {v3}, Lcom/maltaisn/icondialog/pack/IconPackLoader;->getDrawableLoader()Lcom/maltaisn/icondialog/pack/IconDrawableLoader;

    move-result-object v3

    .line 247
    invoke-virtual {v2, v1, v3}, Lcom/maltaisn/icondialog/pack/IconPack;->getIconDrawable(ILcom/maltaisn/icondialog/pack/IconDrawableLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final configChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->setVertical(Z)V

    return-void
.end method

.method public final getLoader()Lcom/maltaisn/icondialog/pack/IconPackLoader;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->loader:Lcom/maltaisn/icondialog/pack/IconPackLoader;

    return-object v0
.end method

.method public final getPack()Lcom/maltaisn/icondialog/pack/IconPack;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->pack:Lcom/maltaisn/icondialog/pack/IconPack;

    return-object v0
.end method

.method public final inflate(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v0, p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->inflate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final layout()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->bringToFront()V

    return-void
.end method

.method public final onConnected()V
    .locals 1

    .line 220
    iget v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->activeCrop:I

    invoke-direct {p0, v0}, Lcom/kelocube/mirrorclient/ActionMenu;->setActiveCrop(I)V

    return-void
.end method

.method public final saveCrop(Lcom/kelocube/mirrorclient/CanvasScaler$Crop;)V
    .locals 1

    const-string v0, "crop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->activeCrop:I

    invoke-direct {p0, v0, p1}, Lcom/kelocube/mirrorclient/ActionMenu;->saveCrop(ILcom/kelocube/mirrorclient/CanvasScaler$Crop;)V

    return-void
.end method

.method public final setMode(IZ)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modes:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eq p1, v0, :cond_1

    .line 238
    iput p1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->modeIndex:I

    .line 239
    invoke-direct {p0}, Lcom/kelocube/mirrorclient/ActionMenu;->updateTouchMode()V

    :cond_1
    return-void
.end method

.method public final showOnboardingIfNecessary()V
    .locals 12

    .line 282
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "session_menu_onboarded"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    new-instance v1, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v3}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getMinEdgeOffset()F

    move-result v3

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v4}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getMinEdgeOffset()F

    move-result v4

    iget-object v5, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v5}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->getVertical()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;-><init>(ZFFZ)V

    invoke-virtual {v0, v1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->setState(Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;)V

    .line 284
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x3e8

    .line 293
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 294
    new-instance v3, Lcom/kelocube/mirrorclient/EaseOutElasticInterpolator;

    invoke-direct {v3}, Lcom/kelocube/mirrorclient/EaseOutElasticInterpolator;-><init>()V

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 297
    iget-object v3, p0, Lcom/kelocube/mirrorclient/ActionMenu;->context:Landroid/content/Context;

    sget v4, Lcom/kelocube/mirrorclient/R$color;->colorAccent:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    .line 298
    iget-object v4, v0, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->textBody:Landroid/widget/TextView;

    .line 299
    iget-object v5, p0, Lcom/kelocube/mirrorclient/ActionMenu;->context:Landroid/content/Context;

    sget v6, Lcom/kelocube/mirrorclient/R$string;->onboarding_action_menu_body:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3f

    .line 298
    invoke-static {v2, v3}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v2, v0, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->buttonOk:Landroid/widget/Button;

    new-instance v3, Lcom/kelocube/mirrorclient/ActionMenu$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/kelocube/mirrorclient/ActionMenu$$ExternalSyntheticLambda0;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string v3, "getRoot(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 357
    new-instance v3, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;

    invoke-direct {v3, p0, v0}, Lcom/kelocube/mirrorclient/ActionMenu$showOnboardingIfNecessary$$inlined$doOnNextLayout$1;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;)V

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 332
    iget-object v2, p0, Lcom/kelocube/mirrorclient/ActionMenu;->view:Lcom/kelocube/mirrorclient/ui/ActionMenuView;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/kelocube/mirrorclient/ui/ActionMenuView;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/databinding/LayoutOnboardingBubbleBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
