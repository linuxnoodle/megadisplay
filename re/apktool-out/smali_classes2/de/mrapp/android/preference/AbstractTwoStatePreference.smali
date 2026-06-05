.class public abstract Lde/mrapp/android/preference/AbstractTwoStatePreference;
.super Lde/mrapp/android/preference/Preference;
.source "AbstractTwoStatePreference.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field private checked:Z

.field private disableDependentsState:Z

.field private summaryOff:Ljava/lang/CharSequence;

.field private summaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 248
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 249
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 276
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainDisableDependantsState(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->two_state_preference_default_disable_dependents_state:I

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 200
    sget v1, Lde/mrapp/android/preference/R$styleable;->AbstractTwoStatePreference_android_disableDependentsState:I

    .line 201
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 200
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setDisableDependentsState(Z)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractTwoStatePreference:[I

    .line 152
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 156
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->obtainSummaryOn(Landroid/content/res/TypedArray;)V

    .line 157
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->obtainSummaryOff(Landroid/content/res/TypedArray;)V

    .line 158
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->obtainDisableDependantsState(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    throw p2
.end method

.method private obtainSummaryOff(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 185
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractTwoStatePreference_android_summaryOff:I

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainSummaryOn(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 173
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractTwoStatePreference_android_summaryOn:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getDisableDependentsState()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->disableDependentsState:Z

    return v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 428
    :cond_1
    invoke-super {p0}, Lde/mrapp/android/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .line 331
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->summaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .line 297
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->summaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->checked:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 456
    invoke-super {p0, p1}, Lde/mrapp/android/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 457
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method protected onCheckedChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 445
    invoke-super {p0}, Lde/mrapp/android/preference/Preference;->onClick()V

    .line 446
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 448
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 477
    instance-of v0, p1, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;

    if-eqz v0, :cond_0

    .line 478
    check-cast p1, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;

    .line 479
    iget-boolean v0, p1, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setChecked(Z)V

    .line 480
    invoke-virtual {p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 463
    invoke-super {p0}, Lde/mrapp/android/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 465
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    new-instance v1, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 467
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;->checked:Z

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 439
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getPersistedBoolean(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 438
    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final performClick()V
    .locals 0

    .line 411
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->onClick()V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 388
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->shouldDisableDependents()Z

    move-result v0

    .line 390
    iget-boolean v1, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->checked:Z

    if-eq v1, p1, :cond_1

    .line 391
    iput-boolean p1, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->checked:Z

    .line 392
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->persistBoolean(Z)Z

    .line 393
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 396
    invoke-virtual {p0, v1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->notifyDependencyChange(Z)V

    .line 399
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->notifyChanged()V

    .line 400
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->onCheckedChanged(Z)V

    :cond_1
    return-void
.end method

.method public final setDisableDependentsState(Z)V
    .locals 0

    .line 377
    iput-boolean p1, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->disableDependentsState:Z

    .line 378
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->notifyChanged()V

    return-void
.end method

.method public final setSummaryOff(I)V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->notifyChanged()V

    return-void
.end method

.method public final setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->summaryOff:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setSummaryOn(I)V
    .locals 1

    .line 320
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference;->summaryOn:Ljava/lang/CharSequence;

    .line 309
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->notifyChanged()V

    return-void
.end method

.method public final shouldDisableDependents()Z
    .locals 1

    .line 416
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->getDisableDependentsState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    goto :goto_1

    .line 417
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lde/mrapp/android/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final toggle()V
    .locals 1

    .line 406
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/AbstractTwoStatePreference;->setChecked(Z)V

    return-void
.end method
