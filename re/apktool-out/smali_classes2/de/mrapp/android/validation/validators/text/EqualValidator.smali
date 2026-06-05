.class public Lde/mrapp/android/validation/validators/text/EqualValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "EqualValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/validators/AbstractValidator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private editText:Lde/mrapp/android/validation/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILde/mrapp/android/validation/EditText;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    .line 73
    invoke-virtual {p0, p3}, Lde/mrapp/android/validation/validators/text/EqualValidator;->setEditText(Lde/mrapp/android/validation/EditText;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lde/mrapp/android/validation/EditText;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, p2}, Lde/mrapp/android/validation/validators/text/EqualValidator;->setEditText(Lde/mrapp/android/validation/EditText;)V

    return-void
.end method


# virtual methods
.method public final getEditText()Lde/mrapp/android/validation/EditText;
    .locals 1

    .line 83
    iget-object v0, p0, Lde/mrapp/android/validation/validators/text/EqualValidator;->editText:Lde/mrapp/android/validation/EditText;

    return-object v0
.end method

.method public final setEditText(Lde/mrapp/android/validation/EditText;)V
    .locals 2

    .line 94
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The edit text widget may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lde/mrapp/android/validation/validators/text/EqualValidator;->editText:Lde/mrapp/android/validation/EditText;

    return-void
.end method

.method public final validate(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lde/mrapp/android/validation/validators/text/EqualValidator;->getEditText()Lde/mrapp/android/validation/EditText;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/validators/text/EqualValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
