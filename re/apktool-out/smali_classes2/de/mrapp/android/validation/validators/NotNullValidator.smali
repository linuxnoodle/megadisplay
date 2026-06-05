.class public Lde/mrapp/android/validation/validators/NotNullValidator;
.super Lde/mrapp/android/validation/validators/AbstractValidator;
.source "NotNullValidator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/validators/AbstractValidator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/validators/AbstractValidator;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final validate(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
