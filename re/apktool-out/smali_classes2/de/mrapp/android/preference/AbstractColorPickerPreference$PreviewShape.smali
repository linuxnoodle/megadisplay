.class public final enum Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;
.super Ljava/lang/Enum;
.source "AbstractColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/preference/AbstractColorPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

.field public static final enum CIRCLE:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

.field public static final enum SQUARE:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 133
    new-instance v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->CIRCLE:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    .line 138
    new-instance v1, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    const-string v3, "SQUARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->SQUARE:Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    const/4 v3, 0x2

    .line 128
    new-array v3, v3, [Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->$VALUES:[Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput p3, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->value:I

    return-void
.end method

.method public static fromValue(I)Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;
    .locals 5

    .line 173
    invoke-static {}, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->values()[Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 174
    invoke-virtual {v3}, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid enum value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;
    .locals 1

    .line 128
    const-class v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;
    .locals 1

    .line 128
    sget-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->$VALUES:[Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    invoke-virtual {v0}, [Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 161
    iget v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$PreviewShape;->value:I

    return v0
.end method
