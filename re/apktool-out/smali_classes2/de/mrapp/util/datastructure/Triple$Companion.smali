.class public final Lde/mrapp/util/datastructure/Triple$Companion;
.super Ljava/lang/Object;
.source "Triple.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/util/datastructure/Triple;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JG\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0004\"\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0005\u0010\u00072\u0006\u0010\u0008\u001a\u0002H\u00052\u0006\u0010\t\u001a\u0002H\u00062\u0006\u0010\n\u001a\u0002H\u0007\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lde/mrapp/util/datastructure/Triple$Companion;",
        "",
        "()V",
        "create",
        "Lde/mrapp/util/datastructure/Triple;",
        "F",
        "S",
        "T",
        "first",
        "second",
        "third",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lde/mrapp/util/datastructure/Triple;",
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lde/mrapp/util/datastructure/Triple$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lde/mrapp/util/datastructure/Triple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TF;TS;TT;)",
            "Lde/mrapp/util/datastructure/Triple<",
            "TF;TS;TT;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lde/mrapp/util/datastructure/Triple;

    invoke-direct {v0, p1, p2, p3}, Lde/mrapp/util/datastructure/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
