.class public final Lcom/mikepenz/fastadapter/VerboseLogger;
.super Ljava/lang/Object;
.source "VerboseLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/VerboseLogger;",
        "",
        "tag",
        "",
        "(Ljava/lang/String;)V",
        "isEnabled",
        "",
        "()Z",
        "setEnabled",
        "(Z)V",
        "log",
        "",
        "message",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private isEnabled:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/fastadapter/VerboseLogger;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/VerboseLogger;->isEnabled:Z

    return v0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/VerboseLogger;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/mikepenz/fastadapter/VerboseLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/VerboseLogger;->isEnabled:Z

    return-void
.end method
