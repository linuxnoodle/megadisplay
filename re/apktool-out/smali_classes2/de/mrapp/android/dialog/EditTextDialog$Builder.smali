.class public Lde/mrapp/android/dialog/EditTextDialog$Builder;
.super Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;
.source "EditTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/EditTextDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder<",
        "Lde/mrapp/android/dialog/EditTextDialog;",
        "Lde/mrapp/android/dialog/EditTextDialog$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private obtainErrorColor(I)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogErrorColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->setErrorColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    :cond_0
    return-void
.end method

.method private obtainHelperTextColor(I)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/dialog/R$attr;->materialDialogHelperTextColor:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->setHelperTextColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/EditTextDialog$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllValidators(Ljava/util/Collection;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;)",
            "Lde/mrapp/android/dialog/EditTextDialog$Builder;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->addAllValidators(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final varargs addAllValidators([Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lde/mrapp/android/dialog/EditTextDialog$Builder;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->addAllValidators([Lde/mrapp/android/validation/Validator;)V

    return-object p0
.end method

.method public final addValidationListener(Lde/mrapp/android/validation/ValidationListener;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lde/mrapp/android/dialog/EditTextDialog$Builder;"
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V

    return-object p0
.end method

.method public final addValidator(Lde/mrapp/android/validation/Validator;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lde/mrapp/android/dialog/EditTextDialog$Builder;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->addValidator(Lde/mrapp/android/validation/Validator;)V

    return-object p0
.end method

.method protected final obtainStyledAttributes(I)V
    .locals 0

    .line 363
    invoke-super {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractButtonBarDialogBuilder;->obtainStyledAttributes(I)V

    .line 364
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->obtainErrorColor(I)V

    .line 365
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->obtainHelperTextColor(I)V

    return-void
.end method

.method protected final onCreateProduct()Lde/mrapp/android/dialog/EditTextDialog;
    .locals 3

    .line 358
    new-instance v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getThemeResourceId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/dialog/EditTextDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected bridge synthetic onCreateProduct()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->onCreateProduct()Lde/mrapp/android/dialog/EditTextDialog;

    move-result-object v0

    return-object v0
.end method

.method public final setErrorColor(I)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setErrorColor(I)V

    return-object p0
.end method

.method public final setErrorColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setErrorColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public final setHelperText(I)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setHelperText(I)V

    return-object p0
.end method

.method public final setHelperText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setHelperText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setHelperTextColor(I)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setHelperTextColor(I)V

    return-object p0
.end method

.method public final setHelperTextColor(Landroid/content/res/ColorStateList;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    return-object p0
.end method

.method public final setHint(I)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setHint(I)V

    return-object p0
.end method

.method public final setHint(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setText(Ljava/lang/CharSequence;)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final show()Lde/mrapp/android/dialog/EditTextDialog;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    .line 351
    invoke-virtual {v0}, Lde/mrapp/android/dialog/EditTextDialog;->show()V

    return-object v0
.end method

.method public final validateOnFocusLost(Z)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->validateOnFocusLost(Z)V

    return-object p0
.end method

.method public final validateOnValueChange(Z)Lde/mrapp/android/dialog/EditTextDialog$Builder;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lde/mrapp/android/dialog/EditTextDialog$Builder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/EditTextDialog;

    invoke-virtual {v0, p1}, Lde/mrapp/android/dialog/EditTextDialog;->validateOnValueChange(Z)V

    return-object p0
.end method
