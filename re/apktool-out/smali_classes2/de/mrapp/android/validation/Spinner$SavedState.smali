.class public Lde/mrapp/android/validation/Spinner$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/validation/Spinner;
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
            "Lde/mrapp/android/validation/Spinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hint:Ljava/lang/CharSequence;

.field private hintColor:Landroid/content/res/ColorStateList;

.field private selectedItemPosition:I

.field private viewState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lde/mrapp/android/validation/Spinner$SavedState$1;

    invoke-direct {v0}, Lde/mrapp/android/validation/Spinner$SavedState$1;-><init>()V

    sput-object v0, Lde/mrapp/android/validation/Spinner$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 108
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->viewState:Landroid/os/Parcelable;

    .line 109
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hint:Ljava/lang/CharSequence;

    .line 110
    const-class v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hintColor:Landroid/content/res/ColorStateList;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lde/mrapp/android/validation/Spinner$SavedState;->selectedItemPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/mrapp/android/validation/Spinner$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/Spinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lde/mrapp/android/validation/Spinner$SavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 57
    iget-object p0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->viewState:Landroid/os/Parcelable;

    return-object p0
.end method

.method static synthetic access$102(Lde/mrapp/android/validation/Spinner$SavedState;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    .line 57
    iput-object p1, p0, Lde/mrapp/android/validation/Spinner$SavedState;->viewState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$200(Lde/mrapp/android/validation/Spinner$SavedState;)Ljava/lang/CharSequence;
    .locals 0

    .line 57
    iget-object p0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hint:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$202(Lde/mrapp/android/validation/Spinner$SavedState;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 57
    iput-object p1, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lde/mrapp/android/validation/Spinner$SavedState;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 57
    iget-object p0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hintColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static synthetic access$302(Lde/mrapp/android/validation/Spinner$SavedState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 57
    iput-object p1, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hintColor:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$400(Lde/mrapp/android/validation/Spinner$SavedState;)I
    .locals 0

    .line 57
    iget p0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->selectedItemPosition:I

    return p0
.end method

.method static synthetic access$402(Lde/mrapp/android/validation/Spinner$SavedState;I)I
    .locals 0

    .line 57
    iput p1, p0, Lde/mrapp/android/validation/Spinner$SavedState;->selectedItemPosition:I

    return p1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->viewState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hint:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 131
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner$SavedState;->hintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    iget p2, p0, Lde/mrapp/android/validation/Spinner$SavedState;->selectedItemPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
