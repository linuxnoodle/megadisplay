.class final Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InterceptorUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/utils/InterceptorUtil$DefaultImpls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0001j\u0002`\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0001j\u0002`\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "it",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;-><init>()V

    sput-object v0, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;->INSTANCE:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)",
            "Lcom/mikepenz/fastadapter/IItem<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;->invoke(Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1
.end method
