.class final Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder$1;
.super Ljava/lang/Object;
.source "IconDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;-><init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;


# direct methods
.method constructor <init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder$1;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 366
    iget-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder$1;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;

    iget-object p1, p1, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    iget-object p1, p1, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {p1}, Lcom/maltaisn/icondialog/IconDialog;->access$getPresenter$p(Lcom/maltaisn/icondialog/IconDialog;)Lcom/maltaisn/icondialog/IconDialogContract$Presenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder$1;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/maltaisn/icondialog/IconDialogContract$Presenter;->onIconItemClicked(I)V

    :cond_0
    return-void
.end method
