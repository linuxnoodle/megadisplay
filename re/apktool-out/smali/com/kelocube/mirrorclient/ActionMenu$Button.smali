.class public final Lcom/kelocube/mirrorclient/ActionMenu$Button;
.super Ljava/lang/Object;
.source "ActionMenu.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/ActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Button"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u000e\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0005J\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/ActionMenu$Button;",
        "",
        "model",
        "Lcom/kelocube/mirrorclient/models/ActionMenuButton;",
        "index",
        "",
        "(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/models/ActionMenuButton;I)V",
        "view",
        "Lcom/kelocube/mirrorclient/ui/ActionButtonView;",
        "getView",
        "()Lcom/kelocube/mirrorclient/ui/ActionButtonView;",
        "doAction",
        "",
        "action",
        "onActiveCropChanged",
        "activeCrop",
        "sendKey",
        "down",
        "",
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
.field private final index:I

.field private final model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ActionMenu;

.field private final view:Lcom/kelocube/mirrorclient/ui/ActionButtonView;


# direct methods
.method public constructor <init>(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/models/ActionMenuButton;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kelocube/mirrorclient/models/ActionMenuButton;",
            "I)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    iput p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->index:I

    .line 80
    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getHoldAction()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 81
    :goto_0
    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getTapAction()I

    move-result v1

    sget-object v2, Lcom/kelocube/mirrorclient/ActionMenu$Button$tapIsKey$1;->INSTANCE:Lcom/kelocube/mirrorclient/ActionMenu$Button$tapIsKey$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2}, Lcom/kelocube/mirrorclient/models/Action$Companion;->getTypeAndKey(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz p3, :cond_2

    .line 86
    new-instance p3, Lcom/kelocube/mirrorclient/ui/ActionButtonView;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getContext$p(Lcom/kelocube/mirrorclient/ActionMenu;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/kelocube/mirrorclient/R$layout;->view_action_button:I

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->getPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v3

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getIcon()I

    move-result p2

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->getLoader()Lcom/maltaisn/icondialog/pack/IconPackLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maltaisn/icondialog/pack/IconPackLoader;->getDrawableLoader()Lcom/maltaisn/icondialog/pack/IconDrawableLoader;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/maltaisn/icondialog/pack/IconPack;->getIconDrawable(ILcom/maltaisn/icondialog/pack/IconDrawableLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getTouchFilter$p(Lcom/kelocube/mirrorclient/ActionMenu;)I

    move-result p1

    invoke-direct {p3, v1, v2, p2, p1}, Lcom/kelocube/mirrorclient/ui/ActionButtonView;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->view:Lcom/kelocube/mirrorclient/ui/ActionButtonView;

    if-eqz v0, :cond_1

    .line 88
    new-instance p1, Lcom/kelocube/mirrorclient/ActionMenu$Button$1;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/ActionMenu$Button$1;-><init>(Lcom/kelocube/mirrorclient/ActionMenu$Button;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p1}, Lcom/kelocube/mirrorclient/ui/ActionButtonView;->setOnDown(Lkotlin/jvm/functions/Function0;)V

    .line 89
    new-instance p1, Lcom/kelocube/mirrorclient/ActionMenu$Button$2;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/ActionMenu$Button$2;-><init>(Lcom/kelocube/mirrorclient/ActionMenu$Button;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p1}, Lcom/kelocube/mirrorclient/ui/ActionButtonView;->setOnUp(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 91
    :cond_1
    new-instance p1, Lcom/kelocube/mirrorclient/ActionMenu$Button$3;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/ActionMenu$Button$3;-><init>(Lcom/kelocube/mirrorclient/ActionMenu$Button;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p1}, Lcom/kelocube/mirrorclient/ui/ActionButtonView;->setOnClick(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 94
    :cond_2
    new-instance p3, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

    invoke-static {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getContext$p(Lcom/kelocube/mirrorclient/ActionMenu;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/kelocube/mirrorclient/R$layout;->view_action_button:I

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->getPack()Lcom/maltaisn/icondialog/pack/IconPack;

    move-result-object v2

    invoke-virtual {p2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getIcon()I

    move-result p2

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->getLoader()Lcom/maltaisn/icondialog/pack/IconPackLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maltaisn/icondialog/pack/IconPackLoader;->getDrawableLoader()Lcom/maltaisn/icondialog/pack/IconDrawableLoader;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/maltaisn/icondialog/pack/IconPack;->getIconDrawable(ILcom/maltaisn/icondialog/pack/IconDrawableLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getTouchFilter$p(Lcom/kelocube/mirrorclient/ActionMenu;)I

    move-result p1

    invoke-direct {p3, v0, v1, p2, p1}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;I)V

    check-cast p3, Lcom/kelocube/mirrorclient/ui/ActionButtonView;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->view:Lcom/kelocube/mirrorclient/ui/ActionButtonView;

    .line 95
    new-instance p1, Lcom/kelocube/mirrorclient/ActionMenu$Button$4;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/ActionMenu$Button$4;-><init>(Lcom/kelocube/mirrorclient/ActionMenu$Button;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p1}, Lcom/kelocube/mirrorclient/ui/ActionButtonView;->setOnClick(Lkotlin/jvm/functions/Function0;)V

    .line 96
    check-cast p3, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

    new-instance p1, Lcom/kelocube/mirrorclient/ActionMenu$Button$5;

    invoke-direct {p1, p0}, Lcom/kelocube/mirrorclient/ActionMenu$Button$5;-><init>(Lcom/kelocube/mirrorclient/ActionMenu$Button;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p1}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->setOnHeld(Lkotlin/jvm/functions/Function0;)V

    :goto_1
    return-void
.end method

.method public static final synthetic access$doAction(Lcom/kelocube/mirrorclient/ActionMenu$Button;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/kelocube/mirrorclient/ActionMenu$Button;->doAction(I)V

    return-void
.end method

.method public static final synthetic access$getIndex$p(Lcom/kelocube/mirrorclient/ActionMenu$Button;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->index:I

    return p0
.end method

.method public static final synthetic access$getModel$p(Lcom/kelocube/mirrorclient/ActionMenu$Button;)Lcom/kelocube/mirrorclient/models/ActionMenuButton;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    return-object p0
.end method

.method public static final synthetic access$sendKey(Lcom/kelocube/mirrorclient/ActionMenu$Button;IZ)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/kelocube/mirrorclient/ActionMenu$Button;->sendKey(IZ)V

    return-void
.end method

.method private final doAction(I)V
    .locals 3

    .line 109
    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    new-instance v1, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-direct {v1, v2, p0, p1}, Lcom/kelocube/mirrorclient/ActionMenu$Button$doAction$1;-><init>(Lcom/kelocube/mirrorclient/ActionMenu;Lcom/kelocube/mirrorclient/ActionMenu$Button;I)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p1, v1}, Lcom/kelocube/mirrorclient/models/Action$Companion;->getTypeAndKey(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method private final sendKey(IZ)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getCallbacks$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;->getOnKeyData()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/kelocube/mirrorclient/ActionMenu$Button$sendKey$1;-><init>(ZLcom/kelocube/mirrorclient/ActionMenu$Button;I)V

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getView()Lcom/kelocube/mirrorclient/ui/ActionButtonView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->view:Lcom/kelocube/mirrorclient/ui/ActionButtonView;

    return-object v0
.end method

.method public final onActiveCropChanged(I)V
    .locals 3

    .line 131
    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getTapAction()I

    move-result v1

    new-instance v2, Lcom/kelocube/mirrorclient/ActionMenu$Button$onActiveCropChanged$active$1;

    invoke-direct {v2, p1}, Lcom/kelocube/mirrorclient/ActionMenu$Button$onActiveCropChanged$active$1;-><init>(I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2}, Lcom/kelocube/mirrorclient/models/Action$Companion;->getTypeAndKey(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->model:Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getHoldAction()I

    move-result v1

    new-instance v2, Lcom/kelocube/mirrorclient/ActionMenu$Button$onActiveCropChanged$active$2;

    invoke-direct {v2, p1}, Lcom/kelocube/mirrorclient/ActionMenu$Button$onActiveCropChanged$active$2;-><init>(I)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2}, Lcom/kelocube/mirrorclient/models/Action$Companion;->getTypeAndKey(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->view:Lcom/kelocube/mirrorclient/ui/ActionButtonView;

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/ActionButtonView;->getButton()Landroid/widget/ImageButton;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ActionMenu$Button;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {v1}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getContext$p(Lcom/kelocube/mirrorclient/ActionMenu;)Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 137
    sget p1, Lcom/kelocube/mirrorclient/R$color;->colorAccent:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/kelocube/mirrorclient/R$color;->colorOnPrimary:I

    .line 135
    :goto_2
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 134
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
