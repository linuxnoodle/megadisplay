.class Lde/mrapp/android/preference/NumberPickerPreference$1;
.super Ljava/lang/Object;
.source "NumberPickerPreference.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/NumberPickerPreference;->createNumberPickerListener()Landroid/widget/NumberPicker$OnValueChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/NumberPickerPreference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/NumberPickerPreference;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lde/mrapp/android/preference/NumberPickerPreference$1;->this$0:Lde/mrapp/android/preference/NumberPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1

    .line 288
    invoke-virtual {p1, p3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 289
    iget-object p1, p0, Lde/mrapp/android/preference/NumberPickerPreference$1;->this$0:Lde/mrapp/android/preference/NumberPickerPreference;

    invoke-virtual {p1}, Lde/mrapp/android/preference/NumberPickerPreference;->getMinNumber()I

    move-result p2

    iget-object v0, p0, Lde/mrapp/android/preference/NumberPickerPreference$1;->this$0:Lde/mrapp/android/preference/NumberPickerPreference;

    invoke-virtual {v0}, Lde/mrapp/android/preference/NumberPickerPreference;->getStepSize()I

    move-result v0

    mul-int p3, p3, v0

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lde/mrapp/android/preference/NumberPickerPreference;->access$002(Lde/mrapp/android/preference/NumberPickerPreference;I)I

    return-void
.end method
