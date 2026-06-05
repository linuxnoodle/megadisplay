.class public final Lcom/kelocube/mirrorclient/ui/ActionMenuViewKt;
.super Ljava/lang/Object;
.source "ActionMenuView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "DRAG_THRESHOLD_SQUARED",
        "",
        "getDRAG_THRESHOLD_SQUARED",
        "()F",
        "MIN_EDGE_OFFSET",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DRAG_THRESHOLD_SQUARED:F

.field public static final MIN_EDGE_OFFSET:F = 50.0f


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x41f00000    # 30.0f

    float-to-double v0, v0

    const/4 v2, 0x2

    int-to-double v2, v2

    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/kelocube/mirrorclient/ui/ActionMenuViewKt;->DRAG_THRESHOLD_SQUARED:F

    return-void
.end method

.method public static final getDRAG_THRESHOLD_SQUARED()F
    .locals 1

    .line 20
    sget v0, Lcom/kelocube/mirrorclient/ui/ActionMenuViewKt;->DRAG_THRESHOLD_SQUARED:F

    return v0
.end method
