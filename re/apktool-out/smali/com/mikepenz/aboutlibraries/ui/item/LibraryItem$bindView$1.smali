.class final Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;
.super Ljava/lang/Object;
.source "LibraryItem.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->bindView(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;


# direct methods
.method constructor <init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;

    iput-object p2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;->$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    sget-object v0, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getListener()Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;

    invoke-static {v1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->access$getLibrary$p(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;)Lcom/mikepenz/aboutlibraries/entity/Library;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;->onLibraryAuthorClicked(Landroid/view/View;Lcom/mikepenz/aboutlibraries/entity/Library;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;->$ctx:Landroid/content/Context;

    const-string v1, "ctx"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;->this$0:Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;

    invoke-static {v1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->access$getLibrary$p(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;)Lcom/mikepenz/aboutlibraries/entity/Library;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/entity/Library;->getAuthorWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->access$openAuthorWebsite(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
