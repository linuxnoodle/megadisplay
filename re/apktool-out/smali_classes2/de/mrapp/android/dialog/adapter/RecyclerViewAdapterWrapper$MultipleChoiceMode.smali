.class public Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;
.super Ljava/lang/Object;
.source "RecyclerViewAdapterWrapper.java"

# interfaces
.implements Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$ChoiceMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultipleChoiceMode"
.end annotation


# instance fields
.field private final checkedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;->checkedItems:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final isItemChecked(I)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;->checkedItems:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final setItemChecked(IZ)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 137
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;->checkedItems:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 139
    :cond_0
    iget-object p2, p0, Lde/mrapp/android/dialog/adapter/RecyclerViewAdapterWrapper$MultipleChoiceMode;->checkedItems:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
