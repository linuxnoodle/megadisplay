.class public final Lcom/kelocube/mirrorclient/models/Action$ParseContext;
.super Ljava/lang/Object;
.source "Action.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/models/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000e\u0010\tR\u0019\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0010\u0010\tR\u0019\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0012\u0010\tR\u0019\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0014\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/models/Action$ParseContext;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "commands",
        "",
        "",
        "getCommands",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getContext",
        "()Landroid/content/Context;",
        "keys",
        "getKeys",
        "mouseButtons",
        "getMouseButtons",
        "resetViews",
        "getResetViews",
        "setViews",
        "getSetViews",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final commands:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final keys:[Ljava/lang/String;

.field private final mouseButtons:[Ljava/lang/String;

.field private final resetViews:[Ljava/lang/String;

.field private final setViews:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->context:Landroid/content/Context;

    const/16 p1, 0xa

    .line 8
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    iget-object v4, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/kelocube/mirrorclient/R$string;->action_set_view:I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v6

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->setViews:[Ljava/lang/String;

    .line 9
    new-array v0, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v4, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/kelocube/mirrorclient/R$string;->action_reset_view:I

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v1

    invoke-virtual {v4, v5, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v6

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->resetViews:[Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/kelocube/mirrorclient/R$array;->action_commands:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->commands:[Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/kelocube/mirrorclient/R$array;->action_keys:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->keys:[Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/kelocube/mirrorclient/R$array;->action_mouse_buttons:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->mouseButtons:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCommands()[Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->commands:[Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getKeys()[Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->keys:[Ljava/lang/String;

    return-object v0
.end method

.method public final getMouseButtons()[Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->mouseButtons:[Ljava/lang/String;

    return-object v0
.end method

.method public final getResetViews()[Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->resetViews:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSetViews()[Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/kelocube/mirrorclient/models/Action$ParseContext;->setViews:[Ljava/lang/String;

    return-object v0
.end method
