.class Lde/mrapp/android/dialog/view/DialogRootView$AreaComparator;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/view/DialogRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AreaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lde/mrapp/android/dialog/ScrollableArea$Area;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/mrapp/android/dialog/view/DialogRootView$1;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lde/mrapp/android/dialog/view/DialogRootView$AreaComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)I
    .locals 0

    .line 235
    invoke-virtual {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result p1

    .line 236
    invoke-virtual {p2}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 231
    check-cast p1, Lde/mrapp/android/dialog/ScrollableArea$Area;

    check-cast p2, Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/view/DialogRootView$AreaComparator;->compare(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)I

    move-result p1

    return p1
.end method
