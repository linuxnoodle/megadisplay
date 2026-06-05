.class public final Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;
.super Ljava/lang/Object;
.source "LibsFragmentCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0018\u00010\u000eR\u00020\u0000H\u0004J4\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010 \u001a\u00020\u0013J\u000e\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0016J\u0014\u0010#\u001a\u00020\u00132\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tR\u0018\u0010\u0003\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0018\u00010\u000eR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0010j\u0008\u0012\u0004\u0012\u00020\n`\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;",
        "",
        "()V",
        "adapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "Lcom/mikepenz/fastadapter/IItem;",
        "builder",
        "Lcom/mikepenz/aboutlibraries/LibsBuilder;",
        "comparator",
        "Ljava/util/Comparator;",
        "Lcom/mikepenz/aboutlibraries/entity/Library;",
        "itemAdapter",
        "Lcom/mikepenz/fastadapter/adapters/ItemAdapter;",
        "libTask",
        "Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;",
        "libraries",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "executeLibTask",
        "",
        "libraryTask",
        "onCreateView",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "arguments",
        "onDestroyView",
        "onViewCreated",
        "view",
        "setLibraryComparator",
        "LibraryTask",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private adapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/fastadapter/IItem<",
            "*>;>;"
        }
    .end annotation
.end field

.field private builder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/mikepenz/aboutlibraries/entity/Library;",
            ">;"
        }
    .end annotation
.end field

.field private itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "Lcom/mikepenz/fastadapter/IItem<",
            "*>;>;"
        }
    .end annotation
.end field

.field private libTask:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;

.field private libraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mikepenz/aboutlibraries/entity/Library;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->libraries:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->builder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    if-nez p0, :cond_0

    const-string v0, "builder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getComparator$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/Comparator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public static final synthetic access$getItemAdapter$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    if-nez p0, :cond_0

    const-string v0, "itemAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getLibraries$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->libraries:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$setBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Lcom/mikepenz/aboutlibraries/LibsBuilder;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->builder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    return-void
.end method

.method public static final synthetic access$setComparator$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Ljava/util/Comparator;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public static final synthetic access$setItemAdapter$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    return-void
.end method

.method public static final synthetic access$setLibraries$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Ljava/util/ArrayList;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->libraries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final executeLibTask(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 105
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->builder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    if-nez v0, :cond_0

    const-string v1, "builder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getLibTaskExecutor()Lcom/mikepenz/aboutlibraries/LibTaskExecutor;

    move-result-object v0

    sget-object v1, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibTaskExecutor;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 106
    :cond_3
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "inflater"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_b

    .line 53
    const-string p4, "data"

    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p4

    if-eqz p4, :cond_a

    check-cast p4, Lcom/mikepenz/aboutlibraries/LibsBuilder;

    iput-object p4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->builder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    .line 59
    sget p4, Lcom/mikepenz/aboutlibraries/R$layout;->fragment_opensource:I

    const/4 p5, 0x0

    invoke-virtual {p2, p4, p3, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    sget-object p3, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {p3}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getUiListener()Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;

    move-result-object p3

    const-string p4, "view"

    if-eqz p3, :cond_0

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;->preOnCreateView(Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object p2, p3

    .line 65
    :cond_0
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->cardListView:I

    if-ne p3, v0, :cond_1

    .line 66
    move-object p3, p2

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    .line 68
    :cond_1
    sget p3, Lcom/mikepenz/aboutlibraries/R$id;->cardListView:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_9

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    sget-object p1, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 73
    sget-object p1, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_1

    .line 75
    :cond_2
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 78
    :goto_1
    new-instance p1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {p1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 79
    sget-object p1, Lcom/mikepenz/fastadapter/FastAdapter;->Companion:Lcom/mikepenz/fastadapter/FastAdapter$Companion;

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    const-string v1, "itemAdapter"

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-virtual {p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter$Companion;->with(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->adapter:Lcom/mikepenz/fastadapter/FastAdapter;

    if-nez p1, :cond_4

    .line 80
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->builder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    if-nez p1, :cond_5

    const-string v0, "builder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getShowLoadingProgress()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 83
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem;

    invoke-direct {v0}, Lcom/mikepenz/aboutlibraries/ui/item/LoaderItem;-><init>()V

    check-cast v0, Lcom/mikepenz/fastadapter/IItem;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mikepenz/fastadapter/IItem;

    aput-object v0, v1, p5

    invoke-virtual {p1, v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 87
    :cond_7
    sget-object p1, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getUiListener()Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1, p2}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;->postOnCreateView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    move-object p2, p1

    .line 89
    :cond_8
    check-cast p3, Landroid/view/View;

    const/16 p1, 0x50

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p3, p1}, Lcom/mikepenz/aboutlibraries/util/UIUtilsKt;->doOnApplySystemWindowInsets(Landroid/view/View;[I)V

    .line 91
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    .line 68
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.mikepenz.aboutlibraries.LibsBuilder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_b
    const-string p2, "AboutLibraries"

    const-string p3, "The AboutLibraries fragment can\'t be build without the bundle containing the LibsBuilder"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public final onDestroyView()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->libTask:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 117
    move-object v1, v0

    check-cast v1, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->libTask:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;

    :cond_1
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "view.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "view.context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;-><init>(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->libTask:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;

    .line 99
    invoke-virtual {p0, v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->executeLibTask(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;)V

    :cond_0
    return-void
.end method

.method public final setLibraryComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/mikepenz/aboutlibraries/entity/Library;",
            ">;)V"
        }
    .end annotation

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->comparator:Ljava/util/Comparator;

    return-void
.end method
