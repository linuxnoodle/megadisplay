.class public final Lcom/maltaisn/icondialog/IconDialogSettings;
.super Ljava/lang/Object;
.source "IconDialogSettings.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/IconDialogSettings$Builder;,
        Lcom/maltaisn/icondialog/IconDialogSettings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001f\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000 82\u00020\u0001:\u000278BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0011J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\tH\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003J\t\u0010&\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\'\u001a\u00020\u000eH\u00c6\u0003J\t\u0010(\u001a\u00020\u000eH\u00c6\u0003J\t\u0010)\u001a\u00020\u000eH\u00c6\u0003Jc\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000eH\u00c6\u0001J\u0008\u0010+\u001a\u00020\u000bH\u0016J\u0013\u0010,\u001a\u00020\u000e2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u00d6\u0003J\t\u0010/\u001a\u00020\u000bH\u00d6\u0001J\t\u00100\u001a\u000201H\u00d6\u0001J\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u000bH\u0016R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0011\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u00069"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
        "Landroid/os/Parcelable;",
        "iconFilter",
        "Lcom/maltaisn/icondialog/filter/IconFilter;",
        "searchVisibility",
        "Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;",
        "headersVisibility",
        "Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;",
        "titleVisibility",
        "Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;",
        "dialogTitle",
        "",
        "maxSelection",
        "showMaxSelectionMessage",
        "",
        "showSelectBtn",
        "showClearBtn",
        "(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZ)V",
        "getDialogTitle",
        "()I",
        "getHeadersVisibility",
        "()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;",
        "getIconFilter",
        "()Lcom/maltaisn/icondialog/filter/IconFilter;",
        "getMaxSelection",
        "getSearchVisibility",
        "()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;",
        "getShowClearBtn",
        "()Z",
        "getShowMaxSelectionMessage",
        "getShowSelectBtn",
        "getTitleVisibility",
        "()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Builder",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/maltaisn/icondialog/IconDialogSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/maltaisn/icondialog/IconDialogSettings$Companion;

.field public static final NO_MAX_SELECTION:I = -0x1


# instance fields
.field private final dialogTitle:I

.field private final headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

.field private final iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

.field private final maxSelection:I

.field private final searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

.field private final showClearBtn:Z

.field private final showMaxSelectionMessage:Z

.field private final showSelectBtn:Z

.field private final titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/maltaisn/icondialog/IconDialogSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/maltaisn/icondialog/IconDialogSettings;->Companion:Lcom/maltaisn/icondialog/IconDialogSettings$Companion;

    .line 105
    new-instance v0, Lcom/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/maltaisn/icondialog/IconDialogSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZ)V
    .locals 1

    const-string v0, "iconFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchVisibility"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersVisibility"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleVisibility"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    iput-object p2, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    iput-object p3, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    iput-object p4, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    iput p5, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    iput p6, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    iput-boolean p7, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    iput-boolean p8, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    iput-boolean p9, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/maltaisn/icondialog/IconDialogSettings;Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZILjava/lang/Object;)Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/maltaisn/icondialog/IconDialogSettings;->copy(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZ)Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/maltaisn/icondialog/filter/IconFilter;
    .locals 1

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    return-object v0
.end method

.method public final component2()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;
    .locals 1

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    return-object v0
.end method

.method public final component3()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;
    .locals 1

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    return-object v0
.end method

.method public final component4()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;
    .locals 1

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    return v0
.end method

.method public final copy(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZ)Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 11

    const-string v0, "iconFilter"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchVisibility"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersVisibility"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleVisibility"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/maltaisn/icondialog/IconDialogSettings;

    move-object v1, v0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/maltaisn/icondialog/IconDialogSettings;-><init>(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZ)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/maltaisn/icondialog/IconDialogSettings;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/maltaisn/icondialog/IconDialogSettings;

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    iget-object v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    iget-object v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    iget-object v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    iget-object v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    iget v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    iget v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    iget-boolean v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    iget-boolean v1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    iget-boolean p1, p1, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDialogTitle()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    return v0
.end method

.method public final getHeadersVisibility()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    return-object v0
.end method

.method public final getIconFilter()Lcom/maltaisn/icondialog/filter/IconFilter;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    return-object v0
.end method

.method public final getMaxSelection()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    return v0
.end method

.method public final getSearchVisibility()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    return-object v0
.end method

.method public final getShowClearBtn()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    return v0
.end method

.method public final getShowMaxSelectionMessage()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    return v0
.end method

.method public final getShowSelectBtn()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    return v0
.end method

.method public final getTitleVisibility()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IconDialogSettings(iconFilter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headersVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showMaxSelectionMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showSelectBtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showClearBtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->iconFilter:Lcom/maltaisn/icondialog/filter/IconFilter;

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "iconFilter"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->searchVisibility:Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "searchVisibility"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->headersVisibility:Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "headersVisibility"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 90
    iget-object v0, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->titleVisibility:Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "titleVisibility"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 91
    const-string v0, "dialogTitle"

    iget v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->dialogTitle:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v0, "maxSelection"

    iget v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->maxSelection:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v0, "showMaxSelectionMessage"

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showMaxSelectionMessage:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    const-string v0, "showSelectBtn"

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showSelectBtn:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v0, "showClearBtn"

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/IconDialogSettings;->showClearBtn:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
