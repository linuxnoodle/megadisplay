.class public Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorPaletteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final colorPalette:[I

.field private final previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;[IILde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;IILandroid/graphics/drawable/Drawable;)V
    .locals 11

    move-object v0, p0

    move-object v1, p2

    .line 90
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 91
    sget-object v2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v3, "The context may not be null"

    move-object v5, p1

    invoke-virtual {v2, p1, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v3, "The color palette may not be null"

    invoke-virtual {v2, p2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v3, 0x1

    const-string v4, "The preview size must be at least 1"

    move v8, p3

    invoke-virtual {v2, p3, v3, v4}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 94
    sget-object v2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v3, "The preview shape may not be null"

    move-object v7, p4

    invoke-virtual {v2, p4, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v2, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v3, 0x0

    const-string v4, "The border width must be at least 0"

    move/from16 v9, p5

    .line 96
    invoke-virtual {v2, v9, v3, v4}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 97
    iput-object v1, v0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->colorPalette:[I

    .line 98
    new-instance v1, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    move-object v4, v1

    move-object/from16 v6, p7

    move/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;III)V

    iput-object v1, v0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    return-void
.end method


# virtual methods
.method public final getItem(I)I
    .locals 1

    .line 128
    iget-object v0, p0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->colorPalette:[I

    aget p1, v0, p1

    return p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->colorPalette:[I

    array-length v0, v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 152
    iget-object v0, p0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->colorPalette:[I

    aget p1, v0, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final indexOf(I)I
    .locals 3

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object v1, p0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->colorPalette:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 112
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->onBindViewHolder(Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->colorPalette:[I

    aget p2, v0, p2

    .line 142
    iget-object v0, p0, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->previewLoader:Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lde/mrapp/android/preference/view/ColorPaletteItem;

    invoke-virtual {p1}, Lde/mrapp/android/preference/view/ColorPaletteItem;->getColorView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p2, p1, v1}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->load(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;
    .locals 0

    .line 135
    new-instance p2, Lde/mrapp/android/preference/view/ColorPaletteItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lde/mrapp/android/preference/view/ColorPaletteItem;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance p1, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter$ViewHolder;-><init>(Lde/mrapp/android/preference/view/ColorPaletteItem;)V

    return-object p1
.end method
