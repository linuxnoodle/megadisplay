.class public Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogFragmentDecorator;
.source "WizardDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/WizardDialogDecorator;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogFragmentDecorator<",
        "Lde/mrapp/android/dialog/WizardDialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/WizardDialogDecorator;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
.field private static final BACK_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::backButtonText"

.field private static final BUTTON_BAR_DIVIDER_COLOR_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::buttonBarDividerColor"

.field private static final BUTTON_BAR_DIVIDER_MARGIN_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::buttonBarDividerMargin"

.field private static final BUTTON_BAR_SHOWN_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::buttonBarShown"

.field private static final BUTTON_TEXT_COLOR_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::buttonTextColor"

.field private static final FINISH_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::finishButtonText"

.field private static final NEXT_BUTTON_TEXT_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::nextButtonText"

.field private static final SHOW_BUTTON_BAR_DIVIDER_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::showButtonBarDivider"

.field private static final SWIPE_ENABLED_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::swipeEnabled"

.field private static final TAB_INDICATOR_COLOR_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::tabIndicatorColor"

.field private static final TAB_INDICATOR_HEIGHT_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::tabIndicatorHeight"

.field private static final TAB_LAYOUT_ENABLED_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::tabLayoutEnabled"

.field private static final TAB_LAYOUT_SHOWN_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::tabLayoutShown"

.field private static final TAB_POSITION_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::tabPosition"

.field private static final TAB_SELECTED_TEXT_COLOR_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::tabSelectedTextColor"

.field private static final TAB_TEXT_COLOR_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::tabTextColor"

.field private static final VIEW_PAGER_ITEMS_EXTRA:Ljava/lang/String; = "WizardDialogDecorator::viewPagerItems"


# instance fields
.field private backButton:Landroid/widget/Button;

.field private backButtonText:Ljava/lang/CharSequence;

.field private buttonBarContainer:Landroid/view/ViewGroup;

.field private buttonBarDivider:Landroid/view/View;

.field private buttonBarDividerColor:I

.field private buttonBarDividerMargin:I

.field private buttonBarShown:Z

.field private buttonTextColor:I

.field private finishButton:Landroid/widget/Button;

.field private finishButtonText:Ljava/lang/CharSequence;

.field private nextButton:Landroid/widget/Button;

.field private nextButtonText:Ljava/lang/CharSequence;

.field private final onPageChangeListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private showButtonBarDivider:Z

.field private swipeEnabled:Z

.field private tabIndicatorColor:I

.field private tabIndicatorHeight:I

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private tabLayoutEnabled:Z

.field private tabLayoutShown:Z

.field private tabPosition:Lde/mrapp/android/dialog/WizardDialog$TabPosition;

.field private tabSelectedTextColor:I

.field private tabTextColor:I

.field private viewPager:Lde/mrapp/android/dialog/view/ViewPager;

.field private viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

.field private final viewPagerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lde/mrapp/android/dialog/datastructure/ViewPagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private final wizardListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/dialog/WizardDialog$WizardListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/dialog/WizardDialog;)V
    .locals 0

    .line 708
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogFragmentDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    .line 709
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    .line 710
    new-instance p1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {p1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->wizardListeners:Lde/mrapp/util/datastructure/ListenerList;

    .line 711
    new-instance p1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {p1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->onPageChangeListeners:Lde/mrapp/util/datastructure/ListenerList;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)Lde/mrapp/android/dialog/view/ViewPager;
    .locals 0

    .line 63
    iget-object p0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;I)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->notifyOnPrevious(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;I)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->notifyOnNext(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;I)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->notifyOnFinish(I)Z

    move-result p0

    return p0
.end method

.method private adaptBackButton()V
    .locals 3

    .line 499
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 500
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButtonText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->createBackButtonListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private adaptButtonBarDividerColor()V
    .locals 2

    .line 613
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 614
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private adaptButtonBarDividerMargin()V
    .locals 2

    .line 622
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 625
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDividerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 626
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDividerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 627
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private adaptButtonBarDividerVisibility()V
    .locals 2

    .line 604
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 605
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showButtonBarDivider:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private adaptButtonBarVisibility()V
    .locals 2

    .line 595
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 596
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarShown:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private adaptButtonTextColor()V
    .locals 2

    .line 482
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 483
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 486
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 487
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 490
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 491
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private adaptButtonVisibility()V
    .locals 5

    .line 635
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 637
    invoke-virtual {v0}, Lde/mrapp/android/dialog/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 638
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    .line 640
    invoke-virtual {v4}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 639
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 641
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    iget-object v4, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    .line 642
    invoke-virtual {v4}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    .line 641
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private adaptFinishButton()V
    .locals 3

    .line 563
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 564
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButtonText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->createFinishButtonListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private adaptNextButton()V
    .locals 3

    .line 531
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButtonText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->createNextButtonListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private adaptTabIndicatorColor()V
    .locals 2

    .line 455
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 456
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    :cond_0
    return-void
.end method

.method private adaptTabIndicatorHeight()V
    .locals 2

    .line 446
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 447
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabIndicatorHeight:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorHeight(I)V

    :cond_0
    return-void
.end method

.method private adaptTabLayout()V
    .locals 0

    .line 412
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabLayoutEnableState()V

    .line 413
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabLayoutVisibility()V

    .line 414
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabIndicatorHeight()V

    .line 415
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabIndicatorColor()V

    .line 416
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabTextColor()V

    return-void
.end method

.method private adaptTabLayoutEnableState()V
    .locals 4

    .line 423
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 424
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 425
    iget-boolean v2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayoutEnabled:Z

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 427
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayoutEnabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private adaptTabLayoutVisibility()V
    .locals 2

    .line 437
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_1

    .line 438
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayoutShown:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private adaptTabTextColor()V
    .locals 3

    .line 464
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    .line 465
    iget v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabTextColor:I

    iget v2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabSelectedTextColor:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    :cond_0
    return-void
.end method

.method private adaptViewPager()V
    .locals 2

    .line 473
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    if-eqz v0, :cond_0

    .line 474
    iget-boolean v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->swipeEnabled:Z

    invoke-virtual {v0, v1}, Lde/mrapp/android/dialog/view/ViewPager;->enableSwipe(Z)V

    :cond_0
    return-void
.end method

.method private createBackButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 513
    new-instance v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$1;-><init>(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)V

    return-object v0
.end method

.method private createFinishButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 577
    new-instance v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$3;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$3;-><init>(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)V

    return-object v0
.end method

.method private createNextButtonListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 545
    new-instance v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$2;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator$2;-><init>(Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;)V

    return-object v0
.end method

.method private inflateButtonBar()Landroid/view/View;
    .locals 5

    .line 388
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 392
    sget v2, Lde/mrapp/android/dialog/R$layout;->button_bar_container:I

    const/4 v3, 0x0

    .line 393
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    .line 394
    sget v4, Lde/mrapp/android/dialog/R$id;->button_bar_divider:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDivider:Landroid/view/View;

    .line 395
    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 396
    sget v0, Lde/mrapp/android/dialog/R$layout;->horizontal_button_bar:I

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    .line 397
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x1020019

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    const v1, 0x102001a

    .line 400
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    const v1, 0x102001b

    .line 401
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    .line 402
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private inflateTabLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 351
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 352
    sget v1, Lde/mrapp/android/dialog/R$id;->header_content_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 353
    sget v1, Lde/mrapp/android/dialog/R$id;->content_container:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 355
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 357
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 358
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 361
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/WizardDialog;->isHeaderShown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabPosition()Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/dialog/WizardDialog$TabPosition;->NO_HEADER:Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    if-eq v1, v3, :cond_3

    .line 362
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/WizardDialog;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/WizardDialog;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 364
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabPosition()Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    move-result-object v1

    sget-object v3, Lde/mrapp/android/dialog/WizardDialog$TabPosition;->PREFER_HEADER:Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    if-ne v1, v3, :cond_3

    .line 365
    :cond_2
    sget p2, Lde/mrapp/android/dialog/R$layout;->wizard_dialog_tab_layout:I

    .line 366
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 367
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 370
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 371
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 373
    :cond_3
    sget p1, Lde/mrapp/android/dialog/R$layout;->wizard_dialog_tab_layout:I

    .line 374
    invoke-virtual {v0, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 375
    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 378
    :goto_0
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object p2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private notifyOnFinish(I)Z
    .locals 4

    .line 691
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->wizardListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/WizardDialog$WizardListener;

    .line 692
    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    invoke-virtual {v3, p1}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lde/mrapp/android/dialog/WizardDialog$WizardListener;->onFinish(ILandroidx/fragment/app/Fragment;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private notifyOnNext(I)Z
    .locals 4

    .line 656
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->wizardListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/WizardDialog$WizardListener;

    .line 657
    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    invoke-virtual {v3, p1}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lde/mrapp/android/dialog/WizardDialog$WizardListener;->onNext(ILandroidx/fragment/app/Fragment;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private notifyOnPrevious(I)Z
    .locals 4

    .line 673
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->wizardListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/dialog/WizardDialog$WizardListener;

    .line 674
    iget-object v3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    invoke-virtual {v3, p1}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lde/mrapp/android/dialog/WizardDialog$WizardListener;->onPrevious(ILandroidx/fragment/app/Fragment;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private reInflateTabLayout()V
    .locals 3

    .line 328
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    sget v1, Lde/mrapp/android/dialog/R$id;->header_content_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 332
    sget v2, Lde/mrapp/android/dialog/R$id;->content_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0, v1, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->inflateTabLayout(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addFragment(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 753
    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public final addFragment(ILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public final addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 766
    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public final addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 773
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The fragment class may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    new-instance v1, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;

    invoke-direct {v1, p1, p2, p3}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->addItem(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final addFragment(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public final addFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0, p1, p2}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public final addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2

    .line 1034
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->onPageChangeListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    .line 1037
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/view/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public final addWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V
    .locals 2

    .line 1022
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->wizardListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearFragments()V
    .locals 1

    .line 792
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 794
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->clear()V

    :cond_0
    return-void
.end method

.method public final enableSwipe(Z)V
    .locals 0

    .line 906
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->swipeEnabled:Z

    .line 907
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptViewPager()V

    return-void
.end method

.method public final enableTabLayout(Z)V
    .locals 0

    .line 839
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayoutEnabled:Z

    .line 840
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabLayoutEnableState()V

    return-void
.end method

.method public final getBackButton()Landroid/widget/Button;
    .locals 1

    .line 726
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getBackButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 968
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getButtonBarDividerColor()I
    .locals 1

    .line 945
    iget v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDividerColor:I

    return v0
.end method

.method public final getButtonBarDividerMargin()I
    .locals 1

    .line 956
    iget v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDividerMargin:I

    return v0
.end method

.method public final getButtonTextColor()I
    .locals 1

    .line 923
    iget v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonTextColor:I

    return v0
.end method

.method public final getFinishButton()Landroid/widget/Button;
    .locals 1

    .line 736
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getFinishButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1004
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getFragmentCount()I
    .locals 1

    .line 816
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getNextButton()Landroid/widget/Button;
    .locals 1

    .line 731
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public final getNextButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 986
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTabIndicatorColor()I
    .locals 1

    .line 868
    iget v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabIndicatorColor:I

    return v0
.end method

.method public final getTabIndicatorHeight()I
    .locals 1

    .line 856
    iget v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabIndicatorHeight:I

    return v0
.end method

.method public final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 1

    .line 721
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method public final getTabPosition()Lde/mrapp/android/dialog/WizardDialog$TabPosition;
    .locals 1

    .line 821
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabPosition:Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    return-object v0
.end method

.method public final getTabSelectedTextColor()I
    .locals 1

    .line 890
    iget v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabSelectedTextColor:I

    return v0
.end method

.method public final getTabTextColor()I
    .locals 1

    .line 879
    iget v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabTextColor:I

    return v0
.end method

.method public bridge synthetic getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getViewPager()Lde/mrapp/android/dialog/view/ViewPager;

    move-result-object v0

    return-object v0
.end method

.method public final getViewPager()Lde/mrapp/android/dialog/view/ViewPager;
    .locals 1

    .line 716
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    return-object v0
.end method

.method public final indexOfFragment(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 801
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The fragment class may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 803
    :goto_0
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 804
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;

    .line 806
    invoke-virtual {v1}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getFragmentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final isButtonBarDividerShown()Z
    .locals 1

    .line 934
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showButtonBarDivider:Z

    return v0
.end method

.method public final isButtonBarShown()Z
    .locals 1

    .line 912
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarShown:Z

    return v0
.end method

.method public final isSwipeEnabled()Z
    .locals 1

    .line 901
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->swipeEnabled:Z

    return v0
.end method

.method public final isTabLayoutEnabled()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayoutEnabled:Z

    return v0
.end method

.method public final isTabLayoutShown()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayoutShown:Z

    return v0
.end method

.method protected final onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            ")",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1138
    new-instance p1, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p2, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p1, p2}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1139
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p2, v0}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1142
    sget p3, Lde/mrapp/android/dialog/R$id;->view_pager:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 1144
    instance-of v0, p3, Lde/mrapp/android/dialog/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1145
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->inflateButtonBar()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1148
    check-cast p3, Lde/mrapp/android/dialog/view/ViewPager;

    iput-object p3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    .line 1149
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/MaterialDialog;

    invoke-virtual {p3, v1}, Lde/mrapp/android/dialog/view/ViewPager;->setDialog(Lde/mrapp/android/dialog/model/MaterialDialog;)V

    .line 1150
    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    invoke-virtual {p3, p0}, Lde/mrapp/android/dialog/view/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1151
    new-instance p3, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    .line 1152
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    invoke-direct {p3, v1, p4, v2}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object p3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    .line 1154
    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->onPageChangeListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {p3}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1155
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    invoke-virtual {v1, p4}, Lde/mrapp/android/dialog/view/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    .line 1158
    :cond_0
    iget-object p3, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    iget-object p4, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    invoke-virtual {p3, p4}, Lde/mrapp/android/dialog/view/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1159
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->inflateTabLayout(Landroid/view/View;Landroid/view/View;)V

    .line 1160
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabLayout()V

    .line 1161
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptViewPager()V

    .line 1162
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonTextColor()V

    .line 1163
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptBackButton()V

    .line 1164
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptNextButton()V

    .line 1165
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptFinishButton()V

    .line 1166
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarVisibility()V

    .line 1167
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarDividerVisibility()V

    .line 1168
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarDividerColor()V

    .line 1169
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarDividerMargin()V

    .line 1170
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonVisibility()V

    .line 1171
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1172
    new-instance p2, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;

    sget-object p3, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-direct {p2, p3}, Lde/mrapp/android/dialog/view/DialogRootView$AreaViewType;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 1178
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 63
    check-cast p4, Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Landroidx/fragment/app/FragmentManager;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1185
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarContainer:Landroid/view/ViewGroup;

    .line 1188
    :cond_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 1189
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    .line 1190
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    .line 1191
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButton:Landroid/widget/Button;

    .line 1192
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButton:Landroid/widget/Button;

    .line 1193
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButton:Landroid/widget/Button;

    .line 1194
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDivider:Landroid/view/View;

    return-void
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    .line 1060
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonVisibility()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1092
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_POSITION_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lde/mrapp/android/dialog/WizardDialog$TabPosition;->fromValue(I)Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)V

    .line 1093
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_LAYOUT_ENABLED_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->enableTabLayout(Z)V

    .line 1094
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_LAYOUT_SHOWN_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showTabLayout(Z)V

    .line 1095
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_INDICATOR_HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabIndicatorHeight(I)V

    .line 1096
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_INDICATOR_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabIndicatorColor(I)V

    .line 1097
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabTextColor(I)V

    .line 1098
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_SELECTED_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabSelectedTextColor(I)V

    .line 1099
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->SWIPE_ENABLED_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->enableSwipe(Z)V

    .line 1100
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_BAR_SHOWN_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showButtonBar(Z)V

    .line 1101
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setButtonTextColor(I)V

    .line 1102
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->SHOW_BUTTON_BAR_DIVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showButtonBarDivider(Z)V

    .line 1103
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_BAR_DIVIDER_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setButtonBarDividerColor(I)V

    .line 1104
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_BAR_DIVIDER_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setButtonBarDividerMargin(I)V

    .line 1105
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BACK_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1106
    sget-object v1, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->NEXT_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1107
    sget-object v2, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->FINISH_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    .line 1108
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1111
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 1114
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1115
    invoke-virtual {p0, v1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setNextButtonText(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1119
    invoke-virtual {p0, v2}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setFinishButtonText(Ljava/lang/CharSequence;)V

    .line 1122
    :cond_2
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->VIEW_PAGER_ITEMS_EXTRA:Ljava/lang/String;

    .line 1123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1126
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;

    .line 1127
    invoke-virtual {v0}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Lde/mrapp/android/dialog/datastructure/ViewPagerItem;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1070
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_POSITION_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabPosition()Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/dialog/WizardDialog$TabPosition;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1071
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_LAYOUT_ENABLED_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isTabLayoutEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_LAYOUT_SHOWN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isTabLayoutShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1073
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_INDICATOR_HEIGHT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabIndicatorHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_INDICATOR_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabIndicatorColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabTextColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->TAB_SELECTED_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabSelectedTextColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1077
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->SWIPE_ENABLED_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isSwipeEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1078
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_BAR_SHOWN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isButtonBarShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1079
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getButtonTextColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1080
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->SHOW_BUTTON_BAR_DIVIDER_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isButtonBarDividerShown()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1081
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_BAR_DIVIDER_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getButtonBarDividerColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BUTTON_BAR_DIVIDER_MARGIN_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getButtonBarDividerMargin()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->BACK_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getBackButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1084
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->NEXT_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getNextButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1085
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->FINISH_BUTTON_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getFinishButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1086
    sget-object v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->VIEW_PAGER_ITEMS_EXTRA:Ljava/lang/String;

    .line 1087
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/WizardDialog;

    invoke-virtual {v1}, Lde/mrapp/android/dialog/WizardDialog;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    .line 1086
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final removeFragment(I)V
    .locals 1

    .line 783
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 785
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPagerAdapter:Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/adapter/ViewPagerAdapter;->removeItem(I)V

    :cond_0
    return-void
.end method

.method public final removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2

    .line 1044
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->onPageChangeListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 1047
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->viewPager:Lde/mrapp/android/dialog/view/ViewPager;

    if-eqz v0, :cond_0

    .line 1048
    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/view/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public final removeWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V
    .locals 2

    .line 1028
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->wizardListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setBackButtonText(I)V
    .locals 1

    .line 973
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setBackButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setBackButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 978
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The text may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 979
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The text may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 980
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->backButtonText:Ljava/lang/CharSequence;

    .line 981
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptBackButton()V

    return-void
.end method

.method public final setButtonBarDividerColor(I)V
    .locals 0

    .line 950
    iput p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDividerColor:I

    .line 951
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarDividerColor()V

    return-void
.end method

.method public final setButtonBarDividerMargin(I)V
    .locals 3

    .line 961
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The margin must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 962
    iput p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarDividerMargin:I

    .line 963
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarDividerMargin()V

    return-void
.end method

.method public final setButtonTextColor(I)V
    .locals 0

    .line 928
    iput p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonTextColor:I

    .line 929
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonTextColor()V

    return-void
.end method

.method public final setFinishButtonText(I)V
    .locals 1

    .line 1009
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setFinishButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setFinishButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1014
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The text may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The text may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1016
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->finishButtonText:Ljava/lang/CharSequence;

    .line 1017
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptFinishButton()V

    return-void
.end method

.method public final setNextButtonText(I)V
    .locals 1

    .line 991
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setNextButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNextButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 996
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The text may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 997
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The text may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 998
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->nextButtonText:Ljava/lang/CharSequence;

    .line 999
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptNextButton()V

    return-void
.end method

.method public final setTabIndicatorColor(I)V
    .locals 0

    .line 873
    iput p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabIndicatorColor:I

    .line 874
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabIndicatorColor()V

    return-void
.end method

.method public final setTabIndicatorHeight(I)V
    .locals 3

    .line 861
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The height must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 862
    iput p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabIndicatorHeight:I

    .line 863
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabIndicatorHeight()V

    return-void
.end method

.method public final setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)V
    .locals 2

    .line 826
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tab position may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabPosition:Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    .line 828
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->reInflateTabLayout()V

    .line 829
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabLayout()V

    return-void
.end method

.method public final setTabSelectedTextColor(I)V
    .locals 0

    .line 895
    iput p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabSelectedTextColor:I

    .line 896
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabTextColor()V

    return-void
.end method

.method public final setTabTextColor(I)V
    .locals 0

    .line 884
    iput p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabTextColor:I

    .line 885
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabTextColor()V

    return-void
.end method

.method public final showButtonBar(Z)V
    .locals 0

    .line 917
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->buttonBarShown:Z

    .line 918
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarVisibility()V

    return-void
.end method

.method public final showButtonBarDivider(Z)V
    .locals 0

    .line 939
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showButtonBarDivider:Z

    .line 940
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptButtonBarDividerVisibility()V

    return-void
.end method

.method public final showTabLayout(Z)V
    .locals 0

    .line 850
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->tabLayoutShown:Z

    .line 851
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->adaptTabLayoutVisibility()V

    return-void
.end method
