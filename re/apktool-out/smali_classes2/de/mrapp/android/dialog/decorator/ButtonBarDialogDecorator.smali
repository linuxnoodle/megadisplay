.class public Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;
.source "ButtonBarDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/ButtonBarDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator<",
        "Lde/mrapp/android/dialog/model/ValidateableDialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/ButtonBarDialogDecorator;"
    }
.end annotation


# static fields
.field private static final BUTTON_TEXT_COLOR_EXTRA:Ljava/lang/String; = "ButtonBarDialogDecorator::buttonTextColor"

.field private static final NEGATIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "ButtonBarDialogDecorator::negativeButtonText"

.field private static final NEUTRAL_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "ButtonBarDialogDecorator::neutralButtonText"

.field private static final POSITIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "ButtonBarDialogDecorator::positiveButtonText"

.field private static final SHOW_BUTTON_BAR_DIVIDER_EXTRA:Ljava/lang/String; = "ButtonBarDialogDecorator::showButtonBarDivider"

.field private static final STACK_BUTTONS_EXTRA:Ljava/lang/String; = "ButtonBarDialogDecorator::stackButtons"


# instance fields
.field private buttonBarContainer:Landroid/view/ViewGroup;

.field private buttonBarDivider:Lde/mrapp/android/dialog/view/Divider;

.field private buttonTextColor:Landroid/content/res/ColorStateList;

.field private buttonTypeface:Landroid/graphics/Typeface;

.field private customButtonBarView:Landroid/view/View;

.field private customButtonBarViewId:I

.field private negativeButton:Landroid/widget/Button;

.field private negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButton:Landroid/widget/Button;

.field private neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private positiveButton:Landroid/widget/Button;

.field private positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private showButtonBarDivider:Z

.field private stackButtons:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/dialog/model/ValidateableDialog;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    const/4 p1, -0x1

    .line 180
    iput p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarViewId:I

    return-void
.end method

.method private adaptButtonBar()V
    .locals 1

    .line 239
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->inflateButtonBar()Landroid/view/View;

    .line 241
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptPositiveButton()V

    .line 242
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptNegativeButton()V

    .line 243
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptNeutralButton()V

    .line 244
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonTextColor()V

    .line 245
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonTypeface()V

    .line 246
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBarContainerVisibility()V

    .line 247
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBarDividerVisibility()V

    :cond_0
    return-void
.end method

.method private adaptButtonBarContainerVisibility()V
    .locals 2

    .line 344
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonText:Ljava/lang/CharSequence;

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adaptButtonBarDividerVisibility()V
    .locals 2

    .line 358
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarDivider:Lde/mrapp/android/dialog/view/Divider;

    if-eqz v0, :cond_1

    .line 359
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->showButtonBarDivider:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/Divider;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarDivider:Lde/mrapp/android/dialog/view/Divider;

    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->showButtonBarDivider:Z

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/Divider;->setVisibleByDefault(Z)V

    :cond_1
    return-void
.end method

.method private adaptButtonTextColor()V
    .locals 2

    .line 255
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 256
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 264
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 265
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method private adaptButtonTypeface()V
    .locals 2

    .line 274
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 280
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 283
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 284
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method

.method private adaptNegativeButton()V
    .locals 5

    .line 327
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 328
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 329
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 328
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 330
    new-instance v0, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 331
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/model/ValidateableDialog;

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;-><init>(Landroid/content/DialogInterface$OnClickListener;ZLde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 333
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonText:Ljava/lang/CharSequence;

    .line 335
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 334
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBarContainerVisibility()V

    :cond_2
    return-void
.end method

.method private adaptNeutralButton()V
    .locals 5

    .line 310
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 311
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 312
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 311
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v0, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 314
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/model/ValidateableDialog;

    const/4 v3, -0x3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;-><init>(Landroid/content/DialogInterface$OnClickListener;ZLde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 316
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonText:Ljava/lang/CharSequence;

    .line 318
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 317
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBarContainerVisibility()V

    :cond_2
    return-void
.end method

.method private adaptPositiveButton()V
    .locals 5

    .line 293
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 294
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 295
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 294
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v0, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/model/ValidateableDialog;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lde/mrapp/android/dialog/listener/OnClickListenerWrapper;-><init>(Landroid/content/DialogInterface$OnClickListener;ZLde/mrapp/android/dialog/model/ValidateableDialog;I)V

    .line 299
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonText:Ljava/lang/CharSequence;

    .line 301
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 300
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBarContainerVisibility()V

    :cond_2
    return-void
.end method

.method private inflateButtonBar()Landroid/view/View;
    .locals 5

    .line 194
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 195
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 197
    sget v3, Lde/mrapp/android/dialog/R$layout;->button_bar_container:I

    .line 198
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    .line 199
    sget v3, Lde/mrapp/android/dialog/R$id;->button_bar_divider:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/view/Divider;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarDivider:Lde/mrapp/android/dialog/view/Divider;

    .line 202
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 203
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 206
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 207
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 208
    :cond_2
    iget v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarViewId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 209
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 210
    iget v3, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarViewId:I

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    .line 211
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 215
    iget-boolean v3, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->stackButtons:Z

    if-eqz v3, :cond_4

    sget v3, Lde/mrapp/android/dialog/R$layout;->stacked_button_bar:I

    goto :goto_0

    :cond_4
    sget v3, Lde/mrapp/android/dialog/R$layout;->horizontal_button_bar:I

    :goto_0
    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 218
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    :goto_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 223
    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const v4, 0x102001b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 224
    instance-of v4, v0, Landroid/widget/Button;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/widget/Button;

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    .line 226
    instance-of v0, v2, Landroid/widget/Button;

    if-eqz v0, :cond_6

    check-cast v2, Landroid/widget/Button;

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    iput-object v2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    .line 228
    instance-of v0, v3, Landroid/widget/Button;

    if-eqz v0, :cond_7

    move-object v1, v3

    check-cast v1, Landroid/widget/Button;

    :cond_7
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    .line 229
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    return-object v0

    :cond_8
    return-object v1
.end method


# virtual methods
.method public final areButtonsStacked()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->stackButtons:Z

    return v0
.end method

.method public final getButton(I)Landroid/widget/Button;
    .locals 2

    const/4 v0, -0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-object v1

    .line 381
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    :cond_1
    return-object v1

    .line 384
    :cond_2
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    :cond_3
    return-object v1

    .line 387
    :cond_4
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    :cond_5
    return-object v1
.end method

.method public final getButtonTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 450
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getButtonTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 468
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final isButtonBarDividerShown()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->showButtonBarDivider:Z

    return v0
.end method

.method public final isCustomButtonBarUsed()Z
    .locals 2

    .line 491
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarView:Landroid/view/View;

    if-nez v0, :cond_1

    iget v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 56
    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;

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

    .line 541
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->inflateButtonBar()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 544
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonTextColor()V

    .line 545
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonTypeface()V

    .line 546
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptPositiveButton()V

    .line 547
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptNeutralButton()V

    .line 548
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptNegativeButton()V

    .line 549
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBarDividerVisibility()V

    .line 550
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 551
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p3, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;

    sget-object p3, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->BOTTOM:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    invoke-direct {p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView$DividerViewType;-><init>(Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;)V

    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarDivider:Lde/mrapp/android/dialog/view/Divider;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 556
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 2

    .line 561
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 563
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    .line 566
    :cond_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButton:Landroid/widget/Button;

    .line 567
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButton:Landroid/widget/Button;

    .line 568
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButton:Landroid/widget/Button;

    .line 569
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonBarDivider:Lde/mrapp/android/dialog/view/Divider;

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 520
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->STACK_BUTTONS_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->stackButtons(Z)V

    .line 521
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->SHOW_BUTTON_BAR_DIVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->showButtonBarDivider(Z)V

    .line 522
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->POSITIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 524
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->NEUTRAL_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 526
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->NEGATIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 528
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->BUTTON_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setButtonTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 510
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->STACK_BUTTONS_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->areButtonsStacked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->BUTTON_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getButtonTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 512
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->SHOW_BUTTON_BAR_DIVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->isButtonBarDividerShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 513
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->POSITIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 514
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->NEUTRAL_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 515
    sget-object v0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->NEGATIVE_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setButtonTextColor(I)V
    .locals 0

    .line 455
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setButtonTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setButtonTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 460
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color state list may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTextColor:Landroid/content/res/ColorStateList;

    .line 462
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonTextColor()V

    return-void
.end method

.method public final setButtonTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 473
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The typeface may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->buttonTypeface:Landroid/graphics/Typeface;

    .line 475
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonTypeface()V

    return-void
.end method

.method public final setCustomButtonBar(I)V
    .locals 1

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarView:Landroid/view/View;

    .line 497
    iput p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarViewId:I

    .line 498
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBar()V

    return-void
.end method

.method public final setCustomButtonBar(Landroid/view/View;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarView:Landroid/view/View;

    const/4 p1, -0x1

    .line 504
    iput p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->customButtonBarViewId:I

    .line 505
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBar()V

    return-void
.end method

.method public final setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 419
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonText:Ljava/lang/CharSequence;

    .line 412
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 413
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptNegativeButton()V

    return-void
.end method

.method public final setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 433
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonText:Ljava/lang/CharSequence;

    .line 426
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 427
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptNeutralButton()V

    return-void
.end method

.method public final setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 405
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonText:Ljava/lang/CharSequence;

    .line 398
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 399
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptPositiveButton()V

    return-void
.end method

.method public final showButtonBarDivider(Z)V
    .locals 0

    .line 485
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->showButtonBarDivider:Z

    .line 486
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBarDividerVisibility()V

    return-void
.end method

.method public final stackButtons(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->stackButtons:Z

    .line 444
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/ButtonBarDialogDecorator;->adaptButtonBar()V

    return-void
.end method
