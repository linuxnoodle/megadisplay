.class public final Lcom/kelocube/mirrorclient/Pointer$PointerShape;
.super Ljava/lang/Object;
.source "Pointer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/Pointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerShape"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Pointer$PointerShape;",
        "",
        "width",
        "",
        "height",
        "hotSpotX",
        "hotSpotY",
        "(IIII)V",
        "getHeight",
        "()I",
        "getHotSpotX",
        "getHotSpotY",
        "getWidth",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final height:I

.field private final hotSpotX:I

.field private final hotSpotY:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->width:I

    .line 38
    iput p2, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->height:I

    .line 39
    iput p3, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->hotSpotX:I

    .line 40
    iput p4, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->hotSpotY:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 36
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kelocube/mirrorclient/Pointer$PointerShape;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->height:I

    return v0
.end method

.method public final getHotSpotX()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->hotSpotX:I

    return v0
.end method

.method public final getHotSpotY()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->hotSpotY:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/kelocube/mirrorclient/Pointer$PointerShape;->width:I

    return v0
.end method
