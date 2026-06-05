.class public Lde/mrapp/android/preference/SwitchPreference;
.super Lde/mrapp/android/preference/AbstractCompoundButtonPreference;
.source "SwitchPreference.java"


# instance fields
.field private switchTextOff:Ljava/lang/CharSequence;

.field private switchTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 199
    sget v0, Lde/mrapp/android/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 221
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/SwitchPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 249
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/SwitchPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adaptSwitch(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 140
    sget v0, Lde/mrapp/android/preference/R$id;->compound_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 142
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_2

    .line 143
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 144
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->getSwitchTextOn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->getSwitchTextOff()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->getSwitchTextOn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->getSwitchTextOff()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 146
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setShowText(Z)V

    :cond_2
    return-void
.end method

.method private createCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 159
    new-instance v0, Lde/mrapp/android/preference/SwitchPreference$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/preference/SwitchPreference$1;-><init>(Lde/mrapp/android/preference/SwitchPreference;)V

    return-object v0
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 1

    .line 71
    sget v0, Lde/mrapp/android/preference/R$layout;->switch_widget:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/SwitchPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->SwitchWidgetPreference:[I

    .line 94
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SwitchPreference;->obtainSwitchTextOn(Landroid/content/res/TypedArray;)V

    .line 99
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SwitchPreference;->obtainSwitchTextOff(Landroid/content/res/TypedArray;)V
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

.method private obtainSwitchTextOff(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 127
    sget v0, Lde/mrapp/android/preference/R$styleable;->SwitchWidgetPreference_android_switchTextOff:I

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainSwitchTextOn(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 114
    sget v0, Lde/mrapp/android/preference/R$styleable;->SwitchWidgetPreference_android_switchTextOn:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .line 297
    iget-object v0, p0, Lde/mrapp/android/preference/SwitchPreference;->switchTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .line 260
    iget-object v0, p0, Lde/mrapp/android/preference/SwitchPreference;->switchTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 330
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/SwitchPreference;->adaptSwitch(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public final setSwitchTextOff(I)V
    .locals 1

    .line 323
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lde/mrapp/android/preference/SwitchPreference;->switchTextOff:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method public final setSwitchTextOn(I)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lde/mrapp/android/preference/SwitchPreference;->switchTextOn:Ljava/lang/CharSequence;

    .line 274
    invoke-virtual {p0}, Lde/mrapp/android/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method
