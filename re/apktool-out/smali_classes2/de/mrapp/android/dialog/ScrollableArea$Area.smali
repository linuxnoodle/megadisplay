.class public final enum Lde/mrapp/android/dialog/ScrollableArea$Area;
.super Ljava/lang/Enum;
.source "ScrollableArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/ScrollableArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Area"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/dialog/ScrollableArea$Area;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/dialog/ScrollableArea$Area;

.field public static final enum BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

.field public static final enum CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

.field public static final enum HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

.field public static final enum MESSAGE:Lde/mrapp/android/dialog/ScrollableArea$Area;

.field public static final enum TITLE:Lde/mrapp/android/dialog/ScrollableArea$Area;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 59
    new-instance v0, Lde/mrapp/android/dialog/ScrollableArea$Area;

    const-string v1, "HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/dialog/ScrollableArea$Area;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->HEADER:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 64
    new-instance v1, Lde/mrapp/android/dialog/ScrollableArea$Area;

    const-string v3, "TITLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lde/mrapp/android/dialog/ScrollableArea$Area;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/dialog/ScrollableArea$Area;->TITLE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 69
    new-instance v3, Lde/mrapp/android/dialog/ScrollableArea$Area;

    const-string v5, "MESSAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lde/mrapp/android/dialog/ScrollableArea$Area;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lde/mrapp/android/dialog/ScrollableArea$Area;->MESSAGE:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 74
    new-instance v5, Lde/mrapp/android/dialog/ScrollableArea$Area;

    const-string v7, "CONTENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lde/mrapp/android/dialog/ScrollableArea$Area;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lde/mrapp/android/dialog/ScrollableArea$Area;->CONTENT:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 79
    new-instance v7, Lde/mrapp/android/dialog/ScrollableArea$Area;

    const-string v9, "BUTTON_BAR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lde/mrapp/android/dialog/ScrollableArea$Area;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lde/mrapp/android/dialog/ScrollableArea$Area;->BUTTON_BAR:Lde/mrapp/android/dialog/ScrollableArea$Area;

    const/4 v9, 0x5

    .line 54
    new-array v9, v9, [Lde/mrapp/android/dialog/ScrollableArea$Area;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lde/mrapp/android/dialog/ScrollableArea$Area;->$VALUES:[Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lde/mrapp/android/dialog/ScrollableArea$Area;->index:I

    return-void
.end method

.method public static fromIndex(I)Lde/mrapp/android/dialog/ScrollableArea$Area;
    .locals 5

    .line 110
    invoke-static {}, Lde/mrapp/android/dialog/ScrollableArea$Area;->values()[Lde/mrapp/android/dialog/ScrollableArea$Area;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 111
    invoke-virtual {v3}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
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

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/dialog/ScrollableArea$Area;
    .locals 1

    .line 54
    const-class v0, Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/dialog/ScrollableArea$Area;
    .locals 1

    .line 54
    sget-object v0, Lde/mrapp/android/dialog/ScrollableArea$Area;->$VALUES:[Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {v0}, [Lde/mrapp/android/dialog/ScrollableArea$Area;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 96
    iget v0, p0, Lde/mrapp/android/dialog/ScrollableArea$Area;->index:I

    return v0
.end method
