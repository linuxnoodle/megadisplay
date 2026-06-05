.class public Lde/mrapp/android/preference/CheckBoxPreference;
.super Lde/mrapp/android/preference/AbstractCompoundButtonPreference;
.source "CheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    sget v0, Lde/mrapp/android/preference/R$attr;->checkBoxPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-direct {p0}, Lde/mrapp/android/preference/CheckBoxPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    invoke-direct {p0}, Lde/mrapp/android/preference/CheckBoxPreference;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 38
    sget v0, Lde/mrapp/android/preference/R$layout;->check_box_widget:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    return-void
.end method
