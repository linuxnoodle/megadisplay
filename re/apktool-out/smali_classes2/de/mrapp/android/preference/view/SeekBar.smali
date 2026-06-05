.class public Lde/mrapp/android/preference/view/SeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SeekBar.java"


# instance fields
.field private seekBarColor:I

.field private thumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0}, Lde/mrapp/android/preference/view/SeekBar;->applyTheme()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0}, Lde/mrapp/android/preference/view/SeekBar;->applyTheme()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-direct {p0}, Lde/mrapp/android/preference/view/SeekBar;->applyTheme()V

    return-void
.end method

.method private applyTheme()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lde/mrapp/android/preference/view/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$attr;->colorAccent:I

    invoke-static {v0, v1}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/view/SeekBar;->setSeekBarColor(I)V

    return-void
.end method


# virtual methods
.method public final getSeekBarColor()I
    .locals 1

    .line 114
    iget v0, p0, Lde/mrapp/android/preference/view/SeekBar;->seekBarColor:I

    return v0
.end method

.method public final getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 137
    iget-object v0, p0, Lde/mrapp/android/preference/view/SeekBar;->thumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final setSeekBarColor(I)V
    .locals 2

    .line 124
    iput p1, p0, Lde/mrapp/android/preference/view/SeekBar;->seekBarColor:I

    .line 125
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 126
    invoke-virtual {p0}, Lde/mrapp/android/preference/view/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    invoke-virtual {p0}, Lde/mrapp/android/preference/view/SeekBar;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iput-object p1, p0, Lde/mrapp/android/preference/view/SeekBar;->thumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method
