.class public Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Lde/mrapp/android/dialog/view/DialogRootView$ViewType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/view/DialogRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AreaViewType"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3d46f3e85a161d11L


# instance fields
.field private final area:Lde/mrapp/android/dialog/ScrollableArea$Area;


# direct methods
.method public constructor <init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The area may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;->area:Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 140
    :cond_2
    check-cast p1, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    .line 141
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;->area:Lde/mrapp/android/dialog/ScrollableArea$Area;

    iget-object p1, p1, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;->area:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getArea()Lde/mrapp/android/dialog/ScrollableArea$Area;
    .locals 1

    .line 116
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;->area:Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 128
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;->area:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AreaViewType [area="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;->area:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
