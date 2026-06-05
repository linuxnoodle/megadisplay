.class public Lde/mrapp/android/dialog/MaterialDialog$Builder;
.super Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder<",
        "Lde/mrapp/android/dialog/MaterialDialog;",
        "Lde/mrapp/android/dialog/MaterialDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractListDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected final onCreateProduct()Lde/mrapp/android/dialog/MaterialDialog;
    .locals 3

    .line 89
    new-instance v0, Lde/mrapp/android/dialog/MaterialDialog;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/MaterialDialog$Builder;->getThemeResourceId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/dialog/MaterialDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lde/mrapp/android/dialog/MaterialDialog$Builder;->onCreateProduct()Lde/mrapp/android/dialog/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method public final show()Lde/mrapp/android/dialog/MaterialDialog;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lde/mrapp/android/dialog/MaterialDialog$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/MaterialDialog;

    .line 82
    invoke-virtual {v0}, Lde/mrapp/android/dialog/MaterialDialog;->show()V

    return-object v0
.end method
