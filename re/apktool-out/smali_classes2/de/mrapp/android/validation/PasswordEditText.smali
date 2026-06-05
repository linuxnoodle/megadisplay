.class public Lde/mrapp/android/validation/PasswordEditText;
.super Lde/mrapp/android/validation/EditText;
.source "PasswordEditText.java"


# instance fields
.field private constraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private helperTextColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private helperTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private passwordVerificationPrefix:Ljava/lang/String;

.field private regularHelperText:Ljava/lang/CharSequence;

.field private regularHelperTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 282
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/PasswordEditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/validation/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 319
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/PasswordEditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 344
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/validation/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 345
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/PasswordEditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/validation/PasswordEditText;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    return-void
.end method

.method private adaptHelperText(F)V
    .locals 4

    .line 208
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->getHelperText(F)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->getHelperTextColor(F)I

    move-result p1

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "</font>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getPasswordVerificationPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lde/mrapp/android/validation/PasswordEditText;->regularHelperTextColor:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": </font>"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_0
    const-string p1, ""

    .line 223
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->setHelperText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object p1, p0, Lde/mrapp/android/validation/PasswordEditText;->regularHelperText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->setHelperText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 228
    :cond_2
    iget-object p1, p0, Lde/mrapp/android/validation/PasswordEditText;->regularHelperText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->setHelperText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private createTextChangeListener()Landroid/text/TextWatcher;
    .locals 1

    .line 145
    new-instance v0, Lde/mrapp/android/validation/PasswordEditText$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/PasswordEditText$1;-><init>(Lde/mrapp/android/validation/PasswordEditText;)V

    return-object v0
.end method

.method private getHelperText(F)Ljava/lang/CharSequence;
    .locals 2

    .line 242
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v0, p1

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    .line 245
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 246
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 247
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHelperTextColor(F)I
    .locals 2

    .line 262
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v0, p1

    .line 264
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    .line 265
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 266
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 267
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 270
    :cond_0
    iget p1, p0, Lde/mrapp/android/validation/PasswordEditText;->regularHelperTextColor:I

    return p1
.end method

.method private getPasswordStrength()F
    .locals 4

    .line 189
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/mrapp/android/validation/Constraint;

    .line 192
    invoke-interface {v3, v0}, Lde/mrapp/android/validation/Constraint;->isSatisfied(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    .line 197
    iget-object v1, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->regularHelperText:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getHelperTextColor()I

    move-result v0

    iput v0, p0, Lde/mrapp/android/validation/PasswordEditText;->regularHelperTextColor:I

    .line 97
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->obtainStyledAttributes(Landroid/util/AttributeSet;)V

    const/16 p1, 0x81

    .line 98
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->setInputType(I)V

    .line 99
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->createTextChangeListener()Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private obtainPasswordVerificationPrefix(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 128
    sget v0, Lde/mrapp/android/validation/R$styleable;->PasswordEditText_passwordVerificationPrefix:I

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lde/mrapp/android/validation/R$string;->password_verification_prefix:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->setPasswordVerificationPrefix(Ljava/lang/String;)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/validation/R$styleable;->PasswordEditText:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 113
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->obtainPasswordVerificationPrefix(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    throw v0
.end method

.method private verifyPasswordStrength()V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->getPasswordStrength()F

    move-result v0

    .line 174
    invoke-direct {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->adaptHelperText(F)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->regularHelperText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->setHelperText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addAllConstraints(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .line 386
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Constraint;

    .line 389
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->addConstraint(Lde/mrapp/android/validation/Constraint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllConstraints([Lde/mrapp/android/validation/Constraint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 402
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->addAllConstraints(Ljava/util/Collection;)V

    return-void
.end method

.method public final addAllHelperTextColorIds(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 723
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 726
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->addHelperTextColorId(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllHelperTextColorIds([I)V
    .locals 3

    .line 753
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 756
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/PasswordEditText;->addHelperTextColorId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addAllHelperTextColors(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 707
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 710
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->addHelperTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllHelperTextColors([I)V
    .locals 3

    .line 738
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 741
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/PasswordEditText;->addHelperTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addAllHelperTextIds(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 529
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 532
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->addHelperTextId(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllHelperTextIds([I)V
    .locals 3

    .line 559
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 562
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/PasswordEditText;->addHelperTextId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addAllHelperTexts(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 512
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 515
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->addHelperText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllHelperTexts([Ljava/lang/CharSequence;)V
    .locals 2

    .line 545
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->addAllHelperTexts(Ljava/util/Collection;)V

    return-void
.end method

.method public final addConstraint(Lde/mrapp/android/validation/Constraint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 368
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The constraint may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    :cond_0
    return-void
.end method

.method public final addHelperText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 480
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The helper text may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The helper text may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    :cond_0
    return-void
.end method

.method public final addHelperTextColor(I)V
    .locals 2

    .line 681
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    :cond_0
    return-void
.end method

.method public final addHelperTextColorId(I)V
    .locals 1

    .line 696
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->addHelperTextColor(I)V

    return-void
.end method

.method public final addHelperTextId(I)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->addHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getConstraints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    return-object v0
.end method

.method public final getHelperTextColors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    return-object v0
.end method

.method public final getHelperTexts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    return-object v0
.end method

.method public final getPasswordVerificationPrefix()Ljava/lang/String;
    .locals 1

    .line 864
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->passwordVerificationPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public final removeAllConstraints()V
    .locals 1

    .line 454
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final removeAllConstraints(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .line 430
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Constraint;

    .line 433
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->removeConstraint(Lde/mrapp/android/validation/Constraint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllConstraints([Lde/mrapp/android/validation/Constraint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 446
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->removeAllConstraints(Ljava/util/Collection;)V

    return-void
.end method

.method public final removeAllHelperTextColorIds(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 812
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 815
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperTextColorId(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllHelperTextColorIds([I)V
    .locals 3

    .line 842
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 845
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperTextColorId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAllHelperTextColors()V
    .locals 1

    .line 854
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final removeAllHelperTextColors(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 796
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 799
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllHelperTextColors([I)V
    .locals 3

    .line 827
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 830
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAllHelperTextIds(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 618
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 621
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperTextId(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllHelperTextIds([I)V
    .locals 3

    .line 647
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 650
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperTextId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAllHelperTexts()V
    .locals 1

    .line 658
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final removeAllHelperTexts(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 602
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 605
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllHelperTexts([Ljava/lang/CharSequence;)V
    .locals 2

    .line 634
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->removeAllHelperTexts(Ljava/util/Collection;)V

    return-void
.end method

.method public final removeConstraint(Lde/mrapp/android/validation/Constraint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Constraint<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 415
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The constraint may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->constraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 417
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    return-void
.end method

.method public final removeHelperText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 575
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The helper text may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The helper text may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 578
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    return-void
.end method

.method public final removeHelperTextColor(I)V
    .locals 1

    .line 768
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 771
    iget-object v0, p0, Lde/mrapp/android/validation/PasswordEditText;->helperTextColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 772
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    :cond_0
    return-void
.end method

.method public final removeHelperTextColorId(I)V
    .locals 1

    .line 785
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperTextColor(I)V

    return-void
.end method

.method public final removeHelperTextId(I)V
    .locals 1

    .line 590
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->removeHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 892
    invoke-super {p0, p1}, Lde/mrapp/android/validation/EditText;->setEnabled(Z)V

    .line 893
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    return-void
.end method

.method public final setPasswordVerificationPrefix(I)V
    .locals 1

    .line 887
    invoke-virtual {p0}, Lde/mrapp/android/validation/PasswordEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/PasswordEditText;->setPasswordVerificationPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public final setPasswordVerificationPrefix(Ljava/lang/String;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lde/mrapp/android/validation/PasswordEditText;->passwordVerificationPrefix:Ljava/lang/String;

    .line 876
    invoke-direct {p0}, Lde/mrapp/android/validation/PasswordEditText;->verifyPasswordStrength()V

    return-void
.end method
