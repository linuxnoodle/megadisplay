.class public Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;
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
    name = "DividerViewType"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6976a92425dc2c37L


# instance fields
.field private final location:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;


# direct methods
.method public constructor <init>(Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;)V
    .locals 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The location may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;->location:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

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

    .line 202
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 204
    :cond_2
    check-cast p1, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;

    .line 205
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;->location:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    iget-object p1, p1, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;->location:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getLocation()Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;
    .locals 1

    .line 180
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;->location:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 192
    iget-object v0, p0, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;->location:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DividerViewType [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;->location:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
