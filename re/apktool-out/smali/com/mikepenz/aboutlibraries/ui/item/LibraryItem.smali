.class public final Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "LibraryItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/fastadapter/items/AbstractItem<",
        "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryItem.kt\ncom/mikepenz/aboutlibraries/ui/item/LibraryItem\n*L\n1#1,252:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020!H\u0002J \u0010$\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0002R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006&"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;",
        "Lcom/mikepenz/fastadapter/items/AbstractItem;",
        "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;",
        "library",
        "Lcom/mikepenz/aboutlibraries/entity/Library;",
        "libsBuilder",
        "Lcom/mikepenz/aboutlibraries/LibsBuilder;",
        "(Lcom/mikepenz/aboutlibraries/entity/Library;Lcom/mikepenz/aboutlibraries/LibsBuilder;)V",
        "value",
        "",
        "isSelectable",
        "()Z",
        "setSelectable",
        "(Z)V",
        "layoutRes",
        "",
        "getLayoutRes",
        "()I",
        "type",
        "getType",
        "bindView",
        "",
        "holder",
        "payloads",
        "",
        "",
        "getViewHolder",
        "v",
        "Landroid/view/View;",
        "openAuthorWebsite",
        "ctx",
        "Landroid/content/Context;",
        "authorWebsite",
        "",
        "openLibraryWebsite",
        "libraryWebsite",
        "openLicense",
        "ViewHolder",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final library:Lcom/mikepenz/aboutlibraries/entity/Library;

.field private final libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;


# direct methods
.method public constructor <init>(Lcom/mikepenz/aboutlibraries/entity/Library;Lcom/mikepenz/aboutlibraries/LibsBuilder;)V
    .locals 1

    const-string v0, "library"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libsBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    iput-object p2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    return-void
.end method

.method public static final synthetic access$getLibrary$p(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;)Lcom/mikepenz/aboutlibraries/entity/Library;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    return-object p0
.end method

.method public static final synthetic access$getLibsBuilder$p(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;)Lcom/mikepenz/aboutlibraries/LibsBuilder;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    return-object p0
.end method

.method public static final synthetic access$openAuthorWebsite(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->openAuthorWebsite(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$openLibraryWebsite(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->openLibraryWebsite(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$openLicense(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;Lcom/mikepenz/aboutlibraries/LibsBuilder;Lcom/mikepenz/aboutlibraries/entity/Library;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->openLicense(Landroid/content/Context;Lcom/mikepenz/aboutlibraries/LibsBuilder;Lcom/mikepenz/aboutlibraries/entity/Library;)V

    return-void
.end method

.method private final openAuthorWebsite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 174
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final openLibraryWebsite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 189
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final openLicense(Landroid/content/Context;Lcom/mikepenz/aboutlibraries/LibsBuilder;Lcom/mikepenz/aboutlibraries/entity/Library;)V
    .locals 2

    .line 205
    :try_start_0
    invoke-virtual {p2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getShowLicenseDialog()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mikepenz/aboutlibraries/entity/License;->getLicenseDescription()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 206
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p3}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/entity/License;->getLicenseDescription()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 210
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p3}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/mikepenz/aboutlibraries/entity/License;->getLicenseWebsite()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->bindView(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 56
    iget-object p2, p1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryName$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryCreator$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/entity/Library;->getAuthor()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryDescription()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getShowVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getShowLicense()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 69
    :goto_2
    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryVersion()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/entity/License;->getLicenseName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    .line 70
    :goto_3
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryBottomDivider$aboutlibraries()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryVersion$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryBottomDivider$aboutlibraries()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryVersion$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryVersion()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getShowVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryVersion$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryVersion()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 81
    :cond_5
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryVersion$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_4
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/License;->getLicenseName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getShowLicense()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/entity/License;->getLicenseName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v3

    :goto_5
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 86
    :cond_7
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_6
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getAuthorWebsite()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 92
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryCreator$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;

    invoke-direct {v1, p0, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$1;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryCreator$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$2;

    invoke-direct {v1, p0, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$2;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_7

    .line 110
    :cond_8
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryCreator$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryCreator$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryCreator$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    :goto_7
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLibraryWebsite()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getRepositoryLink()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 116
    :goto_8
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$3;

    invoke-direct {v1, p0, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$3;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$4;

    invoke-direct {v1, p0, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$4;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_9

    .line 134
    :cond_a
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryDescription$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    :goto_9
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->library:Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->getLicense()Lcom/mikepenz/aboutlibraries/entity/License;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/entity/License;->getLicenseWebsite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->libsBuilder:Lcom/mikepenz/aboutlibraries/LibsBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getShowLicenseDialog()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 140
    :goto_a
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$5;

    invoke-direct {v1, p0, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$5;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$6;

    invoke-direct {v1, p0, p2}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$bindView$6;-><init>(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_b

    .line 157
    :cond_c
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;->getLibraryLicense$aboutlibraries()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 163
    :goto_b
    sget-object p2, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {p2}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getLibsRecyclerViewListener()Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p2, p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;->onBindViewHolder(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;)V

    :cond_d
    return-void
.end method

.method public getLayoutRes()I
    .locals 1

    .line 41
    sget v0, Lcom/mikepenz/aboutlibraries/R$layout;->listitem_opensource:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 33
    sget v0, Lcom/mikepenz/aboutlibraries/R$id;->library_item_id:I

    return v0
.end method

.method public bridge synthetic getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;->getViewHolder(Landroid/view/View;)Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;

    invoke-direct {v0, p1}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setSelectable(Z)V
    .locals 0

    return-void
.end method
