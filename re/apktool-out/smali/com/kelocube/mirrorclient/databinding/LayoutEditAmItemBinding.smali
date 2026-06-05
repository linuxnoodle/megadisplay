.class public final Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;
.super Ljava/lang/Object;
.source "LayoutEditAmItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actionHold:Landroid/widget/TextView;

.field public final actionTap:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageButton;

.field public final itemLayout:Landroidx/cardview/widget/CardView;

.field public final itemLeft:Landroid/view/View;

.field public final itemRight:Landroid/view/View;

.field public final layoutRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private final rootView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;


# direct methods
.method private constructor <init>(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroidx/cardview/widget/CardView;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/LinearLayoutCompat;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->rootView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    .line 50
    iput-object p2, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->actionHold:Landroid/widget/TextView;

    .line 51
    iput-object p3, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->actionTap:Landroid/widget/TextView;

    .line 52
    iput-object p4, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->icon:Landroid/widget/ImageButton;

    .line 53
    iput-object p5, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->itemLayout:Landroidx/cardview/widget/CardView;

    .line 54
    iput-object p6, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->itemLeft:Landroid/view/View;

    .line 55
    iput-object p7, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->itemRight:Landroid/view/View;

    .line 56
    iput-object p8, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->layoutRoot:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;
    .locals 11

    .line 86
    sget v0, Lcom/kelocube/mirrorclient/R$id;->action_hold:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 92
    sget v0, Lcom/kelocube/mirrorclient/R$id;->action_tap:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 98
    sget v0, Lcom/kelocube/mirrorclient/R$id;->icon:I

    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 104
    sget v0, Lcom/kelocube/mirrorclient/R$id;->item_layout:I

    .line 105
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/cardview/widget/CardView;

    if-eqz v7, :cond_0

    .line 110
    sget v0, Lcom/kelocube/mirrorclient/R$id;->item_left:I

    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 116
    sget v0, Lcom/kelocube/mirrorclient/R$id;->item_right:I

    .line 117
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 122
    sget v0, Lcom/kelocube/mirrorclient/R$id;->layout_root:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v10, :cond_0

    .line 128
    new-instance v0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    move-object v3, p0

    check-cast v3, Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;-><init>(Lcom/woxthebox/draglistview/swipe/ListSwipeItem;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroidx/cardview/widget/CardView;Landroid/view/View;Landroid/view/View;Landroidx/appcompat/widget/LinearLayoutCompat;)V

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, v0, v1}, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;
    .locals 2

    .line 73
    sget v0, Lcom/kelocube/mirrorclient/R$layout;->layout_edit_am_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->getRoot()Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/woxthebox/draglistview/swipe/ListSwipeItem;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;->rootView:Lcom/woxthebox/draglistview/swipe/ListSwipeItem;

    return-object v0
.end method
