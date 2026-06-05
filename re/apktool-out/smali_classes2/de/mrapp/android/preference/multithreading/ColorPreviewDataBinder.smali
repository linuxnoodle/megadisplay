.class public Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;
.super Lde/mrapp/android/util/multithreading/AbstractDataBinder;
.source "ColorPreviewDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/mrapp/android/util/multithreading/AbstractDataBinder<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Integer;",
        "Landroid/widget/ImageView;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private borderColor:I

.field private borderWidth:I

.field private shape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;III)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lde/mrapp/android/util/multithreading/AbstractDataBinder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p0, p2}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0, p3}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setShape(Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;)V

    .line 95
    invoke-virtual {p0, p4}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setSize(I)V

    .line 96
    invoke-virtual {p0, p5}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setBorderWidth(I)V

    .line 97
    invoke-virtual {p0, p6}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->setBorderColor(I)V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground(Ljava/lang/Integer;[Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lde/mrapp/android/util/BitmapUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 211
    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getSize()I

    move-result v1

    invoke-static {p2, v0, v1}, Lde/mrapp/android/util/BitmapUtil;->tile(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getSize()I

    move-result p2

    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getSize()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 216
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lde/mrapp/android/util/BitmapUtil;->tint(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getShape()Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    move-result-object p2

    sget-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->CIRCLE:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    if-ne p2, v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getSize()I

    move-result p2

    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getBorderWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getBorderColor()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lde/mrapp/android/util/BitmapUtil;->clipCircle(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 221
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getSize()I

    move-result p2

    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getBorderWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->getBorderColor()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lde/mrapp/android/util/BitmapUtil;->clipSquare(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->doInBackground(Ljava/lang/Integer;[Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 106
    iget-object v0, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getBorderColor()I
    .locals 1

    .line 190
    iget v0, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->borderColor:I

    return v0
.end method

.method public final getBorderWidth()I
    .locals 1

    .line 169
    iget v0, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->borderWidth:I

    return v0
.end method

.method public final getShape()Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;
    .locals 1

    .line 127
    iget-object v0, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->shape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 148
    iget v0, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->size:I

    return v0
.end method

.method protected final varargs onPostExecute(Landroid/widget/ImageView;Landroid/graphics/Bitmap;J[Ljava/lang/Void;)V
    .locals 0

    .line 228
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;J[Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    check-cast p5, [Ljava/lang/Void;

    invoke-virtual/range {p0 .. p5}, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->onPostExecute(Landroid/widget/ImageView;Landroid/graphics/Bitmap;J[Ljava/lang/Void;)V

    return-void
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setBorderColor(I)V
    .locals 0

    .line 200
    iput p1, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->borderColor:I

    return-void
.end method

.method public final setBorderWidth(I)V
    .locals 3

    .line 180
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x0

    const-string v2, "The border width must be at least 0"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 181
    iput p1, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->borderWidth:I

    return-void
.end method

.method public final setShape(Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;)V
    .locals 2

    .line 138
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The shape may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->shape:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-void
.end method

.method public final setSize(I)V
    .locals 3

    .line 159
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const/4 v1, 0x1

    const-string v2, "The size must be at least 1"

    invoke-virtual {v0, p1, v1, v2}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    .line 160
    iput p1, p0, Lde/mrapp/android/preference/multithreading/ColorPreviewDataBinder;->size:I

    return-void
.end method
