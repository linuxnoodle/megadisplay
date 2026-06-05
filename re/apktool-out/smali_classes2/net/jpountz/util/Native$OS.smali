.class final enum Lnet/jpountz/util/Native$OS;
.super Ljava/lang/Enum;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/util/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/util/Native$OS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/util/Native$OS;

.field public static final enum LINUX:Lnet/jpountz/util/Native$OS;

.field public static final enum MAC:Lnet/jpountz/util/Native$OS;

.field public static final enum SOLARIS:Lnet/jpountz/util/Native$OS;

.field public static final enum WINDOWS:Lnet/jpountz/util/Native$OS;


# instance fields
.field public final libExtension:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lnet/jpountz/util/Native$OS;

    const-string v1, "WINDOWS"

    const/4 v2, 0x0

    const-string v3, "win32"

    const-string v4, "so"

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/jpountz/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/jpountz/util/Native$OS;->WINDOWS:Lnet/jpountz/util/Native$OS;

    new-instance v1, Lnet/jpountz/util/Native$OS;

    const-string v3, "linux"

    const-string v5, "LINUX"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3, v4}, Lnet/jpountz/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnet/jpountz/util/Native$OS;->LINUX:Lnet/jpountz/util/Native$OS;

    new-instance v3, Lnet/jpountz/util/Native$OS;

    const-string v5, "darwin"

    const-string v7, "dylib"

    const-string v8, "MAC"

    const/4 v9, 0x2

    invoke-direct {v3, v8, v9, v5, v7}, Lnet/jpountz/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnet/jpountz/util/Native$OS;->MAC:Lnet/jpountz/util/Native$OS;

    new-instance v5, Lnet/jpountz/util/Native$OS;

    const-string v7, "solaris"

    const-string v8, "SOLARIS"

    const/4 v10, 0x3

    invoke-direct {v5, v8, v10, v7, v4}, Lnet/jpountz/util/Native$OS;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lnet/jpountz/util/Native$OS;->SOLARIS:Lnet/jpountz/util/Native$OS;

    const/4 v4, 0x4

    .line 27
    new-array v4, v4, [Lnet/jpountz/util/Native$OS;

    aput-object v0, v4, v2

    aput-object v1, v4, v6

    aput-object v3, v4, v9

    aput-object v5, v4, v10

    sput-object v4, Lnet/jpountz/util/Native$OS;->$VALUES:[Lnet/jpountz/util/Native$OS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lnet/jpountz/util/Native$OS;->name:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lnet/jpountz/util/Native$OS;->libExtension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/util/Native$OS;
    .locals 1

    .line 27
    const-class v0, Lnet/jpountz/util/Native$OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/util/Native$OS;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/util/Native$OS;
    .locals 1

    .line 27
    sget-object v0, Lnet/jpountz/util/Native$OS;->$VALUES:[Lnet/jpountz/util/Native$OS;

    invoke-virtual {v0}, [Lnet/jpountz/util/Native$OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/util/Native$OS;

    return-object v0
.end method
