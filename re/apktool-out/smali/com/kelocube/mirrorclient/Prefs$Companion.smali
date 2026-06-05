.class public final Lcom/kelocube/mirrorclient/Prefs$Companion;
.super Ljava/lang/Object;
.source "Prefs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kelocube/mirrorclient/Prefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrefs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Prefs.kt\ncom/kelocube/mirrorclient/Prefs$Companion\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n26#2:120\n1549#3:121\n1620#3,3:122\n*S KotlinDebug\n*F\n+ 1 Prefs.kt\ncom/kelocube/mirrorclient/Prefs$Companion\n*L\n104#1:120\n108#1:121\n108#1:122,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0007J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/kelocube/mirrorclient/Prefs$Companion;",
        "",
        "()V",
        "getActionMenu",
        "",
        "Lcom/kelocube/mirrorclient/models/ActionMenuButton;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)[Lcom/kelocube/mirrorclient/models/ActionMenuButton;",
        "getOrientation",
        "",
        "isOrientationPortrait",
        "",
        "setActionMenu",
        "",
        "data",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kelocube/mirrorclient/Prefs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActionMenu(Landroid/content/Context;)[Lcom/kelocube/mirrorclient/models/ActionMenuButton;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 61
    const-string v0, "action_menu_data"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-direct {p1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;-><init>()V

    const/16 v1, 0xd2

    .line 65
    invoke-virtual {p1, v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setTapAction(I)V

    const/16 v1, 0xdc

    .line 66
    invoke-virtual {p1, v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setHoldAction(I)V

    const/16 v1, 0x38d

    .line 67
    invoke-virtual {p1, v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setIcon(I)V

    .line 68
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    new-instance v1, Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-direct {v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;-><init>()V

    const/16 v2, 0xd3

    .line 70
    invoke-virtual {v1, v2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setTapAction(I)V

    const/16 v2, 0xdd

    .line 71
    invoke-virtual {v1, v2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setHoldAction(I)V

    const/16 v2, 0x38e

    .line 72
    invoke-virtual {v1, v2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setIcon(I)V

    .line 73
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    new-instance v2, Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-direct {v2}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;-><init>()V

    const/16 v3, 0xd4

    .line 75
    invoke-virtual {v2, v3}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setTapAction(I)V

    const/16 v3, 0xde

    .line 76
    invoke-virtual {v2, v3}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setHoldAction(I)V

    const/16 v3, 0x390

    .line 77
    invoke-virtual {v2, v3}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setIcon(I)V

    .line 78
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    new-instance v3, Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-direct {v3}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;-><init>()V

    const/16 v4, 0xe7

    .line 80
    invoke-virtual {v3, v4}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setTapAction(I)V

    .line 81
    invoke-virtual {v3, v0}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setHoldAction(I)V

    const/16 v4, 0xac

    .line 82
    invoke-virtual {v3, v4}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setIcon(I)V

    .line 83
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    new-instance v4, Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-direct {v4}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;-><init>()V

    const/16 v5, 0x11d

    .line 85
    invoke-virtual {v4, v5}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setTapAction(I)V

    const/16 v5, 0x51d

    .line 86
    invoke-virtual {v4, v5}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setHoldAction(I)V

    const/16 v5, 0x3cb

    .line 87
    invoke-virtual {v4, v5}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setIcon(I)V

    .line 88
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x5

    .line 84
    new-array v5, v5, [Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object v1, v5, p1

    const/4 p1, 0x2

    aput-object v2, v5, p1

    const/4 p1, 0x3

    aput-object v3, v5, p1

    const/4 p1, 0x4

    aput-object v4, v5, p1

    return-object v5

    .line 92
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array v2, p1, [Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    .line 94
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 95
    new-instance v5, Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    invoke-direct {v5}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;-><init>()V

    .line 96
    const-string v6, "tap"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setTapAction(I)V

    .line 97
    const-string v6, "hold"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setHoldAction(I)V

    .line 98
    const-string v6, "icon"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->setIcon(I)V

    .line 99
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 95
    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p1

    .line 102
    invoke-static {p0}, Lcom/kelocube/mirrorclient/UtilKt;->getTAG(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    new-array p1, v0, [Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    return-object p1
.end method

.method public final getOrientation(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 39
    const-string v0, "orientation"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "landscape_fixed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :sswitch_2
    const-string v1, "portrait_fixed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "reverse_portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_5
    const-string v1, "reverse_landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    :cond_5
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x28437262 -> :sswitch_5
        -0x1df47a8 -> :sswitch_4
        0x2b77bb9b -> :sswitch_3
        0x52d0a5d0 -> :sswitch_2
        0x5545f2bb -> :sswitch_1
        0x7da104f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final isOrientationPortrait(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 52
    const-string v0, "orientation"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "landscape_fixed"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    const-string v1, "landscape"

    goto :goto_0

    :sswitch_2
    const-string v1, "portrait_fixed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :sswitch_4
    const-string v1, "reverse_portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "reverse_landscape"

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x28437262 -> :sswitch_5
        -0x1df47a8 -> :sswitch_4
        0x2b77bb9b -> :sswitch_3
        0x52d0a5d0 -> :sswitch_2
        0x5545f2bb -> :sswitch_1
        0x7da104f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setActionMenu(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/kelocube/mirrorclient/models/ActionMenuButton;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 108
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 122
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 123
    check-cast v1, Lcom/kelocube/mirrorclient/models/ActionMenuButton;

    .line 109
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 110
    const-string v3, "tap"

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getTapAction()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v3, "hold"

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getHoldAction()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v3, "icon"

    invoke-virtual {v1}, Lcom/kelocube/mirrorclient/models/ActionMenuButton;->getIcon()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 123
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 121
    check-cast v0, Ljava/util/Collection;

    .line 108
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 114
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 115
    :goto_1
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "action_menu_data"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
