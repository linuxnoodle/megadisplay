.class public final Lcom/maltaisn/icondialog/IconImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "IconImageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/IconImageView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0016R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "",
        "checked",
        "getChecked",
        "()Z",
        "setChecked",
        "(Z)V",
        "onCreateDrawableState",
        "",
        "extraSpace",
        "Companion",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final Companion:Lcom/maltaisn/icondialog/IconImageView$Companion;


# instance fields
.field private checked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/maltaisn/icondialog/IconImageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maltaisn/icondialog/IconImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/maltaisn/icondialog/IconImageView;->Companion:Lcom/maltaisn/icondialog/IconImageView$Companion;

    const v0, 0x10100a0

    .line 49
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/maltaisn/icondialog/IconImageView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/maltaisn/icondialog/IconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/maltaisn/icondialog/IconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 29
    move-object p5, p2

    check-cast p5, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/maltaisn/icondialog/IconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$mergeDrawableStates$s2666181([I[I)[I
    .locals 0

    .line 28
    invoke-static {p0, p1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getChecked()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconImageView;->checked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 42
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconImageView;->checked:Z

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/maltaisn/icondialog/IconImageView;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/maltaisn/icondialog/IconImageView;->access$mergeDrawableStates$s2666181([I[I)[I

    .line 45
    :cond_0
    const-string v0, "drawableState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setChecked(Z)V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconImageView;->checked:Z

    if-eq v0, p1, :cond_0

    .line 35
    iput-boolean p1, p0, Lcom/maltaisn/icondialog/IconImageView;->checked:Z

    .line 36
    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconImageView;->refreshDrawableState()V

    :cond_0
    return-void
.end method
