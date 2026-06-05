.class public Lde/mrapp/android/validation/EditText;
.super Lde/mrapp/android/validation/AbstractValidateableView;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/validation/EditText$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/validation/AbstractValidateableView<",
        "Landroid/widget/EditText;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_NUMBER_OF_CHARACTERS:I = -0x1

.field private static final ELLIPSIZE_END_VALUE:I = 0x3

.field private static final ELLIPSIZE_MARQUEE_VALUE:I = 0x4

.field private static final ELLIPSIZE_MIDDLE_VALUE:I = 0x2

.field private static final ELLIPSIZE_START_VALUE:I = 0x1

.field private static final TYPEFACE_MONOSPACE_VALUE:I = 0x3

.field private static final TYPEFACE_SANS_SERIF_VALUE:I = 0x1

.field private static final TYPEFACE_SERIF_VALUE:I = 0x2


# instance fields
.field private maxNumberOfCharacters:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 570
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 571
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/EditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 585
    invoke-direct {p0, p1, p2}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 586
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/EditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 606
    invoke-direct {p0, p1, p2, p3}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 607
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/EditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2, p3, p4}, Lde/mrapp/android/validation/AbstractValidateableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 632
    invoke-direct {p0, p2}, Lde/mrapp/android/validation/EditText;->initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lde/mrapp/android/validation/EditText;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lde/mrapp/android/validation/EditText;->adaptMaxNumberOfCharactersMessage()V

    return-void
.end method

.method private adaptMaxNumberOfCharactersMessage()V
    .locals 3

    .line 516
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharacters()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 517
    invoke-direct {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharactersMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 518
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharacters()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 517
    :goto_0
    invoke-virtual {p0, v0, v1}, Lde/mrapp/android/validation/EditText;->setRightMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/EditText;->setRightMessage(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private createTextChangeListener()Landroid/text/TextWatcher;
    .locals 1

    .line 468
    new-instance v0, Lde/mrapp/android/validation/EditText$1;

    invoke-direct {v0, p0}, Lde/mrapp/android/validation/EditText$1;-><init>(Lde/mrapp/android/validation/EditText;)V

    return-object v0
.end method

.method private getMaxNumberOfCharactersMessage()Ljava/lang/CharSequence;
    .locals 5

    .line 503
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharacters()I

    move-result v0

    .line 504
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 506
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lde/mrapp/android/validation/R$string;->edit_text_size_violation_error_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 506
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 1

    .line 205
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/EditText;->obtainStyledAttributes(Landroid/util/AttributeSet;)V

    .line 206
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0}, Lde/mrapp/android/validation/EditText;->createTextChangeListener()Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private obtainEditTextStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 255
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getImeActionId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 263
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    if-ge v11, v6, :cond_35

    .line 264
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 266
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_autoLink:I

    if-ne v6, v4, :cond_1

    .line 267
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getAutoLinkMask()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setAutoLinkMask(I)V

    :cond_0
    :goto_1
    move/from16 v18, v15

    :goto_2
    move/from16 v15, v17

    const/4 v4, 0x0

    goto/16 :goto_7

    .line 268
    :cond_1
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_cursorVisible:I

    if-ne v6, v4, :cond_2

    .line 269
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->isCursorVisible()Z

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setCursorVisible(Z)V

    goto :goto_1

    .line 270
    :cond_2
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_drawableBottom:I

    if-ne v6, v4, :cond_3

    .line 271
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v9, v4

    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 272
    :cond_3
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_drawableEnd:I

    if-ne v6, v4, :cond_4

    .line 273
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_4
    move-object v8, v4

    goto :goto_3

    .line 274
    :cond_4
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_drawableLeft:I

    if-ne v6, v4, :cond_5

    .line 275
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 276
    :cond_5
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_drawablePadding:I

    if-ne v6, v4, :cond_6

    .line 278
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getCompoundDrawablePadding()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 277
    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setCompoundDrawablePadding(I)V

    goto :goto_1

    .line 279
    :cond_6
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_drawableRight:I

    if-ne v6, v4, :cond_7

    .line 280
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4

    .line 281
    :cond_7
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_drawableStart:I

    if-ne v6, v4, :cond_8

    .line 282
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 283
    :cond_8
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_drawableTop:I

    if-ne v6, v4, :cond_9

    .line 284
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v7, v4

    goto :goto_3

    .line 285
    :cond_9
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_elegantTextHeight:I

    if-ne v6, v4, :cond_a

    .line 287
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setElegantTextHeight(Z)V

    goto :goto_1

    .line 289
    :cond_a
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_ellipsize:I

    const/4 v5, -0x1

    if-ne v6, v4, :cond_b

    .line 290
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 293
    invoke-direct {v0, v4}, Lde/mrapp/android/validation/EditText;->parseEllipsize(I)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    .line 295
    :cond_b
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_ems:I

    if-ne v6, v4, :cond_c

    .line 296
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setEms(I)V

    goto/16 :goto_1

    .line 297
    :cond_c
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_fontFeatureSettings:I

    if-ne v6, v4, :cond_d

    .line 299
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setFontFeatureSettings(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    :cond_d
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_freezesText:I

    if-ne v6, v4, :cond_e

    .line 302
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getFreezesText()Z

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setFreezesText(Z)V

    goto/16 :goto_1

    .line 303
    :cond_e
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_hint:I

    if-ne v6, v4, :cond_f

    .line 304
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 305
    :cond_f
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_imeActionId:I

    if-ne v6, v4, :cond_10

    .line 306
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getImeActionId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    goto/16 :goto_3

    .line 307
    :cond_10
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_imeActionLabel:I

    if-ne v6, v4, :cond_11

    .line 308
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v10, v4

    goto/16 :goto_3

    .line 309
    :cond_11
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_imeOptions:I

    if-ne v6, v4, :cond_12

    .line 310
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getImeOptions()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setImeOptions(I)V

    goto/16 :goto_1

    .line 311
    :cond_12
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_includeFontPadding:I

    if-ne v6, v4, :cond_13

    .line 312
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getIncludeFontPadding()Z

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setIncludeFontPadding(Z)V

    goto/16 :goto_1

    .line 313
    :cond_13
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_inputType:I

    if-ne v6, v4, :cond_14

    .line 314
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getInputType()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setInputType(I)V

    goto/16 :goto_1

    .line 315
    :cond_14
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_letterSpacing:I

    if-ne v6, v4, :cond_15

    .line 317
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getLetterSpacing()F

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setLetterSpacing(F)V

    goto/16 :goto_1

    .line 319
    :cond_15
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_lines:I

    if-ne v6, v4, :cond_16

    .line 320
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setLines(I)V

    goto/16 :goto_1

    .line 321
    :cond_16
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_lineSpacingExtra:I

    if-ne v6, v4, :cond_17

    .line 322
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v12, v4

    goto/16 :goto_3

    .line 323
    :cond_17
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_lineSpacingMultiplier:I

    if-ne v6, v4, :cond_18

    const/high16 v4, -0x40800000    # -1.0f

    .line 324
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto/16 :goto_3

    .line 325
    :cond_18
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_linksClickable:I

    if-ne v6, v4, :cond_19

    .line 326
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getLinksClickable()Z

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setLinksClickable(Z)V

    goto/16 :goto_1

    .line 327
    :cond_19
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_marqueeRepeatLimit:I

    if-ne v6, v4, :cond_1a

    .line 328
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getMarqueeRepeatLimit()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_1

    .line 329
    :cond_1a
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_maxEms:I

    if-ne v6, v4, :cond_1b

    .line 330
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getMaxEms()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setMaxEms(I)V

    goto/16 :goto_1

    .line 331
    :cond_1b
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_maxLength:I

    move/from16 v18, v15

    const/4 v15, 0x1

    if-ne v6, v4, :cond_1d

    .line 332
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ltz v4, :cond_1c

    .line 335
    new-array v5, v15, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2

    :cond_1c
    const/4 v4, 0x0

    .line 337
    new-array v5, v4, [Landroid/text/InputFilter;

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2

    .line 339
    :cond_1d
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_maxLines:I

    if-ne v6, v4, :cond_1e

    .line 340
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setMaxLines(I)V

    goto/16 :goto_2

    .line 341
    :cond_1e
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_minEms:I

    if-ne v6, v4, :cond_1f

    .line 342
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getMinEms()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setMinEms(I)V

    goto/16 :goto_2

    .line 343
    :cond_1f
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_minLines:I

    if-ne v6, v4, :cond_20

    .line 344
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getMinLines()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setMinLines(I)V

    goto/16 :goto_2

    .line 345
    :cond_20
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_privateImeOptions:I

    if-ne v6, v4, :cond_21

    .line 346
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/mrapp/android/validation/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 347
    :cond_21
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_scrollHorizontally:I

    if-ne v6, v4, :cond_23

    const/4 v4, 0x0

    .line 348
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 349
    invoke-virtual {v0, v15}, Lde/mrapp/android/validation/EditText;->setHorizontallyScrolling(Z)V

    :cond_22
    :goto_5
    move/from16 v15, v17

    goto/16 :goto_7

    :cond_23
    const/4 v4, 0x0

    .line 351
    sget v15, Lde/mrapp/android/validation/R$styleable;->EditText_android_selectAllOnFocus:I

    if-ne v6, v15, :cond_24

    .line 352
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setSelectAllOnFocus(Z)V

    goto :goto_5

    .line 353
    :cond_24
    sget v15, Lde/mrapp/android/validation/R$styleable;->EditText_android_shadowColor:I

    if-ne v6, v15, :cond_25

    .line 354
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    goto/16 :goto_8

    .line 355
    :cond_25
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_shadowDx:I

    if-ne v6, v4, :cond_26

    const/4 v4, 0x0

    .line 356
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    goto/16 :goto_3

    :cond_26
    const/4 v4, 0x0

    .line 357
    sget v15, Lde/mrapp/android/validation/R$styleable;->EditText_android_shadowDy:I

    if-ne v6, v15, :cond_27

    .line 358
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    :goto_6
    move/from16 v15, v18

    goto/16 :goto_3

    .line 359
    :cond_27
    sget v15, Lde/mrapp/android/validation/R$styleable;->EditText_android_shadowRadius:I

    if-ne v6, v15, :cond_28

    move/from16 v15, v17

    .line 360
    invoke-virtual {v1, v6, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    goto :goto_6

    :cond_28
    move/from16 v15, v17

    .line 361
    sget v4, Lde/mrapp/android/validation/R$styleable;->EditText_android_singleLine:I

    if-ne v6, v4, :cond_29

    const/4 v4, 0x0

    .line 362
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setSingleLine(Z)V

    goto/16 :goto_7

    :cond_29
    const/4 v4, 0x0

    .line 363
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_text:I

    if-ne v6, v5, :cond_2a

    .line 364
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 365
    :cond_2a
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textAllCaps:I

    if-ne v6, v5, :cond_2b

    .line 367
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setAllCaps(Z)V

    goto/16 :goto_7

    .line 369
    :cond_2b
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textAppearance:I

    if-ne v6, v5, :cond_2c

    const/4 v5, -0x1

    .line 370
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eq v6, v5, :cond_34

    const v5, 0x10301ed

    if-eq v6, v5, :cond_34

    .line 373
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Lde/mrapp/android/validation/EditText;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_7

    .line 375
    :cond_2c
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textColor:I

    if-ne v6, v5, :cond_2d

    .line 376
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 379
    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_7

    .line 381
    :cond_2d
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textColorHighlight:I

    if-ne v6, v5, :cond_2e

    const/4 v5, -0x1

    .line 382
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    if-eq v6, v5, :cond_34

    .line 385
    invoke-virtual {v0, v6}, Lde/mrapp/android/validation/EditText;->setHighlightColor(I)V

    goto :goto_7

    .line 387
    :cond_2e
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textColorHint:I

    if-ne v6, v5, :cond_2f

    .line 388
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 389
    :cond_2f
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textColorLink:I

    if-ne v6, v5, :cond_30

    .line 390
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 391
    :cond_30
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textIsSelectable:I

    if-ne v6, v5, :cond_31

    .line 392
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->isTextSelectable()Z

    move-result v5

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setTextIsSelectable(Z)V

    goto :goto_7

    .line 393
    :cond_31
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textScaleX:I

    if-ne v6, v5, :cond_32

    .line 394
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getTextScaleX()F

    move-result v5

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setTextScaleX(F)V

    goto :goto_7

    .line 395
    :cond_32
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_textSize:I

    if-ne v6, v5, :cond_33

    .line 396
    invoke-virtual/range {p0 .. p0}, Lde/mrapp/android/validation/EditText;->getTextSize()F

    move-result v5

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setTextSize(F)V

    goto :goto_7

    .line 397
    :cond_33
    sget v5, Lde/mrapp/android/validation/R$styleable;->EditText_android_typeface:I

    if-ne v6, v5, :cond_34

    const/4 v5, -0x1

    .line 398
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eq v6, v5, :cond_34

    .line 401
    invoke-direct {v0, v6}, Lde/mrapp/android/validation/EditText;->parseTypeface(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Lde/mrapp/android/validation/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_34
    :goto_7
    move/from16 v17, v15

    :goto_8
    move/from16 v15, v18

    :goto_9
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_35
    move/from16 v18, v15

    move/from16 v15, v17

    .line 406
    invoke-virtual {v0, v3, v7, v8, v9}, Lde/mrapp/android/validation/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 408
    invoke-virtual {v0, v10, v2}, Lde/mrapp/android/validation/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v12, v1

    if-eqz v2, :cond_36

    cmpl-float v1, v13, v1

    if-eqz v1, :cond_36

    .line 411
    invoke-virtual {v0, v12, v13}, Lde/mrapp/android/validation/EditText;->setLineSpacing(FF)V

    :cond_36
    if-eqz v14, :cond_37

    move/from16 v1, v16

    move/from16 v6, v18

    .line 415
    invoke-virtual {v0, v15, v6, v1, v14}, Lde/mrapp/android/validation/EditText;->setShadowLayer(FFFI)V

    :cond_37
    return-void
.end method

.method private obtainMaxNumberOfCharacters(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 237
    sget v0, Lde/mrapp/android/validation/R$styleable;->EditText_maxNumberOfCharacters:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/validation/EditText;->setMaxNumberOfCharacters(I)V

    return-void
.end method

.method private obtainStyledAttributes(Landroid/util/AttributeSet;)V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lde/mrapp/android/validation/R$styleable;->EditText:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/EditText;->obtainMaxNumberOfCharacters(Landroid/content/res/TypedArray;)V

    .line 221
    invoke-direct {p0, p1}, Lde/mrapp/android/validation/EditText;->obtainEditTextStyledAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    throw v0
.end method

.method private parseEllipsize(I)Landroid/text/TextUtils$TruncateAt;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 437
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 435
    :cond_0
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 433
    :cond_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 431
    :cond_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object p1

    .line 429
    :cond_3
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object p1
.end method

.method private parseTypeface(I)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 457
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object p1

    .line 455
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object p1

    .line 453
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    return-object p1

    .line 451
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    return-object p1
.end method


# virtual methods
.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 2144
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1972
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 1980
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public final beginBatchEdit()V
    .locals 1

    .line 2089
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->beginBatchEdit()V

    return-void
.end method

.method public final bringPointIntoView(I)Z
    .locals 1

    .line 2101
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    move-result p1

    return p1
.end method

.method public final clearComposingText()V
    .locals 1

    .line 2160
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    return-void
.end method

.method protected final createParentView()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic createView()Landroid/view/View;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->createView()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method protected final createView()Landroid/widget/EditText;
    .locals 2

    .line 549
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final didTouchFocusSelect()Z
    .locals 1

    .line 2169
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->didTouchFocusSelect()Z

    move-result v0

    return v0
.end method

.method public final endBatchEdit()V
    .locals 1

    .line 2093
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->endBatchEdit()V

    return-void
.end method

.method public final extendSelection(I)V
    .locals 1

    .line 2299
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public final extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1

    .line 2077
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result p1

    return p1
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .line 670
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getAutoLinkMask()I

    move-result v0

    return v0
.end method

.method public final getCompoundDrawablePadding()I
    .locals 1

    .line 704
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawablePadding()I

    move-result v0

    return v0
.end method

.method public final getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 918
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 926
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getCompoundPaddingBottom()I
    .locals 1

    .line 725
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v0

    return v0
.end method

.method public final getCompoundPaddingEnd()I
    .locals 1

    .line 755
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public final getCompoundPaddingLeft()I
    .locals 1

    .line 732
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final getCompoundPaddingRight()I
    .locals 1

    .line 739
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public final getCompoundPaddingStart()I
    .locals 1

    .line 747
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public final getCompoundPaddingTop()I
    .locals 1

    .line 718
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .line 1645
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v0

    return v0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .line 1567
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public final getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .line 2243
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final getEditableText()Landroid/text/Editable;
    .locals 1

    .line 1803
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 947
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    return-object v0
.end method

.method public final getExtendedPaddingBottom()I
    .locals 1

    .line 773
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v0

    return v0
.end method

.method public final getExtendedPaddingTop()I
    .locals 1

    .line 764
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getFilters()[Landroid/text/InputFilter;
    .locals 1

    .line 1285
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .line 983
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFreezesText()Z
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFreezesText()Z

    move-result v0

    return v0
.end method

.method public final getHighlightColor()I
    .locals 1

    .line 1583
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHighlightColor()I

    move-result v0

    return v0
.end method

.method public final getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1029
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1636
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getImeActionId()I
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeActionId()I

    move-result v0

    return v0
.end method

.method public final getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1088
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getImeOptions()I
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public final getIncludeFontPadding()Z
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getIncludeFontPadding()Z

    move-result v0

    return v0
.end method

.method public final getInputExtras(Z)Landroid/os/Bundle;
    .locals 1

    .line 2044
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getInputType()I
    .locals 1

    .line 1129
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .line 1828
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .line 1820
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method public final getLetterSpacing()F
    .locals 1

    .line 1157
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method public final getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    .line 2066
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method public final getLineCount()I
    .locals 1

    .line 2051
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    return v0
.end method

.method public final getLineHeight()I
    .locals 1

    .line 1812
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineHeight()I

    move-result v0

    return v0
.end method

.method public final getLineSpacingExtra()F
    .locals 1

    .line 1211
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineSpacingExtra()F

    move-result v0

    return v0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 1

    .line 1199
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1677
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .line 1229
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLinksClickable()Z

    move-result v0

    return v0
.end method

.method public final getMarqueeRepeatLimit()I
    .locals 1

    .line 1252
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMarqueeRepeatLimit()I

    move-result v0

    return v0
.end method

.method public final getMaxEms()I
    .locals 1

    .line 1270
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxEms()I

    move-result v0

    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 1304
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v0

    return v0
.end method

.method public final getMaxNumberOfCharacters()I
    .locals 1

    .line 642
    iget v0, p0, Lde/mrapp/android/validation/EditText;->maxNumberOfCharacters:I

    return v0
.end method

.method public final getMinEms()I
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinEms()I

    move-result v0

    return v0
.end method

.method public final getMinLines()I
    .locals 1

    .line 1344
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMinLines()I

    move-result v0

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .line 1850
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public final getOffsetForPosition(FF)I
    .locals 1

    .line 2259
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result p1

    return p1
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 1909
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public final getPaintFlags()I
    .locals 1

    .line 1946
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v0

    return v0
.end method

.method public final getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .line 1366
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectionEnd()I
    .locals 1

    .line 2126
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public final getSelectionStart()I
    .locals 1

    .line 2119
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getShadowColor()I
    .locals 1

    .line 1424
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowColor()I

    move-result v0

    return v0
.end method

.method public final getShadowDx()F
    .locals 1

    .line 1406
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v0

    return v0
.end method

.method public final getShadowDy()F
    .locals 1

    .line 1415
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v0

    return v0
.end method

.method public final getShadowRadius()F
    .locals 1

    .line 1397
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v0

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .line 1601
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getShowSoftInputOnFocus()Z

    move-result v0

    return v0
.end method

.method public final getText()Landroid/text/Editable;
    .locals 1

    .line 2271
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1558
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getTextGravity()I
    .locals 1

    .line 1938
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    return v0
.end method

.method public final getTextLocale()Ljava/util/Locale;
    .locals 1

    .line 1887
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final getTextScaleX()F
    .locals 1

    .line 1720
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public final getTextSize()F
    .locals 1

    .line 1758
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    return v0
.end method

.method public final getTotalPaddingBottom()I
    .locals 1

    .line 819
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingBottom()I

    move-result v0

    return v0
.end method

.method public final getTotalPaddingEnd()I
    .locals 1

    .line 803
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingEnd()I

    move-result v0

    return v0
.end method

.method public final getTotalPaddingLeft()I
    .locals 1

    .line 780
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final getTotalPaddingRight()I
    .locals 1

    .line 787
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v0

    return v0
.end method

.method public final getTotalPaddingStart()I
    .locals 1

    .line 795
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingStart()I

    move-result v0

    return v0
.end method

.method public final getTotalPaddingTop()I
    .locals 1

    .line 811
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v0

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1870
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1786
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final getUrls()[Landroid/text/style/URLSpan;
    .locals 1

    .line 1919
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    return-object v0
.end method

.method protected final getValue()Ljava/lang/CharSequence;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getValue()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hasSelection()Z
    .locals 1

    .line 2133
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    return v0
.end method

.method public final isCursorVisible()Z
    .locals 1

    .line 687
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v0

    return v0
.end method

.method public final isInputMethodTarget()Z
    .locals 1

    .line 2181
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v0

    return v0
.end method

.method public final isSuggestionsEnabled()Z
    .locals 1

    .line 2206
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result v0

    return v0
.end method

.method public final isTextSelectable()Z
    .locals 1

    .line 1712
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isTextSelectable()Z

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    .line 1793
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public final moveCursorToVisibleOffset()Z
    .locals 1

    .line 2112
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->moveCursorToVisibleOffset()Z

    move-result v0

    return v0
.end method

.method protected final onGetRightErrorMessage()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lde/mrapp/android/validation/Validator<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .line 526
    invoke-direct {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharactersMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 528
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharacters()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 530
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharacters()I

    move-result v1

    invoke-static {v0, v1}, Lde/mrapp/android/validation/Validators;->maxLength(Ljava/lang/CharSequence;I)Lde/mrapp/android/validation/Validator;

    move-result-object v0

    .line 532
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/mrapp/android/validation/Validator;->validate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 534
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2318
    instance-of v0, p1, Lde/mrapp/android/validation/EditText$SavedState;

    if-eqz v0, :cond_0

    .line 2319
    check-cast p1, Lde/mrapp/android/validation/EditText$SavedState;

    const/4 v0, 0x0

    .line 2320
    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/EditText;->validateOnValueChange(Z)V

    .line 2321
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p1, Lde/mrapp/android/validation/EditText$SavedState;->viewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2322
    iget v0, p1, Lde/mrapp/android/validation/EditText$SavedState;->maxNumberOfCharacters:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/validation/EditText;->setMaxNumberOfCharacters(I)V

    .line 2323
    invoke-virtual {p1}, Lde/mrapp/android/validation/EditText$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2325
    :cond_0
    invoke-super {p0, p1}, Lde/mrapp/android/validation/AbstractValidateableView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2304
    invoke-super {p0}, Lde/mrapp/android/validation/AbstractValidateableView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2307
    new-instance v1, Lde/mrapp/android/validation/EditText$SavedState;

    invoke-direct {v1, v0}, Lde/mrapp/android/validation/EditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2308
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lde/mrapp/android/validation/EditText$SavedState;->viewState:Landroid/os/Parcelable;

    .line 2309
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getMaxNumberOfCharacters()I

    move-result v0

    iput v0, v1, Lde/mrapp/android/validation/EditText$SavedState;->maxNumberOfCharacters:I

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onValidate(Z)V
    .locals 0

    .line 544
    invoke-direct {p0}, Lde/mrapp/android/validation/EditText;->adaptMaxNumberOfCharactersMessage()V

    return-void
.end method

.method public final removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 2152
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final selectAll()V
    .locals 1

    .line 2292
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    return-void
.end method

.method public final setAllCaps(Z)V
    .locals 1

    .line 1518
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setAllCaps(Z)V

    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 1

    .line 678
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    return-void
.end method

.method public final setCompoundDrawablePadding(I)V
    .locals 1

    .line 711
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 830
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 875
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 1

    .line 897
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 911
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 1

    .line 850
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 863
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCursorVisible(Z)V
    .locals 1

    .line 697
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method

.method public final setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 2234
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1

    .line 1987
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public final setElegantTextHeight(Z)V
    .locals 1

    .line 939
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    return-void
.end method

.method public final setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 961
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public final setEms(I)V
    .locals 1

    .line 973
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEms(I)V

    return-void
.end method

.method public final setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 1

    .line 2085
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 1

    .line 1278
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1

    .line 997
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFontFeatureSettings(Ljava/lang/String;)V

    return-void
.end method

.method public final setFreezesText(Z)V
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFreezesText(Z)V

    return-void
.end method

.method public final setHighlightColor(I)V
    .locals 1

    .line 1574
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHighlightColor(I)V

    return-void
.end method

.method public final setHint(I)V
    .locals 1

    .line 1045
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1038
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1

    .line 1613
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1625
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setHorizontallyScrolling(Z)V
    .locals 1

    .line 1964
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public final setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1078
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public final setImeOptions(I)V
    .locals 1

    .line 1056
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method

.method public final setIncludeFontPadding(Z)V
    .locals 1

    .line 1108
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    return-void
.end method

.method public final setInputExtras(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2030
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputExtras(I)V

    return-void
.end method

.method public final setInputType(I)V
    .locals 1

    .line 1147
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public final setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1

    .line 1842
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public final setLetterSpacing(F)V
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLetterSpacing(F)V

    return-void
.end method

.method public final setLineSpacing(FF)V
    .locals 1

    .line 1187
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    return-void
.end method

.method public final setLines(I)V
    .locals 1

    .line 1179
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLines(I)V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1

    .line 1655
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinkTextColor(I)V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1667
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLinksClickable(Z)V

    return-void
.end method

.method public final setMarqueeRepeatLimit(I)V
    .locals 1

    .line 1239
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMarqueeRepeatLimit(I)V

    return-void
.end method

.method public final setMaxEms(I)V
    .locals 1

    .line 1259
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxEms(I)V

    return-void
.end method

.method public final setMaxLines(I)V
    .locals 1

    .line 1294
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    return-void
.end method

.method public final setMaxNumberOfCharacters(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 655
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The maximum number of characters must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 659
    :cond_0
    iput p1, p0, Lde/mrapp/android/validation/EditText;->maxNumberOfCharacters:I

    .line 660
    invoke-direct {p0}, Lde/mrapp/android/validation/EditText;->adaptMaxNumberOfCharactersMessage()V

    return-void
.end method

.method public final setMinEms(I)V
    .locals 1

    .line 1311
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinEms(I)V

    return-void
.end method

.method public final setMinLines(I)V
    .locals 1

    .line 1334
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinLines(I)V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    .line 1862
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public final setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .line 2016
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public final setPaintFlags(I)V
    .locals 1

    .line 1956
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setPaintFlags(I)V

    return-void
.end method

.method public final setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    return-void
.end method

.method public final setRawInputType(I)V
    .locals 1

    .line 2005
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setRawInputType(I)V

    return-void
.end method

.method public final setScroller(Landroid/widget/Scroller;)V
    .locals 1

    .line 2173
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setScroller(Landroid/widget/Scroller;)V

    return-void
.end method

.method public final setSelectAllOnFocus(Z)V
    .locals 1

    .line 1373
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    return-void
.end method

.method public final setSelection(I)V
    .locals 1

    .line 2285
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public final setSelection(II)V
    .locals 1

    .line 2278
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public final setShadowLayer(FFFI)V
    .locals 1

    .line 1386
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1

    .line 1592
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    return-void
.end method

.method public final setSingleLine()V
    .locals 1

    .line 1432
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    return-void
.end method

.method public final setSingleLine(Z)V
    .locals 1

    .line 1444
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1

    .line 1994
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSpannableFactory(Landroid/text/Spannable$Factory;)V

    return-void
.end method

.method public final setText(I)V
    .locals 1

    .line 1499
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(I)V

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1503
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setText(ILandroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1455
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1475
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText([CII)V
    .locals 1

    .line 1485
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->setText([CII)V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1526
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 1536
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public final setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1548
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTextGravity(I)V
    .locals 1

    .line 1929
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public final setTextIsSelectable(Z)V
    .locals 1

    .line 1700
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1467
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1495
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1901
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public final setTextScaleX(F)V
    .locals 1

    .line 1727
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextScaleX(F)V

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    .line 1738
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    return-void
.end method

.method public final setTextSize(IF)V
    .locals 0

    .line 1751
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextSize(F)V

    return-void
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 1

    .line 1877
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1778
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1

    .line 1767
    invoke-virtual {p0}, Lde/mrapp/android/validation/EditText;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
