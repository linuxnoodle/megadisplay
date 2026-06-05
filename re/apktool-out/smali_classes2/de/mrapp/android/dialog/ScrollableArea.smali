.class public final Lde/mrapp/android/dialog/ScrollableArea;
.super Ljava/lang/Object;
.source "ScrollableArea.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/dialog/ScrollableArea$Area;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lde/mrapp/android/dialog/ScrollableArea;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x64ccab2f7333c004L


# instance fields
.field private final bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

.field private final topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lde/mrapp/android/dialog/ScrollableArea$1;

    invoke-direct {v0}, Lde/mrapp/android/dialog/ScrollableArea$1;-><init>()V

    sput-object v0, Lde/mrapp/android/dialog/ScrollableArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/ScrollableArea$Area;

    iput-object v0, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lde/mrapp/android/dialog/ScrollableArea$Area;

    iput-object p1, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/mrapp/android/dialog/ScrollableArea$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lde/mrapp/android/dialog/ScrollableArea;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 4

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 149
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "If the top-most area is not null, the bottom-most area may neither be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    invoke-virtual {p2}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v2

    const-string v3, "The index of the bottom-most area must be at least the index of the top-most area"

    invoke-virtual {v0, v1, v2, v3}, Lde/mrapp/util/Condition;->ensureAtLeast(IILjava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_0
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "If the top-most area is null, the bottom-most area must be null as well"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/util/Condition;->ensureTrue(ZLjava/lang/String;)V

    .line 158
    :goto_1
    iput-object p1, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 159
    iput-object p2, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-void
.end method

.method public static create(Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;
    .locals 0

    .line 182
    invoke-static {p0, p0}, Lde/mrapp/android/dialog/ScrollableArea;->create(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)Lde/mrapp/android/dialog/ScrollableArea;
    .locals 1

    .line 197
    new-instance v0, Lde/mrapp/android/dialog/ScrollableArea;

    invoke-direct {v0, p0, p1}, Lde/mrapp/android/dialog/ScrollableArea;-><init>(Lde/mrapp/android/dialog/ScrollableArea$Area;Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 266
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 268
    :cond_2
    check-cast p1, Lde/mrapp/android/dialog/ScrollableArea;

    .line 269
    iget-object v2, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    iget-object v3, p1, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    iget-object p1, p1, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 270
    invoke-virtual {v2, p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBottomScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;
    .locals 1

    .line 230
    iget-object v0, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-object v0
.end method

.method public final getTopScrollableArea()Lde/mrapp/android/dialog/ScrollableArea$Area;
    .locals 1

    .line 220
    iget-object v0, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 254
    iget-object v0, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 255
    iget-object v2, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-nez v2, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {v2}, Lde/mrapp/android/dialog/ScrollableArea$Area;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isScrollable(Lde/mrapp/android/dialog/ScrollableArea$Area;)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    .line 210
    invoke-virtual {v0}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lde/mrapp/android/dialog/ScrollableArea$Area;->getIndex()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScrollableArea{topScrollableArea="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomScrollableArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 240
    iget-object p2, p0, Lde/mrapp/android/dialog/ScrollableArea;->topScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 241
    iget-object p2, p0, Lde/mrapp/android/dialog/ScrollableArea;->bottomScrollableArea:Lde/mrapp/android/dialog/ScrollableArea$Area;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
