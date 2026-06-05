.class public final Lcom/mikepenz/aboutlibraries/util/InitialPadding;
.super Ljava/lang/Object;
.source "InitialPadding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0001\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/util/InitialPadding;",
        "",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "(IIII)V",
        "getBottom",
        "()I",
        "getLeft",
        "getRight",
        "getTop",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final bottom:I

.field private final left:I

.field private final right:I

.field private final top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->left:I

    iput p2, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->top:I

    iput p3, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->right:I

    iput p4, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->bottom:I

    return-void
.end method


# virtual methods
.method public final getBottom()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->bottom:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->left:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/mikepenz/aboutlibraries/util/InitialPadding;->top:I

    return v0
.end method
