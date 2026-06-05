.class public final synthetic Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/slider/RangeSlider$OnChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity;

    return-void
.end method


# virtual methods
.method public final onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$$ExternalSyntheticLambda0;->f$0:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity;->$r8$lambda$oLydNa9ASeXgyGH3kIMVB4rSTX8(Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity;Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method

.method public final bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0

    .line 0
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$$ExternalSyntheticLambda0;->onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method
