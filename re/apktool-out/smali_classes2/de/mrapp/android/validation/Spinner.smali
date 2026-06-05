.class public Lde/mrapp/android/validation/Spinner;
.super Lde/mrapp/android/validation/AbstractValidateableView;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/validation/Spinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/AbstractValidateableView<",
        "Landroid/widget/Spinner;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field hint:Ljava/lang/CharSequence;

.field hintColor:Landroid/content/res/ColorStateList;

.field itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 328
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/Spinner;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 342
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 343
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/Spinner;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 363
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 364
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/Spinner;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 388
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 389
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/Spinner;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 277
    new-instance v0, Lde/mrapp/android/validation/Spinner$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/Spinner$1;-><init>(Lde/mrapp/android/validation/Spinner;)V

    return-object v0
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/Spinner;->obtainStyledAttributes(Landroid/util/AttributeSet;)V

    .line 161
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    invoke-direct {p0}, Lde/mrapp/android/validation/Spinner;->createItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private obtainHint(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 192
    sget v0, Lde/mrapp/android/validation/R$styleable;->Spinner_android_hint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/Spinner;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainHintColor(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 204
    sget v0, Lde/mrapp/android/validation/R$styleable;->Spinner_android_textColorHint:I

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010038

    filled-new-array {v0}, [I

    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 213
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/Spinner;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private obtainSpinnerStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 5

    const/4 v0, 0x0

    .line 225
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 228
    sget v2, Lde/mrapp/android/validation/R$styleable;->Spinner_android_dropDownHorizontalOffset:I

    if-ne v1, v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getDropDownHorizontalOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 230
    invoke-virtual {p0, v1}, Lde/mrapp/android/validation/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_1

    .line 233
    :cond_0
    sget v2, Lde/mrapp/android/validation/R$styleable;->Spinner_android_dropDownVerticalOffset:I

    if-ne v1, v2, :cond_1

    .line 236
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getDropDownVerticalOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 235
    invoke-virtual {p0, v1}, Lde/mrapp/android/validation/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_1

    .line 238
    :cond_1
    sget v2, Lde/mrapp/android/validation/R$styleable;->Spinner_dropDownWidth:I

    if-ne v1, v2, :cond_2

    .line 240
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getDropDownWidth()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lde/mrapp/android/validation/Spinner;->setDropDownWidth(I)V

    goto :goto_1

    .line 242
    :cond_2
    sget v2, Lde/mrapp/android/validation/R$styleable;->Spinner_popupBackground:I

    if-ne v1, v2, :cond_3

    .line 244
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {p0, v1}, Lde/mrapp/android/validation/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 250
    :cond_3
    sget v2, Lde/mrapp/android/validation/R$styleable;->Spinner_prompt:I

    if-ne v1, v2, :cond_4

    .line 251
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 254
    invoke-virtual {p0, v1}, Lde/mrapp/android/validation/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 256
    :cond_4
    sget v2, Lde/mrapp/android/validation/R$styleable;->Spinner_android_entries:I

    if-ne v1, v2, :cond_5

    .line 257
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 260
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 261
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lde/mrapp/android/validation/R$layout;->spinner_item:I

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 262
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 263
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/validation/R$styleable;->Spinner:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 175
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/Spinner;->obtainHint(Landroid/content/res/TypedArray;)V

    .line 176
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/Spinner;->obtainHintColor(Landroid/content/res/TypedArray;)V

    .line 177
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/Spinner;->obtainSpinnerStyledAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    throw v0
.end method


# virtual methods
.method protected final createParentView()Landroid/view/ViewGroup;
    .locals 4

    .line 308
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 310
    sget v2, Lde/mrapp/android/validation/R$layout;->spinner_arrow_image_view:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object v0
.end method

.method protected bridge synthetic createView()Landroid/view/View;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->createView()Landroid/widget/Spinner;

    move-result-object v0

    return-object v0
.end method

.method protected final createView()Landroid/widget/Spinner;
    .locals 2

    .line 303
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 779
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    return v0
.end method

.method public final getDropDownHorizontalOffset()I
    .locals 1

    .line 544
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public final getDropDownVerticalOffset()I
    .locals 1

    .line 521
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public final getDropDownWidth()I
    .locals 1

    .line 573
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public final getEmptyView()Landroid/view/View;
    .locals 1

    .line 840
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstVisiblePosition()I
    .locals 1

    .line 802
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public final getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 399
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner;->hint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 436
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner;->hintColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemIdAtPosition(I)J
    .locals 2

    .line 855
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->getItemIdAtPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastVisiblePosition()I
    .locals 1

    .line 811
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 690
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 739
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public final getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 498
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getPositionForView(Landroid/view/View;)I
    .locals 1

    .line 793
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->getPositionForView(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .line 651
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedItemId()J
    .locals 2

    .line 756
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSelectedItemPosition()I
    .locals 1

    .line 748
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 1

    .line 763
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getTextGravity()I
    .locals 1

    .line 595
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getGravity()I

    move-result v0

    return v0
.end method

.method protected final getValue()Ljava/lang/Object;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 876
    instance-of v0, p1, Lde/mrapp/android/validation/Spinner$SavedState;

    if-eqz v0, :cond_0

    .line 877
    check-cast p1, Lde/mrapp/android/validation/Spinner$SavedState;

    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/Spinner;->validateOnValueChange(Z)V

    .line 879
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-static {p1}, Lde/mrapp/android/validation/Spinner$SavedState;->access$100(Lde/mrapp/android/validation/Spinner$SavedState;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 880
    invoke-static {p1}, Lde/mrapp/android/validation/Spinner$SavedState;->access$200(Lde/mrapp/android/validation/Spinner$SavedState;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/Spinner;->setHint(Ljava/lang/CharSequence;)V

    .line 881
    invoke-static {p1}, Lde/mrapp/android/validation/Spinner$SavedState;->access$300(Lde/mrapp/android/validation/Spinner$SavedState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/Spinner;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 882
    invoke-static {p1}, Lde/mrapp/android/validation/Spinner$SavedState;->access$400(Lde/mrapp/android/validation/Spinner$SavedState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/Spinner;->setSelection(I)V

    .line 883
    invoke-virtual {p1}, Lde/mrapp/android/validation/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 885
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 860
    invoke-super {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    new-instance v1, Lde/mrapp/android/validation/Spinner$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/validation/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 864
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v1, v0}, Lde/mrapp/android/validation/Spinner$SavedState;->access$102(Lde/mrapp/android/validation/Spinner$SavedState;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 865
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lde/mrapp/android/validation/Spinner$SavedState;->access$202(Lde/mrapp/android/validation/Spinner$SavedState;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 866
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v1, v0}, Lde/mrapp/android/validation/Spinner$SavedState;->access$302(Lde/mrapp/android/validation/Spinner$SavedState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 867
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v1, v0}, Lde/mrapp/android/validation/Spinner$SavedState;->access$402(Lde/mrapp/android/validation/Spinner$SavedState;I)I

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .line 707
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public final pointToPosition(II)I
    .locals 1

    .line 672
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Spinner;->pointToPosition(II)I

    move-result p1

    return p1
.end method

.method public final setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 8

    .line 613
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v7, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;

    .line 614
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lde/mrapp/android/validation/R$layout;->spinner_hint_item:I

    .line 615
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;-><init>(Landroid/content/Context;Landroid/widget/SpinnerAdapter;ILjava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    .line 613
    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public final setDropDownHorizontalOffset(I)V
    .locals 1

    .line 533
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    return-void
.end method

.method public final setDropDownVerticalOffset(I)V
    .locals 1

    .line 510
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    return-void
.end method

.method public final setDropDownWidth(I)V
    .locals 1

    .line 560
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 1

    .line 829
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public final setHint(I)V
    .locals 1

    .line 426
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/Spinner;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lde/mrapp/android/validation/Spinner;->hint:Ljava/lang/CharSequence;

    .line 412
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;

    .line 414
    invoke-virtual {p1}, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 0

    .line 446
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/Spinner;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lde/mrapp/android/validation/Spinner;->hintColor:Landroid/content/res/ColorStateList;

    .line 458
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;

    .line 460
    invoke-virtual {p1}, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public final setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 682
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .line 717
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public final setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lde/mrapp/android/validation/Spinner;->itemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public final setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 475
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPopupBackgroundResource(I)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    return-void
.end method

.method public final setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    .line 634
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPromptId(I)V
    .locals 1

    .line 644
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPromptId(I)V

    return-void
.end method

.method public final setSelection(I)V
    .locals 1

    .line 822
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public final setSelection(IZ)V
    .locals 1

    .line 658
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method public final setTextGravity(I)V
    .locals 1

    .line 584
    invoke-virtual {p0}, Lde/mrapp/android/validation/Spinner;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setGravity(I)V

    return-void
.end method
