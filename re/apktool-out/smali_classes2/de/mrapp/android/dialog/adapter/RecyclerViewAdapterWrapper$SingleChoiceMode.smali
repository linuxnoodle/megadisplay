.class public Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;
.super Ljava/lang/Object;
.source "RecyclerViewAdapterWrapper.java"

# interfaces
.implements Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleChoiceMode"
.end annotation


# instance fields
.field private checkedItem:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;->checkedItem:I

    return-void
.end method


# virtual methods
.method public final isItemChecked(I)Z
    .locals 1

    .line 104
    iget v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;->checkedItem:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setItemChecked(IZ)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 109
    iget p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;->checkedItem:I

    if-eq p2, p1, :cond_0

    .line 110
    iput p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$SingleChoiceMode;->checkedItem:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
