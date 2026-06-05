.class public Lde/mrapp/android/dialog/decorator/ListDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;
.source "ListDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ListDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator<",
        "Lde/mrapp/android/dialog/model/ButtonBarDialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/ListDialogDecorator;"
    }
.end annotation


# static fields
.field private static final CHECKED_ITEMS_EXTRA:Ljava/lang/String; = "ListDialogDecorator::checkedItems"

.field private static final ENABLED_ITEMS_EXTRA:Ljava/lang/String; = "ListDialogDecorator::enabledItems"

.field private static final ICON_RESOURCE_IDS_EXTRA:Ljava/lang/String; = "ListDialogDecorator::iconResourceIds"

.field private static final ITEMS_EXTRA:Ljava/lang/String; = "ListDialogDecorator::items"

.field private static final ITEM_COLOR_EXTRA:Ljava/lang/String; = "ListDialogDecorator::itemColor"

.field private static final MULTI_CHOICE_ITEMS_EXTRA:Ljava/lang/String; = "ListDialogDecorator::multiChoiceItems"

.field private static final SINGLE_CHOICE_ITEMS_EXTRA:Ljava/lang/String; = "ListDialogDecorator::singleChoiceItems"


# instance fields
.field private adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper<",
            "*>;"
        }
    .end annotation
.end field

.field private iconResourceIds:[I

.field private inflatedCustomView:Z

.field private itemColor:Landroid/content/res/ColorStateList;

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemTypeface:Landroid/graphics/Typeface;

.field private items:[Ljava/lang/CharSequence;

.field private layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private listDivider:Lde/mrapp/android/dialog/view/Divider;

.field private listView:Landroidx/recyclerview/widget/RecyclerView;

.field private listViewItemEnabledListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;

.field private listViewItemSelectedListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;

.field private multiChoiceItems:[Ljava/lang/CharSequence;

.field private multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private singleChoiceItems:[Ljava/lang/CharSequence;

.field private singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/dialog/model/ButtonBarDialog;)V
    .locals 0

    .line 405
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    .line 146
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private adaptEnabledItems([Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 390
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 391
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    aget-boolean v2, p1, v0

    invoke-virtual {v1, v0, v2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemEnabled(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private adaptItemColor()V
    .locals 2

    .line 335
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 338
    instance-of v1, v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 339
    check-cast v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->setItemColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private adaptItemIconTintList()V
    .locals 2

    .line 361
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 364
    instance-of v1, v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 365
    check-cast v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private adaptItemIconTintMode()V
    .locals 2

    .line 374
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 377
    instance-of v1, v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 378
    check-cast v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private adaptItemTypeface()V
    .locals 2

    .line 348
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 351
    instance-of v1, v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 352
    check-cast v0, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;->setItemTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private attachAdapter()V
    .locals 3

    .line 230
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 231
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 232
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 233
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 234
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 235
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listViewItemSelectedListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V

    .line 237
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listViewItemEnabledListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setOnItemEnabledListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;)V

    .line 238
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->initializeSelectionListener()V

    .line 239
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemColor()V

    .line 240
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemTypeface()V

    .line 241
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemIconTintList()V

    .line 242
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemIconTintMode()V

    goto :goto_1

    .line 244
    :cond_1
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->inflatedCustomView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, v1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setView(Landroid/view/View;)V

    .line 248
    :cond_2
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_3
    :goto_1
    return-void
.end method

.method private getCheckedItems()[Z
    .locals 4

    .line 260
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 264
    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v3, v2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEnabledItems()[Z
    .locals 4

    .line 281
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 285
    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v3, v2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemEnabled(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private indexOfCheckedItem([Z)I
    .locals 2

    const/4 v0, 0x0

    .line 302
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 303
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private inflateListView(Landroid/view/ViewGroup;)V
    .locals 5

    const v0, 0x102000a

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 209
    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->isCustomViewUsed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 213
    sget v4, Lde/mrapp/android/dialog/R$layout;->material_dialog_list_view:I

    .line 214
    invoke-virtual {v1, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    .line 216
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, v1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->inflatedCustomView:Z

    goto :goto_1

    .line 219
    :cond_1
    iput-boolean v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->inflatedCustomView:Z

    .line 222
    :goto_1
    sget v0, Lde/mrapp/android/dialog/R$id;->list_divider:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 223
    instance-of v0, p1, Lde/mrapp/android/dialog/view/Divider;

    if-eqz v0, :cond_2

    move-object v3, p1

    check-cast v3, Lde/mrapp/android/dialog/view/Divider;

    :cond_2
    iput-object v3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listDivider:Lde/mrapp/android/dialog/view/Divider;

    return-void
.end method

.method private initializeSelectionListener()V
    .locals 5

    .line 316
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getChoiceMode()Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;

    move-result-object v0

    .line 318
    instance-of v1, v0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 319
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    new-instance v1, Lde/mrapp/android/dialog/listener/OnMultiChoiceClickListenerWrapper;

    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 320
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v4

    check-cast v4, Lde/mrapp/android/dialog/model/ValidateableDialog;

    invoke-direct {v1, v3, v4, v2}, Lde/mrapp/android/dialog/listener/OnMultiChoiceClickListenerWrapper;-><init>(Landroid/content/DialogInterface$OnMultiChoiceClickListener;Lde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 319
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setOnItemClickListener(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;)V

    goto :goto_0

    .line 321
    :cond_0
    instance-of v0, v0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    new-instance v1, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;

    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 323
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v4

    check-cast v4, Lde/mrapp/android/dialog/model/ValidateableDialog;

    invoke-direct {v1, v3, v4, v2}, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;-><init>(Landroid/content/DialogInterface$OnClickListener;Lde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 322
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setOnItemClickListener(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    new-instance v1, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 326
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v3

    check-cast v3, Lde/mrapp/android/dialog/model/ValidateableDialog;

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lde/mrapp/android/dialog/listener/OnItemClickListenerWrapper;-><init>(Landroid/content/DialogInterface$OnClickListener;Lde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 325
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setOnItemClickListener(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getItemColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 421
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 481
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 452
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getItemIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 469
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getItemTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 446
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getListAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    return-object v0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 410
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isItemChecked(I)Z
    .locals 4

    .line 486
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    const-string v2, "No list items are shown by the dialog"

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 488
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public final isItemEnabled(I)Z
    .locals 4

    .line 500
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    const-string v2, "No list items are shown by the dialog"

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 502
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemEnabled(I)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 64
    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 801
    new-instance p1, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p2, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p1, p2}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 803
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    .line 804
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->inflateListView(Landroid/view/ViewGroup;)V

    .line 805
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->attachAdapter()V

    .line 808
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listDivider:Lde/mrapp/android/dialog/view/Divider;

    if-eqz p1, :cond_1

    .line 809
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 810
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;

    sget-object p3, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->TOP:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    invoke-direct {p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;-><init>(Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;)V

    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listDivider:Lde/mrapp/android/dialog/view/Divider;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 814
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 819
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 758
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ITEM_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemColor(Landroid/content/res/ColorStateList;)V

    .line 764
    :cond_0
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ITEMS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 765
    sget-object v1, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ICON_RESOURCE_IDS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v0, :cond_1

    .line 768
    sget-object v2, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ENABLED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    .line 769
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    .line 770
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptEnabledItems([Z)V

    goto :goto_1

    .line 772
    :cond_1
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->CHECKED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 773
    sget-object v2, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ENABLED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    .line 774
    sget-object v3, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->SINGLE_CHOICE_ITEMS_EXTRA:Ljava/lang/String;

    .line 775
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 778
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->indexOfCheckedItem([Z)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 779
    :goto_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v1, p1, v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V

    .line 781
    invoke-direct {p0, v2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptEnabledItems([Z)V

    goto :goto_1

    .line 783
    :cond_3
    sget-object v3, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->MULTI_CHOICE_ITEMS_EXTRA:Ljava/lang/String;

    .line 784
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 787
    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p0, p1, v1, v0, v3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 789
    invoke-direct {p0, v2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptEnabledItems([Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 739
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ITEM_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getItemColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 740
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ICON_RESOURCE_IDS_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->iconResourceIds:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 742
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 743
    sget-object v1, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ITEMS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 744
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ENABLED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getEnabledItems()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 746
    sget-object v1, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->SINGLE_CHOICE_ITEMS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 747
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->CHECKED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getCheckedItems()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 748
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ENABLED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getEnabledItems()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 749
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 750
    sget-object v1, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->MULTI_CHOICE_ITEMS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 751
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->CHECKED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getCheckedItems()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 752
    sget-object v0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->ENABLED_ITEMS_EXTRA:Ljava/lang/String;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getEnabledItems()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 552
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->items:[Ljava/lang/CharSequence;

    .line 553
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->iconResourceIds:[I

    .line 554
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceItems:[Ljava/lang/CharSequence;

    .line 555
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceItems:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 556
    new-instance v1, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    .line 557
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$NoChoiceMode;

    invoke-direct {v3}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$NoChoiceMode;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 558
    :cond_1
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 559
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p3, v0

    .line 561
    :goto_2
    iput-object p3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 562
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 563
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->attachAdapter()V

    return-void
.end method

.method public final setItemChecked(IZ)V
    .locals 4

    .line 493
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    const-string v2, "No list items are shown by the dialog"

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 495
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemChecked(IZ)V

    return-void
.end method

.method public final setItemColor(I)V
    .locals 0

    .line 426
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setItemColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 431
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color state list may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemColor:Landroid/content/res/ColorStateList;

    .line 433
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemColor()V

    return-void
.end method

.method public final setItemEnabled(IZ)V
    .locals 4

    .line 507
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    const-string v2, "No list items are shown by the dialog"

    const-class v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 509
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemEnabled(IZ)V

    return-void
.end method

.method public final setItemIconTint(I)V
    .locals 0

    .line 457
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 463
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemIconTintList()V

    return-void
.end method

.method public final setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 474
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tint mode may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 476
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemIconTintMode()V

    return-void
.end method

.method public final setItemTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 438
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The typeface may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->itemTypeface:Landroid/graphics/Typeface;

    .line 440
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adaptItemTypeface()V

    return-void
.end method

.method public final setItems(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, p1, v0, p2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems(I[ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setItems(I[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 544
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, p1, v0, p2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .line 522
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->items:[Ljava/lang/CharSequence;

    .line 523
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->iconResourceIds:[I

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceItems:[Ljava/lang/CharSequence;

    .line 525
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceItems:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 526
    new-instance v1, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    const v4, 0x1090003

    invoke-direct {v3, v4, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;-><init>(I[Ljava/lang/CharSequence;[I)V

    new-instance p2, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$NoChoiceMode;

    invoke-direct {p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$NoChoiceMode;-><init>()V

    invoke-direct {v1, v2, v3, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    .line 529
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v0

    .line 530
    :goto_1
    iput-object p3, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 531
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 532
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->attachAdapter()V

    return-void
.end method

.method public final setMultiChoiceItems(I[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 682
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 674
    invoke-virtual {p0, p1, v0, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems(I[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setMultiChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "[Z",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")V"
        }
    .end annotation

    .line 692
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 693
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    array-length v3, p3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Invalid number of checked items given"

    .line 692
    invoke-virtual {v0, v2, v3}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->items:[Ljava/lang/CharSequence;

    .line 696
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->iconResourceIds:[I

    .line 697
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceItems:[Ljava/lang/CharSequence;

    .line 698
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceItems:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 699
    new-instance v2, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    .line 700
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;

    invoke-direct {v4}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;-><init>()V

    invoke-direct {v2, v3, p1, v4}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;)V

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_3

    .line 702
    :cond_3
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 703
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    move-object p2, v0

    :goto_3
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 705
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p4, v0

    .line 706
    :goto_4
    iput-object p4, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 708
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 709
    :goto_5
    array-length p1, p3

    if-ge v1, p1, :cond_6

    .line 710
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    aget-boolean p2, p3, v1

    invoke-virtual {p1, v1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 714
    :cond_6
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->attachAdapter()V

    return-void
.end method

.method public final setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 6

    .line 648
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p3

    array-length v3, p1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Invalid number of checked items given"

    invoke-virtual {v0, v2, v3}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 650
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->items:[Ljava/lang/CharSequence;

    .line 651
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->iconResourceIds:[I

    .line 652
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceItems:[Ljava/lang/CharSequence;

    .line 653
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceItems:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 654
    new-instance v2, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    const v5, 0x1090010

    invoke-direct {v4, v5, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;-><init>(I[Ljava/lang/CharSequence;[I)V

    new-instance p2, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;

    invoke-direct {p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;-><init>()V

    invoke-direct {v2, v3, v4, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;)V

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iput-object v2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    .line 657
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 658
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p4, v0

    .line 659
    :goto_3
    iput-object p4, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 661
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 662
    :goto_4
    array-length p1, p3

    if-ge v1, p1, :cond_4

    .line 663
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    aget-boolean p2, p3, v1

    invoke-virtual {p1, v1, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 667
    :cond_4
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->attachAdapter()V

    return-void
.end method

.method public final setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, p1, v0, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setOnItemEnabledListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;)V
    .locals 1

    .line 730
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listViewItemEnabledListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;

    .line 732
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setOnItemEnabledListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;)V

    :cond_0
    return-void
.end method

.method public final setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V
    .locals 1

    .line 720
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->listViewItemSelectedListener:Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;

    .line 722
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method public final setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, p1, v0, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems(I[IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSingleChoiceItems(I[IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 607
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->items:[Ljava/lang/CharSequence;

    .line 617
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->iconResourceIds:[I

    .line 618
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceItems:[Ljava/lang/CharSequence;

    .line 619
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceItems:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 620
    new-instance v1, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    .line 621
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;

    invoke-direct {v3}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 623
    :cond_1
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 624
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p4, v0

    .line 626
    :goto_2
    iput-object p4, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 627
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p1, -0x1

    if-eq p3, p1, :cond_4

    .line 629
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    .line 630
    invoke-virtual {p1, p3, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemChecked(IZ)V

    .line 633
    :cond_4
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->attachAdapter()V

    return-void
.end method

.method public final setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0, p1, v0, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    const/4 v0, 0x0

    .line 578
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->items:[Ljava/lang/CharSequence;

    .line 579
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->iconResourceIds:[I

    .line 580
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceItems:[Ljava/lang/CharSequence;

    .line 581
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceItems:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 582
    new-instance v1, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;

    const v4, 0x109000f

    invoke-direct {v3, v4, p1, p2}, Lde/mrapp/android/dialog/adapter/ArrayRecyclerViewAdapter;-><init>(I[Ljava/lang/CharSequence;[I)V

    new-instance p2, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;

    invoke-direct {p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;-><init>()V

    invoke-direct {v1, v2, v3, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    .line 585
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, v0

    .line 586
    :goto_1
    iput-object p4, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->singleChoiceListener:Landroid/content/DialogInterface$OnClickListener;

    .line 587
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    .line 589
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->adapter:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 590
    invoke-virtual {p1, p3, p2}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemChecked(IZ)V

    .line 593
    :cond_2
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->attachAdapter()V

    return-void
.end method
