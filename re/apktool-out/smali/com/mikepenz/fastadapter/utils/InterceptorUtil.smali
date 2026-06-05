.class public interface abstract Lcom/mikepenz/fastadapter/utils/InterceptorUtil;
.super Ljava/lang/Object;
.source "InterceptorUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0002\u0007\n\u0005\u0008\u0091F0\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/mikepenz/fastadapter/utils/InterceptorUtil;",
        "",
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
.field public static final Companion:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion;

.field public static final DEFAULT:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil;->Companion:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion;

    .line 11
    sget-object v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;->INSTANCE:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil;->DEFAULT:Lkotlin/jvm/functions/Function1;

    return-void
.end method
