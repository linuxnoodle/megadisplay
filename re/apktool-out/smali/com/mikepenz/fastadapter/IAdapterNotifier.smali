.class public interface abstract Lcom/mikepenz/fastadapter/IAdapterNotifier;
.super Ljava/lang/Object;
.source "IAdapterNotifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ,\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H&\u0082\u0002\u0007\n\u0005\u0008\u0091F0\u0001\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/IAdapterNotifier;",
        "",
        "notify",
        "",
        "fastAdapter",
        "Lcom/mikepenz/fastadapter/FastAdapter;",
        "newItemsCount",
        "",
        "previousItemsCount",
        "itemsBeforeThisAdapter",
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
.field public static final Companion:Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion;

.field public static final DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

.field public static final LEGACY_DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mikepenz/fastadapter/IAdapterNotifier;->Companion:Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion;

    .line 13
    new-instance v0, Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion$DEFAULT$1;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion$DEFAULT$1;-><init>()V

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterNotifier;

    sput-object v0, Lcom/mikepenz/fastadapter/IAdapterNotifier;->DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

    .line 38
    new-instance v0, Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion$LEGACY_DEFAULT$1;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/IAdapterNotifier$Companion$LEGACY_DEFAULT$1;-><init>()V

    check-cast v0, Lcom/mikepenz/fastadapter/IAdapterNotifier;

    sput-object v0, Lcom/mikepenz/fastadapter/IAdapterNotifier;->LEGACY_DEFAULT:Lcom/mikepenz/fastadapter/IAdapterNotifier;

    return-void
.end method


# virtual methods
.method public abstract notify(Lcom/mikepenz/fastadapter/FastAdapter;III)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "*>;III)Z"
        }
    .end annotation
.end method
