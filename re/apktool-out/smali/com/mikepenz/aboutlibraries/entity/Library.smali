.class public final Lcom/mikepenz/aboutlibraries/entity/Library;
.super Ljava/lang/Object;
.source "Library.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mikepenz/aboutlibraries/entity/Library;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibrary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Library.kt\ncom/mikepenz/aboutlibraries/entity/Library\n*L\n1#1,48:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u008f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0013J\u0011\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0000H\u0096\u0002J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\t\u00109\u001a\u00020\u0005H\u00c6\u0003J\t\u0010:\u001a\u00020\u0003H\u00c6\u0003J\t\u0010;\u001a\u00020\u0003H\u00c6\u0003J\t\u0010<\u001a\u00020\u0005H\u00c6\u0003J\t\u0010=\u001a\u00020\u0005H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\t\u0010@\u001a\u00020\u0003H\u00c6\u0003J\t\u0010A\u001a\u00020\u0003H\u00c6\u0003J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\t\u0010C\u001a\u00020\u0003H\u00c6\u0003J\u0097\u0001\u0010D\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003H\u00c6\u0001J\u000e\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u0000J\u0013\u0010H\u001a\u00020\u00052\u0008\u00105\u001a\u0004\u0018\u00010IH\u00d6\u0003J\t\u0010J\u001a\u000204H\u00d6\u0001J\u0012\u0010K\u001a\u0004\u0018\u00010\u00032\u0006\u0010L\u001a\u00020\u0003H\u0002J\t\u0010M\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u001e\"\u0004\u0008!\u0010 R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u001e\"\u0004\u0008\"\u0010 R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0015\"\u0004\u0008$\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0015\"\u0004\u0008(\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0015\"\u0004\u0008*\u0010\u0017R\u001a\u0010\r\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0015\"\u0004\u0008,\u0010\u0017R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0015\"\u0004\u00082\u0010\u0017\u00a8\u0006N"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/entity/Library;",
        "",
        "definedName",
        "",
        "isInternal",
        "",
        "isPlugin",
        "libraryName",
        "author",
        "authorWebsite",
        "libraryDescription",
        "libraryVersion",
        "libraryArtifactId",
        "libraryWebsite",
        "license",
        "Lcom/mikepenz/aboutlibraries/entity/License;",
        "isOpenSource",
        "repositoryLink",
        "classPath",
        "(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;)V",
        "getAuthor",
        "()Ljava/lang/String;",
        "setAuthor",
        "(Ljava/lang/String;)V",
        "getAuthorWebsite",
        "setAuthorWebsite",
        "getClassPath",
        "setClassPath",
        "getDefinedName",
        "setDefinedName",
        "()Z",
        "setInternal",
        "(Z)V",
        "setOpenSource",
        "setPlugin",
        "getLibraryArtifactId",
        "setLibraryArtifactId",
        "getLibraryDescription",
        "setLibraryDescription",
        "getLibraryName",
        "setLibraryName",
        "getLibraryVersion",
        "setLibraryVersion",
        "getLibraryWebsite",
        "setLibraryWebsite",
        "getLicense",
        "()Lcom/mikepenz/aboutlibraries/entity/License;",
        "setLicense",
        "(Lcom/mikepenz/aboutlibraries/entity/License;)V",
        "getRepositoryLink",
        "setRepositoryLink",
        "compareTo",
        "",
        "other",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "enchantBy",
        "",
        "enchantWith",
        "equals",
        "",
        "hashCode",
        "ifNotEmpty",
        "receiver",
        "toString",
        "aboutlibraries-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private author:Ljava/lang/String;

.field private authorWebsite:Ljava/lang/String;

.field private classPath:Ljava/lang/String;

.field private definedName:Ljava/lang/String;

.field private isInternal:Z

.field private isOpenSource:Z

.field private isPlugin:Z

.field private libraryArtifactId:Ljava/lang/String;

.field private libraryDescription:Ljava/lang/String;

.field private libraryName:Ljava/lang/String;

.field private libraryVersion:Ljava/lang/String;

.field private libraryWebsite:Ljava/lang/String;

.field private license:Lcom/mikepenz/aboutlibraries/entity/License;

.field private repositoryLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "definedName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorWebsite"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryDescription"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryVersion"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryArtifactId"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryWebsite"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repositoryLink"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classPath"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    iput-boolean p3, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    iput-object p4, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    iput-object p5, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    iput-object p6, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    iput-object p7, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    iput-object p8, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    iput-object p9, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    iput-object p10, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    iput-object p11, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    iput-boolean p12, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    iput-object p13, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    iput-object p14, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 7
    const-string v2, ""

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 16
    move-object v3, v1

    check-cast v3, Lcom/mikepenz/aboutlibraries/entity/License;

    move-object v14, v1

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_9

    :cond_9
    move/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    .line 21
    invoke-direct/range {v3 .. v17}, Lcom/mikepenz/aboutlibraries/entity/Library;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/mikepenz/aboutlibraries/entity/Library;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/mikepenz/aboutlibraries/entity/Library;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p14

    :goto_d
    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/mikepenz/aboutlibraries/entity/Library;->copy(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;)Lcom/mikepenz/aboutlibraries/entity/Library;

    move-result-object v0

    return-object v0
.end method

.method private final ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 29
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public compareTo(Lcom/mikepenz/aboutlibraries/entity/Library;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->compareTo(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 4
    check-cast p1, Lcom/mikepenz/aboutlibraries/entity/Library;

    invoke-virtual {p0, p1}, Lcom/mikepenz/aboutlibraries/entity/Library;->compareTo(Lcom/mikepenz/aboutlibraries/entity/Library;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/mikepenz/aboutlibraries/entity/License;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    return v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;)Lcom/mikepenz/aboutlibraries/entity/Library;
    .locals 16

    const-string v0, "definedName"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryName"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorWebsite"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryDescription"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryVersion"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryArtifactId"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryWebsite"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repositoryLink"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classPath"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mikepenz/aboutlibraries/entity/Library;

    move-object v1, v0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v15}, Lcom/mikepenz/aboutlibraries/entity/Library;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mikepenz/aboutlibraries/entity/License;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final enchantBy(Lcom/mikepenz/aboutlibraries/entity/Library;)V
    .locals 1

    const-string v0, "enchantWith"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    :goto_7
    iput-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    .line 44
    iget-boolean v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    iput-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    .line 45
    iget-object p1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mikepenz/aboutlibraries/entity/Library;->ifNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    :goto_8
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/mikepenz/aboutlibraries/entity/Library;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mikepenz/aboutlibraries/entity/Library;

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    iget-boolean v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    iget-boolean v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    iget-boolean v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    iget-object v1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorWebsite()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public final getClassPath()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefinedName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraryArtifactId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraryDescription()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraryName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraryVersion()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibraryWebsite()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public final getLicense()Lcom/mikepenz/aboutlibraries/entity/License;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    return-object v0
.end method

.method public final getRepositoryLink()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    move v3, v2

    :goto_9
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final isInternal()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    return v0
.end method

.method public final isOpenSource()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    return v0
.end method

.method public final isPlugin()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    return v0
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    return-void
.end method

.method public final setAuthorWebsite(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    return-void
.end method

.method public final setClassPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    return-void
.end method

.method public final setDefinedName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    return-void
.end method

.method public final setInternal(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    return-void
.end method

.method public final setLibraryArtifactId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    return-void
.end method

.method public final setLibraryDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    return-void
.end method

.method public final setLibraryName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    return-void
.end method

.method public final setLibraryVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    return-void
.end method

.method public final setLibraryWebsite(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    return-void
.end method

.method public final setLicense(Lcom/mikepenz/aboutlibraries/entity/License;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    return-void
.end method

.method public final setOpenSource(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    return-void
.end method

.method public final setPlugin(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    return-void
.end method

.method public final setRepositoryLink(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Library(definedName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->definedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isInternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isPlugin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", libraryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorWebsite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->authorWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", libraryDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", libraryVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", libraryArtifactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryArtifactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", libraryWebsite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->libraryWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", license="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->license:Lcom/mikepenz/aboutlibraries/entity/License;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->isOpenSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repositoryLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->repositoryLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", classPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/entity/Library;->classPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
