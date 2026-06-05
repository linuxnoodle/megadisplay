.class public final Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "DefaultIconFilter.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/filter/DefaultIconFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/maltaisn/icondialog/filter/DefaultIconFilter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultIconFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultIconFilter.kt\ncom/maltaisn/icondialog/filter/DefaultIconFilter$Companion$CREATOR$1\n*L\n1#1,176:1\n*E\n"
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
        "com/maltaisn/icondialog/filter/DefaultIconFilter$Companion$CREATOR$1",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/maltaisn/icondialog/filter/DefaultIconFilter;",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lcom/maltaisn/icondialog/filter/DefaultIconFilter;",
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

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/maltaisn/icondialog/filter/DefaultIconFilter;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;-><init>()V

    .line 164
    const-class v1, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "parcel.readBundle(Defaul\u2026class.java.classLoader)!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const-string v1, "termSplitPattern"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->setTermSplitPattern(Lkotlin/text/Regex;)V

    .line 166
    const-string v1, "queryNormalized"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->setQueryNormalized(Z)V

    .line 167
    const-string v1, "idSearchEnabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->setIdSearchEnabled(Z)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/maltaisn/icondialog/filter/DefaultIconFilter;
    .locals 0

    .line 171
    new-array p1, p1, [Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion$CREATOR$1;->newArray(I)[Lcom/maltaisn/icondialog/filter/DefaultIconFilter;

    move-result-object p1

    return-object p1
.end method
