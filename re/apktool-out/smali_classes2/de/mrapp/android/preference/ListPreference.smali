.class public Lde/mrapp/android/preference/ListPreference;
.super Lde/mrapp/android/preference/AbstractListPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private selectedIndex:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 169
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    invoke-direct {p0}, Lde/mrapp/android/preference/ListPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 215
    invoke-direct {p0}, Lde/mrapp/android/preference/ListPreference;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lde/mrapp/android/preference/ListPreference;I)I
    .locals 0

    .line 44
    iput p1, p0, Lde/mrapp/android/preference/ListPreference;->selectedIndex:I

    return p1
.end method

.method private createListItemListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 135
    new-instance v0, Lde/mrapp/android/preference/ListPreference$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/preference/ListPreference$1;-><init>(Lde/mrapp/android/preference/ListPreference;)V

    return-object v0
.end method

.method private initialize()V
    .locals 1

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lde/mrapp/android/preference/ListPreference;->selectedIndex:I

    const/high16 v0, 0x1040000

    .line 123
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ListPreference;->setNegativeButtonText(I)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ListPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getEntry()Ljava/lang/CharSequence;
    .locals 2

    .line 260
    iget-object v0, p0, Lde/mrapp/android/preference/ListPreference;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ListPreference;->indexOf(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->isValueShownAsSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lde/mrapp/android/preference/ListPreference;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 297
    iget p1, p0, Lde/mrapp/android/preference/ListPreference;->selectedIndex:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iget p2, p0, Lde/mrapp/android/preference/ListPreference;->selectedIndex:I

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    .line 305
    iput p1, p0, Lde/mrapp/android/preference/ListPreference;->selectedIndex:I

    return-void
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 275
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 287
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V

    .line 288
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ListPreference;->indexOf(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/preference/ListPreference;->selectedIndex:I

    .line 289
    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    .line 290
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lde/mrapp/android/preference/ListPreference;->selectedIndex:I

    invoke-direct {p0}, Lde/mrapp/android/preference/ListPreference;->createListItemListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 325
    instance-of v0, p1, Lde/mrapp/android/preference/ListPreference$SavedState;

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Lde/mrapp/android/preference/ListPreference$SavedState;

    .line 327
    iget-object v0, p1, Lde/mrapp/android/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Lde/mrapp/android/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 311
    invoke-super {p0}, Lde/mrapp/android/preference/AbstractListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    new-instance v1, Lde/mrapp/android/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 315
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lde/mrapp/android/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v0
.end method

.method protected final onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    .line 280
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lde/mrapp/android/preference/ListPreference;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iput-object p1, p0, Lde/mrapp/android/preference/ListPreference;->value:Ljava/lang/String;

    .line 236
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 237
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setValueIndex(I)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lde/mrapp/android/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
