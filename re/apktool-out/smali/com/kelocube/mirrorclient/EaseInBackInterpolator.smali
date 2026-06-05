.class public final Lcom/kelocube/mirrorclient/EaseInBackInterpolator;
.super Ljava/lang/Object;
.source "ActionMenu.kt"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/EaseInBackInterpolator;",
        "Landroid/view/animation/Interpolator;",
        "()V",
        "getInterpolation",
        "",
        "x",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const v0, 0x402ce6b0

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    mul-float v0, v0, p1

    const v1, 0x3fd9cd60

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    return v0
.end method
