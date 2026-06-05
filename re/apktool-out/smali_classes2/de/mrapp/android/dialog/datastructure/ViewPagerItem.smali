.class public Lde/mrapp/android/dialog/datastructure/ViewPagerItem;
.super Ljava/lang/Object;
.source "ViewPagerItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lde/mrapp/android/dialog/datastructure/ViewPagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final arguments:Landroid/os/Bundle;

.field private final fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem$1;

    invoke-direct {v0}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem$1;-><init>()V

    sput-object v0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->title:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->fragmentClass:Ljava/lang/Class;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/mrapp/android/dialog/datastructure/ViewPagerItem$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The fragmentClass class may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->title:Ljava/lang/CharSequence;

    .line 105
    iput-object p2, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->fragmentClass:Ljava/lang/Class;

    .line 106
    iput-object p3, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->arguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .line 139
    iget-object v0, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->fragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 117
    iget-object v0, p0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    invoke-virtual {p0}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getFragmentClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 151
    invoke-virtual {p0}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
