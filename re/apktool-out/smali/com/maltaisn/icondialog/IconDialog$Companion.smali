.class public final Lcom/maltaisn/icondialog/IconDialog$Companion;
.super Ljava/lang/Object;
.source "IconDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/IconDialog$Companion;",
        "",
        "()V",
        "SEARCH_DELAY",
        "",
        "newInstance",
        "Lcom/maltaisn/icondialog/IconDialog;",
        "settings",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/maltaisn/icondialog/IconDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/maltaisn/icondialog/IconDialogSettings;)Lcom/maltaisn/icondialog/IconDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    new-instance v0, Lcom/maltaisn/icondialog/IconDialog;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/IconDialog;-><init>()V

    .line 476
    invoke-virtual {v0, p1}, Lcom/maltaisn/icondialog/IconDialog;->setSettings(Lcom/maltaisn/icondialog/IconDialogSettings;)V

    return-object v0
.end method
