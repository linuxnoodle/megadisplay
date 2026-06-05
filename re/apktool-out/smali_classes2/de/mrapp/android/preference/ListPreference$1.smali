.class Lde/mrapp/android/preference/ListPreference$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/ListPreference;->createListItemListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/ListPreference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/ListPreference;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lde/mrapp/android/preference/ListPreference$1;->this$0:Lde/mrapp/android/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lde/mrapp/android/preference/ListPreference$1;->this$0:Lde/mrapp/android/preference/ListPreference;

    invoke-static {v0, p2}, Lde/mrapp/android/preference/ListPreference;->access$002(Lde/mrapp/android/preference/ListPreference;I)I

    .line 140
    iget-object p2, p0, Lde/mrapp/android/preference/ListPreference$1;->this$0:Lde/mrapp/android/preference/ListPreference;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lde/mrapp/android/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
