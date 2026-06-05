.class public final Lcom/maltaisn/icondialog/IconDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "IconDialog.kt"

# interfaces
.implements Lcom/maltaisn/icondialog/IconDialogContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/IconDialog$IconAdapter;,
        Lcom/maltaisn/icondialog/IconDialog$Callback;,
        Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;,
        Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;,
        Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;,
        Lcom/maltaisn/icondialog/IconDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconDialog.kt\ncom/maltaisn/icondialog/IconDialog\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,482:1\n232#2,3:483\n232#2,3:486\n71#3,10:489\n93#3,3:499\n253#4,2:502\n253#4,2:504\n253#4,2:506\n253#4,2:508\n253#4,2:510\n253#4,2:512\n253#4,2:514\n253#4,2:516\n253#4,2:518\n253#4,2:520\n253#4,2:522\n253#4,2:524\n253#4,2:526\n*E\n*S KotlinDebug\n*F\n+ 1 IconDialog.kt\ncom/maltaisn/icondialog/IconDialog\n*L\n106#1,3:483\n114#1,3:486\n134#1,10:489\n134#1,3:499\n274#1,2:502\n282#1,2:504\n283#1,2:506\n284#1,2:508\n288#1,2:510\n292#1,2:512\n296#1,2:514\n300#1,2:516\n304#1,2:518\n305#1,2:520\n306#1,2:522\n307#1,2:524\n312#1,2:526\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 p2\u00020\u00012\u00020\u0002:\u0006opqrstB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010B\u001a\u00020CH\u0016J\u0008\u0010D\u001a\u00020CH\u0016J\u0008\u0010E\u001a\u00020CH\u0016J\u0008\u0010F\u001a\u00020CH\u0016J\u0008\u0010G\u001a\u00020CH\u0016J\u0010\u0010H\u001a\u00020C2\u0006\u0010I\u001a\u00020\u0014H\u0016J\u0010\u0010J\u001a\u00020C2\u0006\u0010K\u001a\u00020LH\u0016J\u0012\u0010M\u001a\u00020N2\u0008\u0010O\u001a\u0004\u0018\u00010PH\u0017J\u0010\u0010Q\u001a\u00020C2\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010R\u001a\u00020C2\u0006\u0010O\u001a\u00020PH\u0016J\u001e\u0010S\u001a\u00020C2\u0006\u0010T\u001a\u00020U2\u000c\u0010V\u001a\u0008\u0012\u0004\u0012\u00020C0WH\u0016J\u0008\u0010X\u001a\u00020CH\u0016J\u0010\u0010Y\u001a\u00020C2\u0006\u0010I\u001a\u00020\u0014H\u0016J\u0008\u0010Z\u001a\u00020CH\u0016J\u0010\u0010[\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010^\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010_\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010`\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010a\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010b\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010c\u001a\u00020C2\u0006\u0010d\u001a\u00020eH\u0016J\u0010\u0010f\u001a\u00020C2\u0006\u0010g\u001a\u00020]H\u0016J\u0016\u0010h\u001a\u00020C2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020j04H\u0016J\u0010\u0010k\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0008\u0010l\u001a\u00020CH\u0016J\u0010\u0010m\u001a\u00020C2\u0006\u0010n\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00060\u0016R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020*X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020-X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R \u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001404X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020:X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u000e\u0010?\u001a\u00020\"X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006u"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/maltaisn/icondialog/IconDialogContract$View;",
        "()V",
        "callback",
        "Lcom/maltaisn/icondialog/IconDialog$Callback;",
        "getCallback",
        "()Lcom/maltaisn/icondialog/IconDialog$Callback;",
        "cancelBtn",
        "Landroid/widget/Button;",
        "clearBtn",
        "dialogView",
        "Landroid/view/View;",
        "footerDiv",
        "headerDiv",
        "iconPack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "getIconPack",
        "()Lcom/maltaisn/icondialog/pack/IconPack;",
        "iconSize",
        "",
        "listAdapter",
        "Lcom/maltaisn/icondialog/IconDialog$IconAdapter;",
        "listLayout",
        "Lcom/maltaisn/icondialog/IconLayoutManager;",
        "listRcv",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "locale",
        "Ljava/util/Locale;",
        "getLocale",
        "()Ljava/util/Locale;",
        "maxDialogHeight",
        "maxDialogWidth",
        "noResultTxv",
        "Landroid/widget/TextView;",
        "presenter",
        "Lcom/maltaisn/icondialog/IconDialogContract$Presenter;",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "progressCallback",
        "Ljava/lang/Runnable;",
        "progressHandler",
        "Landroid/os/Handler;",
        "searchCallback",
        "searchClearBtn",
        "Landroid/widget/ImageView;",
        "searchEdt",
        "Landroid/widget/EditText;",
        "searchHandler",
        "searchImv",
        "selectBtn",
        "selectedIconIds",
        "",
        "getSelectedIconIds",
        "()Ljava/util/List;",
        "setSelectedIconIds",
        "(Ljava/util/List;)V",
        "settings",
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
        "getSettings",
        "()Lcom/maltaisn/icondialog/IconDialogSettings;",
        "setSettings",
        "(Lcom/maltaisn/icondialog/IconDialogSettings;)V",
        "titleTxv",
        "unavailableIconDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "addStickyHeaderDecoration",
        "",
        "cancelCallbacks",
        "exit",
        "hideKeyboard",
        "notifyAllIconsChanged",
        "notifyIconItemChanged",
        "pos",
        "onCancel",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "state",
        "Landroid/os/Bundle;",
        "onDismiss",
        "onSaveInstanceState",
        "postDelayed",
        "delay",
        "",
        "action",
        "Lkotlin/Function0;",
        "removeLayoutPadding",
        "scrollToItemPosition",
        "setCancelResult",
        "setClearBtnVisible",
        "visible",
        "",
        "setClearSearchBtnVisible",
        "setFooterVisible",
        "setNoResultLabelVisible",
        "setProgressBarVisible",
        "setSearchBarVisible",
        "setSearchQuery",
        "query",
        "",
        "setSelectBtnEnabled",
        "enabled",
        "setSelectionResult",
        "selected",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "setTitleVisible",
        "showMaxSelectionMessage",
        "updateTitle",
        "titleRes",
        "Callback",
        "Companion",
        "HeadersVisibility",
        "IconAdapter",
        "SearchVisibility",
        "TitleVisibility",
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
.field public static final Companion:Lcom/maltaisn/icondialog/IconDialog$Companion;

.field private static final SEARCH_DELAY:J = 0x12cL


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private clearBtn:Landroid/widget/Button;

.field private dialogView:Landroid/view/View;

.field private footerDiv:Landroid/view/View;

.field private headerDiv:Landroid/view/View;

.field private iconSize:I

.field private listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

.field private listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

.field private listRcv:Landroidx/recyclerview/widget/RecyclerView;

.field private maxDialogHeight:I

.field private maxDialogWidth:I

.field private noResultTxv:Landroid/widget/TextView;

.field private presenter:Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressCallback:Ljava/lang/Runnable;

.field private progressHandler:Landroid/os/Handler;

.field private final searchCallback:Ljava/lang/Runnable;

.field private searchClearBtn:Landroid/widget/ImageView;

.field private searchEdt:Landroid/widget/EditText;

.field private searchHandler:Landroid/os/Handler;

.field private searchImv:Landroid/widget/ImageView;

.field private selectBtn:Landroid/widget/Button;

.field private selectedIconIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public settings:Lcom/maltaisn/icondialog/IconDialogSettings;

.field private titleTxv:Landroid/widget/TextView;

.field private unavailableIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/maltaisn/icondialog/IconDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maltaisn/icondialog/IconDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/maltaisn/icondialog/IconDialog;->Companion:Lcom/maltaisn/icondialog/IconDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 66
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->selectedIconIds:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/maltaisn/icondialog/IconDialog$searchCallback$1;

    invoke-direct {v0, p0}, Lcom/maltaisn/icondialog/IconDialog$searchCallback$1;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getDialogView$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/view/View;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "dialogView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getListAdapter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialog$IconAdapter;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    if-nez p0, :cond_0

    const-string v0, "listAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getListLayout$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconLayoutManager;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

    if-nez p0, :cond_0

    const-string v0, "listLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMaxDialogHeight$p(Lcom/maltaisn/icondialog/IconDialog;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/maltaisn/icondialog/IconDialog;->maxDialogHeight:I

    return p0
.end method

.method public static final synthetic access$getMaxDialogWidth$p(Lcom/maltaisn/icondialog/IconDialog;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/maltaisn/icondialog/IconDialog;->maxDialogWidth:I

    return p0
.end method

.method public static final synthetic access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->presenter:Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    return-object p0
.end method

.method public static final synthetic access$getSearchCallback$p(Lcom/maltaisn/icondialog/IconDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getSearchEdt$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/widget/EditText;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez p0, :cond_0

    const-string v0, "searchEdt"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getSearchHandler$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/os/Handler;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchHandler:Landroid/os/Handler;

    if-nez p0, :cond_0

    const-string v0, "searchHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getUnavailableIconDrawable$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/maltaisn/icondialog/IconDialog;->unavailableIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    const-string v0, "unavailableIconDrawable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setDialogView$p(Lcom/maltaisn/icondialog/IconDialog;Landroid/view/View;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setListAdapter$p(Lcom/maltaisn/icondialog/IconDialog;Lcom/maltaisn/icondialog/IconDialog$IconAdapter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    return-void
.end method

.method public static final synthetic access$setListLayout$p(Lcom/maltaisn/icondialog/IconDialog;Lcom/maltaisn/icondialog/IconLayoutManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

    return-void
.end method

.method public static final synthetic access$setMaxDialogHeight$p(Lcom/maltaisn/icondialog/IconDialog;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/maltaisn/icondialog/IconDialog;->maxDialogHeight:I

    return-void
.end method

.method public static final synthetic access$setMaxDialogWidth$p(Lcom/maltaisn/icondialog/IconDialog;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/maltaisn/icondialog/IconDialog;->maxDialogWidth:I

    return-void
.end method

.method public static final synthetic access$setPresenter$p(Lcom/maltaisn/icondialog/IconDialog;Lcom/maltaisn/icondialog/IconDialogContract$Presenter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->presenter:Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    return-void
.end method

.method public static final synthetic access$setSearchEdt$p(Lcom/maltaisn/icondialog/IconDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    return-void
.end method

.method public static final synthetic access$setSearchHandler$p(Lcom/maltaisn/icondialog/IconDialog;Landroid/os/Handler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setUnavailableIconDrawable$p(Lcom/maltaisn/icondialog/IconDialog;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->unavailableIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final getCallback()Lcom/maltaisn/icondialog/IconDialog$Callback;
    .locals 3

    .line 346
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/maltaisn/icondialog/IconDialog$Callback;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/maltaisn/icondialog/IconDialog$Callback;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/maltaisn/icondialog/IconDialog$Callback;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/maltaisn/icondialog/IconDialog$Callback;

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_2

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/maltaisn/icondialog/IconDialog$Callback;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    move-object v0, v2

    check-cast v0, Lcom/maltaisn/icondialog/IconDialog$Callback;

    :goto_2
    if-eqz v0, :cond_5

    return-object v0

    .line 349
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Icon dialog must have a callback."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final newInstance(Lcom/maltaisn/icondialog/IconDialogSettings;)Lcom/maltaisn/icondialog/IconDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/maltaisn/icondialog/IconDialog;->Companion:Lcom/maltaisn/icondialog/IconDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/maltaisn/icondialog/IconDialog$Companion;->newInstance(Lcom/maltaisn/icondialog/IconDialogSettings;)Lcom/maltaisn/icondialog/IconDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addStickyHeaderDecoration()V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->listRcv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "listRcv"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/maltaisn/icondialog/StickyHeaderDecoration;

    iget-object v3, p0, Lcom/maltaisn/icondialog/IconDialog;->listRcv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    if-nez v1, :cond_2

    const-string v4, "listAdapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v4}, Lcom/maltaisn/icondialog/StickyHeaderDecoration;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;I)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public cancelCallbacks()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->progressHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v1, "progressHandler"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->progressCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 250
    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->progressCallback:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public exit()V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->dismiss()V

    return-void
.end method

.method public getIconPack()Lcom/maltaisn/icondialog/pack/IconPack;
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialog;->getCallback()Lcom/maltaisn/icondialog/IconDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialog$Callback;->getIconDialogIconPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "requireContext().resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "ConfigurationCompat.getL\u2026sources.configuration)[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSelectedIconIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->selectedIconIds:Ljava/util/List;

    return-object v0
.end method

.method public getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->settings:Lcom/maltaisn/icondialog/IconDialogSettings;

    if-nez v0, :cond_0

    const-string v1, "settings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public hideKeyboard()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    const-string v1, "searchEdt"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 260
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 261
    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez v2, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 260
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method public notifyAllIconsChanged()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    if-nez v0, :cond_0

    const-string v1, "listAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyIconItemChanged(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    if-nez v0, :cond_0

    const-string v1, "listAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->presenter:Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->onDialogCancelled()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 105
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget v1, Lcom/maltaisn/icondialog/R$attr;->icdStyle:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "context.obtainStyledAttr\u2026ArrayOf(R.attr.icdStyle))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget v2, Lcom/maltaisn/icondialog/R$style;->IcdStyle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 484
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/maltaisn/icondialog/R$drawable;->icd_ic_unavailable:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object v5, p0, Lcom/maltaisn/icondialog/IconDialog;->unavailableIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    sget-object v5, Lcom/maltaisn/icondialog/R$styleable;->IconDialog:[I

    invoke-virtual {v1, v5}, Landroidx/appcompat/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v5, "contextWrapper.obtainSty\u2026s(R.styleable.IconDialog)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget v5, Lcom/maltaisn/icondialog/R$styleable;->IconDialog_icdMaxWidth:I

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/maltaisn/icondialog/IconDialog;->maxDialogWidth:I

    .line 116
    sget v5, Lcom/maltaisn/icondialog/R$styleable;->IconDialog_icdMaxHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/maltaisn/icondialog/IconDialog;->maxDialogHeight:I

    .line 117
    sget v5, Lcom/maltaisn/icondialog/R$styleable;->IconDialog_icdIconSize:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/maltaisn/icondialog/IconDialog;->iconSize:I

    .line 118
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 487
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->progressHandler:Landroid/os/Handler;

    .line 121
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchHandler:Landroid/os/Handler;

    .line 124
    sget v1, Lcom/maltaisn/icondialog/R$layout;->icd_dialog_icon:I

    invoke-virtual {v4, v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "localInflater.inflate(R.\u2026dialog_icon, null, false)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    .line 125
    const-string v3, "dialogView"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v4, Lcom/maltaisn/icondialog/R$id;->icd_txv_title:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.icd_txv_title)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->titleTxv:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v4, Lcom/maltaisn/icondialog/R$id;->icd_div_header:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.icd_div_header)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->headerDiv:Landroid/view/View;

    .line 127
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget v4, Lcom/maltaisn/icondialog/R$id;->icd_imv_search:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.icd_imv_search)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchImv:Landroid/widget/ImageView;

    .line 128
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget v4, Lcom/maltaisn/icondialog/R$id;->icd_edt_search:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.icd_edt_search)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    .line 129
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget v4, Lcom/maltaisn/icondialog/R$id;->icd_imv_clear_search:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.icd_imv_clear_search)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchClearBtn:Landroid/widget/ImageView;

    .line 130
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    sget v4, Lcom/maltaisn/icondialog/R$id;->icd_txv_no_result:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.icd_txv_no_result)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->noResultTxv:Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    sget v4, Lcom/maltaisn/icondialog/R$id;->icd_progress_bar:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "dialogView.findViewById(R.id.icd_progress_bar)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 134
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    const-string v4, "searchEdt"

    if-nez v1, :cond_8

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    check-cast v1, Landroid/widget/TextView;

    .line 498
    new-instance v5, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;

    invoke-direct {v5, p0}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$$inlined$addTextChangedListener$1;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    .line 499
    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez v1, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    new-instance v5, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;

    invoke-direct {v5, p0}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$3;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    check-cast v5, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 148
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchClearBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_a

    const-string v5, "searchClearBtn"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    new-instance v5, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$4;

    invoke-direct {v5, p0}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$4;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    sget v5, Lcom/maltaisn/icondialog/R$id;->icd_rcv_icon_list:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v5, "dialogView.findViewById(R.id.icd_rcv_icon_list)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->listRcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    new-instance v1, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    invoke-direct {v1, p0}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    .line 155
    new-instance v1, Lcom/maltaisn/icondialog/IconLayoutManager;

    iget v5, p0, Lcom/maltaisn/icondialog/IconDialog;->iconSize:I

    invoke-direct {v1, v0, v5}, Lcom/maltaisn/icondialog/IconLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

    .line 156
    new-instance v5, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$5;

    invoke-direct {v5, p0}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$5;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v5}, Lcom/maltaisn/icondialog/IconLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 162
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->listRcv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "listRcv"

    if-nez v1, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    iget-object v6, p0, Lcom/maltaisn/icondialog/IconDialog;->listAdapter:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    if-nez v6, :cond_d

    const-string v7, "listAdapter"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->listRcv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    iget-object v5, p0, Lcom/maltaisn/icondialog/IconDialog;->listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

    const-string v6, "listLayout"

    if-nez v5, :cond_f

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    sget v5, Lcom/maltaisn/icondialog/R$id;->icd_div_footer:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v5, "dialogView.findViewById(R.id.icd_div_footer)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->footerDiv:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    sget v5, Lcom/maltaisn/icondialog/R$id;->icd_btn_select:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v5, "dialogView.findViewById(R.id.icd_btn_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->selectBtn:Landroid/widget/Button;

    .line 168
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_12

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    sget v5, Lcom/maltaisn/icondialog/R$id;->icd_btn_cancel:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v5, "dialogView.findViewById(R.id.icd_btn_cancel)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->cancelBtn:Landroid/widget/Button;

    .line 169
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v1, :cond_13

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    sget v3, Lcom/maltaisn/icondialog/R$id;->icd_btn_clear:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "dialogView.findViewById(R.id.icd_btn_clear)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->clearBtn:Landroid/widget/Button;

    .line 170
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->selectBtn:Landroid/widget/Button;

    if-nez v1, :cond_14

    const-string v3, "selectBtn"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    new-instance v3, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$6;

    invoke-direct {v3, p0}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$6;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->cancelBtn:Landroid/widget/Button;

    if-nez v1, :cond_15

    const-string v3, "cancelBtn"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    new-instance v3, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$7;

    invoke-direct {v3, p0}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$7;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog;->clearBtn:Landroid/widget/Button;

    if-nez v1, :cond_16

    const-string v3, "clearBtn"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_16
    new-instance v3, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$8;

    invoke-direct {v3, p0}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$8;-><init>(Lcom/maltaisn/icondialog/IconDialog;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 177
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 179
    new-instance v2, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/maltaisn/icondialog/IconDialog$onCreateDialog$9;-><init>(Lcom/maltaisn/icondialog/IconDialog;Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V

    check-cast v2, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    if-eqz p1, :cond_1a

    .line 203
    const-string v0, "settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_17
    check-cast v0, Lcom/maltaisn/icondialog/IconDialogSettings;

    invoke-virtual {p0, v0}, Lcom/maltaisn/icondialog/IconDialog;->setSettings(Lcom/maltaisn/icondialog/IconDialogSettings;)V

    .line 206
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

    if-nez v0, :cond_18

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    const-string v2, "listLayoutState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/maltaisn/icondialog/IconLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez v0, :cond_19

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_19
    const-string v2, "searchEdtState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1a
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 231
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->searchHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    const-string v0, "searchHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->presenter:Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->detach()V

    :cond_1
    const/4 p1, 0x0

    .line 235
    move-object v0, p1

    check-cast v0, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->presenter:Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->getSettings()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "settings"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

    if-nez v0, :cond_0

    const-string v1, "listLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "listLayoutState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const-string v1, "searchEdt"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "searchEdtState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 225
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->presenter:Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->saveState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public postDelayed(JLkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p1, "action"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    new-instance p1, Lcom/maltaisn/icondialog/IconDialog$sam$java_lang_Runnable$0;

    invoke-direct {p1, p3}, Lcom/maltaisn/icondialog/IconDialog$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p1, Ljava/lang/Runnable;

    .line 244
    iget-object p2, p0, Lcom/maltaisn/icondialog/IconDialog;->progressHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    const-string p3, "progressHandler"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->progressCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public removeLayoutPadding()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->dialogView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "dialogView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 312
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->headerDiv:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v1, "headerDiv"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x8

    .line 526
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public scrollToItemPosition(I)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->listLayout:Lcom/maltaisn/icondialog/IconLayoutManager;

    if-nez v0, :cond_0

    const-string v1, "listLayout"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/maltaisn/icondialog/IconDialog;->iconSize:I

    invoke-virtual {v0, p1, v1}, Lcom/maltaisn/icondialog/IconLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setCancelResult()V
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialog;->getCallback()Lcom/maltaisn/icondialog/IconDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/maltaisn/icondialog/IconDialog$Callback;->onIconDialogCancelled()V

    return-void
.end method

.method public setClearBtnVisible(Z)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->clearBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "clearBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 512
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setClearSearchBtnVisible(Z)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchClearBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "searchClearBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 510
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setFooterVisible(Z)V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->clearBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "clearBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 518
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->cancelBtn:Landroid/widget/Button;

    if-nez v0, :cond_2

    const-string v3, "cancelBtn"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    .line 520
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->selectBtn:Landroid/widget/Button;

    if-nez v0, :cond_4

    const-string v3, "selectBtn"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    .line 522
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->footerDiv:Landroid/view/View;

    if-nez v0, :cond_6

    const-string v3, "footerDiv"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0x8

    .line 524
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setNoResultLabelVisible(Z)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->noResultTxv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "noResultTxv"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 514
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressBar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 516
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSearchBarVisible(Z)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchImv:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "searchImv"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 504
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const-string v3, "searchEdt"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    .line 506
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchClearBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    const-string v3, "searchClearBtn"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    .line 508
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->searchEdt:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "searchEdt"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelectBtnEnabled(Z)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->selectBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "selectBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setSelectedIconIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->selectedIconIds:Ljava/util/List;

    return-void
.end method

.method public setSelectionResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maltaisn/icondialog/data/Icon;",
            ">;)V"
        }
    .end annotation

    const-string v0, "selected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialog;->getCallback()Lcom/maltaisn/icondialog/IconDialog$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/maltaisn/icondialog/IconDialog$Callback;->onIconDialogIconsSelected(Lcom/maltaisn/icondialog/IconDialog;Ljava/util/List;)V

    return-void
.end method

.method public setSettings(Lcom/maltaisn/icondialog/IconDialogSettings;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog;->settings:Lcom/maltaisn/icondialog/IconDialogSettings;

    return-void
.end method

.method public setTitleVisible(Z)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->titleTxv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "titleTxv"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 502
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showMaxSelectionMessage()V
    .locals 3

    .line 341
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/maltaisn/icondialog/R$string;->icd_max_sel_message:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateTitle(I)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog;->titleTxv:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "titleTxv"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/maltaisn/icondialog/IconDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
