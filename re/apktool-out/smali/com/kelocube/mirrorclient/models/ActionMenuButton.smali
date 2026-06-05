.class public final Lcom/kelocube/mirrorclient/models/ActionMenuButton;
.super Ljava/lang/Object;
.source "Action.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/models/ActionMenuButton$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/models/ActionMenuButton;",
        "",
        "()V",
        "holdAction",
        "",
        "getHoldAction",
        "()I",
        "setHoldAction",
        "(I)V",
        "icon",
        "getIcon",
        "setIcon",
        "tapAction",
        "getTapAction",
        "setTapAction",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kelocube/mirrorclient/models/ActionMenuButton$Companion;

.field public static final DEFAULT_ICON:I = 0x3bd


# instance fields
.field private holdAction:I

.field private icon:I

.field private tapAction:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/models/ActionMenuButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->Companion:Lcom/kelocube/mirrorclient/models/ActionMenuButton$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3bd

    .line 108
    iput v0, p0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->icon:I

    return-void
.end method


# virtual methods
.method public final getHoldAction()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->holdAction:I

    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->icon:I

    return v0
.end method

.method public final getTapAction()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->tapAction:I

    return v0
.end method

.method public final setHoldAction(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->holdAction:I

    return-void
.end method

.method public final setIcon(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->icon:I

    return-void
.end method

.method public final setTapAction(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->tapAction:I

    return-void
.end method
