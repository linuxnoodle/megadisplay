.class public interface abstract Lde/mrapp/android/dialog/model/MaterialDialog;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/MaterialDialogDecorator;
.implements Landroid/content/DialogInterface;


# virtual methods
.method public abstract getScrollView()Landroid/widget/ScrollView;
.end method

.method public abstract setCancelable(Z)V
.end method

.method public abstract setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.method public abstract setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
.end method

.method public abstract setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
.end method
