.class public final Lde/mrapp/util/datastructure/Pair$Companion;
.super Ljava/lang/Object;
.source "Pair.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/util/datastructure/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0004\u0008\u0002\u0010\u0005\"\u0004\u0008\u0003\u0010\u00062\u0006\u0010\u0007\u001a\u0002H\u00052\u0006\u0010\u0008\u001a\u0002H\u0006\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lde/mrapp/util/datastructure/Pair$Companion;",
        "",
        "()V",
        "create",
        "Lde/mrapp/util/datastructure/Pair;",
        "F",
        "S",
        "first",
        "second",
        "(Ljava/lang/Object;Ljava/lang/Object;)Lde/mrapp/util/datastructure/Pair;",
        "JavaUtil"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lde/mrapp/util/datastructure/Pair$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljava/lang/Object;)Lde/mrapp/util/datastructure/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TF;TS;)",
            "Lde/mrapp/util/datastructure/Pair<",
            "TF;TS;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lde/mrapp/util/datastructure/Pair;

    invoke-direct {v0, p1, p2}, Lde/mrapp/util/datastructure/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
