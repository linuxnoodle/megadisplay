.class Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;
.super Ljava/lang/Object;
.source "AbstractCompoundButtonPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->createCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/AbstractCompoundButtonPreference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/AbstractCompoundButtonPreference;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;->this$0:Lde/mrapp/android/preference/AbstractCompoundButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 70
    iget-object p1, p0, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;->this$0:Lde/mrapp/android/preference/AbstractCompoundButtonPreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;->this$0:Lde/mrapp/android/preference/AbstractCompoundButtonPreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object p1

    iget-object v0, p0, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;->this$0:Lde/mrapp/android/preference/AbstractCompoundButtonPreference;

    .line 71
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;->this$0:Lde/mrapp/android/preference/AbstractCompoundButtonPreference;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->setChecked(Z)V

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    iget-object p1, p0, Lde/mrapp/android/preference/AbstractCompoundButtonPreference$1;->this$0:Lde/mrapp/android/preference/AbstractCompoundButtonPreference;

    invoke-virtual {p1, p2}, Lde/mrapp/android/preference/AbstractCompoundButtonPreference;->setChecked(Z)V

    :goto_1
    return-void
.end method
