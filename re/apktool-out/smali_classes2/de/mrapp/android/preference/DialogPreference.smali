.class public Lde/mrapp/android/preference/DialogPreference;
.super Lde/mrapp/android/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private customDialogButtonBarView:Landroid/view/View;

.field private customDialogButtonBarViewId:I

.field private customDialogHeaderView:Landroid/view/View;

.field private customDialogHeaderViewId:I

.field private customDialogMessageView:Landroid/view/View;

.field private customDialogMessageViewId:I

.field private customDialogTitleView:Landroid/view/View;

.field private customDialogTitleViewId:I

.field private dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

.field private dialogBackground:Landroid/graphics/drawable/Drawable;

.field private dialogBackgroundBitmap:Landroid/graphics/Bitmap;

.field private dialogBackgroundColor:I

.field private dialogBackgroundId:I

.field private dialogButtonTextColor:Landroid/content/res/ColorStateList;

.field private dialogButtonTypeface:Landroid/graphics/Typeface;

.field private dialogCancelAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

.field private dialogDismissAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

.field private dialogDividerColor:I

.field private dialogDividerMargin:I

.field private dialogFitsSystemWindows:[Z

.field private dialogFullscreen:Z

.field private dialogGravity:I

.field private dialogHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private dialogHeaderBackgroundBitmap:Landroid/graphics/Bitmap;

.field private dialogHeaderBackgroundColor:I

.field private dialogHeaderBackgroundId:I

.field private dialogHeaderIcon:Landroid/graphics/drawable/Drawable;

.field private dialogHeaderIconBitmap:Landroid/graphics/Bitmap;

.field private dialogHeaderIconId:I

.field private dialogHeaderIconTintList:Landroid/content/res/ColorStateList;

.field private dialogHeaderIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private dialogHeight:I

.field private dialogIcon:Landroid/graphics/drawable/Drawable;

.field private dialogIconBitmap:Landroid/graphics/Bitmap;

.field private dialogIconId:I

.field private dialogIconTintList:Landroid/content/res/ColorStateList;

.field private dialogIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private dialogMargin:[I

.field private dialogMaxHeight:I

.field private dialogMaxWidth:I

.field private dialogMessage:Ljava/lang/CharSequence;

.field private dialogMessageColor:I

.field private dialogMessageTypeface:Landroid/graphics/Typeface;

.field private dialogPadding:[I

.field private dialogResultPositive:Z

.field private dialogScrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

.field private dialogShowAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

.field private dialogTheme:I

.field private dialogTitle:Ljava/lang/CharSequence;

.field private dialogTitleColor:I

.field private dialogTitleTypeface:Landroid/graphics/Typeface;

.field private dialogWidth:I

.field private dialogWindowBackground:Landroid/graphics/drawable/Drawable;

.field private dialogWindowBackgroundBitmap:Landroid/graphics/Bitmap;

.field private dialogWindowBackgroundId:I

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private showDialogButtonBarDivider:Z

.field private showDialogDividersOnScroll:Z

.field private showDialogHeader:Z

.field private showValueAsSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1260
    invoke-direct {p0, p1, v0}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1275
    sget v0, Lde/mrapp/android/preference/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1295
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 163
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogGravity:I

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWidth:I

    .line 173
    iput v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeight:I

    .line 178
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxWidth:I

    .line 183
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxHeight:I

    .line 224
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconId:I

    .line 234
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 289
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundId:I

    .line 294
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundColor:I

    .line 309
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundId:I

    .line 335
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundId:I

    .line 340
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundColor:I

    .line 355
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconId:I

    .line 366
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 419
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleViewId:I

    .line 430
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageViewId:I

    .line 441
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarViewId:I

    .line 452
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderViewId:I

    .line 1296
    invoke-direct {p0, p2, p3, v0}, Lde/mrapp/android/preference/DialogPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1322
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 163
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogGravity:I

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWidth:I

    .line 173
    iput v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeight:I

    .line 178
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxWidth:I

    .line 183
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxHeight:I

    .line 224
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconId:I

    .line 234
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 289
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundId:I

    .line 294
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundColor:I

    .line 309
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundId:I

    .line 335
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundId:I

    .line 340
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundColor:I

    .line 355
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconId:I

    .line 366
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 419
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleViewId:I

    .line 430
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageViewId:I

    .line 441
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarViewId:I

    .line 452
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderViewId:I

    .line 1323
    invoke-direct {p0, p2, p3, p4}, Lde/mrapp/android/preference/DialogPreference;->obtainStyledAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private obtainDialogBackground(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 875
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogBackground:I

    const/4 v1, -0x1

    .line 876
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 879
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/DialogPreference;->setDialogBackground(I)V

    goto :goto_0

    .line 881
    :cond_0
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogBackground:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 884
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private obtainDialogButtonBarDividerColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1015
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$color;->divider_color_light:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 1016
    sget v1, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogDividerColor:I

    .line 1017
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 1016
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogDividerColor(I)V

    return-void
.end method

.method private obtainDialogButtonBarDividerMargin(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1029
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogDividerMargin:I

    const/4 v1, 0x0

    .line 1030
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 1029
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogDividerMargin(I)V

    return-void
.end method

.method private obtainDialogButtonTextColor(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 858
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogButtonTextColor:I

    .line 859
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 862
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogButtonTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private obtainDialogFitsSystemWindows(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 732
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogFitsSystemWindowsLeft:I

    const/4 v1, 0x1

    .line 733
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 734
    sget v2, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogFitsSystemWindowsTop:I

    .line 735
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 736
    sget v3, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogFitsSystemWindowsRight:I

    .line 737
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 738
    sget v4, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogFitsSystemWindowsBottom:I

    .line 739
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 740
    invoke-virtual {p0, v0, v2, v3, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogFitsSystemWindows(ZZZZ)V

    return-void
.end method

.method private obtainDialogFullscreen(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 569
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogFullscreen:I

    const/4 v1, 0x0

    .line 570
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 569
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogFullscreen(Z)V

    return-void
.end method

.method private obtainDialogGravity(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 581
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogGravity:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 582
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogGravity(I)V

    return-void
.end method

.method private obtainDialogHeaderBackground(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 945
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogHeaderBackground:I

    const/4 v1, -0x1

    .line 946
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 949
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/DialogPreference;->setDialogHeaderBackground(I)V

    goto :goto_0

    .line 951
    :cond_0
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogHeaderBackground:I

    .line 952
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 955
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogHeaderBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private obtainDialogHeaderIcon(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 969
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogHeaderIcon:I

    const/4 v1, -0x1

    .line 970
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 973
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogHeaderIcon(I)V

    :cond_0
    return-void
.end method

.method private obtainDialogHeaderIconTintList(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 986
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogHeaderIconTint:I

    .line 987
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 986
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogHeaderIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private obtainDialogHeight(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x0

    .line 618
    :try_start_0
    sget v1, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogHeight:I

    .line 619
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    :goto_0
    if-eqz p1, :cond_0

    .line 625
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogHeight(I)V

    :cond_0
    return-void
.end method

.method private obtainDialogIcon(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 777
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_android_dialogIcon:I

    const/4 v1, -0x1

    .line 778
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 781
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogIcon(I)V

    :cond_0
    return-void
.end method

.method private obtainDialogIconTintList(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 794
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogIconTint:I

    .line 795
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 794
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private obtainDialogMargin(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 678
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$dimen;->dialog_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 680
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lde/mrapp/android/preference/R$dimen;->dialog_vertical_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 681
    sget v2, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogMarginLeft:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 683
    sget v3, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogMarginTop:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 685
    sget v4, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogMarginRight:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 687
    sget v4, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogMarginBottom:I

    .line 688
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 690
    invoke-virtual {p0, v2, v3, v0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogMargin(IIII)V

    return-void
.end method

.method private obtainDialogMaxHeight(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 658
    :try_start_0
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogMaxHeight:I

    const/4 v1, -0x1

    .line 659
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogMaxHeight(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private obtainDialogMaxWidth(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 638
    :try_start_0
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogMaxWidth:I

    const/4 v1, -0x1

    .line 639
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 642
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogMaxWidth(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private obtainDialogMessage(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 765
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainDialogMessageColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 845
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogMessageColor:I

    const/4 v1, -0x1

    .line 846
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 845
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogMessageColor(I)V

    return-void
.end method

.method private obtainDialogPadding(Landroid/content/res/TypedArray;)V
    .locals 5

    .line 702
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$dimen;->dialog_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 704
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lde/mrapp/android/preference/R$dimen;->dialog_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 706
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lde/mrapp/android/preference/R$dimen;->dialog_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 708
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lde/mrapp/android/preference/R$dimen;->dialog_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 709
    sget v4, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogPaddingLeft:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 711
    sget v4, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogPaddingTop:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 713
    sget v4, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogPaddingRight:I

    .line 714
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 716
    sget v4, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogPaddingBottom:I

    .line 717
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 719
    invoke-virtual {p0, v0, v1, v2, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogPadding(IIII)V

    return-void
.end method

.method private obtainDialogScrollableArea(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1055
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogScrollableAreaTop:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1060
    invoke-static {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->fromIndex(I)Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v0

    .line 1061
    sget v3, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogScrollableAreaBottom:I

    .line 1062
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 1065
    invoke-static {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->fromIndex(I)Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v2

    :cond_0
    move-object p1, v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez v2, :cond_2

    .line 1070
    sget-object v2, Lde/mrapp/android/dialog/ScrollableArea$Area;->TITLE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 1071
    sget-object p1, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v2

    .line 1074
    :goto_1
    invoke-virtual {p0, v2, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    return-void
.end method

.method private obtainDialogTheme(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 547
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogThemeResource:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 550
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 551
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$attr;->preferenceDialogTheme:I

    const/4 v2, 0x1

    .line 552
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 553
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    sget p1, Lde/mrapp/android/preference/R$style;->MaterialDialog_Light:I

    :goto_0
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTheme:I

    return-void
.end method

.method private obtainDialogTitle(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 752
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainDialogTitleColor(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 833
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogTitleColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogTitleColor(I)V

    return-void
.end method

.method private obtainDialogWidth(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x0

    .line 596
    :try_start_0
    sget v1, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogWidth:I

    .line 597
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    :goto_0
    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogWidth(I)V

    :cond_0
    return-void
.end method

.method private obtainDialogWindowBackground(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 898
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_dialogWindowBackground:I

    const/4 v1, -0x1

    .line 899
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 902
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogWindowBackground(I)V

    :cond_0
    return-void
.end method

.method private obtainNegativeButtonText(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 820
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_android_negativeButtonText:I

    .line 821
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 820
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainPositiveButtonText(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 807
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_android_positiveButtonText:I

    .line 808
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 807
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainShowDialogButtonBarDivider(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1000
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->dialog_preference_default_show_dialog_button_bar_divider:I

    .line 1001
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1002
    sget v1, Lde/mrapp/android/preference/R$styleable;->DialogPreference_showDialogButtonBarDivider:I

    .line 1003
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 1002
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->showDialogButtonBarDivider(Z)V

    return-void
.end method

.method private obtainShowDialogDividersOnScroll(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1043
    sget v0, Lde/mrapp/android/preference/R$styleable;->DialogPreference_showDialogDividersOnScroll:I

    const/4 v1, 0x1

    .line 1044
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 1043
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->showDialogDividersOnScroll(Z)V

    return-void
.end method

.method private obtainShowDialogHeader(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 930
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->dialog_preference_default_show_dialog_header:I

    .line 931
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 932
    sget v1, Lde/mrapp/android/preference/R$styleable;->DialogPreference_showDialogHeader:I

    .line 933
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 932
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->showDialogHeader(Z)V

    return-void
.end method

.method private obtainShowValueAsSummary(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 915
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lde/mrapp/android/preference/R$bool;->dialog_preference_default_show_value_as_summary:I

    .line 916
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 917
    sget v1, Lde/mrapp/android/preference/R$styleable;->DialogPreference_showValueAsSummary:I

    .line 918
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 917
    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->showValueAsSummary(Z)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 497
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/preference/R$styleable;->DialogPreference:[I

    .line 498
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 502
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogTheme(Landroid/content/res/TypedArray;)V

    .line 503
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogFullscreen(Landroid/content/res/TypedArray;)V

    .line 504
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogGravity(Landroid/content/res/TypedArray;)V

    .line 505
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogWidth(Landroid/content/res/TypedArray;)V

    .line 506
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogHeight(Landroid/content/res/TypedArray;)V

    .line 507
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogMaxWidth(Landroid/content/res/TypedArray;)V

    .line 508
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogMaxHeight(Landroid/content/res/TypedArray;)V

    .line 509
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogMargin(Landroid/content/res/TypedArray;)V

    .line 510
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogPadding(Landroid/content/res/TypedArray;)V

    .line 511
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogFitsSystemWindows(Landroid/content/res/TypedArray;)V

    .line 512
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogTitle(Landroid/content/res/TypedArray;)V

    .line 513
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogMessage(Landroid/content/res/TypedArray;)V

    .line 514
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogIcon(Landroid/content/res/TypedArray;)V

    .line 515
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogIconTintList(Landroid/content/res/TypedArray;)V

    .line 516
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainPositiveButtonText(Landroid/content/res/TypedArray;)V

    .line 517
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainNegativeButtonText(Landroid/content/res/TypedArray;)V

    .line 518
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogTitleColor(Landroid/content/res/TypedArray;)V

    .line 519
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogMessageColor(Landroid/content/res/TypedArray;)V

    .line 520
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogButtonTextColor(Landroid/content/res/TypedArray;)V

    .line 521
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogBackground(Landroid/content/res/TypedArray;)V

    .line 522
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogWindowBackground(Landroid/content/res/TypedArray;)V

    .line 523
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainShowValueAsSummary(Landroid/content/res/TypedArray;)V

    .line 524
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainShowDialogHeader(Landroid/content/res/TypedArray;)V

    .line 525
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogHeaderBackground(Landroid/content/res/TypedArray;)V

    .line 526
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogHeaderIcon(Landroid/content/res/TypedArray;)V

    .line 527
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogHeaderIconTintList(Landroid/content/res/TypedArray;)V

    .line 528
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainShowDialogButtonBarDivider(Landroid/content/res/TypedArray;)V

    .line 529
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogButtonBarDividerColor(Landroid/content/res/TypedArray;)V

    .line 530
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogButtonBarDividerMargin(Landroid/content/res/TypedArray;)V

    .line 531
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainShowDialogDividersOnScroll(Landroid/content/res/TypedArray;)V

    .line 532
    invoke-direct {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->obtainDialogScrollableArea(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 535
    throw p2
.end method

.method private requestInputMode()V
    .locals 2

    .line 1243
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->needInputMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 1247
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 5

    .line 1085
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTheme:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/DialogPreference;->createDialogBuilder(I)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    move-result-object v0

    .line 1086
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogFullscreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setFullscreen(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1087
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setMaxWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1088
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setMaxHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1089
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogLeftMargin()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogTopMargin()I

    move-result v2

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogRightMargin()I

    move-result v3

    .line 1090
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogBottomMargin()I

    move-result v4

    .line 1089
    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setMargin(IIII)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1092
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogPaddingRight()I

    move-result v3

    .line 1093
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogPaddingBottom()I

    move-result v4

    .line 1092
    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setPadding(IIII)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1094
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogFitsSystemWindowsLeft()Z

    move-result v1

    .line 1095
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogFitsSystemWindowsTop()Z

    move-result v2

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogFitsSystemWindowsRight()Z

    move-result v3

    .line 1096
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogFitsSystemWindowsBottom()Z

    move-result v4

    .line 1094
    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setFitsSystemWindows(ZZZZ)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1097
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1098
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1099
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    .line 1100
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    .line 1101
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogHeaderShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->showHeader(Z)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    .line 1102
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogButtonBarDividerShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->showButtonBarDivider(Z)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    .line 1103
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->areDialogDividersShownOnScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->showDividersOnScroll(Z)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1104
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogShowAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setShowAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;

    .line 1105
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogDismissAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setDismissAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;

    .line 1106
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogCancelAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCancelAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;

    .line 1107
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setIconTintList(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1108
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1109
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogHeaderIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeaderIconTintList(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    .line 1110
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    .line 1112
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogScrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    if-eqz v1, :cond_0

    .line 1113
    invoke-virtual {v1}, Lde/mrapp/android/dialog/ScrollableArea;->getTopScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/preference/DialogPreference;->dialogScrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    .line 1114
    invoke-virtual {v2}, Lde/mrapp/android/dialog/ScrollableArea;->getBottomScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v2

    .line 1113
    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1117
    :cond_0
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1118
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setIcon(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_0

    .line 1120
    :cond_1
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setIcon(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1123
    :goto_0
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundId:I

    if-eq v1, v2, :cond_2

    .line 1124
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setBackground(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_1

    .line 1125
    :cond_2
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundColor:I

    if-eq v1, v2, :cond_3

    .line 1126
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setBackgroundColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_1

    .line 1127
    :cond_3
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 1128
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setBackground(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1131
    :cond_4
    :goto_1
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundId:I

    if-eq v1, v2, :cond_5

    .line 1132
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setWindowBackground(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    goto :goto_2

    .line 1133
    :cond_5
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 1134
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setBackground(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1137
    :cond_6
    :goto_2
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundId:I

    if-eq v1, v2, :cond_7

    .line 1138
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeaderBackground(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    goto :goto_3

    .line 1139
    :cond_7
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundColor:I

    if-eq v1, v2, :cond_8

    .line 1140
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeaderBackgroundColor(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    goto :goto_3

    .line 1141
    :cond_8
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 1142
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeaderBackground(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    .line 1145
    :cond_9
    :goto_3
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconId:I

    if-eq v1, v2, :cond_a

    .line 1146
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeaderIcon(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    goto :goto_4

    .line 1148
    :cond_a
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeaderIcon(Landroid/graphics/Bitmap;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    .line 1151
    :goto_4
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogGravity()I

    move-result v1

    if-eq v1, v2, :cond_b

    .line 1152
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setGravity(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1155
    :cond_b
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogWidth()I

    move-result v1

    if-eqz v1, :cond_c

    .line 1156
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setWidth(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1159
    :cond_c
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogHeight()I

    move-result v1

    if-eqz v1, :cond_d

    .line 1160
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setHeight(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1163
    :cond_d
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogTitleColor()I

    move-result v1

    if-eq v1, v2, :cond_e

    .line 1164
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogTitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setTitleColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1167
    :cond_e
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogTitleTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1168
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogTitleTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setTitleTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1171
    :cond_f
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogMessageColor()I

    move-result v1

    if-eq v1, v2, :cond_10

    .line 1172
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogMessageColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setMessageColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1175
    :cond_10
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogMessageTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1176
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogMessageTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setMessageTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1179
    :cond_11
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogButtonTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1180
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogButtonTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setButtonTextColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    .line 1183
    :cond_12
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogButtonTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1184
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogButtonTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setButtonTypeface(Landroid/graphics/Typeface;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    .line 1187
    :cond_13
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogDividerColor()I

    move-result v1

    if-eq v1, v2, :cond_14

    .line 1188
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getDialogDividerColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setDividerColor(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1191
    :cond_14
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleView:Landroid/view/View;

    if-eqz v1, :cond_15

    .line 1192
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomTitle(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1195
    :cond_15
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleViewId:I

    if-eq v1, v2, :cond_16

    .line 1196
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomTitle(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1199
    :cond_16
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageView:Landroid/view/View;

    if-eqz v1, :cond_17

    .line 1200
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomMessage(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1203
    :cond_17
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageViewId:I

    if-eq v1, v2, :cond_18

    .line 1204
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomMessage(I)Lde/mrapp/android/dialog/builder/AbstractMaterialDialogBuilder;

    .line 1207
    :cond_18
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarView:Landroid/view/View;

    if-eqz v1, :cond_19

    .line 1208
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomButtonBar(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    .line 1211
    :cond_19
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarViewId:I

    if-eq v1, v2, :cond_1a

    .line 1212
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomButtonBar(I)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;

    .line 1215
    :cond_1a
    iget-object v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderView:Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 1216
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomHeader(Landroid/view/View;)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    .line 1219
    :cond_1b
    iget v1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderViewId:I

    if-eq v1, v2, :cond_1c

    .line 1220
    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->setCustomHeader(I)Lde/mrapp/android/dialog/builder/AbstractHeaderDialogBuilder;

    .line 1223
    :cond_1c
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/DialogPreference;->onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V

    .line 1224
    invoke-virtual {p0, v0}, Lde/mrapp/android/preference/DialogPreference;->createDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    .line 1225
    invoke-virtual {v0, p0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1226
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {v0, p0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1227
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {v0, p0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1228
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {v0, p0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    if-eqz p1, :cond_1d

    .line 1231
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1234
    :cond_1d
    invoke-direct {p0}, Lde/mrapp/android/preference/DialogPreference;->requestInputMode()V

    const/4 p1, 0x0

    .line 1235
    iput-boolean p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogResultPositive:Z

    .line 1236
    iget-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->show()V

    return-void
.end method


# virtual methods
.method public final areDialogDividersShownOnScroll()Z
    .locals 1

    .line 2462
    iget-boolean v0, p0, Lde/mrapp/android/preference/DialogPreference;->showDialogDividersOnScroll:Z

    return v0
.end method

.method protected createDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)Lde/mrapp/android/dialog/AbstractButtonBarDialog;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)",
            "Lde/mrapp/android/dialog/AbstractButtonBarDialog;"
        }
    .end annotation

    .line 1358
    check-cast p1, Lde/mrapp/android/dialog/MaterialDialog$Builder;

    invoke-virtual {p1}, Lde/mrapp/android/dialog/MaterialDialog$Builder;->create()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    return-object p1
.end method

.method protected createDialogBuilder(I)Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;"
        }
    .end annotation

    .line 1339
    new-instance v0, Lde/mrapp/android/dialog/MaterialDialog$Builder;

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lde/mrapp/android/dialog/MaterialDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final getDialog()Landroid/app/Dialog;
    .locals 1

    .line 1412
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDialogBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2118
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDialogBottomMargin()I
    .locals 2

    .line 1591
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMargin:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogButtonTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2063
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogButtonTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getDialogButtonTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 2097
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogButtonTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getDialogCancelAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 2563
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogCancelAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-object v0
.end method

.method public final getDialogDismissAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 2542
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogDismissAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-object v0
.end method

.method public final getDialogDividerColor()I
    .locals 1

    .line 2417
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogDividerColor:I

    return v0
.end method

.method public final getDialogDividerMargin()I
    .locals 1

    .line 2439
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogDividerMargin:I

    return v0
.end method

.method public final getDialogGravity()I
    .locals 1

    .line 1455
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogGravity:I

    return v0
.end method

.method public final getDialogHeaderBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2248
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDialogHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2300
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDialogHeaderIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 2338
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getDialogHeaderIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 2372
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getDialogHeight()I
    .locals 1

    .line 1501
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeight:I

    return v0
.end method

.method public final getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1823
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDialogIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1859
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getDialogIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1891
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getDialogLeftMargin()I
    .locals 2

    .line 1564
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMargin:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogMaxHeight()I
    .locals 1

    .line 1544
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxHeight:I

    return v0
.end method

.method public final getDialogMaxWidth()I
    .locals 1

    .line 1523
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxWidth:I

    return v0
.end method

.method public final getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 1791
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getDialogMessageColor()I
    .locals 1

    .line 2020
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMessageColor:I

    return v0
.end method

.method public final getDialogMessageTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 2042
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMessageTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getDialogPaddingBottom()I
    .locals 2

    .line 1648
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogPadding:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogPaddingLeft()I
    .locals 2

    .line 1621
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogPadding:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogPaddingRight()I
    .locals 2

    .line 1639
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogPadding:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogPaddingTop()I
    .locals 2

    .line 1630
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogPadding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogRightMargin()I
    .locals 2

    .line 1582
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMargin:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogScrollableArea()Lde/mrapp/android/dialog/ScrollableArea;
    .locals 1

    .line 2484
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogScrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    return-object v0
.end method

.method public final getDialogShowAnimation()Lde/mrapp/android/dialog/animation/DialogAnimation;
    .locals 1

    .line 2521
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogShowAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-object v0
.end method

.method public final getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1759
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getDialogTitleColor()I
    .locals 1

    .line 1977
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTitleColor:I

    return v0
.end method

.method public final getDialogTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1999
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTitleTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getDialogTopMargin()I
    .locals 2

    .line 1573
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMargin:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getDialogWidth()I
    .locals 1

    .line 1478
    iget v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWidth:I

    return v0
.end method

.method public final getDialogWindowBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2170
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1945
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->negativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1913
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->positiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isDialogButtonBarDividerShown()Z
    .locals 1

    .line 2396
    iget-boolean v0, p0, Lde/mrapp/android/preference/DialogPreference;->showDialogButtonBarDivider:Z

    return v0
.end method

.method public final isDialogFitsSystemWindowsBottom()Z
    .locals 2

    .line 1715
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogFitsSystemWindows:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isDialogFitsSystemWindowsLeft()Z
    .locals 2

    .line 1683
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogFitsSystemWindows:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isDialogFitsSystemWindowsRight()Z
    .locals 2

    .line 1704
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogFitsSystemWindows:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isDialogFitsSystemWindowsTop()Z
    .locals 2

    .line 1693
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogFitsSystemWindows:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public final isDialogFullscreen()Z
    .locals 1

    .line 1434
    iget-boolean v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogFullscreen:Z

    return v0
.end method

.method public final isDialogHeaderShown()Z
    .locals 1

    .line 2228
    iget-boolean v0, p0, Lde/mrapp/android/preference/DialogPreference;->showDialogHeader:Z

    return v0
.end method

.method public final isDialogShown()Z
    .locals 1

    .line 1425
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isValueShownAsSummary()Z
    .locals 1

    .line 2208
    iget-boolean v0, p0, Lde/mrapp/android/preference/DialogPreference;->showValueAsSummary:Z

    return v0
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2772
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 2773
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 2786
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2787
    invoke-direct {p0, v0}, Lde/mrapp/android/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2743
    :goto_0
    iput-boolean v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogResultPositive:Z

    .line 2745
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 2746
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method

.method protected onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2761
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 2762
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2765
    :cond_0
    check-cast p1, Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    iget-boolean v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogResultPositive:Z

    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/preference/DialogPreference;->onDialogClosed(Lde/mrapp/android/dialog/AbstractButtonBarDialog;Z)V

    const/4 p1, 0x0

    .line 2766
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2780
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onPrepareDialog(Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
            "**>;)V"
        }
    .end annotation

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2809
    instance-of v0, p1, Lde/mrapp/android/preference/DialogPreference$SavedState;

    if-eqz v0, :cond_1

    .line 2810
    check-cast p1, Lde/mrapp/android/preference/DialogPreference$SavedState;

    .line 2812
    iget-object v0, p1, Lde/mrapp/android/preference/DialogPreference$SavedState;->dialogState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p1, Lde/mrapp/android/preference/DialogPreference$SavedState;->dialogState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lde/mrapp/android/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 2816
    :cond_0
    invoke-virtual {p1}, Lde/mrapp/android/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2818
    :cond_1
    invoke-super {p0, p1}, Lde/mrapp/android/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2794
    invoke-super {p0}, Lde/mrapp/android/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2795
    new-instance v1, Lde/mrapp/android/preference/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2797
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->isDialogShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2798
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lde/mrapp/android/preference/DialogPreference$SavedState;->dialogState:Landroid/os/Bundle;

    .line 2799
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/AbstractButtonBarDialog;->dismiss()V

    const/4 v0, 0x0

    .line 2800
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialog:Lde/mrapp/android/dialog/AbstractButtonBarDialog;

    :cond_0
    return-object v1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2753
    iget-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    .line 2754
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final performClick()V
    .locals 0

    .line 2737
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->onClick()V

    return-void
.end method

.method public final setCustomDialogButtonBar(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2645
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarView:Landroid/view/View;

    .line 2646
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarViewId:I

    return-void
.end method

.method public final setCustomDialogButtonBar(Landroid/view/View;)V
    .locals 0

    .line 2633
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarView:Landroid/view/View;

    const/4 p1, -0x1

    .line 2634
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogButtonBarViewId:I

    return-void
.end method

.method public final setCustomDialogHeader(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2669
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderView:Landroid/view/View;

    .line 2670
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderViewId:I

    return-void
.end method

.method public final setCustomDialogHeader(Landroid/view/View;)V
    .locals 0

    .line 2657
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderView:Landroid/view/View;

    const/4 p1, -0x1

    .line 2658
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogHeaderViewId:I

    return-void
.end method

.method public final setCustomDialogMessage(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2621
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageView:Landroid/view/View;

    .line 2622
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageViewId:I

    return-void
.end method

.method public final setCustomDialogMessage(Landroid/view/View;)V
    .locals 0

    .line 2609
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageView:Landroid/view/View;

    const/4 p1, -0x1

    .line 2610
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogMessageViewId:I

    return-void
.end method

.method public final setCustomDialogTitle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2597
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleView:Landroid/view/View;

    .line 2598
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleViewId:I

    return-void
.end method

.method public final setCustomDialogTitle(Landroid/view/View;)V
    .locals 0

    .line 2585
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleView:Landroid/view/View;

    const/4 p1, -0x1

    .line 2586
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->customDialogTitleViewId:I

    return-void
.end method

.method public final setDialogBackground(I)V
    .locals 1

    .line 2143
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2144
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 2145
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundId:I

    const/4 p1, -0x1

    .line 2146
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundColor:I

    return-void
.end method

.method public final setDialogBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2129
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackground:Landroid/graphics/drawable/Drawable;

    .line 2130
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 2131
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundId:I

    .line 2132
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundColor:I

    return-void
.end method

.method public final setDialogBackgroundColor(I)V
    .locals 1

    .line 2157
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2158
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 2159
    iput v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundId:I

    .line 2160
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogBackgroundColor:I

    return-void
.end method

.method public final setDialogButtonTextColor(I)V
    .locals 0

    .line 2074
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogButtonTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setDialogButtonTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 2085
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color state list may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2086
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogButtonTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final setDialogButtonTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 2108
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogButtonTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setDialogCancelAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 0

    .line 2574
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogCancelAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-void
.end method

.method public final setDialogDismissAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 0

    .line 2553
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogDismissAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-void
.end method

.method public final setDialogDividerColor(I)V
    .locals 0

    .line 2428
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogDividerColor:I

    return-void
.end method

.method public final setDialogDividerMargin(I)V
    .locals 3

    .line 2450
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The margin must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 2451
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogDividerMargin:I

    return-void
.end method

.method public final setDialogFitsSystemWindows(Z)V
    .locals 0

    .line 1726
    invoke-virtual {p0, p1, p1, p1, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogFitsSystemWindows(ZZZZ)V

    return-void
.end method

.method public final setDialogFitsSystemWindows(ZZZZ)V
    .locals 2

    const/4 v0, 0x4

    .line 1749
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    const/4 p1, 0x1

    aput-boolean p2, v0, p1

    const/4 p1, 0x2

    aput-boolean p3, v0, p1

    const/4 p1, 0x3

    aput-boolean p4, v0, p1

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogFitsSystemWindows:[Z

    return-void
.end method

.method public final setDialogFullscreen(Z)V
    .locals 0

    .line 1444
    iput-boolean p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogFullscreen:Z

    return-void
.end method

.method public final setDialogGravity(I)V
    .locals 0

    .line 1467
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogGravity:I

    return-void
.end method

.method public final setDialogHeaderBackground(I)V
    .locals 1

    .line 2273
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2274
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 2275
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundId:I

    const/4 p1, -0x1

    .line 2276
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundColor:I

    return-void
.end method

.method public final setDialogHeaderBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2259
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 2260
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 2261
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundId:I

    .line 2262
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundColor:I

    return-void
.end method

.method public final setDialogHeaderBackgroundColor(I)V
    .locals 1

    .line 2287
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2288
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    .line 2289
    iput v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundId:I

    .line 2290
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderBackgroundColor:I

    return-void
.end method

.method public final setDialogHeaderIcon(I)V
    .locals 1

    .line 2324
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2325
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconBitmap:Landroid/graphics/Bitmap;

    .line 2326
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconId:I

    return-void
.end method

.method public final setDialogHeaderIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 2311
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 2312
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconBitmap:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 2313
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconId:I

    return-void
.end method

.method public final setDialogHeaderIconTint(I)V
    .locals 0

    .line 2349
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogHeaderIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setDialogHeaderIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 2361
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconTintList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final setDialogHeaderIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 2384
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The dialog icon tint mode may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2385
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeaderIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public final setDialogHeight(I)V
    .locals 0

    .line 1513
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogHeight:I

    return-void
.end method

.method public final setDialogIcon(I)V
    .locals 1

    .line 1847
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 1848
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconBitmap:Landroid/graphics/Bitmap;

    .line 1849
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconId:I

    return-void
.end method

.method public final setDialogIcon(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1834
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIcon:Landroid/graphics/drawable/Drawable;

    .line 1835
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconBitmap:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 1836
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconId:I

    return-void
.end method

.method public final setDialogIconTint(I)V
    .locals 0

    .line 1869
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setDialogIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1880
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconTintList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final setDialogIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1902
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The dialog icon tint mode may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1903
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public final setDialogMargin(IIII)V
    .locals 0

    .line 1612
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMargin:[I

    return-void
.end method

.method public final setDialogMaxHeight(I)V
    .locals 0

    .line 1555
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxHeight:I

    return-void
.end method

.method public final setDialogMaxWidth(I)V
    .locals 0

    .line 1534
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMaxWidth:I

    return-void
.end method

.method public final setDialogMessage(I)V
    .locals 1

    .line 1813
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setDialogMessageColor(I)V
    .locals 0

    .line 2031
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMessageColor:I

    return-void
.end method

.method public final setDialogMessageTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 2053
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogMessageTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setDialogPadding(IIII)V
    .locals 3

    .line 1669
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The left padding must be at least 0"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1670
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The top padding must be at least 0"

    invoke-virtual {v0, p2, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1671
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The right padding must be at least 0"

    invoke-virtual {v0, p3, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1672
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The bottom padding must be at least 0"

    invoke-virtual {v0, p4, v2, v1}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 1673
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogPadding:[I

    return-void
.end method

.method public final setDialogScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 0

    .line 2495
    invoke-static {p1}, Lde/mrapp/android/dialog/ScrollableArea;->create(Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogScrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    return-void
.end method

.method public final setDialogScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 0

    .line 2511
    invoke-static {p1, p2}, Lde/mrapp/android/dialog/ScrollableArea;->create(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogScrollableArea:Lde/mrapp/android/dialog/ScrollableArea;

    return-void
.end method

.method public final setDialogShowAnimation(Lde/mrapp/android/dialog/animation/DialogAnimation;)V
    .locals 0

    .line 2532
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogShowAnimation:Lde/mrapp/android/dialog/animation/DialogAnimation;

    return-void
.end method

.method public final setDialogTitle(I)V
    .locals 1

    .line 1781
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1770
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setDialogTitleColor(I)V
    .locals 0

    .line 1988
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTitleColor:I

    return-void
.end method

.method public final setDialogTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 2010
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogTitleTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setDialogWidth(I)V
    .locals 0

    .line 1490
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWidth:I

    return-void
.end method

.method public final setDialogWindowBackground(I)V
    .locals 1

    .line 2182
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 2183
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 2184
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundId:I

    return-void
.end method

.method public final setDialogWindowBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2195
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 2197
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 2198
    iput p1, p0, Lde/mrapp/android/preference/DialogPreference;->dialogWindowBackgroundId:I

    return-void
.end method

.method public final setNegativeButtonText(I)V
    .locals 1

    .line 1967
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1956
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->negativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 2720
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public final setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 2682
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 2705
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public final setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    .line 2732
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public final setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 2693
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public final setPositiveButtonText(I)V
    .locals 1

    .line 1935
    invoke-virtual {p0}, Lde/mrapp/android/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1924
    iput-object p1, p0, Lde/mrapp/android/preference/DialogPreference;->positiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final showDialogButtonBarDivider(Z)V
    .locals 0

    .line 2408
    iput-boolean p1, p0, Lde/mrapp/android/preference/DialogPreference;->showDialogButtonBarDivider:Z

    return-void
.end method

.method public final showDialogDividersOnScroll(Z)V
    .locals 0

    .line 2474
    iput-boolean p1, p0, Lde/mrapp/android/preference/DialogPreference;->showDialogDividersOnScroll:Z

    return-void
.end method

.method public final showDialogHeader(Z)V
    .locals 0

    .line 2238
    iput-boolean p1, p0, Lde/mrapp/android/preference/DialogPreference;->showDialogHeader:Z

    return-void
.end method

.method public final showValueAsSummary(Z)V
    .locals 0

    .line 2219
    iput-boolean p1, p0, Lde/mrapp/android/preference/DialogPreference;->showValueAsSummary:Z

    return-void
.end method
