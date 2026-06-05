.class final enum Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;
.super Ljava/lang/Enum;
.source "DragItemRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/DragItemRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

.field public static final enum DRAGGING:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

.field public static final enum DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

.field public static final enum DRAG_STARTED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    const-string v1, "DRAG_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_STARTED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    new-instance v1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    const-string v3, "DRAGGING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAGGING:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    new-instance v3, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    const-string v5, "DRAG_ENDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    const/4 v5, 0x3

    .line 48
    new-array v5, v5, [Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->$VALUES:[Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;
    .locals 1

    .line 48
    const-class v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    return-object p0
.end method

.method public static values()[Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;
    .locals 1

    .line 48
    sget-object v0, Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->$VALUES:[Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    invoke-virtual {v0}, [Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woxthebox/draglistview/DragItemRecyclerView$DragState;

    return-object v0
.end method
