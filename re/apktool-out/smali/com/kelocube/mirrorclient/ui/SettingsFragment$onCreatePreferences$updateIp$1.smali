.class final Lcom/kelocube/mirrorclient/ui/SettingsFragment$onCreatePreferences$updateIp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/SettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $ipAddressPref:Lde/mrapp/android/preference/Preference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/Preference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onCreatePreferences$updateIp$1;->$ipAddressPref:Lde/mrapp/android/preference/Preference;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onCreatePreferences$updateIp$1;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onCreatePreferences$updateIp$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onCreatePreferences$updateIp$1;->$ipAddressPref:Lde/mrapp/android/preference/Preference;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onCreatePreferences$updateIp$1;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kelocube/mirrorclient/UtilKt;->getWifiIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onCreatePreferences$updateIp$1;->$context:Landroid/content/Context;

    sget v2, Lcom/kelocube/mirrorclient/R$string;->pref_ip_address_no_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lde/mrapp/android/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
