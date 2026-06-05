.class public Lde/mrapp/android/preference/Preference;
.super Landroidx/preference/Preference;
.source "Preference.java"


# instance fields
.field private tintList:Landroid/content/res/ColorStateList;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 166
    sget v0, Lde/mrapp/android/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 186
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/Preference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 211
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/Preference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adaptIconTint()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lde/mrapp/android/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lde/mrapp/android/preference/Preference;->tintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 140
    iget-object v1, p0, Lde/mrapp/android/preference/Preference;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lde/mrapp/android/preference/Preference;->tintList:Landroid/content/res/ColorStateList;

    .line 71
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/preference/Preference;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/Preference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainIcon(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 113
    sget v0, Lde/mrapp/android/preference/R$styleable;->Preference_android_icon:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lde/mrapp/android/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lde/mrapp/android/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->Preference:[I

    .line 94
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/Preference;->obtainIcon(Landroid/content/res/TypedArray;)V

    .line 99
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/Preference;->obtainTint(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    throw p2
.end method

.method private obtainTint(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 129
    sget v0, Lde/mrapp/android/preference/R$styleable;->Preference_android_tint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/Preference;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 230
    iget-object v0, p0, Lde/mrapp/android/preference/Preference;->tintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 263
    iget-object v0, p0, Lde/mrapp/android/preference/Preference;->tintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public performClick()V
    .locals 0

    .line 220
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 282
    invoke-direct {p0}, Lde/mrapp/android/preference/Preference;->adaptIconTint()V

    return-void
.end method

.method public final setIconTint(I)V
    .locals 0

    .line 240
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/Preference;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lde/mrapp/android/preference/Preference;->tintList:Landroid/content/res/ColorStateList;

    .line 252
    invoke-direct {p0}, Lde/mrapp/android/preference/Preference;->adaptIconTint()V

    return-void
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 274
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The icon tint mode may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lde/mrapp/android/preference/Preference;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 276
    invoke-direct {p0}, Lde/mrapp/android/preference/Preference;->adaptIconTint()V

    return-void
.end method
