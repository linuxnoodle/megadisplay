.class final Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState$1;
.super Ljava/lang/Object;
.source "AbstractColorPickerPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;
    .locals 1

    .line 199
    new-instance v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;

    invoke-direct {v0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;
    .locals 0

    .line 204
    new-array p1, p1, [Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState$1;->newArray(I)[Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;

    move-result-object p1

    return-object p1
.end method
