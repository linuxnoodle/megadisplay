.class public Lde/mrapp/android/preference/view/NumberPicker;
.super Landroid/widget/NumberPicker;
.source "NumberPicker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "de.mrapp.android.preference.view.NumberPicker"


# instance fields
.field private seekBarColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0}, Lde/mrapp/android/preference/view/NumberPicker;->applyTheme()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0}, Lde/mrapp/android/preference/view/NumberPicker;->applyTheme()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-direct {p0}, Lde/mrapp/android/preference/view/NumberPicker;->applyTheme()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 130
    invoke-direct {p0}, Lde/mrapp/android/preference/view/NumberPicker;->applyTheme()V

    return-void
.end method

.method private applyTheme()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lde/mrapp/android/preference/view/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$attr;->colorAccent:I

    invoke-static {v0, v1}, Lde/mrapp/android/util/ThemeUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/view/NumberPicker;->setDividerColor(I)V

    return-void
.end method


# virtual methods
.method public final getDividerColor()I
    .locals 1

    .line 139
    iget v0, p0, Lde/mrapp/android/preference/view/NumberPicker;->seekBarColor:I

    return v0
.end method

.method public final setDividerColor(I)V
    .locals 2

    .line 149
    iput p1, p0, Lde/mrapp/android/preference/view/NumberPicker;->seekBarColor:I

    .line 152
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSelectionDivider"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 156
    :goto_0
    sget-object v0, Lde/mrapp/android/preference/view/NumberPicker;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set divider color"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
