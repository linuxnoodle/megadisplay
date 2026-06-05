.class final Lcom/kelocube/mirrorclient/ActionMenu$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ActionMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ActionMenu;-><init>(Landroid/content/Context;Lcom/kelocube/mirrorclient/ActionMenu$Callbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;",
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
        "state",
        "Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;",
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
.field final synthetic this$0:Lcom/kelocube/mirrorclient/ActionMenu;


# direct methods
.method constructor <init>(Lcom/kelocube/mirrorclient/ActionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ActionMenu$4;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p1, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ActionMenu$4;->invoke(Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$4;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getPrefs$p(Lcom/kelocube/mirrorclient/ActionMenu;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->getX()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->getY()F

    move-result v1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    const-string v1, "session_menu_open"

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->getOpen()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v1, "session_menu_x"

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->getX()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v1, "session_menu_y"

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ActionMenu$4;->this$0:Lcom/kelocube/mirrorclient/ActionMenu;

    invoke-static {v0}, Lcom/kelocube/mirrorclient/ActionMenu;->access$getRootButton$p(Lcom/kelocube/mirrorclient/ActionMenu;)Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kelocube/mirrorclient/ui/HoldableActionButtonView;->getButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kelocube/mirrorclient/ui/ActionMenuView$State;->getOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method
