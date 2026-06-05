.class public Lcom/greenbulb/sonarpen/SonarPenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# instance fields
.field public bSonarPenByPassDetection:Z

.field public thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->bSonarPenByPassDetection:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0, p1}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->translateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-direct {p1, p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0, p2}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->isSonicPenButton(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0, p2}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->isSonicPenButton(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->stop()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->bSonarPenByPassDetection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->startWithByPass()I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenActivity;->thisSonarPen:Lcom/greenbulb/sonarpen/SonarPenUtilities;

    invoke-virtual {v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->start()I

    :goto_0
    return-void
.end method
