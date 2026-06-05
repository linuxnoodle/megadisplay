.class public Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;
.super Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;
.source "EditTextDialogDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/EditTextDialogDecorator;
.implements Lde/mrapp/android/dialog/DialogValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator<",
        "Lde/mrapp/android/dialog/model/ButtonBarDialog;",
        ">;",
        "Lde/mrapp/android/dialog/model/EditTextDialogDecorator;",
        "Lde/mrapp/android/dialog/DialogValidator;"
    }
.end annotation


# static fields
.field private static final ERROR_COLOR_EXTRA:Ljava/lang/String; = "EditTextDialogDecorator::errorColor"

.field private static final HELPER_TEXT_COLOR_EXTRA:Ljava/lang/String; = "EditTextDialogDecorator::helperTextColor"

.field private static final HELPER_TEXT_EXTRA:Ljava/lang/String; = "EditTextDialogDecorator::helperText"

.field private static final HINT_EXTRA:Ljava/lang/String; = "EditTextDialogDecorator::hint"

.field private static final TEXT_EXTRA:Ljava/lang/String; = "EditTextDialogDecorator::text"

.field private static final VALIDATE_ON_FOCUS_LOST_EXTRA:Ljava/lang/String; = "EditTextDialogDecorator::validateOnFocusLost"

.field private static final VALIDATE_ON_VALUE_CHANGE_EXTRA:Ljava/lang/String; = "EditTextDialogDecorator::validateOnValueChange"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private errorColor:Landroid/content/res/ColorStateList;

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextColor:Landroid/content/res/ColorStateList;

.field private hint:Ljava/lang/CharSequence;

.field private text:Ljava/lang/CharSequence;

.field private textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private validateOnFocusLost:Z

.field private validateOnValueChange:Z

.field private final validationListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/validation/ValidationListener<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private final validators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lde/mrapp/android/dialog/model/ButtonBarDialog;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/decorator/AbstractDialogDecorator;-><init>(Lde/mrapp/android/dialog/model/Dialog;)V

    .line 114
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validators:Ljava/util/Set;

    .line 120
    new-instance p1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {p1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnValueChange:Z

    .line 158
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnFocusLost:Z

    return-void
.end method

.method static synthetic access$002(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 59
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->text:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$100(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnValueChange:Z

    return p0
.end method

.method static synthetic access$200(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnFocusLost:Z

    return p0
.end method

.method private adaptErrorColor()V
    .locals 2

    .line 220
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->errorColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private adaptFocusChangeListener()V
    .locals 2

    .line 340
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->createFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private adaptHelperText()V
    .locals 2

    .line 238
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->helperText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    :cond_0
    return-void
.end method

.method private adaptHelperTextColor()V
    .locals 2

    .line 229
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->helperTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private adaptHint()V
    .locals 2

    .line 209
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 212
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adaptPositiveButtonEnableState(Z)V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private adaptText()V
    .locals 2

    .line 196
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private adaptTextChangedListener()V
    .locals 2

    .line 296
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->createTextChangedListener()Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private createFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 354
    new-instance v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$2;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$2;-><init>(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;)V

    return-object v0
.end method

.method private createTextChangedListener()Landroid/text/TextWatcher;
    .locals 1

    .line 310
    new-instance v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator$1;-><init>(Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;)V

    return-object v0
.end method

.method private inflateEditText()V
    .locals 4

    .line 174
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    sget v1, Lde/mrapp/android/dialog/R$layout;->edit_text_dialog:I

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getRootView()Lde/mrapp/android/dialog/view/DialogRootView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v1, v0}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->setView(Landroid/view/View;)V

    .line 177
    sget v1, Lde/mrapp/android/dialog/R$id;->text_input_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    instance-of v2, v1, Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 180
    sget v1, Lde/mrapp/android/dialog/R$id;->edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    :cond_1
    iput-object v3, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    .line 182
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptHint()V

    .line 183
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptErrorColor()V

    .line 184
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptHelperTextColor()V

    .line 185
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptHelperText()V

    .line 186
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptText()V

    .line 187
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validate()Z

    .line 188
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptTextChangedListener()V

    .line 189
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptFocusChangeListener()V

    return-void
.end method

.method private notifyOnValidationFailure(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/ValidationListener;

    .line 375
    invoke-interface {v1, p0, p1}, Lde/mrapp/android/validation/ValidationListener;->onValidationFailure(Lde/mrapp/android/validation/Validateable;Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnValidationSuccess()V
    .locals 2

    .line 383
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/ValidationListener;

    .line 384
    invoke-interface {v1, p0}, Lde/mrapp/android/validation/ValidationListener;->onValidationSuccess(Lde/mrapp/android/validation/Validateable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestFocus()V
    .locals 2

    .line 266
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private showErrorText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 250
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 251
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 252
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptHelperTextColor()V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 256
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addAllValidators(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .line 502
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Validator;

    .line 505
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addValidator(Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 512
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 515
    invoke-virtual {p0, v2}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addValidator(Lde/mrapp/android/validation/Validator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 495
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getEditText()Landroid/widget/EditText;
    .locals 1

    .line 408
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public final getErrorColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 456
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->errorColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 440
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->helperText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHelperTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 473
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->helperTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 424
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->hint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 413
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .line 403
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public final getValidators()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validators:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final isValidatedOnFocusLost()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnFocusLost:Z

    return v0
.end method

.method public final isValidatedOnValueChange()Z
    .locals 1

    .line 569
    iget-boolean v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnValueChange:Z

    return v0
.end method

.method protected bridge synthetic onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 59
    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Void;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 637
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->inflateEditText()V

    .line 638
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {p1, p0}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->addDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V

    .line 639
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->requestFocus()V

    .line 640
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected final onDetach()V
    .locals 1

    .line 645
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getDialog()Lde/mrapp/android/dialog/model/Dialog;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/model/ButtonBarDialog;

    invoke-interface {v0, p0}, Lde/mrapp/android/dialog/model/ButtonBarDialog;->removeDialogValidator(Lde/mrapp/android/dialog/DialogValidator;)V

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->editText:Landroid/widget/EditText;

    .line 647
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 612
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setText(Ljava/lang/CharSequence;)V

    .line 613
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->HINT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHint(Ljava/lang/CharSequence;)V

    .line 614
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->HELPER_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperText(Ljava/lang/CharSequence;)V

    .line 615
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->VALIDATE_ON_VALUE_CHANGE_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnValueChange(Z)V

    .line 616
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->VALIDATE_ON_FOCUS_LOST_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnFocusLost(Z)V

    .line 617
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->ERROR_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 618
    sget-object v1, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->HELPER_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setErrorColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 625
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 628
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validate()Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 601
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 602
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->HINT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 603
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->HELPER_TEXT_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 604
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->ERROR_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getErrorColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 605
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->HELPER_TEXT_COLOR_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getHelperTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 606
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->VALIDATE_ON_VALUE_CHANGE_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->isValidatedOnValueChange()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 607
    sget-object v0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->VALIDATE_ON_FOCUS_LOST_EXTRA:Ljava/lang/String;

    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->isValidatedOnFocusLost()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeAllValidators()V
    .locals 1

    .line 547
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validators:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final removeAllValidators(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .line 528
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Validator;

    .line 531
    invoke-virtual {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addValidator(Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 538
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 541
    invoke-virtual {p0, v2}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->addValidator(Lde/mrapp/android/validation/Validator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validationListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 521
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setErrorColor(I)V
    .locals 0

    .line 461
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setErrorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setErrorColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 466
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color state list may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->errorColor:Landroid/content/res/ColorStateList;

    .line 468
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptErrorColor()V

    return-void
.end method

.method public final setHelperText(I)V
    .locals 1

    .line 451
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHelperText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->helperText:Ljava/lang/CharSequence;

    .line 446
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptHelperText()V

    return-void
.end method

.method public final setHelperTextColor(I)V
    .locals 0

    .line 478
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 483
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The color state list may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->helperTextColor:Landroid/content/res/ColorStateList;

    .line 485
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptHelperTextColor()V

    return-void
.end method

.method public final setHint(I)V
    .locals 1

    .line 435
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->hint:Ljava/lang/CharSequence;

    .line 430
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptHint()V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->text:Ljava/lang/CharSequence;

    .line 419
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptText()V

    return-void
.end method

.method public final validate()Z
    .locals 3

    .line 552
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validators:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/Validator;

    .line 553
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Lde/mrapp/android/validation/Validator;->validate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    invoke-interface {v1}, Lde/mrapp/android/validation/Validator;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->showErrorText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 555
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptPositiveButtonEnableState(Z)V

    .line 556
    invoke-direct {p0, v1}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->notifyOnValidationFailure(Lde/mrapp/android/validation/Validator;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 561
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->showErrorText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 562
    invoke-direct {p0, v0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->adaptPositiveButtonEnableState(Z)V

    .line 563
    invoke-direct {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->notifyOnValidationSuccess()V

    return v0
.end method

.method public validate(Lde/mrapp/android/dialog/model/ValidateableDialog;)Z
    .locals 0

    .line 652
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validate()Z

    move-result p1

    return p1
.end method

.method public final validateOnFocusLost(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnFocusLost:Z

    return-void
.end method

.method public final validateOnValueChange(Z)V
    .locals 0

    .line 574
    iput-boolean p1, p0, Lde/mrapp/android/dialog/decorator/EditTextDialogDecorator;->validateOnValueChange:Z

    return-void
.end method
