.class public final enum Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;
.super Ljava/lang/Enum;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColumnSnapPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

.field public static final enum CENTER:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

.field public static final enum LEFT:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

.field public static final enum RIGHT:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 111
    new-instance v0, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->LEFT:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    new-instance v1, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->CENTER:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    new-instance v3, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->RIGHT:Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    const/4 v5, 0x3

    .line 110
    new-array v5, v5, [Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->$VALUES:[Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;
    .locals 1

    .line 110
    const-class v0, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    return-object p0
.end method

.method public static values()[Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;
    .locals 1

    .line 110
    sget-object v0, Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->$VALUES:[Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    invoke-virtual {v0}, [Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woxthebox/draglistview/BoardView$ColumnSnapPosition;

    return-object v0
.end method
