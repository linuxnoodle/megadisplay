.class Lde/mrapp/android/preference/DigitPickerPreference$1;
.super Ljava/lang/Object;
.source "DigitPickerPreference.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/preference/DigitPickerPreference;->createNumberPickerListener()Landroid/widget/NumberPicker$OnValueChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/preference/DigitPickerPreference;


# direct methods
.method constructor <init>(Lde/mrapp/android/preference/DigitPickerPreference;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lde/mrapp/android/preference/DigitPickerPreference$1;->this$0:Lde/mrapp/android/preference/DigitPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 6

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 198
    :goto_0
    iget-object p3, p0, Lde/mrapp/android/preference/DigitPickerPreference$1;->this$0:Lde/mrapp/android/preference/DigitPickerPreference;

    invoke-static {p3}, Lde/mrapp/android/preference/DigitPickerPreference;->access$000(Lde/mrapp/android/preference/DigitPickerPreference;)[Lde/mrapp/android/preference/view/NumberPicker;

    move-result-object p3

    array-length p3, p3

    if-ge p1, p3, :cond_0

    .line 199
    iget-object p3, p0, Lde/mrapp/android/preference/DigitPickerPreference$1;->this$0:Lde/mrapp/android/preference/DigitPickerPreference;

    invoke-static {p3}, Lde/mrapp/android/preference/DigitPickerPreference;->access$000(Lde/mrapp/android/preference/DigitPickerPreference;)[Lde/mrapp/android/preference/view/NumberPicker;

    move-result-object p3

    array-length p3, p3

    sub-int/2addr p3, p1

    add-int/lit8 p3, p3, -0x1

    int-to-double v0, p2

    .line 200
    iget-object p2, p0, Lde/mrapp/android/preference/DigitPickerPreference$1;->this$0:Lde/mrapp/android/preference/DigitPickerPreference;

    invoke-static {p2}, Lde/mrapp/android/preference/DigitPickerPreference;->access$000(Lde/mrapp/android/preference/DigitPickerPreference;)[Lde/mrapp/android/preference/view/NumberPicker;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lde/mrapp/android/preference/view/NumberPicker;->getValue()I

    move-result p2

    int-to-double v2, p2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double p2, p3

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double v2, v2, p2

    add-double/2addr v0, v2

    double-to-int p2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/preference/DigitPickerPreference$1;->this$0:Lde/mrapp/android/preference/DigitPickerPreference;

    invoke-static {p1, p2}, Lde/mrapp/android/preference/DigitPickerPreference;->access$102(Lde/mrapp/android/preference/DigitPickerPreference;I)I

    return-void
.end method
