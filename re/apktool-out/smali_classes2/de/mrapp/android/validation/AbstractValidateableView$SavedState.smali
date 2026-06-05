.class public Lde/mrapp/android/validation/AbstractValidateableView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbstractValidateableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/validation/AbstractValidateableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lde/mrapp/android/validation/AbstractValidateableView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field validateOnFocusLost:Z

.field validateOnValueChange:Z

.field validated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState$1;

    invoke-direct {v0}, Lde/mrapp/android/validation/AbstractValidateableView$SavedState$1;-><init>()V

    sput-object v0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 109
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validated:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnValueChange:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnFocusLost:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/mrapp/android/validation/AbstractValidateableView$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    iget-boolean p2, p0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validated:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-boolean p2, p0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnValueChange:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-boolean p2, p0, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnFocusLost:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
