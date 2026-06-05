.class public Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;
.super Lde/mrapp/android/util/view/AbstractSavedState;
.source "AbstractColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/preference/AbstractColorPickerPreference;
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
            "Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState$1;

    invoke-direct {v0}, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState$1;-><init>()V

    sput-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/AbstractSavedState;-><init>(Landroid/os/Parcel;)V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;->color:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lde/mrapp/android/util/view/AbstractSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 243
    invoke-super {p0, p1, p2}, Lde/mrapp/android/util/view/AbstractSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    iget p2, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$SavedState;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
