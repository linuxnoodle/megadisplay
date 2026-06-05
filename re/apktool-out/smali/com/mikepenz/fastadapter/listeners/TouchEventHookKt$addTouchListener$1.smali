.class public final Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TouchEventHook.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt;->addTouchListener$default(Lcom/mikepenz/fastadapter/FastAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function5;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchEventHook.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchEventHook.kt\ncom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1\n*L\n1#1,41:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003\"\u0016\u0008\u0001\u0010\u0004\u0018\u0001*\u000e\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0005j\u0002`\u00062\u0006\u0010\u0007\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Item",
        "Lcom/mikepenz/fastadapter/IItem;",
        "Lcom/mikepenz/fastadapter/GenericItem;",
        "it",
        "invoke",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/lang/Void;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;-><init>()V

    sput-object v0, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;->INSTANCE:Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/listeners/TouchEventHookKt$addTouchListener$1;->invoke(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
