.class Lde/mrapp/android/preference/SwitchPreference$1;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/SwitchPreference;->createCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/SwitchPreference;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lde/mrapp/android/preference/SwitchPreference$1;->this$0:Lde/mrapp/android/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 163
    iget-object p1, p0, Lde/mrapp/android/preference/SwitchPreference$1;->this$0:Lde/mrapp/android/preference/SwitchPreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/SwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/mrapp/android/preference/SwitchPreference$1;->this$0:Lde/mrapp/android/preference/SwitchPreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/SwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    iget-object v0, p0, Lde/mrapp/android/preference/SwitchPreference$1;->this$0:Lde/mrapp/android/preference/SwitchPreference;

    .line 164
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/preference/SwitchPreference$1;->this$0:Lde/mrapp/android/preference/SwitchPreference;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lde/mrapp/android/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 165
    :cond_1
    :goto_0
    iget-object p1, p0, Lde/mrapp/android/preference/SwitchPreference$1;->this$0:Lde/mrapp/android/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Lde/mrapp/android/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    return-void
.end method
