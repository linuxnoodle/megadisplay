.class public abstract Lde/mrapp/android/dialog/AbstractListDialog;
.super Lde/mrapp/android/dialog/AbstractButtonBarDialog;
.source "AbstractListDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ListDialog;


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    new-instance p1, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-direct {p1, p0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/ButtonBarDialog;)V

    iput-object p1, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    .line 60
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/AbstractListDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    return-void
.end method


# virtual methods
.method public final getItemColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 76
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getItemColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 129
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 98
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getItemIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getItemIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 114
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getItemIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getItemTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 92
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getItemTypeface()Landroid/graphics/Typeface;

    move-result-object v0

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

    .line 70
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getListAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 65
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public final isItemChecked(I)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public final isItemEnabled(I)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->isItemEnabled(I)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 287
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    .line 278
    invoke-super {p0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v1, v0}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/content/DialogInterface$OnClickListener;)V
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
            ")V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setItemChecked(IZ)V
    .locals 1

    .line 139
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemChecked(IZ)V

    return-void
.end method

.method public final setItemColor(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemColor(I)V

    return-void
.end method

.method public final setItemColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setItemEnabled(IZ)V
    .locals 1

    .line 149
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemEnabled(IZ)V

    return-void
.end method

.method public final setItemIconTint(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemIconTint(I)V

    return-void
.end method

.method public final setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setItemTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItemTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setItems(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setItems(I[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems(I[ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setMultiChoiceItems(I[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems(I[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setMultiChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
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
            ")V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public final setOnItemEnabledListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setOnItemEnabledListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;)V

    return-void
.end method

.method public final setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V

    return-void
.end method

.method public final setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSingleChoiceItems(I[IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems(I[IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroid/content/DialogInterface$OnClickListener;)V
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
            ")V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lde/mrapp/android/dialog/AbstractListDialog;->decorator:Lde/mrapp/android/dialog/decorator/ListDialogDecorator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ListDialogDecorator;->setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
