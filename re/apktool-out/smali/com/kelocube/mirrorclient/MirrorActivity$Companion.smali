.class public final Lcom/kelocube/mirrorclient/MirrorActivity$Companion;
.super Ljava/lang/Object;
.source "MirrorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/MirrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/MirrorActivity$Companion;",
        "",
        "()V",
        "RESULT_EXTRA_ACTIVE_TIME",
        "",
        "RESULT_EXTRA_ERROR",
        "running",
        "",
        "getRunning",
        "()I",
        "setRunning",
        "(I)V",
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
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/MirrorActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRunning()I
    .locals 1

    .line 49
    invoke-static {}, Lcom/kelocube/mirrorclient/MirrorActivity;->access$getRunning$cp()I

    move-result v0

    return v0
.end method

.method public final setRunning(I)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/kelocube/mirrorclient/MirrorActivity;->access$setRunning$cp(I)V

    return-void
.end method
