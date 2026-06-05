.class final enum Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;
.super Ljava/lang/Enum;
.source "AutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/AutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AutoScrollMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

.field public static final enum COLUMN:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

.field public static final enum POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    const-string v1, "POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    new-instance v1, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    const-string v3, "COLUMN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    const/4 v3, 0x2

    .line 23
    new-array v3, v3, [Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->$VALUES:[Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;
    .locals 1

    .line 23
    const-class v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    return-object p0
.end method

.method public static values()[Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;
    .locals 1

    .line 23
    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->$VALUES:[Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    invoke-virtual {v0}, [Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woxthebox/draglistview/AutoScroller$AutoScrollMode;

    return-object v0
.end method
