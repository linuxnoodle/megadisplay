.class public final Lkotlin/script/dependencies/KotlinScriptExternalDependencies$DefaultImpls;
.super Ljava/lang/Object;
.source "dependencies_deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/dependencies/KotlinScriptExternalDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ndependencies_deprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 dependencies_deprecated.kt\nkotlin/script/dependencies/KotlinScriptExternalDependencies$DefaultImpls\n+ 2 dependencies_deprecated.kt\nkotlin/script/dependencies/Dependencies_deprecatedKt\n*L\n1#1,60:1\n60#2:61\n60#2:62\n60#2:63\n60#2:64\n*S KotlinDebug\n*F\n+ 1 dependencies_deprecated.kt\nkotlin/script/dependencies/KotlinScriptExternalDependencies$DefaultImpls\n*L\n32#1:61\n33#1:62\n34#1:63\n35#1:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static compareTo(Lkotlin/script/dependencies/KotlinScriptExternalDependencies;Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getJavaHome()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getJavaHome()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lkotlin/script/dependencies/Dependencies_deprecatedKt;->access$compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p0}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getClasspath()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getClasspath()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/script/dependencies/Dependencies_deprecatedKt;->access$compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {p0}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getImports()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getImports()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/script/dependencies/Dependencies_deprecatedKt;->access$compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 34
    :cond_2
    invoke-interface {p0}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getSources()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getSources()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/script/dependencies/Dependencies_deprecatedKt;->access$compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 35
    :cond_3
    invoke-interface {p0}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getScripts()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/script/dependencies/KotlinScriptExternalDependencies;->getScripts()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/script/dependencies/Dependencies_deprecatedKt;->access$compareIterables(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    :goto_3
    return v0
.end method

.method public static getClasspath(Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public static getImports(Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public static getJavaHome(Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScripts(Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public static getSources(Lkotlin/script/dependencies/KotlinScriptExternalDependencies;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method
