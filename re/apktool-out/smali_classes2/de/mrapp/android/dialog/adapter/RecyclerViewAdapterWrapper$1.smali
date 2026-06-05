.class Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;
.super Ljava/lang/Object;
.source "RecyclerViewAdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->createItemClickListener(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;I)V
    .locals 0

    .line 246
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    iput p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 250
    iget-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    iget v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->val$position:I

    invoke-virtual {p1, v0}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->isItemChecked(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->setItemChecked(IZ)V

    .line 252
    iget-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-static {p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->access$000(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;)Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    invoke-static {p1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->access$000(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;)Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    iget v1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$OnItemClickListener;->onItemClick(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;I)V

    :cond_0
    return-void
.end method
