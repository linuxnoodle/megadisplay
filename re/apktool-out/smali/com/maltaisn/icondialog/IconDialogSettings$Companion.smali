.class public final Lcom/maltaisn/icondialog/IconDialogSettings$Companion;
.super Ljava/lang/Object;
.source "IconDialogSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialogSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconDialogSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconDialogSettings.kt\ncom/maltaisn/icondialog/IconDialogSettings$Companion\n*L\n1#1,129:1\n125#1:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0008\u001a\u00020\u00052\u0019\u0008\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0008\rH\u0086\nR\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialogSettings$Companion;",
        "",
        "()V",
        "CREATOR",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
        "NO_MAX_SELECTION",
        "",
        "invoke",
        "init",
        "Lkotlin/Function1;",
        "Lcom/maltaisn/icondialog/IconDialogSettings$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogSettings$Companion;-><init>()V

    return-void
.end method

.method public static synthetic invoke$default(Lcom/maltaisn/icondialog/IconDialogSettings$Companion;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 0

    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_0

    .line 125
    sget-object p0, Lcom/maltaisn/icondialog/IconDialogSettings$Companion$invoke$1;->INSTANCE:Lcom/maltaisn/icondialog/IconDialogSettings$Companion$invoke$1;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    const-string p0, "init"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance p0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;

    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;-><init>()V

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->build()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke(Lkotlin/jvm/functions/Function1;)Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/maltaisn/icondialog/IconDialogSettings$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/maltaisn/icondialog/IconDialogSettings;"
        }
    .end annotation

    const-string v0, "init"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->build()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object p1

    return-object p1
.end method
