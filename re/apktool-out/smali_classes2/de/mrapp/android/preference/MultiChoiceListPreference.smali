.class public Lde/mrapp/android/preference/MultiChoiceListPreference;
.super Lde/mrapp/android/preference/AbstractListPreference;
.source "MultiChoiceListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;
    }
.end annotation


# instance fields
.field private selectedIndices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 251
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 271
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 272
    invoke-direct {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 299
    invoke-direct {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/preference/MultiChoiceListPreference;)Ljava/util/Set;
    .locals 0

    .line 53
    iget-object p0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->selectedIndices:Ljava/util/Set;

    return-object p0
.end method

.method private createListItemListener()Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .locals 1

    .line 213
    new-instance v0, Lde/mrapp/android/preference/MultiChoiceListPreference$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/preference/MultiChoiceListPreference$1;-><init>(Lde/mrapp/android/preference/MultiChoiceListPreference;)V

    return-object v0
.end method

.method private getPersistedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private indicesOf(Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-virtual {p0, v1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->indexOf(Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initialize()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->selectedIndices:Ljava/util/Set;

    const/high16 v0, 0x1040000

    .line 136
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->setNegativeButtonText(I)V

    const v0, 0x104000a

    .line 137
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->setPositiveButtonText(I)V

    return-void
.end method

.method private persistSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getPersistedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final addAllValues(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 377
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The values may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 380
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 381
    iget-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->persistSet(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->notifyChanged()V

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 387
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->setValues(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final addValue(Ljava/lang/String;)V
    .locals 2

    .line 334
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The value may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 338
    iget-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->persistSet(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 339
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->notifyChanged()V

    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 344
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->setValues(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getSelectedEntries()[Ljava/lang/CharSequence;
    .locals 5

    .line 418
    iget-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    invoke-direct {p0, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->indicesOf(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 421
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 426
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v3, v4, v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 438
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->isValueShownAsSummary()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getSelectedEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    array-length v1, v0

    if-lez v1, :cond_2

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 444
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    .line 446
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 455
    :cond_2
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 457
    :cond_3
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 503
    iget-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->selectedIndices:Ljava/util/Set;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 504
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 506
    iget-object p2, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->selectedIndices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 507
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 511
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->setValues(Ljava/util/Set;)V

    :cond_1
    const/4 p1, 0x0

    .line 515
    iput-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->selectedIndices:Ljava/util/Set;

    return-void
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3

    .line 463
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 466
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 468
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 469
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 487
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V

    .line 488
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    invoke-direct {p0, v1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->indicesOf(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->selectedIndices:Ljava/util/Set;

    .line 489
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    .line 491
    iget-object v1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->selectedIndices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    .line 492
    aput-boolean v3, v0, v2

    goto :goto_0

    .line 495
    :cond_0
    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    .line 496
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->createListItemListener()Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 535
    instance-of v0, p1, Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;

    if-eqz v0, :cond_0

    .line 536
    check-cast p1, Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;

    .line 537
    iget-object v0, p1, Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;->values:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->setValues(Ljava/util/Set;)V

    .line 538
    invoke-virtual {p1}, Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 540
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 521
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 523
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    new-instance v1, Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 525
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lde/mrapp/android/preference/MultiChoiceListPreference$SavedState;->values:Ljava/util/Set;

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 481
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getValues()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->getPersistedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Set;

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method public final removeAllValues(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 400
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The values may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 404
    iget-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->persistSet(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final removeValue(Ljava/lang/String;)V
    .locals 2

    .line 357
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The value may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    invoke-direct {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->persistSet(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iput-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference;->values:Ljava/util/Set;

    .line 322
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->persistSet(Ljava/util/Set;)Z

    .line 323
    invoke-virtual {p0}, Lde/mrapp/android/preference/MultiChoiceListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
