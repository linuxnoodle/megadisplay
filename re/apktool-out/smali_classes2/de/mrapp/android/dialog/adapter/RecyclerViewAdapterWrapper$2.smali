.class Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;
.super Ljava/lang/Object;
.source "RecyclerViewAdapterWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;->createCheckableRunnable(Landroid/widget/Checkable;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

.field final synthetic val$checkable:Landroid/widget/Checkable;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;Landroid/widget/Checkable;Z)V
    .locals 0

    .line 273
    iput-object p1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;->this$0:Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;

    iput-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;->val$checkable:Landroid/widget/Checkable;

    iput-boolean p3, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;->val$checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;->val$checkable:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$2;->val$checked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method
