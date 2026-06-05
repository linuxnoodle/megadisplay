.class public final Lcom/maltaisn/icondialog/IconDialogSettings$Builder;
.super Ljava/lang/Object;
.source "IconDialogSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialogSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u00100\u001a\u000201R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010!\"\u0004\u0008&\u0010#R\u001a\u0010\'\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010!\"\u0004\u0008)\u0010#R\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00062"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogSettings$Builder;",
        "",
        "()V",
        "dialogTitle",
        "",
        "getDialogTitle",
        "()I",
        "setDialogTitle",
        "(I)V",
        "headersVisibility",
        "Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;",
        "getHeadersVisibility",
        "()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;",
        "setHeadersVisibility",
        "(Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;)V",
        "iconFilter",
        "Lcom/maltaisn/icondialog/filter/DefaultIconFilter;",
        "getIconFilter",
        "()Lcom/maltaisn/icondialog/filter/DefaultIconFilter;",
        "setIconFilter",
        "(Lcom/maltaisn/icondialog/filter/DefaultIconFilter;)V",
        "maxSelection",
        "getMaxSelection",
        "setMaxSelection",
        "searchVisibility",
        "Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;",
        "getSearchVisibility",
        "()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;",
        "setSearchVisibility",
        "(Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;)V",
        "showClearBtn",
        "",
        "getShowClearBtn",
        "()Z",
        "setShowClearBtn",
        "(Z)V",
        "showMaxSelectionMessage",
        "getShowMaxSelectionMessage",
        "setShowMaxSelectionMessage",
        "showSelectBtn",
        "getShowSelectBtn",
        "setShowSelectBtn",
        "titleVisibility",
        "Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;",
        "getTitleVisibility",
        "()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;",
        "setTitleVisibility",
        "(Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;)V",
        "build",
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
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
.field private dialogTitle:I

.field private headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

.field private iconFilter:Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

.field private maxSelection:I

.field private searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

.field private showClearBtn:Z

.field private showMaxSelectionMessage:Z

.field private showSelectBtn:Z

.field private titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;-><init>()V

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->iconFilter:Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    .line 70
    sget-object v0, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;->IF_LANGUAGE_AVAILABLE:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    .line 71
    sget-object v0, Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;->STICKY:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    .line 72
    sget-object v0, Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;->IF_SEARCH_HIDDEN:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    iput-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    .line 73
    sget v0, Lcom/maltaisn/icondialog/R$string;->icd_title:I

    iput v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->dialogTitle:I

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->maxSelection:I

    .line 76
    iput-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showSelectBtn:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 11

    .line 79
    new-instance v10, Lcom/maltaisn/icondialog/IconDialogSettings;

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->iconFilter:Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    move-object v1, v0

    check-cast v1, Lcom/maltaisn/icondialog/filter/IconFilter;

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    .line 80
    iget-object v3, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    iget-object v4, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    iget v5, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->dialogTitle:I

    iget v6, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->maxSelection:I

    .line 81
    iget-boolean v7, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showMaxSelectionMessage:Z

    iget-boolean v8, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showSelectBtn:Z

    iget-boolean v9, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showClearBtn:Z

    move-object v0, v10

    .line 79
    invoke-direct/range {v0 .. v9}, Lcom/maltaisn/icondialog/IconDialogSettings;-><init>(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZ)V

    return-object v10
.end method

.method public final getDialogTitle()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->dialogTitle:I

    return v0
.end method

.method public final getHeadersVisibility()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    return-object v0
.end method

.method public final getIconFilter()Lcom/maltaisn/icondialog/filter/DefaultIconFilter;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->iconFilter:Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    return-object v0
.end method

.method public final getMaxSelection()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->maxSelection:I

    return v0
.end method

.method public final getSearchVisibility()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    return-object v0
.end method

.method public final getShowClearBtn()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showClearBtn:Z

    return v0
.end method

.method public final getShowMaxSelectionMessage()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showMaxSelectionMessage:Z

    return v0
.end method

.method public final getShowSelectBtn()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showSelectBtn:Z

    return v0
.end method

.method public final getTitleVisibility()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    return-object v0
.end method

.method public final setDialogTitle(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->dialogTitle:I

    return-void
.end method

.method public final setHeadersVisibility(Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    return-void
.end method

.method public final setIconFilter(Lcom/maltaisn/icondialog/filter/DefaultIconFilter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->iconFilter:Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    return-void
.end method

.method public final setMaxSelection(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->maxSelection:I

    return-void
.end method

.method public final setSearchVisibility(Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    return-void
.end method

.method public final setShowClearBtn(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showClearBtn:Z

    return-void
.end method

.method public final setShowMaxSelectionMessage(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showMaxSelectionMessage:Z

    return-void
.end method

.method public final setShowSelectBtn(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->showSelectBtn:Z

    return-void
.end method

.method public final setTitleVisibility(Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    return-void
.end method
