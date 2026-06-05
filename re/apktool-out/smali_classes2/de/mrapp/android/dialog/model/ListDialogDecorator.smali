.class public interface abstract Lde/mrapp/android/dialog/model/ListDialogDecorator;
.super Ljava/lang/Object;
.source "ListDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/Dialog;


# virtual methods
.method public abstract getItemColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemIconTintList()Landroid/content/res/ColorStateList;
.end method

.method public abstract getItemIconTintMode()Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getItemTypeface()Landroid/graphics/Typeface;
.end method

.method public abstract getListAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getListView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract isItemChecked(I)Z
.end method

.method public abstract isItemEnabled(I)Z
.end method

.method public abstract setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/content/DialogInterface$OnClickListener;)V
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
.end method

.method public abstract setItemChecked(IZ)V
.end method

.method public abstract setItemColor(I)V
.end method

.method public abstract setItemColor(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setItemEnabled(IZ)V
.end method

.method public abstract setItemIconTint(I)V
.end method

.method public abstract setItemIconTintList(Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setItemIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method public abstract setItemTypeface(Landroid/graphics/Typeface;)V
.end method

.method public abstract setItems(ILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setItems(I[ILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setMultiChoiceItems(I[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end method

.method public abstract setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end method

.method public abstract setMultiChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
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
.end method

.method public abstract setMultiChoiceItems([Ljava/lang/CharSequence;[I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end method

.method public abstract setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end method

.method public abstract setOnItemEnabledListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemEnabledListener;)V
.end method

.method public abstract setOnItemSelectedListener(Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;)V
.end method

.method public abstract setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setSingleChoiceItems(I[IILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ILandroid/content/DialogInterface$OnClickListener;)V
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
.end method

.method public abstract setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract setSingleChoiceItems([Ljava/lang/CharSequence;[IILandroid/content/DialogInterface$OnClickListener;)V
.end method
