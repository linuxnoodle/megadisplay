.class Lde/mrapp/android/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/SeekBarPreference;->createSeekBarListener(Landroid/widget/TextView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/SeekBarPreference;

.field final synthetic val$progressTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/SeekBarPreference;Landroid/widget/TextView;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference$1;->this$0:Lde/mrapp/android/preference/SeekBarPreference;

    iput-object p2, p0, Lde/mrapp/android/preference/SeekBarPreference$1;->val$progressTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 416
    iget-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference$1;->this$0:Lde/mrapp/android/preference/SeekBarPreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/SeekBarPreference;->getMinValue()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    iget-object v0, p0, Lde/mrapp/android/preference/SeekBarPreference$1;->this$0:Lde/mrapp/android/preference/SeekBarPreference;

    invoke-static {v0}, Lde/mrapp/android/preference/SeekBarPreference;->access$100(Lde/mrapp/android/preference/SeekBarPreference;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Lde/mrapp/android/preference/SeekBarPreference;->access$002(Lde/mrapp/android/preference/SeekBarPreference;F)F

    .line 417
    iget-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference$1;->this$0:Lde/mrapp/android/preference/SeekBarPreference;

    invoke-static {p1}, Lde/mrapp/android/preference/SeekBarPreference;->access$000(Lde/mrapp/android/preference/SeekBarPreference;)F

    move-result p2

    invoke-static {p1, p2}, Lde/mrapp/android/preference/SeekBarPreference;->access$200(Lde/mrapp/android/preference/SeekBarPreference;F)F

    move-result p2

    invoke-static {p1, p2}, Lde/mrapp/android/preference/SeekBarPreference;->access$002(Lde/mrapp/android/preference/SeekBarPreference;F)F

    .line 418
    iget-object p1, p0, Lde/mrapp/android/preference/SeekBarPreference$1;->val$progressTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lde/mrapp/android/preference/SeekBarPreference$1;->this$0:Lde/mrapp/android/preference/SeekBarPreference;

    invoke-static {p2}, Lde/mrapp/android/preference/SeekBarPreference;->access$000(Lde/mrapp/android/preference/SeekBarPreference;)F

    move-result p3

    invoke-static {p2, p3}, Lde/mrapp/android/preference/SeekBarPreference;->access$300(Lde/mrapp/android/preference/SeekBarPreference;F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
