.class public final Lkotlin/script/dependencies/ScriptContents$Position;
.super Ljava/lang/Object;
.source "resolvers_deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/dependencies/ScriptContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/script/dependencies/ScriptContents$Position;",
        "",
        "line",
        "",
        "col",
        "(II)V",
        "getCol",
        "()I",
        "getLine",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final col:I

.field private final line:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    iput p2, p0, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/dependencies/ScriptContents$Position;IIILjava/lang/Object;)Lkotlin/script/dependencies/ScriptContents$Position;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlin/script/dependencies/ScriptContents$Position;->copy(II)Lkotlin/script/dependencies/ScriptContents$Position;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    return v0
.end method

.method public final copy(II)Lkotlin/script/dependencies/ScriptContents$Position;
    .locals 1

    new-instance v0, Lkotlin/script/dependencies/ScriptContents$Position;

    invoke-direct {v0, p1, p2}, Lkotlin/script/dependencies/ScriptContents$Position;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/script/dependencies/ScriptContents$Position;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/dependencies/ScriptContents$Position;

    iget v1, p0, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    iget v3, p1, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    iget p1, p1, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCol()I
    .locals 1

    .line 55
    iget v0, p0, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    return v0
.end method

.method public final getLine()I
    .locals 1

    .line 55
    iget v0, p0, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Position(line="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lkotlin/script/dependencies/ScriptContents$Position;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/script/dependencies/ScriptContents$Position;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
