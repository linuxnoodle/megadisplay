.class public final synthetic Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/kelocube/mirrorclient/ui/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/kelocube/mirrorclient/ui/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda2;->f$1:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda2;->f$1:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    invoke-static {v0, v1, p1, p2}, Lcom/kelocube/mirrorclient/ui/SettingsFragment;->$r8$lambda$1CW4d54QBGafWjwUi8AqRh1ZCaM(Landroid/content/Context;Lcom/kelocube/mirrorclient/ui/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
