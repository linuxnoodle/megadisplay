.class public Lde/mrapp/android/dialog/WizardDialog;
.super Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;
.source "WizardDialog.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/WizardDialogDecorator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/WizardDialog$Builder;,
        Lde/mrapp/android/dialog/WizardDialog$TabPosition;,
        Lde/mrapp/android/dialog/WizardDialog$WizardListener;
    }
.end annotation


# instance fields
.field private final decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 873
    invoke-direct {p0}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;-><init>()V

    .line 874
    new-instance v0, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;-><init>(Lde/mrapp/android/dialog/WizardDialog;)V

    iput-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    .line 875
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/WizardDialog;->addDecorator(Lde/mrapp/android/dialog/decorator/AbstractDecorator;)V

    const/4 v0, 0x0

    .line 876
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/WizardDialog;->setCancelable(Z)V

    .line 877
    sget v0, Lde/mrapp/android/dialog/R$layout;->wizard_dialog_view_pager:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/WizardDialog;->setView(I)V

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

    .line 941
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(ILjava/lang/Class;)V

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

    .line 948
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

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

    .line 954
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;)V

    return-void
.end method

.method public final addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
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

    .line 961
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)V

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

    .line 929
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/Class;)V

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

    .line 935
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1, p2}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addFragment(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public final addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1171
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public final addWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V
    .locals 1

    .line 1161
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V

    return-void
.end method

.method public final clearFragments()V
    .locals 1

    .line 971
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->clearFragments()V

    return-void
.end method

.method public final enableSwipe(Z)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->enableSwipe(Z)V

    return-void
.end method

.method public final enableTabLayout(Z)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->enableTabLayout(Z)V

    return-void
.end method

.method public final getBackButton()Landroid/widget/Button;
    .locals 1

    .line 914
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public final getBackButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1116
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getBackButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getButtonBarDividerColor()I
    .locals 1

    .line 1096
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getButtonBarDividerColor()I

    move-result v0

    return v0
.end method

.method public final getButtonBarDividerMargin()I
    .locals 1

    .line 1106
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getButtonBarDividerMargin()I

    move-result v0

    return v0
.end method

.method public final getButtonTextColor()I
    .locals 1

    .line 1076
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getButtonTextColor()I

    move-result v0

    return v0
.end method

.method public final getFinishButton()Landroid/widget/Button;
    .locals 1

    .line 924
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getFinishButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public final getFinishButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1146
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getFinishButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getFragmentCount()I
    .locals 1

    .line 981
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getFragmentCount()I

    move-result v0

    return v0
.end method

.method public final getNextButton()Landroid/widget/Button;
    .locals 1

    .line 919
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public final getNextButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1131
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getNextButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTabIndicatorColor()I
    .locals 1

    .line 1026
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabIndicatorColor()I

    move-result v0

    return v0
.end method

.method public final getTabIndicatorHeight()I
    .locals 1

    .line 1016
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabIndicatorHeight()I

    move-result v0

    return v0
.end method

.method public final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 1

    .line 909
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getTabPosition()Lde/mrapp/android/dialog/WizardDialog$TabPosition;
    .locals 1

    .line 986
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabPosition()Lde/mrapp/android/dialog/WizardDialog$TabPosition;

    move-result-object v0

    return-object v0
.end method

.method public final getTabSelectedTextColor()I
    .locals 1

    .line 1046
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabSelectedTextColor()I

    move-result v0

    return v0
.end method

.method public final getTabTextColor()I
    .locals 1

    .line 1036
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getTabTextColor()I

    move-result v0

    return v0
.end method

.method public final getViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 904
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->getViewPager()Lde/mrapp/android/dialog/view/ViewPager;

    move-result-object v0

    return-object v0
.end method

.method public final indexOfFragment(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->indexOfFragment(Ljava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public final isButtonBarDividerShown()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isButtonBarDividerShown()Z

    move-result v0

    return v0
.end method

.method public final isButtonBarShown()Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isButtonBarShown()Z

    move-result v0

    return v0
.end method

.method public final isSwipeEnabled()Z
    .locals 1

    .line 1056
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public final isTabLayoutEnabled()Z
    .locals 1

    .line 996
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isTabLayoutEnabled()Z

    move-result v0

    return v0
.end method

.method public final isTabLayoutShown()Z
    .locals 1

    .line 1006
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->isTabLayoutShown()Z

    move-result v0

    return v0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1187
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1188
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1181
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1182
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final removeFragment(I)V
    .locals 1

    .line 966
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->removeFragment(I)V

    return-void
.end method

.method public final removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1176
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public final removeWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V
    .locals 1

    .line 1166
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->addWizardListener(Lde/mrapp/android/dialog/WizardDialog$WizardListener;)V

    return-void
.end method

.method public final setBackButtonText(I)V
    .locals 1

    .line 1121
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setBackButtonText(I)V

    return-void
.end method

.method public final setBackButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1126
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setBackButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setButtonBarDividerColor(I)V
    .locals 1

    .line 1101
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setButtonBarDividerColor(I)V

    return-void
.end method

.method public final setButtonBarDividerMargin(I)V
    .locals 1

    .line 1111
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setButtonBarDividerMargin(I)V

    return-void
.end method

.method public final setButtonTextColor(I)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setButtonTextColor(I)V

    return-void
.end method

.method public final setFinishButtonText(I)V
    .locals 1

    .line 1151
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setFinishButtonText(I)V

    return-void
.end method

.method public final setFinishButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setFinishButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setNextButtonText(I)V
    .locals 1

    .line 1136
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setNextButtonText(I)V

    return-void
.end method

.method public final setNextButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1141
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setNextButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 1

    .line 882
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 885
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_0

    .line 887
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    :goto_0
    return-void
.end method

.method public final setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 1

    .line 893
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-ne p1, v0, :cond_0

    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    .line 896
    invoke-super {p0, p1, p1}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_0

    .line 898
    :cond_0
    invoke-super {p0, p1, p2}, Lde/mrapp/android/dialog/AbstractHeaderDialogFragment;->setScrollableArea(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    :goto_0
    return-void
.end method

.method public final setTabIndicatorColor(I)V
    .locals 1

    .line 1031
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabIndicatorColor(I)V

    return-void
.end method

.method public final setTabIndicatorHeight(I)V
    .locals 1

    .line 1021
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabIndicatorHeight(I)V

    return-void
.end method

.method public setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)V
    .locals 1

    .line 991
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabPosition(Lde/mrapp/android/dialog/WizardDialog$TabPosition;)V

    return-void
.end method

.method public final setTabSelectedTextColor(I)V
    .locals 1

    .line 1051
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabSelectedTextColor(I)V

    return-void
.end method

.method public final setTabTextColor(I)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->setTabTextColor(I)V

    return-void
.end method

.method public final showButtonBar(Z)V
    .locals 1

    .line 1071
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showButtonBar(Z)V

    return-void
.end method

.method public final showButtonBarDivider(Z)V
    .locals 1

    .line 1091
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showButtonBarDivider(Z)V

    return-void
.end method

.method public final showTabLayout(Z)V
    .locals 1

    .line 1011
    iget-object v0, p0, Lde/mrapp/android/dialog/WizardDialog;->decorator:Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/decorator/WizardDialogDecorator;->showTabLayout(Z)V

    return-void
.end method
