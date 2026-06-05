.class public Lde/mrapp/android/preference/ColorPalettePreference;
.super Lde/mrapp/android/preference/AbstractColorPickerPreference;
.source "ColorPalettePreference.java"


# instance fields
.field private adapter:Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;

.field private colorPalette:[I

.field private dialogPreviewBackground:Landroid/graphics/drawable/Drawable;

.field private dialogPreviewBorderColor:I

.field private dialogPreviewBorderWidth:I

.field private dialogPreviewShape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

.field private dialogPreviewSize:I

.field private numberOfColumns:I

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/ColorPalettePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 324
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/ColorPalettePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/AbstractColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->selectedIndex:I

    const/4 p1, 0x0

    .line 345
    invoke-direct {p0, p2, p3, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 371
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/AbstractColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->selectedIndex:I

    .line 372
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/ColorPalettePreference;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$002(Lde/mrapp/android/preference/ColorPalettePreference;I)I
    .locals 0

    .line 51
    iput p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->selectedIndex:I

    return p1
.end method

.method private createItemSelectedListener()Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;
    .locals 1

    .line 283
    new-instance v0, Lde/mrapp/android/preference/ColorPalettePreference$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/preference/ColorPalettePreference$1;-><init>(Lde/mrapp/android/preference/ColorPalettePreference;)V

    return-object v0
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    new-array v0, v0, [I

    iput-object v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->colorPalette:[I

    const/high16 v0, 0x1040000

    .line 118
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ColorPalettePreference;->setNegativeButtonText(I)V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ColorPalettePreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainColorPalette(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 166
    sget v0, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_colorPalette:I

    const/4 v1, -0x1

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setColorPalette([I)V

    :cond_0
    return-void
.end method

.method private obtainDialogPreviewBackground(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 247
    sget v0, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_dialogPreviewBackground:I

    const/4 v1, -0x1

    .line 248
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ColorPalettePreference;->setPreviewBackgroundColor(I)V

    goto :goto_0

    .line 253
    :cond_0
    sget v0, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_dialogPreviewBackground:I

    sget v1, Lde/mrapp/android/preference/R$drawable;->color_picker_default_preview_background:I

    .line 254
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 256
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setDialogPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private obtainDialogPreviewBorderColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 231
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$color;->color_palette_preference_default_dialog_preview_border_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 233
    sget v1, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_dialogPreviewBorderColor:I

    .line 234
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 233
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setDialogPreviewBorderColor(I)V

    return-void
.end method

.method private obtainDialogPreviewBorderWidth(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$dimen;->color_palette_preference_default_dialog_preview_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 217
    sget v1, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_dialogPreviewBorderWidth:I

    .line 218
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 217
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setDialogPreviewBorderWidth(I)V

    return-void
.end method

.method private obtainDialogPreviewShape(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->color_palette_preference_default_dialog_preview_shape:I

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 202
    sget v1, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_dialogPreviewShape:I

    .line 203
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 202
    invoke-static {p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->fromValue(I)Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setDialogPreviewShape(Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;)V

    return-void
.end method

.method private obtainDialogPreviewSize(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$dimen;->color_palette_preference_default_dialog_preview_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    sget v1, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_dialogPreviewSize:I

    .line 187
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 186
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setDialogPreviewSize(I)V

    return-void
.end method

.method private obtainNumberOfColumns(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$integer;->color_palette_preference_default_number_of_columns:I

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 271
    sget v1, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference_android_numColumns:I

    .line 272
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 271
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setNumberOfColumns(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->ColorPalettePreference:[I

    .line 142
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainColorPalette(Landroid/content/res/TypedArray;)V

    .line 147
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainDialogPreviewSize(Landroid/content/res/TypedArray;)V

    .line 148
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainDialogPreviewShape(Landroid/content/res/TypedArray;)V

    .line 149
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainDialogPreviewBorderWidth(Landroid/content/res/TypedArray;)V

    .line 150
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainDialogPreviewBorderColor(Landroid/content/res/TypedArray;)V

    .line 151
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainDialogPreviewBackground(Landroid/content/res/TypedArray;)V

    .line 152
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->obtainNumberOfColumns(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    throw p2
.end method


# virtual methods
.method public final getColorPalette()[I
    .locals 1

    .line 381
    iget-object v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->colorPalette:[I

    return-object v0
.end method

.method public final getDialogPreviewBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 500
    iget-object v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDialogPreviewBorderColor()I
    .locals 1

    .line 480
    iget v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewBorderColor:I

    return v0
.end method

.method public final getDialogPreviewBorderWidth()I
    .locals 1

    .line 458
    iget v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewBorderWidth:I

    return v0
.end method

.method public final getDialogPreviewShape()Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;
    .locals 1

    .line 436
    iget-object v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewShape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-object v0
.end method

.method public final getDialogPreviewSize()I
    .locals 1

    .line 413
    iget v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewSize:I

    return v0
.end method

.method public final getNumberOfColumns()I
    .locals 1

    .line 543
    iget v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->numberOfColumns:I

    return v0
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 581
    iget-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->adapter:Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;

    iget p2, p0, Lde/mrapp/android/preference/ColorPalettePreference;->selectedIndex:I

    invoke-virtual {p1, p2}, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->getItem(I)I

    move-result p1

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lde/mrapp/android/preference/ColorPalettePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 584
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setColor(I)V

    :cond_0
    const/4 p1, 0x0

    .line 588
    iput-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->adapter:Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;

    return-void
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 564
    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    .line 566
    new-instance v8, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getColorPalette()[I

    move-result-object v2

    .line 567
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialogPreviewSize()I

    move-result v3

    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialogPreviewShape()Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    move-result-object v4

    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialogPreviewBorderWidth()I

    move-result v5

    .line 568
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialogPreviewBorderColor()I

    move-result v6

    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialogPreviewBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;-><init>(Landroid/content/Context;[IILde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;IILandroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lde/mrapp/android/preference/ColorPalettePreference;->adapter:Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;

    .line 569
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getColor()I

    move-result v0

    invoke-virtual {v8, v0}, Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;->indexOf(I)I

    move-result v0

    iput v0, p0, Lde/mrapp/android/preference/ColorPalettePreference;->selectedIndex:I

    .line 570
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 571
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getNumberOfColumns()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 572
    iget-object v1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->adapter:Lde/mrapp/android/preference/adapter/ColorPaletteAdapter;

    iget v2, p0, Lde/mrapp/android/preference/ColorPalettePreference;->selectedIndex:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    .line 573
    invoke-direct {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->createItemSelectedListener()Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-void
.end method

.method public final setColorPalette(I)V
    .locals 1

    .line 403
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setColorPalette([I)V

    return-void
.end method

.method public final setColorPalette([I)V
    .locals 2

    .line 391
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color palette may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iput-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->colorPalette:[I

    return-void
.end method

.method public final setDialogPreviewBackground(I)V
    .locals 1

    .line 522
    invoke-virtual {p0}, Lde/mrapp/android/preference/ColorPalettePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->setDialogPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setDialogPreviewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDialogPreviewBackgroundColor(I)V
    .locals 1

    .line 533
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/ColorPalettePreference;->setDialogPreviewBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setDialogPreviewBorderColor(I)V
    .locals 0

    .line 490
    iput p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewBorderColor:I

    return-void
.end method

.method public final setDialogPreviewBorderWidth(I)V
    .locals 3

    .line 469
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The border width must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 470
    iput p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewBorderWidth:I

    return-void
.end method

.method public final setDialogPreviewShape(Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;)V
    .locals 2

    .line 447
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The preview shape may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iput-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewShape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-void
.end method

.method public final setDialogPreviewSize(I)V
    .locals 3

    .line 424
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The preview size must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 425
    iput p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->dialogPreviewSize:I

    return-void
.end method

.method public final setNumberOfColumns(I)V
    .locals 3

    .line 555
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The number of columns must be at least 1"

    .line 556
    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 557
    iput p1, p0, Lde/mrapp/android/preference/ColorPalettePreference;->numberOfColumns:I

    return-void
.end method
