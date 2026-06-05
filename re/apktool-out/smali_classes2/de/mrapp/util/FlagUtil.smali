.class public final Lde/mrapp/util/FlagUtil;
.super Ljava/lang/Object;
.source "FlagUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lde/mrapp/util/FlagUtil;",
        "",
        "()V",
        "isFlagSet",
        "",
        "flags",
        "",
        "flag",
        "setFlag",
        "set",
        "toggleFlag",
        "unsetFlag",
        "JavaUtil"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lde/mrapp/util/FlagUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lde/mrapp/util/FlagUtil;

    invoke-direct {v0}, Lde/mrapp/util/FlagUtil;-><init>()V

    sput-object v0, Lde/mrapp/util/FlagUtil;->INSTANCE:Lde/mrapp/util/FlagUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFlagSet(II)Z
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final setFlag(II)I
    .locals 1

    .line 33
    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/FlagUtil;->isFlagSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    or-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method public final setFlag(IIZ)I
    .locals 0

    if-eqz p3, :cond_0

    .line 46
    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/FlagUtil;->setFlag(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/FlagUtil;->unsetFlag(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final toggleFlag(II)I
    .locals 1

    .line 60
    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/FlagUtil;->isFlagSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/FlagUtil;->unsetFlag(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/FlagUtil;->setFlag(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final unsetFlag(II)I
    .locals 1

    .line 52
    invoke-virtual {p0, p1, p2}, Lde/mrapp/util/FlagUtil;->isFlagSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/2addr p1, p2

    :cond_0
    return p1
.end method
