.class public final Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;
.super Landroid/os/AsyncTask;
.source "LibsFragmentCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LibraryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibsFragmentCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibsFragmentCompat.kt\ncom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask\n*L\n1#1,229:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J!\u0010\u0015\u001a\u00020\u00032\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0017\"\u00020\u0002H\u0014\u00a2\u0006\u0002\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003H\u0014\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010\u001c\u001a\u00020\u0003H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;",
        "Landroid/os/AsyncTask;",
        "",
        "",
        "ctx",
        "Landroid/content/Context;",
        "(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Landroid/content/Context;)V",
        "getCtx",
        "()Landroid/content/Context;",
        "setCtx",
        "(Landroid/content/Context;)V",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "getIcon$aboutlibraries",
        "()Landroid/graphics/drawable/Drawable;",
        "setIcon$aboutlibraries",
        "(Landroid/graphics/drawable/Drawable;)V",
        "versionCode",
        "",
        "Ljava/lang/Integer;",
        "versionName",
        "doInBackground",
        "strings",
        "",
        "([Ljava/lang/String;)V",
        "onPostExecute",
        "nothing",
        "(Lkotlin/Unit;)V",
        "onPreExecute",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private icon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

.field private versionCode:Ljava/lang/Integer;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->doInBackground([Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)V
    .locals 10

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getFields()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Lcom/mikepenz/aboutlibraries/Libs;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getLibraryEnchantment()Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/mikepenz/aboutlibraries/Libs;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Lcom/mikepenz/aboutlibraries/Libs;

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getFields()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getLibraryEnchantment()Ljava/util/HashMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2}, Lcom/mikepenz/aboutlibraries/Libs;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    move-object v3, p1

    .line 141
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowIcon()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "aboutLibraries_description_showIcon"

    invoke-static {v0, v1, v2}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractBooleanBundleOrResource(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutShowIcon(Z)V

    .line 142
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersion()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "aboutLibraries_description_showVersion"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractBooleanBundleOrResource(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutShowVersion(Z)V

    .line 143
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersionName()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "aboutLibraries_description_showVersionName"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractBooleanBundleOrResource(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 144
    :goto_3
    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutShowVersionName(Z)V

    .line 145
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersionCode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "aboutLibraries_description_showVersionCode"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractBooleanBundleOrResource(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 146
    :goto_4
    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutShowVersionCode(Z)V

    .line 148
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutAppName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aboutLibraries_description_name"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move-object v0, v2

    :goto_5
    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutAppName(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v4}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, "aboutLibraries_description_text"

    invoke-static {v0, v4, v5}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v2, v0

    :cond_6
    invoke-virtual {p1, v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutDescription(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutAppSpecial1()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aboutLibraries_description_special1_name"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutAppSpecial1(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutAppSpecial1Description()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aboutLibraries_description_special1_text"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutAppSpecial1Description(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutAppSpecial2()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aboutLibraries_description_special2_name"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutAppSpecial2(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutAppSpecial2Description()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aboutLibraries_description_special2_text"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutAppSpecial2Description(Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutAppSpecial3()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aboutLibraries_description_special3_name"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutAppSpecial3(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutAppSpecial3Description()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aboutLibraries_description_special3_text"

    invoke-static {v0, v2, v4}, Lcom/mikepenz/aboutlibraries/util/ContextExtensionKt;->extractStringBundleOrResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->setAboutAppSpecial3Description(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getLibraryModification()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/mikepenz/aboutlibraries/Libs;->modifyLibraries(Ljava/util/HashMap;)V

    .line 162
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getSort()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getLibraryComparator()Ljava/util/Comparator;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getComparator$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/Comparator;

    move-result-object p1

    if-nez p1, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    .line 164
    :goto_6
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    iget-object v4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getInternalLibraries()[Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getExcludeLibraries()[Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAutoDetect()Z

    move-result v7

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getCheckCachedDetection()Z

    move-result v8

    invoke-virtual/range {v3 .. v9}, Lcom/mikepenz/aboutlibraries/Libs;->prepareLibraries(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;ZZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$setLibraries$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Ljava/util/ArrayList;)V

    .line 166
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getComparator$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/Comparator;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 167
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getLibraries$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getComparator$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_7

    .line 168
    :cond_8
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getLibraryComparator()Ljava/util/Comparator;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 169
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getLibraries$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v2}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getLibraryComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    :cond_9
    :goto_7
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersion()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersionName()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersionCode()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    .line 174
    :cond_b
    :goto_8
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowIcon()Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v0, :cond_d

    .line 176
    iget-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 180
    move-object v3, v2

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 181
    move-object v3, v2

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 183
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :try_start_1
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    nop

    goto :goto_9

    :catch_1
    nop

    move-object v3, v2

    :goto_9
    move-object v0, v2

    .line 190
    :goto_a
    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowIcon()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v3, :cond_c

    .line 191
    invoke-virtual {v3, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->icon:Landroid/graphics/drawable/Drawable;

    .line 195
    :cond_c
    move-object p1, v2

    check-cast p1, Ljava/lang/String;

    iput-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->versionName:Ljava/lang/String;

    .line 196
    move-object p1, v2

    check-cast p1, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->versionCode:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 198
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->versionName:Ljava/lang/String;

    .line 199
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->versionCode:Ljava/lang/Integer;

    :cond_d
    return-void
.end method

.method public final getCtx()Landroid/content/Context;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public final getIcon$aboutlibraries()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->onPostExecute(Lkotlin/Unit;)V

    return-void
.end method

.method protected onPostExecute(Lkotlin/Unit;)V
    .locals 5

    const-string v0, "nothing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getItemAdapter$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->clear()Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 209
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersion()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersionName()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowVersionCode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v3}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mikepenz/aboutlibraries/LibsBuilder;->getAboutShowIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getItemAdapter$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    new-instance v3, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;

    iget-object v4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v4}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;-><init>(Lcom/mikepenz/aboutlibraries/LibsBuilder;)V

    iget-object v4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;->withAboutVersionName(Ljava/lang/String;)Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;

    move-result-object v3

    iget-object v4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->versionCode:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;->withAboutVersionCode(Ljava/lang/Integer;)Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;

    move-result-object v3

    iget-object v4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;->withAboutIcon(Landroid/graphics/drawable/Drawable;)Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;

    move-result-object v3

    check-cast v3, Lcom/mikepenz/fastadapter/IItem;

    new-array v2, v2, [Lcom/mikepenz/fastadapter/IItem;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 216
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getLibraries$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/aboutlibraries/entity/Library;

    .line 218
    new-instance v3, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;

    const-string v4, "library"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v4}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getBuilder$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/aboutlibraries/LibsBuilder;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;-><init>(Lcom/mikepenz/aboutlibraries/entity/Library;Lcom/mikepenz/aboutlibraries/LibsBuilder;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v1}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getItemAdapter$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v1

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->add(Ljava/util/List;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;

    .line 222
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 225
    sget-object p1, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getLibTaskCallback()Lcom/mikepenz/aboutlibraries/LibTaskCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->this$0:Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;

    invoke-static {v0}, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;->access$getItemAdapter$p(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;)Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mikepenz/aboutlibraries/LibTaskCallback;->onLibTaskFinished(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)V

    :cond_4
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 129
    sget-object v0, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->Companion:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;->getInstance()Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;->getLibTaskCallback()Lcom/mikepenz/aboutlibraries/LibTaskCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mikepenz/aboutlibraries/LibTaskCallback;->onLibTaskStarted()V

    :cond_0
    return-void
.end method

.method public final setCtx(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->ctx:Landroid/content/Context;

    return-void
.end method

.method public final setIcon$aboutlibraries(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
