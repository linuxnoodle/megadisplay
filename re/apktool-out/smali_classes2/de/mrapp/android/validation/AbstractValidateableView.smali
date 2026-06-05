.class public abstract Lde/mrapp/android/validation/AbstractValidateableView;
.super Landroid/widget/LinearLayout;
.source "AbstractValidateableView.java"

# interfaces
.implements Lde/mrapp/android/validation/Validateable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/validation/AbstractValidateableView$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewType:",
        "Landroid/view/View;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lde/mrapp/android/validation/Validateable<",
        "TValueType;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VALIDATE_ON_FOCUS_LOST:Z = true

.field private static final DEFAULT_VALIDATE_ON_VALUE_CHANGE:Z = true


# instance fields
.field private errorColor:I

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextColor:I

.field private leftMessage:Landroid/widget/TextView;

.field private listeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TValueType;>;>;"
        }
    .end annotation
.end field

.field private parentView:Landroid/view/ViewGroup;

.field private rightMessage:Landroid/widget/TextView;

.field private validateOnFocusLost:Z

.field private validateOnValueChange:Z

.field private validators:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 664
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 681
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/AbstractValidateableView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 703
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 704
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/AbstractValidateableView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 730
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 731
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/AbstractValidateableView;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 350
    new-instance v0, Lde/mrapp/android/validation/AbstractValidateableView$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/AbstractValidateableView$1;-><init>(Lde/mrapp/android/validation/AbstractValidateableView;)V

    return-object v0
.end method

.method private getAccentColor()I
    .locals 2

    .line 447
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lde/mrapp/android/validation/R$attr;->colorAccent:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 448
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.method private inflateErrorMessageTextViews()V
    .locals 3

    .line 334
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lde/mrapp/android/validation/R$layout;->error_messages:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 335
    invoke-virtual {p0, v0, v1, v2}, Lde/mrapp/android/validation/AbstractValidateableView;->addView(Landroid/view/View;II)V

    .line 336
    sget v1, Lde/mrapp/android/validation/R$id;->left_error_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 337
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 338
    sget v1, Lde/mrapp/android/validation/R$id;->right_error_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    .line 339
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private inflateView()V
    .locals 4

    .line 316
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->createParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->parentView:Landroid/view/ViewGroup;

    .line 317
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    .line 318
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->createFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 319
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    sget v1, Lde/mrapp/android/validation/R$drawable;->validateable_view_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 320
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getAccentColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setLineColor(I)V

    .line 322
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->parentView:Landroid/view/ViewGroup;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 323
    iget-object v3, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 324
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2, v1}, Lde/mrapp/android/validation/AbstractValidateableView;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lde/mrapp/android/validation/AbstractValidateableView;->addView(Landroid/view/View;II)V

    :goto_0
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 1

    .line 216
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validators:Ljava/util/Set;

    .line 217
    new-instance v0, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {v0}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setOrientation(I)V

    .line 219
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->inflateView()V

    .line 220
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->inflateErrorMessageTextViews()V

    .line 221
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->obtainStyledAttributes(Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setRightMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private notifyOnValidationFailure(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/ValidationListener;

    .line 380
    invoke-interface {v1, p0, p1}, Lde/mrapp/android/validation/ValidationListener;->onValidationFailure(Lde/mrapp/android/validation/Validateable;Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnValidationSuccess()V
    .locals 2

    .line 366
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/validation/ValidationListener;

    .line 367
    invoke-interface {v1, p0}, Lde/mrapp/android/validation/ValidationListener;->onValidationSuccess(Lde/mrapp/android/validation/Validateable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainErrorColor(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 278
    sget v0, Lde/mrapp/android/validation/R$styleable;->AbstractValidateableView_errorColor:I

    .line 279
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/validation/R$color;->default_error_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setErrorColor(I)V

    return-void
.end method

.method private obtainHelperText(Landroid/content/res/TypedArray;)V
    .locals 1

    .line 255
    sget v0, Lde/mrapp/android/validation/R$styleable;->AbstractValidateableView_helperText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private obtainHelperTextColor(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 266
    sget v0, Lde/mrapp/android/validation/R$styleable;->AbstractValidateableView_helperTextColor:I

    .line 267
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lde/mrapp/android/validation/R$color;->default_helper_text_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 266
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setHelperTextColor(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/validation/R$styleable;->AbstractValidateableView:[I

    .line 235
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->obtainHelperText(Landroid/content/res/TypedArray;)V

    .line 238
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->obtainHelperTextColor(Landroid/content/res/TypedArray;)V

    .line 239
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->obtainErrorColor(Landroid/content/res/TypedArray;)V

    .line 240
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->obtainValidateOnValueChange(Landroid/content/res/TypedArray;)V

    .line 241
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->obtainValidateOnFocusLost(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    throw v0
.end method

.method private obtainValidateOnFocusLost(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 307
    sget v0, Lde/mrapp/android/validation/R$styleable;->AbstractValidateableView_validateOnFocusLost:I

    const/4 v1, 0x1

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 307
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnFocusLost(Z)V

    return-void
.end method

.method private obtainValidateOnValueChange(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 292
    sget v0, Lde/mrapp/android/validation/R$styleable;->AbstractValidateableView_validateOnValueChange:I

    const/4 v1, 0x1

    .line 293
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 292
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnValueChange(Z)V

    return-void
.end method

.method private setActivatedOnViewGroup(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 495
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setActivated(Z)V

    const/4 v0, 0x0

    .line 497
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 498
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 500
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 501
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lde/mrapp/android/validation/AbstractValidateableView;->setActivatedOnViewGroup(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    .line 503
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEnabledOnViewGroup(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 471
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 473
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 474
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 476
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 477
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2}, Lde/mrapp/android/validation/AbstractValidateableView;->setEnabledOnViewGroup(Landroid/view/ViewGroup;Z)V

    goto :goto_1

    .line 479
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setLineColor(I)V
    .locals 2

    .line 458
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private validateLeft()Lde/mrapp/android/validation/Validator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;"
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->onGetLeftErrorMessage()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 395
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/validation/Validator;

    .line 396
    invoke-direct {p0, v2}, Lde/mrapp/android/validation/AbstractValidateableView;->notifyOnValidationFailure(Lde/mrapp/android/validation/Validator;)V

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validators:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/validation/Validator;

    .line 405
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lde/mrapp/android/validation/Validator;->validate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 406
    invoke-direct {p0, v2}, Lde/mrapp/android/validation/AbstractValidateableView;->notifyOnValidationFailure(Lde/mrapp/android/validation/Validator;)V

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private validateRight()Lde/mrapp/android/validation/Validator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->onGetRightErrorMessage()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 428
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/mrapp/android/validation/Validator;

    .line 429
    invoke-direct {p0, v2}, Lde/mrapp/android/validation/AbstractValidateableView;->notifyOnValidationFailure(Lde/mrapp/android/validation/Validator;)V

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final addAllValidators(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;)V"
        }
    .end annotation

    .line 747
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Validator;

    .line 750
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->addValidator(Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs addAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 757
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->addAllValidators(Ljava/util/Collection;)V

    return-void
.end method

.method public final addValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 992
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 741
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract createParentView()Landroid/view/ViewGroup;
.end method

.method protected abstract createView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewType;"
        }
    .end annotation
.end method

.method public final getError()Ljava/lang/CharSequence;
    .locals 1

    .line 888
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getErrorColor()I
    .locals 1

    .line 832
    iget v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->errorColor:I

    return v0
.end method

.method public final getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 796
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->helperText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHelperTextColor()I
    .locals 1

    .line 859
    iget v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->helperTextColor:I

    return v0
.end method

.method public final getValidators()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validators:Ljava/util/Set;

    return-object v0
.end method

.method protected abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TValueType;"
        }
    .end annotation
.end method

.method protected final getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewType;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    return-object v0
.end method

.method public final isValidatedOnFocusLost()Z
    .locals 1

    .line 982
    iget-boolean v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnFocusLost:Z

    return v0
.end method

.method public final isValidatedOnValueChange()Z
    .locals 1

    .line 972
    iget-boolean v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnValueChange:Z

    return v0
.end method

.method protected onGetLeftErrorMessage()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onGetRightErrorMessage()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1020
    instance-of v0, p1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;

    if-eqz v0, :cond_1

    .line 1021
    check-cast p1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;

    .line 1023
    iget-boolean v0, p1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validated:Z

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->validate()Z

    .line 1027
    :cond_0
    iget-boolean v0, p1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnValueChange:Z

    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnValueChange(Z)V

    .line 1028
    iget-boolean v0, p1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnFocusLost:Z

    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnFocusLost(Z)V

    .line 1029
    invoke-virtual {p1}, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1031
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1005
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1008
    new-instance v1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1009
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validated:Z

    .line 1010
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->isValidatedOnValueChange()Z

    move-result v0

    iput-boolean v0, v1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnValueChange:Z

    .line 1011
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->isValidatedOnFocusLost()Z

    move-result v0

    iput-boolean v0, v1, Lde/mrapp/android/validation/AbstractValidateableView$SavedState;->validateOnFocusLost:Z

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onValidate(Z)V
    .locals 0

    return-void
.end method

.method public final removeAllValidators()V
    .locals 1

    .line 786
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validators:Ljava/util/Set;

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
            "TValueType;>;>;)V"
        }
    .end annotation

    .line 770
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The collection may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/validation/Validator;

    .line 773
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->removeValidator(Lde/mrapp/android/validation/Validator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeAllValidators([Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 780
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The array may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->removeAllValidators(Ljava/util/Collection;)V

    return-void
.end method

.method public final removeValidationListener(Lde/mrapp/android/validation/ValidationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/ValidationListener<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 999
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->listeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeValidator(Lde/mrapp/android/validation/Validator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/mrapp/android/validation/Validator<",
            "TValueType;>;)V"
        }
    .end annotation

    .line 763
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The validator may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validators:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setActivated(Z)V
    .locals 1

    .line 940
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 941
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 943
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->parentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 944
    invoke-direct {p0, v0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setActivatedOnViewGroup(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 925
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 928
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setError(Ljava/lang/CharSequence;)V

    .line 931
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 933
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->parentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 934
    invoke-direct {p0, v0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setEnabledOnViewGroup(Landroid/view/ViewGroup;Z)V

    :cond_1
    return-void
.end method

.method public final setError(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 919
    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/validation/AbstractValidateableView;->setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 920
    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setActivated(Z)V

    return-void
.end method

.method public final setErrorColor(I)V
    .locals 1

    .line 842
    iput p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->errorColor:I

    .line 844
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 848
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final setHelperText(I)V
    .locals 1

    .line 823
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->setHelperText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHelperText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 807
    iput-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->helperText:Ljava/lang/CharSequence;

    .line 809
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 810
    invoke-virtual {p0, p1, v0, v1}, Lde/mrapp/android/validation/AbstractValidateableView;->setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public final setHelperTextColor(I)V
    .locals 1

    .line 869
    iput p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->helperTextColor:I

    .line 871
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 875
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method protected final setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 530
    invoke-virtual {p0, p1, p2, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method protected final setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 548
    iget-object v2, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getErrorColor()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getHelperTextColor()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 552
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 553
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getHelperText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 554
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getHelperText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_1

    .line 556
    :cond_2
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 557
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->leftMessage:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected final setRightMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 569
    invoke-virtual {p0, p1, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setRightMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method protected final setRightMessage(Ljava/lang/CharSequence;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 584
    iget-object v1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getErrorColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getHelperTextColor()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 589
    :cond_1
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 590
    iget-object p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->rightMessage:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final validate()Z
    .locals 5

    .line 950
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->validateLeft()Lde/mrapp/android/validation/Validator;

    move-result-object v0

    .line 951
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->validateRight()Lde/mrapp/android/validation/Validator;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 952
    invoke-interface {v0}, Lde/mrapp/android/validation/Validator;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 953
    invoke-interface {v0}, Lde/mrapp/android/validation/Validator;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 952
    :goto_1
    invoke-virtual {p0, v3, v4}, Lde/mrapp/android/validation/AbstractValidateableView;->setLeftMessage(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    .line 954
    invoke-interface {v1}, Lde/mrapp/android/validation/Validator;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/AbstractValidateableView;->setRightMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 957
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->notifyOnValidationSuccess()V

    .line 958
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/AbstractValidateableView;->onValidate(Z)V

    .line 959
    invoke-virtual {p0, v3}, Lde/mrapp/android/validation/AbstractValidateableView;->setActivated(Z)V

    .line 960
    invoke-direct {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getAccentColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setLineColor(I)V

    return v2

    .line 964
    :cond_3
    invoke-virtual {p0, v3}, Lde/mrapp/android/validation/AbstractValidateableView;->onValidate(Z)V

    .line 965
    invoke-virtual {p0, v2}, Lde/mrapp/android/validation/AbstractValidateableView;->setActivated(Z)V

    .line 966
    invoke-virtual {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->getErrorColor()I

    move-result v0

    invoke-direct {p0, v0}, Lde/mrapp/android/validation/AbstractValidateableView;->setLineColor(I)V

    return v3
.end method

.method public final validateOnFocusLost(Z)V
    .locals 0

    .line 987
    iput-boolean p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnFocusLost:Z

    return-void
.end method

.method public final validateOnValueChange(Z)V
    .locals 0

    .line 977
    iput-boolean p1, p0, Lde/mrapp/android/validation/AbstractValidateableView;->validateOnValueChange:Z

    return-void
.end method
