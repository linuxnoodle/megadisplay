.class public abstract Lcom/woxthebox/draglistview/DragListView$DragListCallbackAdapter;
.super Ljava/lang/Object;
.source "DragListView.java"

# interfaces
.implements Lcom/woxthebox/draglistview/DragListView$DragListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woxthebox/draglistview/DragListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DragListCallbackAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDragItemAtPosition(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canDropItemAtPosition(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
