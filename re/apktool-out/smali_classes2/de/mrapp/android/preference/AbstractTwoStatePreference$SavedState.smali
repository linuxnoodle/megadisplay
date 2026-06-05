.class public Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;
.super Lde/mrapp/android/util/view/AbstractSavedState;
.source "AbstractTwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/preference/AbstractTwoStatePreference;
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
            "Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState$1;

    invoke-direct {v0}, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState$1;-><init>()V

    sput-object v0, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/AbstractSavedState;-><init>(Landroid/os/Parcel;)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;->checked:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/AbstractSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lde/mrapp/android/util/view/AbstractSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    iget-boolean p2, p0, Lde/mrapp/android/preference/AbstractTwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
