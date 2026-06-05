.class public final Lcom/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "IconDialogSettings.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/IconDialogSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconDialogSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconDialogSettings.kt\ncom/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1\n+ 2 IconDialogSettings.kt\ncom/maltaisn/icondialog/IconDialogSettings$Companion\n*L\n1#1,129:1\n125#2:130\n*E\n*S KotlinDebug\n*F\n+ 1 IconDialogSettings.kt\ncom/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1\n*L\n106#1:130\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/maltaisn/icondialog/IconDialogSettings;",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lcom/maltaisn/icondialog/IconDialogSettings;",
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
.method constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/maltaisn/icondialog/IconDialogSettings;->Companion:Lcom/maltaisn/icondialog/IconDialogSettings$Companion;

    .line 130
    new-instance v0, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;-><init>()V

    .line 107
    const-class v1, Lcom/maltaisn/icondialog/IconDialogSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "parcel.readBundle(IconDi\u2026class.java.classLoader)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const-string v1, "iconFilter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v1, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setIconFilter(Lcom/maltaisn/icondialog/filter/DefaultIconFilter;)V

    .line 109
    const-string v1, "searchVisibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setSearchVisibility(Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;)V

    .line 110
    const-string v1, "headersVisibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setHeadersVisibility(Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;)V

    .line 111
    const-string v1, "titleVisibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setTitleVisibility(Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;)V

    .line 112
    const-string v1, "dialogTitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setDialogTitle(I)V

    .line 113
    const-string v1, "maxSelection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setMaxSelection(I)V

    .line 114
    const-string v1, "showMaxSelectionMessage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setShowMaxSelectionMessage(Z)V

    .line 115
    const-string v1, "showSelectBtn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setShowSelectBtn(Z)V

    .line 116
    const-string v1, "showClearBtn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->setShowClearBtn(Z)V

    .line 130
    invoke-virtual {v0}, Lcom/maltaisn/icondialog/IconDialogSettings$Builder;->build()Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object p1

    return-object p1

    .line 111
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialog.TitleVisibility"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialog.HeadersVisibility"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.maltaisn.icondialog.IconDialog.SearchVisibility"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/maltaisn/icondialog/IconDialogSettings;
    .locals 0

    .line 119
    new-array p1, p1, [Lcom/maltaisn/icondialog/IconDialogSettings;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/maltaisn/icondialog/IconDialogSettings$Companion$CREATOR$1;->newArray(I)[Lcom/maltaisn/icondialog/IconDialogSettings;

    move-result-object p1

    return-object p1
.end method
