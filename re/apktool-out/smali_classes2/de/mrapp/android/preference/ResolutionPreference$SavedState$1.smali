.class final Lde/mrapp/android/preference/ResolutionPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ResolutionPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/preference/ResolutionPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lde/mrapp/android/preference/ResolutionPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/mrapp/android/preference/ResolutionPreference$SavedState;
    .locals 1

    .line 67
    new-instance v0, Lde/mrapp/android/preference/ResolutionPreference$SavedState;

    invoke-direct {v0, p1}, Lde/mrapp/android/preference/ResolutionPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lde/mrapp/android/preference/ResolutionPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lde/mrapp/android/preference/ResolutionPreference$SavedState;
    .locals 0

    .line 72
    new-array p1, p1, [Lde/mrapp/android/preference/ResolutionPreference$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/ResolutionPreference$SavedState$1;->newArray(I)[Lde/mrapp/android/preference/ResolutionPreference$SavedState;

    move-result-object p1

    return-object p1
.end method
