.class public final enum Lde/mrapp/android/view/FloatingActionButton$Size;
.super Ljava/lang/Enum;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/view/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/view/FloatingActionButton$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/view/FloatingActionButton$Size;

.field public static final enum LARGE:Lde/mrapp/android/view/FloatingActionButton$Size;

.field public static final enum NORMAL:Lde/mrapp/android/view/FloatingActionButton$Size;

.field public static final enum SMALL:Lde/mrapp/android/view/FloatingActionButton$Size;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 71
    new-instance v0, Lde/mrapp/android/view/FloatingActionButton$Size;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/view/FloatingActionButton$Size;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/view/FloatingActionButton$Size;->NORMAL:Lde/mrapp/android/view/FloatingActionButton$Size;

    .line 76
    new-instance v1, Lde/mrapp/android/view/FloatingActionButton$Size;

    const-string v3, "SMALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lde/mrapp/android/view/FloatingActionButton$Size;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/view/FloatingActionButton$Size;->SMALL:Lde/mrapp/android/view/FloatingActionButton$Size;

    .line 81
    new-instance v3, Lde/mrapp/android/view/FloatingActionButton$Size;

    const-string v5, "LARGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lde/mrapp/android/view/FloatingActionButton$Size;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lde/mrapp/android/view/FloatingActionButton$Size;->LARGE:Lde/mrapp/android/view/FloatingActionButton$Size;

    const/4 v5, 0x3

    .line 66
    new-array v5, v5, [Lde/mrapp/android/view/FloatingActionButton$Size;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lde/mrapp/android/view/FloatingActionButton$Size;->$VALUES:[Lde/mrapp/android/view/FloatingActionButton$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lde/mrapp/android/view/FloatingActionButton$Size;->value:I

    return-void
.end method

.method protected static fromValue(I)Lde/mrapp/android/view/FloatingActionButton$Size;
    .locals 5

    .line 116
    invoke-static {}, Lde/mrapp/android/view/FloatingActionButton$Size;->values()[Lde/mrapp/android/view/FloatingActionButton$Size;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 117
    iget v4, v3, Lde/mrapp/android/view/FloatingActionButton$Size;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
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

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/view/FloatingActionButton$Size;
    .locals 1

    .line 66
    const-class v0, Lde/mrapp/android/view/FloatingActionButton$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/view/FloatingActionButton$Size;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/view/FloatingActionButton$Size;
    .locals 1

    .line 66
    sget-object v0, Lde/mrapp/android/view/FloatingActionButton$Size;->$VALUES:[Lde/mrapp/android/view/FloatingActionButton$Size;

    invoke-virtual {v0}, [Lde/mrapp/android/view/FloatingActionButton$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/view/FloatingActionButton$Size;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    .line 104
    iget v0, p0, Lde/mrapp/android/view/FloatingActionButton$Size;->value:I

    return v0
.end method
