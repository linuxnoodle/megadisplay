.class final enum Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;
.super Ljava/lang/Enum;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/swipe/ListSwipeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SwipeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

.field public static final enum ANIMATING:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

.field public static final enum IDLE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

.field public static final enum SWIPING:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 36
    new-instance v1, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    const-string v3, "SWIPING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;->SWIPING:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 37
    new-instance v3, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    const-string v5, "ANIMATING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;->ANIMATING:Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    const/4 v5, 0x3

    .line 34
    new-array v5, v5, [Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;->$VALUES:[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;
    .locals 1

    .line 34
    const-class v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    return-object p0
.end method

.method public static values()[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;
    .locals 1

    .line 34
    sget-object v0, Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;->$VALUES:[Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    invoke-virtual {v0}, [Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woxthebox/draglistview/swipe/ListSwipeItem$SwipeState;

    return-object v0
.end method
