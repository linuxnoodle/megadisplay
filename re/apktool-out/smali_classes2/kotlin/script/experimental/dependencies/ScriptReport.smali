.class public final Lkotlin/script/experimental/dependencies/ScriptReport;
.super Ljava/lang/Object;
.source "resolvers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/dependencies/ScriptReport$Position;,
        Lkotlin/script/experimental/dependencies/ScriptReport$Severity;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/script/experimental/dependencies/ScriptReport;",
        "",
        "message",
        "",
        "severity",
        "Lkotlin/script/experimental/dependencies/ScriptReport$Severity;",
        "position",
        "Lkotlin/script/experimental/dependencies/ScriptReport$Position;",
        "(Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getPosition",
        "()Lkotlin/script/experimental/dependencies/ScriptReport$Position;",
        "getSeverity",
        "()Lkotlin/script/experimental/dependencies/ScriptReport$Severity;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Position",
        "Severity",
        "kotlin-script-runtime"
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
.field private final message:Ljava/lang/String;

.field private final position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

.field private final severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "severity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    iput-object p2, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    iput-object p3, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 50
    sget-object p2, Lkotlin/script/experimental/dependencies/ScriptReport$Severity;->ERROR:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lkotlin/script/experimental/dependencies/ScriptReport;-><init>(Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;)V

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/dependencies/ScriptReport;Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;ILjava/lang/Object;)Lkotlin/script/experimental/dependencies/ScriptReport;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/script/experimental/dependencies/ScriptReport;->copy(Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;)Lkotlin/script/experimental/dependencies/ScriptReport;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lkotlin/script/experimental/dependencies/ScriptReport$Severity;
    .locals 1

    iget-object v0, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    return-object v0
.end method

.method public final component3()Lkotlin/script/experimental/dependencies/ScriptReport$Position;
    .locals 1

    iget-object v0, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;)Lkotlin/script/experimental/dependencies/ScriptReport;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "severity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/dependencies/ScriptReport;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/script/experimental/dependencies/ScriptReport;-><init>(Ljava/lang/String;Lkotlin/script/experimental/dependencies/ScriptReport$Severity;Lkotlin/script/experimental/dependencies/ScriptReport$Position;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/script/experimental/dependencies/ScriptReport;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/dependencies/ScriptReport;

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    iget-object v3, p1, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    iget-object v3, p1, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    iget-object p1, p1, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lkotlin/script/experimental/dependencies/ScriptReport$Position;
    .locals 1

    .line 50
    iget-object v0, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    return-object v0
.end method

.method public final getSeverity()Lkotlin/script/experimental/dependencies/ScriptReport$Severity;
    .locals 1

    .line 50
    iget-object v0, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    invoke-virtual {v1}, Lkotlin/script/experimental/dependencies/ScriptReport$Severity;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkotlin/script/experimental/dependencies/ScriptReport$Position;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScriptReport(message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->severity:Lkotlin/script/experimental/dependencies/ScriptReport$Severity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/dependencies/ScriptReport;->position:Lkotlin/script/experimental/dependencies/ScriptReport$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
