.class public final enum Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;
.super Ljava/lang/Enum;
.source "Libs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/Libs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LibraryFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;",
        "",
        "(Ljava/lang/String;I)V",
        "AUTHOR_NAME",
        "AUTHOR_WEBSITE",
        "LIBRARY_NAME",
        "LIBRARY_DESCRIPTION",
        "LIBRARY_VERSION",
        "LIBRARY_ARTIFACT_ID",
        "LIBRARY_WEBSITE",
        "LIBRARY_OPEN_SOURCE",
        "LIBRARY_REPOSITORY_LINK",
        "LIBRARY_CLASSPATH",
        "LICENSE_NAME",
        "LICENSE_SHORT_DESCRIPTION",
        "LICENSE_DESCRIPTION",
        "LICENSE_WEBSITE",
        "aboutlibraries-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum AUTHOR_NAME:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum AUTHOR_WEBSITE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_ARTIFACT_ID:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_CLASSPATH:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_DESCRIPTION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_NAME:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_OPEN_SOURCE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_REPOSITORY_LINK:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_VERSION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LIBRARY_WEBSITE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LICENSE_DESCRIPTION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LICENSE_NAME:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LICENSE_SHORT_DESCRIPTION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

.field public static final enum LICENSE_WEBSITE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v1, "AUTHOR_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->AUTHOR_NAME:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v1, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v3, "AUTHOR_WEBSITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->AUTHOR_WEBSITE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v3, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v5, "LIBRARY_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_NAME:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v5, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v7, "LIBRARY_DESCRIPTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_DESCRIPTION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v7, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v9, "LIBRARY_VERSION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_VERSION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v9, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v11, "LIBRARY_ARTIFACT_ID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_ARTIFACT_ID:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v11, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v13, "LIBRARY_WEBSITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_WEBSITE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v13, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v15, "LIBRARY_OPEN_SOURCE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_OPEN_SOURCE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v15, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v14, "LIBRARY_REPOSITORY_LINK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_REPOSITORY_LINK:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v14, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v12, "LIBRARY_CLASSPATH"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LIBRARY_CLASSPATH:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v12, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v10, "LICENSE_NAME"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LICENSE_NAME:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v10, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v8, "LICENSE_SHORT_DESCRIPTION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LICENSE_SHORT_DESCRIPTION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v8, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v6, "LICENSE_DESCRIPTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LICENSE_DESCRIPTION:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    new-instance v6, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const-string v4, "LICENSE_WEBSITE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->LICENSE_WEBSITE:Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->$VALUES:[Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;
    .locals 1

    const-class v0, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;
    .locals 1

    sget-object v0, Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->$VALUES:[Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    invoke-virtual {v0}, [Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;

    return-object v0
.end method
