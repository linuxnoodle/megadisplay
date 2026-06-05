.class public Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ArrayRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final iconResourceIds:[I

.field private itemColor:Landroid/content/res/ColorStateList;

.field private itemTintList:Landroid/content/res/ColorStateList;

.field private itemTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemTypeface:Landroid/graphics/Typeface;

.field private final items:[Ljava/lang/CharSequence;

.field private final layoutResourceId:I


# direct methods
.method public constructor <init>(I[Ljava/lang/CharSequence;[I)V
    .locals 3

    .line 217
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 114
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 218
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    if-eqz p3, :cond_1

    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Invalid number of icon resource ids given"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 222
    iput p1, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->layoutResourceId:I

    .line 223
    iput-object p2, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->items:[Ljava/lang/CharSequence;

    .line 224
    iput-object p3, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->iconResourceIds:[I

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemColor:Landroid/content/res/ColorStateList;

    .line 226
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private adaptIcon(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;I)V
    .locals 2

    .line 162
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->iconResourceIds:[I

    if-eqz v0, :cond_1

    .line 163
    invoke-static {p1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->access$100(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 167
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {p1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->access$000(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10103a3

    .line 173
    invoke-static {v0, v1}, Lde/mrapp/android/util/ThemeUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    .line 175
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 176
    invoke-direct {p0, v0, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adaptPadding(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;)V
    .locals 4

    .line 123
    iget-object p1, p1, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    sget v1, Lde/mrapp/android/dialog/R$dimen;->dialog_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 127
    sget v2, Lde/mrapp/android/dialog/R$dimen;->dialog_right_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private adaptText(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;I)V
    .locals 1

    .line 139
    invoke-static {p1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;->access$000(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->items:[Ljava/lang/CharSequence;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->getItemColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->getItemColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->getItemTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->getItemTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method

.method private getIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 194
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->iconResourceIds:[I

    aget p2, v0, p2

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 198
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final getItemColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 237
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 299
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->items:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public final getItemTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 259
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 46
    check-cast p1, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->onBindViewHolder(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;I)V
    .locals 0

    .line 313
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->adaptPadding(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;)V

    .line 314
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->adaptText(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;I)V

    .line 315
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->adaptIcon(Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 306
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 307
    iget v0, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->layoutResourceId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 308
    new-instance p2, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setItemColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemColor:Landroid/content/res/ColorStateList;

    .line 248
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTintList:Landroid/content/res/ColorStateList;

    .line 282
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 292
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tint mode may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 294
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 269
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The typeface may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->itemTypeface:Landroid/graphics/Typeface;

    .line 271
    invoke-virtual {p0}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
