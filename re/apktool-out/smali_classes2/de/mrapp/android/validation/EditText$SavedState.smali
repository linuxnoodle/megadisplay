.class public Lde/mrapp/android/validation/EditText$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/validation/EditText;
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
            "Lde/mrapp/android/validation/EditText$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field maxNumberOfCharacters:I

.field viewState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lde/mrapp/android/validation/EditText$SavedState$1;

    invoke-direct {v0}, Lde/mrapp/android/validation/EditText$SavedState$1;-><init>()V

    sput-object v0, Lde/mrapp/android/validation/EditText$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 126
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/validation/EditText$SavedState;->viewState:Landroid/os/Parcelable;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lde/mrapp/android/validation/EditText$SavedState;->maxNumberOfCharacters:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/mrapp/android/validation/EditText$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/EditText$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 145
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    iget-object v0, p0, Lde/mrapp/android/validation/EditText$SavedState;->viewState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    iget p2, p0, Lde/mrapp/android/validation/EditText$SavedState;->maxNumberOfCharacters:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
