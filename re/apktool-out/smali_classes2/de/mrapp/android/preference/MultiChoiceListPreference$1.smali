.class Lde/mrapp/android/preference/MultiChoiceListPreference$1;
.super Ljava/lang/Object;
.source "MultiChoiceListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/MultiChoiceListPreference;->createListItemListener()Landroid/content/DialogInterface$OnMultiChoiceClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/MultiChoiceListPreference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/MultiChoiceListPreference;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference$1;->this$0:Lde/mrapp/android/preference/MultiChoiceListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 219
    iget-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference$1;->this$0:Lde/mrapp/android/preference/MultiChoiceListPreference;

    invoke-static {p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->access$000(Lde/mrapp/android/preference/MultiChoiceListPreference;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/preference/MultiChoiceListPreference$1;->this$0:Lde/mrapp/android/preference/MultiChoiceListPreference;

    invoke-static {p1}, Lde/mrapp/android/preference/MultiChoiceListPreference;->access$000(Lde/mrapp/android/preference/MultiChoiceListPreference;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
