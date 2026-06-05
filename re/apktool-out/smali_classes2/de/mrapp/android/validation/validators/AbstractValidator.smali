.class public abstract Lde/mrapp/android/validation/validators/AbstractValidator;
.super Ljava/lang/Object;
.source "AbstractValidator.java"

# interfaces
.implements Lde/mrapp/android/validation/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lde/mrapp/android/validation/Validator<",
        "TType;>;"
    }
.end annotation


# instance fields
.field private errorMessage:Ljava/lang/CharSequence;

.field private icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;->setErrorMessage(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;->setErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 133
    iget-object v0, p0, Lde/mrapp/android/validation/validators/AbstractValidator;->errorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 138
    iget-object v0, p0, Lde/mrapp/android/validation/validators/AbstractValidator;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final setErrorMessage(Landroid/content/Context;I)V
    .locals 2

    .line 100
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/validation/validators/AbstractValidator;->errorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 82
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The error message may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The error message may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lde/mrapp/android/validation/validators/AbstractValidator;->errorMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setIcon(Landroid/content/Context;I)V
    .locals 2

    .line 127
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/validation/validators/AbstractValidator;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lde/mrapp/android/validation/validators/AbstractValidator;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
