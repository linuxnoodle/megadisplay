.class public Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ArrayRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 71
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020014

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    instance-of v1, v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 76
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/widget/ImageView;

    :cond_2
    iput-object v2, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method
