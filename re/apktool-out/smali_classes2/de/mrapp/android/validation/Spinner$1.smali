.class Lde/mrapp/android/validation/Spinner$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/validation/Spinner;->createItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/mrapp/android/validation/Spinner;


# direct methods
.method constructor <init>(Lde/mrapp/android/validation/Spinner;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lde/mrapp/android/validation/Spinner$1;->this$0:Lde/mrapp/android/validation/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner$1;->this$0:Lde/mrapp/android/validation/Spinner;

    invoke-virtual {v0}, Lde/mrapp/android/validation/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner$1;->this$0:Lde/mrapp/android/validation/Spinner;

    invoke-virtual {v0}, Lde/mrapp/android/validation/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 286
    :cond_0
    iget-object p1, p0, Lde/mrapp/android/validation/Spinner$1;->this$0:Lde/mrapp/android/validation/Spinner;

    invoke-virtual {p1}, Lde/mrapp/android/validation/Spinner;->isValidatedOnValueChange()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 287
    iget-object p1, p0, Lde/mrapp/android/validation/Spinner$1;->this$0:Lde/mrapp/android/validation/Spinner;

    invoke-virtual {p1}, Lde/mrapp/android/validation/Spinner;->validate()Z

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner$1;->this$0:Lde/mrapp/android/validation/Spinner;

    invoke-virtual {v0}, Lde/mrapp/android/validation/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lde/mrapp/android/validation/Spinner$1;->this$0:Lde/mrapp/android/validation/Spinner;

    invoke-virtual {v0}, Lde/mrapp/android/validation/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method
