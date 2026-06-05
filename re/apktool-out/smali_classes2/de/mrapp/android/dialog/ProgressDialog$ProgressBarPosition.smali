.class public final enum Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;
.super Ljava/lang/Enum;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressBarPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

.field public static final enum BOTTOM:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

.field public static final enum LEFT:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

.field public static final enum RIGHT:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

.field public static final enum TOP:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 48
    new-instance v0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->LEFT:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    .line 53
    new-instance v1, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->TOP:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    .line 58
    new-instance v3, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->RIGHT:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    .line 63
    new-instance v5, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->BOTTOM:Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    const/4 v7, 0x4

    .line 43
    new-array v7, v7, [Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->$VALUES:[Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->value:I

    return-void
.end method

.method public static fromValue(I)Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;
    .locals 5

    .line 98
    invoke-static {}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->values()[Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 99
    invoke-virtual {v3}, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid enum value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;
    .locals 1

    .line 43
    const-class v0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;
    .locals 1

    .line 43
    sget-object v0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->$VALUES:[Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    invoke-virtual {v0}, [Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 86
    iget v0, p0, Lde/mrapp/android/dialog/ProgressDialog$ProgressBarPosition;->value:I

    return v0
.end method
