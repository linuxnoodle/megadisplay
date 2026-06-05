.class public abstract Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;
.super Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;
.source "AbstractValidateableDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/ValidateableDialog;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder<",
        "TDialogType;*>;>",
        "Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder<",
        "TDialogType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractAnimateableDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final addAllDialogValidators(Ljava/util/Collection;)Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ">;)TBuilderType;"
        }
    .end annotation

    .line 99
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ValidateableDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ValidateableDialog;->addAllDialogValidators(Ljava/util/Collection;)V

    .line 101
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;

    return-object p1
.end method

.method public final addDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/dialog/DialogValidator;",
            ")TBuilderType;"
        }
    .end annotation

    .line 82
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ValidateableDialog;

    invoke-interface {v0, p1}, Lde/mrapp/android/dialog/model/ValidateableDialog;->addDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V

    .line 84
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;->self()Lde/mrapp/android/dialog/builder/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/builder/AbstractValidateableDialogBuilder;

    return-object p1
.end method
