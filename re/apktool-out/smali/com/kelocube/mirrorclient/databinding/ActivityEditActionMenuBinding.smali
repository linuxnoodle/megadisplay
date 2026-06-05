.class public final Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;
.super Ljava/lang/Object;
.source "ActivityEditActionMenuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final buttonList:Lcom/woxthebox/draglistview/DragListView;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final view2:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/woxthebox/draglistview/DragListView;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->rootView:Landroid/widget/FrameLayout;

    .line 36
    iput-object p2, p0, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->addButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 37
    iput-object p3, p0, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->buttonList:Lcom/woxthebox/draglistview/DragListView;

    .line 38
    iput-object p4, p0, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->view2:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;
    .locals 4

    .line 68
    sget v0, Lcom/kelocube/mirrorclient/R$id;->add_button:I

    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v1, :cond_0

    .line 74
    sget v0, Lcom/kelocube/mirrorclient/R$id;->button_list:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/woxthebox/draglistview/DragListView;

    if-eqz v2, :cond_0

    .line 80
    sget v0, Lcom/kelocube/mirrorclient/R$id;->view2:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 86
    new-instance v0, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/woxthebox/draglistview/DragListView;Landroid/view/View;)V

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, v0, v1}, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;
    .locals 2

    .line 55
    sget v0, Lcom/kelocube/mirrorclient/R$layout;->activity_edit_action_menu:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
