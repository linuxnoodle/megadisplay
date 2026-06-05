.class public final Lcom/kelocube/mirrorclient/models/Action;
.super Ljava/lang/Object;
.source "Action.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kelocube/mirrorclient/models/Action$Companion;,
        Lcom/kelocube/mirrorclient/models/Action$ParseContext;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/models/Action;",
        "",
        "()V",
        "Companion",
        "ParseContext",
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
.field public static final COMMAND_0:I = 0xe6

.field public static final Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

.field public static final KEY_0:I = 0x0

.field public static final KEY_MASK:I = 0xff

.field public static final MOD_ALT:I = 0x200

.field public static final MOD_CTRL:I = 0x100

.field public static final MOD_SHIFT:I = 0x400

.field public static final MOUSE_BUTTON_0:I = 0xc8

.field public static final NONE:I = 0x0

.field public static final RESET_VIEW_0:I = 0xdc

.field public static final SET_VIEW_0:I = 0xd2

.field public static final VIEW_COUNT:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kelocube/mirrorclient/models/Action$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kelocube/mirrorclient/models/Action$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
