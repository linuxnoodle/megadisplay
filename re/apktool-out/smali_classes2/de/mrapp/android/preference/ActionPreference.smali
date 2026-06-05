.class public Lde/mrapp/android/preference/ActionPreference;
.super Lde/mrapp/android/preference/Preference;
.source "ActionPreference.java"


# instance fields
.field private textColor:Landroid/content/res/ColorStateList;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/ActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 154
    sget v0, Lde/mrapp/android/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/ActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3, v0}, Lde/mrapp/android/preference/ActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    invoke-direct {p0, p2, p3, v0}, Lde/mrapp/android/preference/ActionPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 202
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/ActionPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private adaptTextColor()V
    .locals 2

    .line 126
    iget-object v0, p0, Lde/mrapp/android/preference/ActionPreference;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lde/mrapp/android/preference/ActionPreference;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/ActionPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    .line 71
    sget p1, Lde/mrapp/android/preference/R$layout;->action_preference:I

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ActionPreference;->setLayoutResource(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lde/mrapp/android/preference/ActionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->ActionPreference:[I

    .line 93
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ActionPreference;->obtainTextColor(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    throw p2
.end method

.method private obtainTextColor(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 111
    sget v0, Lde/mrapp/android/preference/R$styleable;->ActionPreference_android_textColor:I

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lde/mrapp/android/preference/ActionPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lde/mrapp/android/preference/R$color;->action_preference_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ActionPreference;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public final getTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 213
    iget-object v0, p0, Lde/mrapp/android/preference/ActionPreference;->textColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Lde/mrapp/android/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 245
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lde/mrapp/android/preference/ActionPreference;->textView:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 247
    invoke-direct {p0}, Lde/mrapp/android/preference/ActionPreference;->adaptTextColor()V

    return-void
.end method

.method public final performClick()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Lde/mrapp/android/preference/ActionPreference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 223
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ActionPreference;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 227
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color state list may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lde/mrapp/android/preference/ActionPreference;->textColor:Landroid/content/res/ColorStateList;

    .line 229
    invoke-direct {p0}, Lde/mrapp/android/preference/ActionPreference;->adaptTextColor()V

    return-void
.end method
