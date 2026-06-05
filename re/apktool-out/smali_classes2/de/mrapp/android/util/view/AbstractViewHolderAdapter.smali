.class public abstract Lde/mrapp/android/util/view/AbstractViewHolderAdapter;
.super Ljava/lang/Object;
.source "AbstractViewHolderAdapter.java"


# instance fields
.field private currentParentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final findViewById(I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ViewType:",
            "Landroid/view/View;",
            ">(I)TViewType;"
        }
    .end annotation

    .line 67
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    iget-object v1, p0, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->currentParentView:Landroid/view/View;

    const-string v2, "No parent view set"

    const-class v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 69
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->currentParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/util/view/ViewHolder;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lde/mrapp/android/util/view/ViewHolder;

    iget-object v1, p0, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->currentParentView:Landroid/view/View;

    invoke-direct {v0, v1}, Lde/mrapp/android/util/view/ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->currentParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Lde/mrapp/android/util/view/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final setCurrentParentView(Landroid/view/View;)V
    .locals 2

    .line 47
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The parent view may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->currentParentView:Landroid/view/View;

    return-void
.end method
