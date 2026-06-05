.class public final Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;
.super Ljava/lang/Object;
.source "ActionMenuView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/ui/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;",
        "",
        "open",
        "",
        "x",
        "",
        "y",
        "vertical",
        "(ZFFZ)V",
        "getOpen",
        "()Z",
        "getVertical",
        "getX",
        "()F",
        "getY",
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
.field private final open:Z

.field private final vertical:Z

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(ZFFZ)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->open:Z

    .line 125
    iput p2, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->x:F

    .line 126
    iput p3, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->y:F

    .line 127
    iput-boolean p4, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->vertical:Z

    return-void
.end method


# virtual methods
.method public final getOpen()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->open:Z

    return v0
.end method

.method public final getVertical()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->vertical:Z

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 125
    iget v0, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->y:F

    return v0
.end method
