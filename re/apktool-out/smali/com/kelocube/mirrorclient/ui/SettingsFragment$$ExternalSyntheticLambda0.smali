.class public final synthetic Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/ui/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    iput-object p2, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/ui/SettingsFragment;

    iget-object v1, p0, Lcom/kelocube/mirrorclient/ui/SettingsFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/kelocube/mirrorclient/ui/SettingsFragment;->$r8$lambda$e-ChhqqFKL6crp893HBGcxR4Ap8(Lcom/kelocube/mirrorclient/ui/SettingsFragment;Landroid/content/Context;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
