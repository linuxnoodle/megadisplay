.class public interface abstract Lde/mrapp/android/dialog/model/WizardDialogDecorator;
.super Ljava/lang/Object;
.source "WizardDialogDecorator.java"


# virtual methods
.method public abstract addFragment(ILjava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addFragment(ILjava/lang/Class;Landroid/os/Bundle;)V
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
.end method

.method public abstract addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;)V
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
.end method

.method public abstract addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V
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
.end method

.method public abstract addFragment(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addFragment(Ljava/lang/Class;Landroid/os/Bundle;)V
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
.end method

.method public abstract addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract addWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V
.end method

.method public abstract clearFragments()V
.end method

.method public abstract enableSwipe(Z)V
.end method

.method public abstract enableTabLayout(Z)V
.end method

.method public abstract getBackButton()Landroid/widget/Button;
.end method

.method public abstract getBackButtonText()Ljava/lang/CharSequence;
.end method

.method public abstract getButtonBarDividerColor()I
.end method

.method public abstract getButtonBarDividerMargin()I
.end method

.method public abstract getButtonTextColor()I
.end method

.method public abstract getFinishButton()Landroid/widget/Button;
.end method

.method public abstract getFinishButtonText()Ljava/lang/CharSequence;
.end method

.method public abstract getFragmentCount()I
.end method

.method public abstract getNextButton()Landroid/widget/Button;
.end method

.method public abstract getNextButtonText()Ljava/lang/CharSequence;
.end method

.method public abstract getTabIndicatorColor()I
.end method

.method public abstract getTabIndicatorHeight()I
.end method

.method public abstract getTabLayout()Lcom/google/android/material/tabs/TabLayout;
.end method

.method public abstract getTabPosition()Lde/mrapp/android/dialog/WizardDialog$TabPosition;
.end method

.method public abstract getTabSelectedTextColor()I
.end method

.method public abstract getTabTextColor()I
.end method

.method public abstract getViewPager()Landroidx/viewpager/widget/ViewPager;
.end method

.method public abstract indexOfFragment(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract isButtonBarDividerShown()Z
.end method

.method public abstract isButtonBarShown()Z
.end method

.method public abstract isSwipeEnabled()Z
.end method

.method public abstract isTabLayoutEnabled()Z
.end method

.method public abstract isTabLayoutShown()Z
.end method

.method public abstract removeFragment(I)V
.end method

.method public abstract removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract removeWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V
.end method

.method public abstract setBackButtonText(I)V
.end method

.method public abstract setBackButtonText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setButtonBarDividerColor(I)V
.end method

.method public abstract setButtonBarDividerMargin(I)V
.end method

.method public abstract setButtonTextColor(I)V
.end method

.method public abstract setFinishButtonText(I)V
.end method

.method public abstract setFinishButtonText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setNextButtonText(I)V
.end method

.method public abstract setNextButtonText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTabIndicatorColor(I)V
.end method

.method public abstract setTabIndicatorHeight(I)V
.end method

.method public abstract setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)V
.end method

.method public abstract setTabSelectedTextColor(I)V
.end method

.method public abstract setTabTextColor(I)V
.end method

.method public abstract showButtonBar(Z)V
.end method

.method public abstract showButtonBarDivider(Z)V
.end method

.method public abstract showTabLayout(Z)V
.end method
