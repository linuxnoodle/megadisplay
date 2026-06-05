.class final Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ActionMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ActionMenu$Button;->sendKey(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/nio/ByteBuffer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/nio/ByteBuffer;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $action:I

.field final synthetic $down:Z

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ActionMenu$Button;


# direct methods
.method constructor <init>(ZLcom/kelocube/mirrorclient/ActionMenu$Button;I)V
    .locals 0

    iput-boolean p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;->$down:Z

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu$Button;

    iput p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;->$action:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;->invoke(Ljava/nio/ByteBuffer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-boolean v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;->$down:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;->this$0:Lcom/kelocube/mirrorclient/ActionMenu$Button;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ActionMenu$Button;->access$getIndex$p(Lcom/kelocube/mirrorclient/ActionMenu$Button;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 104
    iget v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;->$action:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
