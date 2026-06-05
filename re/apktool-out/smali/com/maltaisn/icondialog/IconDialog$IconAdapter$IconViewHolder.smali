.class public final Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IconDialog.kt"

# interfaces
.implements Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialog$IconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IconViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconDialog.kt\ncom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder\n*L\n1#1,482:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;",
        "itemView",
        "Landroid/view/View;",
        "(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V",
        "iconForeground",
        "iconImv",
        "Lcom/maltaisn/icondialog/IconImageView;",
        "bindView",
        "",
        "icon",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "selected",
        "",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final iconForeground:Landroid/view/View;

.field private final iconImv:Lcom/maltaisn/icondialog/IconImageView;

.field final synthetic this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;


# direct methods
.method public constructor <init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    .line 360
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 361
    sget p1, Lcom/maltaisn/icondialog/R$id;->icd_imv_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.icd_imv_icon)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/maltaisn/icondialog/IconImageView;

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;->iconImv:Lcom/maltaisn/icondialog/IconImageView;

    .line 362
    sget p1, Lcom/maltaisn/icondialog/R$id;->icd_icon_foreground:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.icd_icon_foreground)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;->iconForeground:Landroid/view/View;

    .line 365
    new-instance p2, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder$1;

    invoke-direct {p2, p0}, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder$1;-><init>(Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/maltaisn/icondialog/data/Icon;Z)V
    .locals 2

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;->this$0:Lcom/maltaisn/icondialog/IconDialog$IconAdapter;

    iget-object v0, v0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter;->this$0:Lcom/maltaisn/icondialog/IconDialog;

    invoke-static {v0}, Lcom/maltaisn/icondialog/IconDialog;->access$getUnavailableIconDrawable$p(Lcom/maltaisn/icondialog/IconDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 371
    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "DrawableCompat.wrap(icon\u2026bleIconDrawable).mutate()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;->iconImv:Lcom/maltaisn/icondialog/IconImageView;

    .line 374
    invoke-virtual {v1, v0}, Lcom/maltaisn/icondialog/IconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-virtual {v1, p2}, Lcom/maltaisn/icondialog/IconImageView;->setChecked(Z)V

    .line 376
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    :goto_1
    invoke-virtual {v1, p1}, Lcom/maltaisn/icondialog/IconImageView;->setAlpha(F)V

    return-void
.end method
