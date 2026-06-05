.class Lde/mrapp/android/preference/ColorPalettePreference$1;
.super Ljava/lang/Object;
.source "ColorPalettePreference.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/ColorPalettePreference;->createItemSelectedListener()Lde/mrapp/android/dialog/model/ListDialog$OnItemSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/ColorPalettePreference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/ColorPalettePreference;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference$1;->this$0:Lde/mrapp/android/preference/ColorPalettePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelectionStateChanged(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 288
    iget-object p2, p0, Lde/mrapp/android/preference/ColorPalettePreference$1;->this$0:Lde/mrapp/android/preference/ColorPalettePreference;

    invoke-static {p2, p1}, Lde/mrapp/android/preference/ColorPalettePreference;->access$002(Lde/mrapp/android/preference/ColorPalettePreference;I)I

    .line 289
    iget-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference$1;->this$0:Lde/mrapp/android/preference/ColorPalettePreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lde/mrapp/android/preference/ColorPalettePreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 292
    iget-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference$1;->this$0:Lde/mrapp/android/preference/ColorPalettePreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lde/mrapp/android/preference/ColorPalettePreference$1;->this$0:Lde/mrapp/android/preference/ColorPalettePreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/ColorPalettePreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
