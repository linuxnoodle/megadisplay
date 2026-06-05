.class final Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1;->invoke(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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

.field final synthetic $preference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;Lcom/kelocube/mirrorclient/ui/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->$preference:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    iput-object p3, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->$preference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "button_func"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->$preference:Landroidx/preference/Preference;

    sget-object v1, Lcom/kelocube/mirrorclient/models/Action;->Companion:Lcom/kelocube/mirrorclient/models/Action$Companion;

    iget-object v2, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->this$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    invoke-virtual {v2}, Lcom/kelocube/mirrorclient/ui/SettingsFragment;->getActionParseContext()Lcom/kelocube/mirrorclient/models/Action$ParseContext;

    move-result-object v2

    iget-object v3, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$onDisplayPreferenceDialog$1$1;->$context:Landroid/content/Context;

    sget v4, Lcom/kelocube/mirrorclient/R$string;->pref_button_func_none:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/kelocube/mirrorclient/models/Action$Companion;->toString(Lcom/kelocube/mirrorclient/models/Action$ParseContext;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
