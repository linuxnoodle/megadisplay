.class public final enum Lde/mrapp/android/util/view/SquareImageView$Edge;
.super Ljava/lang/Enum;
.source "SquareImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/view/SquareImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/util/view/SquareImageView$Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/util/view/SquareImageView$Edge;

.field public static final enum HORIZONTAL:Lde/mrapp/android/util/view/SquareImageView$Edge;

.field public static final enum VERTICAL:Lde/mrapp/android/util/view/SquareImageView$Edge;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lde/mrapp/android/util/view/SquareImageView$Edge;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/util/view/SquareImageView$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/view/SquareImageView$Edge;->HORIZONTAL:Lde/mrapp/android/util/view/SquareImageView$Edge;

    .line 49
    new-instance v1, Lde/mrapp/android/util/view/SquareImageView$Edge;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lde/mrapp/android/util/view/SquareImageView$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/util/view/SquareImageView$Edge;->VERTICAL:Lde/mrapp/android/util/view/SquareImageView$Edge;

    const/4 v3, 0x2

    .line 39
    new-array v3, v3, [Lde/mrapp/android/util/view/SquareImageView$Edge;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lde/mrapp/android/util/view/SquareImageView$Edge;->$VALUES:[Lde/mrapp/android/util/view/SquareImageView$Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lde/mrapp/android/util/view/SquareImageView$Edge;->value:I

    return-void
.end method

.method public static fromValue(I)Lde/mrapp/android/util/view/SquareImageView$Edge;
    .locals 5

    .line 86
    invoke-static {}, Lde/mrapp/android/util/view/SquareImageView$Edge;->values()[Lde/mrapp/android/util/view/SquareImageView$Edge;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3}, Lde/mrapp/android/util/view/SquareImageView$Edge;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
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

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/util/view/SquareImageView$Edge;
    .locals 1

    .line 39
    const-class v0, Lde/mrapp/android/util/view/SquareImageView$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/util/view/SquareImageView$Edge;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/util/view/SquareImageView$Edge;
    .locals 1

    .line 39
    sget-object v0, Lde/mrapp/android/util/view/SquareImageView$Edge;->$VALUES:[Lde/mrapp/android/util/view/SquareImageView$Edge;

    invoke-virtual {v0}, [Lde/mrapp/android/util/view/SquareImageView$Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/util/view/SquareImageView$Edge;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 72
    iget v0, p0, Lde/mrapp/android/util/view/SquareImageView$Edge;->value:I

    return v0
.end method
