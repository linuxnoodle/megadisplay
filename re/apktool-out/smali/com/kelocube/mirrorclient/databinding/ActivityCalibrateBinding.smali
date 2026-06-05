.class public final Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;
.super Ljava/lang/Object;
.source "ActivityCalibrateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final buttonCancel:Landroid/widget/Button;

.field public final buttonReset:Landroid/widget/Button;

.field public final buttonSave:Landroid/widget/Button;

.field public final layout2:Landroid/widget/LinearLayout;

.field public final layoutRoot:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;

.field private final rootView:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;

.field public final slider:Lcom/google/android/material/slider/RangeSlider;

.field public final textView7:Landroid/widget/TextView;

.field public final textView8:Landroid/widget/TextView;

.field public final view4:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->rootView:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;

    .line 58
    iput-object p2, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->buttonCancel:Landroid/widget/Button;

    .line 59
    iput-object p3, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->buttonReset:Landroid/widget/Button;

    .line 60
    iput-object p4, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->buttonSave:Landroid/widget/Button;

    .line 61
    iput-object p5, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->layout2:Landroid/widget/LinearLayout;

    .line 62
    iput-object p6, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->layoutRoot:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;

    .line 63
    iput-object p7, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->slider:Lcom/google/android/material/slider/RangeSlider;

    .line 64
    iput-object p8, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->textView7:Landroid/widget/TextView;

    .line 65
    iput-object p9, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->textView8:Landroid/widget/TextView;

    .line 66
    iput-object p10, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->view4:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;
    .locals 13

    .line 96
    sget v0, Lcom/kelocube/mirrorclient/R$id;->button_cancel:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 102
    sget v0, Lcom/kelocube/mirrorclient/R$id;->button_reset:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 108
    sget v0, Lcom/kelocube/mirrorclient/R$id;->button_save:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 114
    sget v0, Lcom/kelocube/mirrorclient/R$id;->layout2:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 120
    move-object v8, p0

    check-cast v8, Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;

    .line 122
    sget v0, Lcom/kelocube/mirrorclient/R$id;->slider:I

    .line 123
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/slider/RangeSlider;

    if-eqz v9, :cond_0

    .line 128
    sget v0, Lcom/kelocube/mirrorclient/R$id;->textView7:I

    .line 129
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 134
    sget v0, Lcom/kelocube/mirrorclient/R$id;->textView8:I

    .line 135
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 140
    sget v0, Lcom/kelocube/mirrorclient/R$id;->view4:I

    .line 141
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 146
    new-instance p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v12}, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;-><init>(Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v0, v1}, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;
    .locals 2

    .line 83
    sget v0, Lcom/kelocube/mirrorclient/R$layout;->activity_calibrate:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->bind(Landroid/view/View;)Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->getRoot()Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/kelocube/mirrorclient/databinding/ActivityCalibrateBinding;->rootView:Lcom/kelocube/mirrorclient/ui/CalibrateStylusActivity$DrawView;

    return-object v0
.end method
