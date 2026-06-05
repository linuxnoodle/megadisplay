.class public Lde/mrapp/android/preference/AbstractCompoundButtonPreference;
.super Lde/mrapp/android/preference/AbstractTwoStatePreference;
.source "AbstractCompoundButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/preference/AbstractTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adaptCompoundButton(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 48
    sget v0, Lde/mrapp/android/preference/R$id;->compound_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 50
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 54
    invoke-direct {p0}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->createCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method private createCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 66
    new-instance v0, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;-><init>(Lde/mrapp/android/preference/AbstractCompoundButtonPreference;)V

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 161
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->adaptCompoundButton(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected onCheckedChanged(Z)V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->notifyChanged()V

    return-void
.end method
