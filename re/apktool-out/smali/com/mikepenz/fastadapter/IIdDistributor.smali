.class public interface abstract Lcom/mikepenz/fastadapter/IIdDistributor;
.super Ljava/lang/Object;
.source "IIdDistributor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/IIdDistributor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Identifiable::",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u000f*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u000fJ\u0015\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0006J)\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00082\u0012\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0008\"\u00028\u0000H&\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH&J\u0015\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000e\u0082\u0002\u0007\n\u0005\u0008\u0091F0\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IIdDistributor;",
        "Identifiable",
        "Lcom/mikepenz/fastadapter/IIdentifyable;",
        "",
        "checkId",
        "identifiable",
        "(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;",
        "checkIds",
        "",
        "identifiables",
        "([Lcom/mikepenz/fastadapter/IIdentifyable;)[Lcom/mikepenz/fastadapter/IIdentifyable;",
        "",
        "nextId",
        "",
        "(Lcom/mikepenz/fastadapter/IIdentifyable;)J",
        "Companion",
        "fastadapter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mikepenz/fastadapter/IIdDistributor$Companion;

.field public static final DEFAULT:Lcom/mikepenz/fastadapter/IIdDistributor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/IIdDistributor<",
            "+",
            "Lcom/mikepenz/fastadapter/IIdentifyable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mikepenz/fastadapter/IIdDistributor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mikepenz/fastadapter/IIdDistributor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mikepenz/fastadapter/IIdDistributor;->Companion:Lcom/mikepenz/fastadapter/IIdDistributor$Companion;

    .line 20
    new-instance v0, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/utils/DefaultIdDistributorImpl;-><init>()V

    check-cast v0, Lcom/mikepenz/fastadapter/IIdDistributor;

    sput-object v0, Lcom/mikepenz/fastadapter/IIdDistributor;->DEFAULT:Lcom/mikepenz/fastadapter/IIdDistributor;

    return-void
.end method


# virtual methods
.method public abstract checkId(Lcom/mikepenz/fastadapter/IIdentifyable;)Lcom/mikepenz/fastadapter/IIdentifyable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifiable;)TIdentifiable;"
        }
    .end annotation
.end method

.method public abstract checkIds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TIdentifiable;>;)",
            "Ljava/util/List<",
            "TIdentifiable;>;"
        }
    .end annotation
.end method

.method public varargs abstract checkIds([Lcom/mikepenz/fastadapter/IIdentifyable;)[Lcom/mikepenz/fastadapter/IIdentifyable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TIdentifiable;)[TIdentifiable;"
        }
    .end annotation
.end method

.method public abstract nextId(Lcom/mikepenz/fastadapter/IIdentifyable;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIdentifiable;)J"
        }
    .end annotation
.end method
