.class public final Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;
.super Ljava/lang/Object;
.source "ActivityMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final backView:Landroid/view/View;

.field public final buttonAbout:Landroid/widget/ImageButton;

.field public final buttonPurchase:Landroid/widget/Button;

.field public final buttonSettings:Landroid/widget/ImageButton;

.field public final imageView:Landroid/widget/ImageView;

.field public final layoutRoot:Landroid/widget/FrameLayout;

.field public final pbarStatus:Landroid/widget/ProgressBar;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final textStatusDesc:Landroid/widget/TextView;

.field public final textStatusLabel:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->rootView:Landroid/widget/FrameLayout;

    .line 62
    iput-object p2, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->backView:Landroid/view/View;

    .line 63
    iput-object p3, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->buttonAbout:Landroid/widget/ImageButton;

    .line 64
    iput-object p4, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->buttonPurchase:Landroid/widget/Button;

    .line 65
    iput-object p5, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->buttonSettings:Landroid/widget/ImageButton;

    .line 66
    iput-object p6, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->imageView:Landroid/widget/ImageView;

    .line 67
    iput-object p7, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->layoutRoot:Landroid/widget/FrameLayout;

    .line 68
    iput-object p8, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->pbarStatus:Landroid/widget/ProgressBar;

    .line 69
    iput-object p9, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->textStatusDesc:Landroid/widget/TextView;

    .line 70
    iput-object p10, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->textStatusLabel:Landroid/widget/TextView;

    .line 71
    iput-object p11, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->view:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;
    .locals 13

    .line 101
    sget v0, Lcom/kelocube/mirrorclient/R$id;->back_view:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 107
    sget v0, Lcom/kelocube/mirrorclient/R$id;->button_about:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 113
    sget v0, Lcom/kelocube/mirrorclient/R$id;->button_purchase:I

    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 119
    sget v0, Lcom/kelocube/mirrorclient/R$id;->button_settings:I

    .line 120
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 125
    sget v0, Lcom/kelocube/mirrorclient/R$id;->imageView:I

    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 131
    move-object v8, p0

    check-cast v8, Landroid/widget/FrameLayout;

    .line 133
    sget v0, Lcom/kelocube/mirrorclient/R$id;->pbar_status:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ProgressBar;

    if-eqz v9, :cond_0

    .line 139
    sget v0, Lcom/kelocube/mirrorclient/R$id;->text_status_desc:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 145
    sget v0, Lcom/kelocube/mirrorclient/R$id;->text_status_label:I

    .line 146
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 151
    sget v0, Lcom/kelocube/mirrorclient/R$id;->view:I

    .line 152
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 157
    new-instance p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;

    move-object v1, p0

    move-object v2, v8

    invoke-direct/range {v1 .. v12}, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {p0, v0, v1}, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;
    .locals 2

    .line 88
    sget v0, Lcom/kelocube/mirrorclient/R$layout;->activity_main:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/kelocube/mirrorclient/databinding/ActivityMainBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
