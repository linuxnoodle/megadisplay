.class final Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/SettingsFragment;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Landroid/app/Dialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
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
.field final synthetic $preference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;Lcom/kelocube/mirrorclient/ui/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->$preference:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->this$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->$preference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->$preference:Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "button_func"

    const/16 v3, 0xc9

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 174
    new-instance v2, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->$preference:Landroidx/preference/Preference;

    iget-object v4, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->this$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    invoke-direct {v2, v3, v4, p1}, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;-><init>(Landroidx/preference/Preference;Lcom/kelocube/mirrorclient/ui/SettingsFragment;Landroid/content/Context;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1, v2}, Lcom/kelocube/mirrorclient/ui/EditActionDialogKt;->editActionDialog(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
