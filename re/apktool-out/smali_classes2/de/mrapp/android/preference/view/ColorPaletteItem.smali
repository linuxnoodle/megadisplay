.class public Lde/mrapp/android/preference/view/ColorPaletteItem;
.super Landroid/widget/FrameLayout;
.source "ColorPaletteItem.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private checked:Z

.field private colorView:Landroid/widget/ImageView;

.field private selectionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/view/ColorPaletteItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/view/ColorPaletteItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    invoke-direct {p0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 146
    invoke-direct {p0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->initialize()V

    return-void
.end method

.method private adaptSelectionView()V
    .locals 2

    .line 70
    iget-object v0, p0, Lde/mrapp/android/preference/view/ColorPaletteItem;->selectionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-boolean v1, p0, Lde/mrapp/android/preference/view/ColorPaletteItem;->checked:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    sget v1, Lde/mrapp/android/preference/R$layout;->color_palette_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    sget v0, Lde/mrapp/android/preference/R$id;->color_view:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde/mrapp/android/preference/view/ColorPaletteItem;->colorView:Landroid/widget/ImageView;

    .line 62
    sget v0, Lde/mrapp/android/preference/R$id;->selection_view:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/preference/view/ColorPaletteItem;->selectionView:Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->adaptSelectionView()V

    return-void
.end method


# virtual methods
.method public final getColorView()Landroid/widget/ImageView;
    .locals 1

    .line 157
    iget-object v0, p0, Lde/mrapp/android/preference/view/ColorPaletteItem;->colorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lde/mrapp/android/preference/view/ColorPaletteItem;->checked:Z

    return v0
.end method

.method public final setChecked(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lde/mrapp/android/preference/view/ColorPaletteItem;->checked:Z

    .line 163
    invoke-direct {p0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->adaptSelectionView()V

    return-void
.end method

.method public final toggle()V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/view/ColorPaletteItem;->setChecked(Z)V

    return-void
.end method
