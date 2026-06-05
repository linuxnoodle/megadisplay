.class final enum Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;
.super Ljava/lang/Enum;
.source "AutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/AutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

.field public static final enum DOWN:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

.field public static final enum LEFT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

.field public static final enum RIGHT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

.field public static final enum UP:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->UP:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    new-instance v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    const-string v3, "DOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->DOWN:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    new-instance v3, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    const-string v5, "LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->LEFT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    new-instance v5, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->RIGHT:Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    const/4 v7, 0x4

    .line 27
    new-array v7, v7, [Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->$VALUES:[Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;
    .locals 1

    .line 27
    const-class v0, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;
    .locals 1

    .line 27
    sget-object v0, Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->$VALUES:[Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0}, [Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/woxthebox/draglistview/AutoScroller$ScrollDirection;

    return-object v0
.end method
