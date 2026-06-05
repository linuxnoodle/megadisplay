.class Lcom/woxthebox/draglistview/BoardView$SavedState$1;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/BoardView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/woxthebox/draglistview/BoardView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/woxthebox/draglistview/BoardView$SavedState;
    .locals 1

    .line 1125
    new-instance v0, Lcom/woxthebox/draglistview/BoardView$SavedState;

    invoke-direct {v0, p1}, Lcom/woxthebox/draglistview/BoardView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1123
    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/BoardView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/woxthebox/draglistview/BoardView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/woxthebox/draglistview/BoardView$SavedState;
    .locals 0

    .line 1129
    new-array p1, p1, [Lcom/woxthebox/draglistview/BoardView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1123
    invoke-virtual {p0, p1}, Lcom/woxthebox/draglistview/BoardView$SavedState$1;->newArray(I)[Lcom/woxthebox/draglistview/BoardView$SavedState;

    move-result-object p1

    return-object p1
.end method
