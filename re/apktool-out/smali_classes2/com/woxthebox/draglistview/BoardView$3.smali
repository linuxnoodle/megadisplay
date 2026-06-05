.class Lcom/woxthebox/draglistview/BoardView$3;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woxthebox/draglistview/BoardView;->moveColumn(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woxthebox/draglistview/BoardView;

.field final synthetic val$column1:Landroid/view/View;

.field final synthetic val$column2:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/woxthebox/draglistview/BoardView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/woxthebox/draglistview/BoardView$3;->this$0:Lcom/woxthebox/draglistview/BoardView;

    iput-object p2, p0, Lcom/woxthebox/draglistview/BoardView$3;->val$column2:Landroid/view/View;

    iput-object p3, p0, Lcom/woxthebox/draglistview/BoardView$3;->val$column1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 822
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$3;->this$0:Lcom/woxthebox/draglistview/BoardView;

    invoke-static {p1}, Lcom/woxthebox/draglistview/BoardView;->access$800(Lcom/woxthebox/draglistview/BoardView;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 823
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$3;->val$column2:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$3;->val$column1:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/woxthebox/draglistview/BoardView$3;->val$column2:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 824
    iget-object p1, p0, Lcom/woxthebox/draglistview/BoardView$3;->val$column2:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x15e

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
