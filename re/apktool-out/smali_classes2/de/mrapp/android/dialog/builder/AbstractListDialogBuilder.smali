.class public abstract Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
.source "AbstractListDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/ListDialog;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder<",
        "TDialogType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
        "TDialogType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private obtainItemColor(I)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogItemColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 59
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010038

    invoke-static {v0, p1, v1}, Lde/mrapp/android/util/ThemeUtil;->getColorStateList(Landroid/content/Context;II)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 67
    :cond_0
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->setItemColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-void
.end method


# virtual methods
.method protected obtainStyledAttributes(I)V
    .locals 0

    .line 678
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->obtainStyledAttributes(I)V

    .line 679
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->obtainItemColor(I)V

    return-void
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VH:",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/dialog/model/ListDialog;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/content/DialogInterface$OnClickListener;)V

    .line 342
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemChecked(IZ)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TBuilderType;"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ListDialog;->setItemChecked(IZ)V

    .line 197
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemColor(I)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ListDialog;->setItemColor(I)V

    .line 111
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ColorStateList;",
            ")TBuilderType;"
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ListDialog;->setItemColor(Landroid/content/res/ColorStateList;)V

    .line 125
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemEnabled(IZ)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TBuilderType;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ListDialog;->setItemEnabled(IZ)V

    .line 211
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemIconTint(I)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBuilderType;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ListDialog;->setItemIconTint(I)V

    .line 153
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemIconTintList(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ColorStateList;",
            ")TBuilderType;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ListDialog;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 168
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PorterDuff$Mode;",
            ")TBuilderType;"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ListDialog;->setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 183
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItemTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            ")TBuilderType;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ListDialog;->setItemTypeface(Landroid/graphics/Typeface;)V

    .line 139
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItems(ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ListDialog;->setItems(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 287
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItems(I[ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/dialog/model/ListDialog;->setItems(I[ILandroid/content/DialogInterface$OnClickListener;)V

    .line 315
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2}, Lde/mrapp/android/dialog/model/ListDialog;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/dialog/model/ListDialog;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    .line 263
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setMultiChoiceItems(I[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[Z",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/ListDialog;->setMultiChoiceItems(I[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 624
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[Z",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/dialog/model/ListDialog;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 590
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setMultiChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
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
            ")TBuilderType;"
        }
    .end annotation

    .line 655
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/ListDialog;->setMultiChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 656
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[I[Z",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/ListDialog;->setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 560
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[Z",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/dialog/model/ListDialog;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 526
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ListDialog;->setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V

    .line 672
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/dialog/model/ListDialog;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)V

    .line 433
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setSingleChoiceItems(I[IILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/ListDialog;->setSingleChoiceItems(I[IILandroid/content/DialogInterface$OnClickListener;)V

    .line 466
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
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
            ")TBuilderType;"
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/ListDialog;->setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 496
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3}, Lde/mrapp/android/dialog/model/ListDialog;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 371
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method

.method public final setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[II",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")TBuilderType;"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ListDialog;

    invoke-interface {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/model/ListDialog;->setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V

    .line 404
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;

    return-object p1
.end method
