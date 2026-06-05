.class public abstract Lde/mrapp/android/preference/AbstractListPreference;
.super Lde/mrapp/android/preference/DialogPreference;
.source "AbstractListPreference.java"


# instance fields
.field private dialogItemColor:Landroid/content/res/ColorStateList;

.field private dialogItemTypeface:Landroid/graphics/Typeface;

.field private entries:[Ljava/lang/CharSequence;

.field private entryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/AbstractListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/AbstractListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 262
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/AbstractListPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 288
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 289
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/AbstractListPreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lde/mrapp/android/preference/AbstractListPreference;->entries:[Ljava/lang/CharSequence;

    .line 85
    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lde/mrapp/android/preference/AbstractListPreference;->entryValues:[Ljava/lang/CharSequence;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractListPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainDialogItemColor(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 129
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractListPreference_dialogItemColor:I

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->setDialogItemColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private obtainDialogScrollableArea(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 178
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogScrollableAreaTop:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 183
    invoke-static {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->fromIndex(I)Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v0

    .line 184
    sget v3, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogScrollableAreaBottom:I

    .line 185
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 188
    invoke-static {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->fromIndex(I)Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v2

    :cond_0
    move-object p1, v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    .line 192
    :goto_1
    invoke-virtual {p0, v2, p1}, Lde/mrapp/android/preference/AbstractListPreference;->setDialogScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    return-void
.end method

.method private obtainEntries(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 145
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractListPreference_android_entries:I

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private obtainEntryValues(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 162
    sget v0, Lde/mrapp/android/preference/R$styleable;->AbstractListPreference_android_entryValues:I

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->AbstractListPreference:[I

    .line 108
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 112
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->obtainDialogItemColor(Landroid/content/res/TypedArray;)V

    .line 113
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->obtainEntries(Landroid/content/res/TypedArray;)V

    .line 114
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->obtainEntryValues(Landroid/content/res/TypedArray;)V

    .line 115
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->obtainDialogScrollableArea(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    throw p2
.end method


# virtual methods
.method public final getDialogItemColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 300
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractListPreference;->dialogItemColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getDialogItemTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 334
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractListPreference;->dialogItemTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 355
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractListPreference;->entries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 402
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractListPreference;->entryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final indexOf(Ljava/lang/CharSequence;)I
    .locals 2

    if-eqz p1, :cond_2

    .line 205
    iget-object v0, p0, Lde/mrapp/android/preference/AbstractListPreference;->entryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 206
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 207
    iget-object v1, p0, Lde/mrapp/android/preference/AbstractListPreference;->entryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 422
    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    .line 425
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getDialogItemColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getDialogItemColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->setItemColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    .line 429
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getDialogItemTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getDialogItemTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->setItemTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    :cond_1
    return-void
.end method

.method public final setDialogItemColor(I)V
    .locals 0

    .line 311
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->setDialogItemColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setDialogItemColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 322
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color state list may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractListPreference;->dialogItemColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final setDialogItemTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractListPreference;->dialogItemTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setEntries(I)V
    .locals 1

    .line 378
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setEntries([Ljava/lang/CharSequence;)V
    .locals 2

    .line 366
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The entries may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractListPreference;->entries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final setEntryValues(I)V
    .locals 1

    .line 415
    invoke-virtual {p0}, Lde/mrapp/android/preference/AbstractListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setEntryValues([Ljava/lang/CharSequence;)V
    .locals 2

    .line 390
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The entry values may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractListPreference;->entryValues:[Ljava/lang/CharSequence;

    return-void
.end method
