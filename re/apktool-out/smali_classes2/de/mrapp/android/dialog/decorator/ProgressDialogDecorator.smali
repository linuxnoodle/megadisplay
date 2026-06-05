.class public Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;
.source "ProgressDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ProgressDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator<",
        "Lde/mrapp/android/dialog/model/ButtonBarDialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/ProgressDialogDecorator;"
    }
.end annotation


# static fields
.field private static final PROGRESS_BAR_COLOR_EXTRA:Ljava/lang/String; = "ProgressDialogDecorator::progressBarColor"

.field private static final PROGRESS_BAR_POSITION_EXTRA:Ljava/lang/String; = "ProgressDialogDecorator::progressBarPosition"

.field private static final PROGRESS_BAR_SIZE_EXTRA:Ljava/lang/String; = "ProgressDialogDecorator::progressBarSize"

.field private static final PROGRESS_BAR_THICKNESS_EXTRA:Ljava/lang/String; = "ProgressDialogDecorator::progressBarThickness"


# instance fields
.field private progressBar:Lde/mrapp/android/view/CircularProgressBar;

.field private progressBarColor:I

.field private progressBarPosition:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

.field private progressBarSize:I

.field private progressBarThickness:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/dialog/model/ButtonBarDialog;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    return-void
.end method

.method private adaptMessageTextSize()V
    .locals 4

    .line 174
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/DialogRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 177
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 180
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lde/mrapp/android/dialog/R$dimen;->dialog_message_text_size_large:I

    .line 183
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lde/mrapp/android/dialog/R$dimen;->dialog_message_text_size_normal:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 185
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adaptProgressBar()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 128
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getCustomMessageId()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v1, v0}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setCustomMessage(Landroid/view/View;)V

    .line 130
    sget v1, Lde/mrapp/android/dialog/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    instance-of v1, v0, Lde/mrapp/android/view/CircularProgressBar;

    if-eqz v1, :cond_0

    check-cast v0, Lde/mrapp/android/view/CircularProgressBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    .line 134
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBarColor()V

    .line 135
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBarSize()V

    .line 136
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBarThickness()V

    .line 137
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptMessageTextSize()V

    return-void
.end method

.method private adaptProgressBarColor()V
    .locals 2

    .line 144
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    if-eqz v0, :cond_0

    .line 145
    iget v1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarColor:I

    invoke-virtual {v0, v1}, Lde/mrapp/android/view/CircularProgressBar;->setColor(I)V

    :cond_0
    return-void
.end method

.method private adaptProgressBarSize()V
    .locals 2

    .line 153
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    if-eqz v0, :cond_1

    .line 154
    iget v1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarSize:I

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lde/mrapp/android/view/CircularProgressBar;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    invoke-virtual {v0}, Lde/mrapp/android/view/CircularProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 156
    iget v1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iget v1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private adaptProgressBarThickness()V
    .locals 2

    .line 165
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    if-eqz v0, :cond_0

    .line 166
    iget v1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarThickness:I

    invoke-virtual {v0, v1}, Lde/mrapp/android/view/CircularProgressBar;->setThickness(I)V

    :cond_0
    return-void
.end method

.method private getCustomMessageId()I
    .locals 2

    .line 109
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator$1;->$SwitchMap$de$mrapp$android$dialog$ProgressDialog$ProgressBarPosition:[I

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarPosition:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 119
    sget v0, Lde/mrapp/android/dialog/R$layout;->progress_dialog_left:I

    return v0

    .line 117
    :cond_0
    sget v0, Lde/mrapp/android/dialog/R$layout;->progress_dialog_bottom:I

    return v0

    .line 115
    :cond_1
    sget v0, Lde/mrapp/android/dialog/R$layout;->progress_dialog_right:I

    return v0

    .line 113
    :cond_2
    sget v0, Lde/mrapp/android/dialog/R$layout;->progress_dialog_top:I

    return v0

    .line 111
    :cond_3
    sget v0, Lde/mrapp/android/dialog/R$layout;->progress_dialog_left:I

    return v0
.end method


# virtual methods
.method public final getProgressBarColor()I
    .locals 1

    .line 208
    iget v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarColor:I

    return v0
.end method

.method public final getProgressBarPosition()Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;
    .locals 1

    .line 243
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarPosition:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    return-object v0
.end method

.method public final getProgressBarSize()I
    .locals 1

    .line 219
    iget v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarSize:I

    return v0
.end method

.method public final getProgressBarThickness()I
    .locals 1

    .line 231
    iget v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarThickness:I

    return v0
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 45
    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBar()V

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBar:Lde/mrapp/android/view/CircularProgressBar;

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 263
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarColor(I)V

    .line 264
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_SIZE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarSize(I)V

    .line 265
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_THICKNESS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarThickness(I)V

    .line 266
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_POSITION_EXTRA:Ljava/lang/String;

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->fromValue(I)Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->setProgressBarPosition(Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 255
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_SIZE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarSize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_THICKNESS_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarThickness()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    sget-object v0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->PROGRESS_BAR_POSITION_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->getProgressBarPosition()Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setProgressBarColor(I)V
    .locals 0

    .line 213
    iput p1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarColor:I

    .line 214
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBarColor()V

    return-void
.end method

.method public final setProgressBarPosition(Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;)V
    .locals 2

    .line 248
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The position may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarPosition:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    .line 250
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBar()V

    return-void
.end method

.method public final setProgressBarSize(I)V
    .locals 3

    .line 224
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The size must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 225
    iput p1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarSize:I

    .line 226
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBarSize()V

    return-void
.end method

.method public final setProgressBarThickness(I)V
    .locals 3

    .line 236
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The thickness must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 237
    iput p1, p0, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->progressBarThickness:I

    .line 238
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ProgressDialogDecorator;->adaptProgressBarThickness()V

    return-void
.end method
