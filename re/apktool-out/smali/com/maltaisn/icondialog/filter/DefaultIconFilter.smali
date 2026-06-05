.class public Lcom/maltaisn/icondialog/filter/DefaultIconFilter;
.super Ljava/lang/Object;
.source "DefaultIconFilter.kt"

# interfaces
.implements Lcom/maltaisn/icondialog/filter/IconFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultIconFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultIconFilter.kt\ncom/maltaisn/icondialog/filter/DefaultIconFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1418#2,9:177\n1648#2,2:186\n1427#2:188\n1556#2,3:189\n1556#2,3:192\n*E\n*S KotlinDebug\n*F\n+ 1 DefaultIconFilter.kt\ncom/maltaisn/icondialog/filter/DefaultIconFilter\n*L\n81#1,9:177\n81#1,2:186\n81#1:188\n96#1,3:189\n115#1,3:192\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0013H\u0016J\u001e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0014J \u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0013H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006)"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/filter/DefaultIconFilter;",
        "Lcom/maltaisn/icondialog/filter/IconFilter;",
        "()V",
        "idSearchEnabled",
        "",
        "getIdSearchEnabled",
        "()Z",
        "setIdSearchEnabled",
        "(Z)V",
        "queryNormalized",
        "getQueryNormalized",
        "setQueryNormalized",
        "termSplitPattern",
        "Lkotlin/text/Regex;",
        "getTermSplitPattern",
        "()Lkotlin/text/Regex;",
        "setTermSplitPattern",
        "(Lkotlin/text/Regex;)V",
        "compare",
        "",
        "icon1",
        "Lcom/maltaisn/icondialog/data/Icon;",
        "icon2",
        "describeContents",
        "matchesSearch",
        "tag",
        "Lcom/maltaisn/icondialog/data/NamedTag$Value;",
        "terms",
        "",
        "",
        "queryIcons",
        "",
        "pack",
        "Lcom/maltaisn/icondialog/pack/IconPack;",
        "query",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
            "Lcom/maltaisn/icondialog/filter/DefaultIconFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion;


# instance fields
.field private idSearchEnabled:Z

.field private queryNormalized:Z

.field private termSplitPattern:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->Companion:Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion;

    .line 162
    new-instance v0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[;,\\s]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->termSplitPattern:Lkotlin/text/Regex;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->queryNormalized:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/maltaisn/icondialog/data/Icon;Lcom/maltaisn/icondialog/data/Icon;)I
    .locals 6

    const-string v0, "icon1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 128
    invoke-virtual {p2}, Lcom/maltaisn/icondialog/data/Icon;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 130
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 131
    invoke-virtual {p2}, Lcom/maltaisn/icondialog/data/Icon;->getTags()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eq v0, v1, :cond_3

    .line 141
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result p1

    invoke-virtual {p2}, Lcom/maltaisn/icondialog/data/Icon;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    :goto_2
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/maltaisn/icondialog/data/Icon;

    check-cast p2, Lcom/maltaisn/icondialog/data/Icon;

    invoke-virtual {p0, p1, p2}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->compare(Lcom/maltaisn/icondialog/data/Icon;Lcom/maltaisn/icondialog/data/Icon;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getIdSearchEnabled()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->idSearchEnabled:Z

    return v0
.end method

.method public final getQueryNormalized()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->queryNormalized:Z

    return v0
.end method

.method public final getTermSplitPattern()Lkotlin/text/Regex;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->termSplitPattern:Lkotlin/text/Regex;

    return-object v0
.end method

.method protected matchesSearch(Lcom/maltaisn/icondialog/data/NamedTag$Value;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maltaisn/icondialog/data/NamedTag$Value;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terms"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->queryNormalized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/NamedTag$Value;->getNormValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/data/NamedTag$Value;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 115
    :goto_0
    check-cast p2, Ljava/lang/Iterable;

    .line 192
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method public queryIcons(Lcom/maltaisn/icondialog/pack/IconPack;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maltaisn/icondialog/pack/IconPack;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/maltaisn/icondialog/data/Icon;",
            ">;"
        }
    .end annotation

    const-string v0, "pack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->idSearchEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "#"

    const/4 v3, 0x2

    invoke-static {p2, v0, v2, v3, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/maltaisn/icondialog/pack/IconPack;->getIcon(I)Lcom/maltaisn/icondialog/data/Icon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    new-array p1, v0, [Lcom/maltaisn/icondialog/data/Icon;

    aput-object v3, p1, v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/maltaisn/icondialog/pack/IconPack;->getAllIcons()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_e

    .line 71
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_5

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->termSplitPattern:Lkotlin/text/Regex;

    if-nez v4, :cond_2

    .line 78
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 80
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v4, v3, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p2

    .line 77
    :goto_0
    check-cast p2, Ljava/lang/Iterable;

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 186
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 185
    check-cast v3, Ljava/lang/String;

    .line 82
    iget-boolean v4, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->queryNormalized:Z

    if-eqz v4, :cond_5

    .line 83
    invoke-static {v3}, Lcom/maltaisn/icondialog/ExtensionsKt;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 85
    :cond_5
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Locale.ROOT"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :goto_2
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v3, v1

    :cond_6
    if-eqz v3, :cond_4

    .line 185
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 91
    move-object p2, v0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    :goto_3
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_e

    .line 93
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maltaisn/icondialog/data/Icon;

    .line 94
    invoke-virtual {v3}, Lcom/maltaisn/icondialog/data/Icon;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    invoke-virtual {p1, v4}, Lcom/maltaisn/icondialog/pack/IconPack;->getTag(Ljava/lang/String;)Lcom/maltaisn/icondialog/data/IconTag;

    move-result-object v4

    instance-of v5, v4, Lcom/maltaisn/icondialog/data/NamedTag;

    if-nez v5, :cond_a

    move-object v4, v1

    :cond_a
    check-cast v4, Lcom/maltaisn/icondialog/data/NamedTag;

    if-eqz v4, :cond_9

    .line 96
    invoke-virtual {v4}, Lcom/maltaisn/icondialog/data/NamedTag;->getValues()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 189
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_b

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_4

    .line 190
    :cond_b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/maltaisn/icondialog/data/NamedTag$Value;

    .line 96
    invoke-virtual {p0, v5, v2}, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->matchesSearch(Lcom/maltaisn/icondialog/data/NamedTag$Value;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_3

    .line 102
    :cond_d
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    :goto_5
    return-object v0
.end method

.method public final setIdSearchEnabled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->idSearchEnabled:Z

    return-void
.end method

.method public final setQueryNormalized(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->queryNormalized:Z

    return-void
.end method

.method public final setTermSplitPattern(Lkotlin/text/Regex;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->termSplitPattern:Lkotlin/text/Regex;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 152
    iget-object v0, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->termSplitPattern:Lkotlin/text/Regex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/text/Regex;->getPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "termSplitPattern"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "queryNormalized"

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->queryNormalized:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "idSearchEnabled"

    iget-boolean v1, p0, Lcom/maltaisn/icondialog/filter/DefaultIconFilter;->idSearchEnabled:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
