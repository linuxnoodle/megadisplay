.class public final enum Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;
.super Ljava/lang/Enum;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/swipe/ListSwipeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum LEFT:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum LEFT_AND_RIGHT:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum NONE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum RIGHT:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 41
    new-instance v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    new-instance v1, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->RIGHT:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    new-instance v3, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v5, "LEFT_AND_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT_AND_RIGHT:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    new-instance v5, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const/4 v7, 0x4

    .line 40
    new-array v7, v7, [Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->$VALUES:[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;
    .locals 1

    .line 40
    const-class v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object p0
.end method

.method public static values()[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;
    .locals 1

    .line 40
    sget-object v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->$VALUES:[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    invoke-virtual {v0}, [Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object v0
.end method
