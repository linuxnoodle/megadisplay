.class public Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ViewPagerAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/mrapp/android/dialog/datastructure/ViewPagerItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lde/mrapp/android/dialog/datastructure/ViewPagerItem;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 64
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The fragment manager may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object p2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v0, "The list may not be null"

    invoke-virtual {p2, p3, v0}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->context:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addItem(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 87
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The fragment class may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->items:Ljava/util/List;

    new-instance v1, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;

    invoke-direct {v1, p1, p2, p3}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final clear()V
    .locals 1

    .line 107
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 113
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;

    .line 114
    invoke-virtual {p1}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getFragmentClass()Ljava/lang/Class;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 116
    iget-object v1, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final removeItem(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
