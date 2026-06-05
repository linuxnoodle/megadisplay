.class public final enum Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;
.super Ljava/lang/Enum;
.source "AbstractColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/preference/AbstractColorPickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

.field public static final enum ARGB:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

.field public static final enum HEX_3_BYTES:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

.field public static final enum HEX_4_BYTES:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

.field public static final enum RGB:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 63
    new-instance v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    const-string v1, "RGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->RGB:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    .line 68
    new-instance v1, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    const-string v3, "ARGB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->ARGB:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    .line 73
    new-instance v3, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    const-string v5, "HEX_3_BYTES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->HEX_3_BYTES:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    .line 79
    new-instance v5, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    const-string v7, "HEX_4_BYTES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->HEX_4_BYTES:Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    const/4 v7, 0x4

    .line 58
    new-array v7, v7, [Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->$VALUES:[Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->value:I

    return-void
.end method

.method public static fromValue(I)Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;
    .locals 5

    .line 114
    invoke-static {}, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->values()[Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 115
    invoke-virtual {v3}, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid enum value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;
    .locals 1

    .line 58
    const-class v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;
    .locals 1

    .line 58
    sget-object v0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->$VALUES:[Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    invoke-virtual {v0}, [Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 102
    iget v0, p0, Lde/mrapp/android/preference/AbstractColorPickerPreference$ColorFormat;->value:I

    return v0
.end method
