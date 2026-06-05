.class public final Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;
.super Ljava/lang/Object;
.source "IconDrawableLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maltaisn/icondialog/pack/IconDrawableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconDrawableLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconDrawableLoader.kt\ncom/maltaisn/icondialog/pack/IconDrawableLoader$Companion\n*L\n1#1,203:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0017\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;",
        "",
        "()V",
        "BIN_XML_END",
        "",
        "BIN_XML_START",
        "TAG",
        "",
        "createDrawableBinaryXml",
        "",
        "pathData",
        "width",
        "",
        "height",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createDrawableBinaryXml(Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;Ljava/lang/String;II)[B
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader$Companion;->createDrawableBinaryXml(Ljava/lang/String;II)[B

    move-result-object p0

    return-object p0
.end method

.method private final createDrawableBinaryXml(Ljava/lang/String;II)[B
    .locals 11

    .line 145
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    array-length v0, p1

    array-length v1, p1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    add-int/2addr v0, v1

    .line 147
    invoke-static {}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->access$getBIN_XML_START$cp()[S

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v0

    const/4 v3, 0x4

    rem-int/2addr v1, v3

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x4

    .line 149
    :cond_1
    invoke-static {}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->access$getBIN_XML_START$cp()[S

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-static {}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->access$getBIN_XML_END$cp()[S

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    .line 151
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 152
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 155
    invoke-static {}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->access$getBIN_XML_START$cp()[S

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_2

    aget-short v10, v6, v9

    int-to-byte v10, v10

    .line 156
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    .line 162
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    invoke-static {}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->access$getBIN_XML_START$cp()[S

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x8

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 165
    invoke-static {}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->access$getBIN_XML_START$cp()[S

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    array-length v0, p1

    if-le v0, v2, :cond_3

    .line 169
    array-length v0, p1

    const v2, 0xff00

    and-int/2addr v0, v2

    const v2, 0x8000

    or-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 170
    array-length v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 171
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 174
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 176
    :cond_3
    array-length v0, p1

    int-to-byte v0, v0

    .line 177
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 180
    :goto_2
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-byte p1, v8

    .line 181
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-lez v1, :cond_4

    .line 185
    new-array p1, v1, [B

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    :cond_4
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 190
    invoke-static {}, Lcom/maltaisn/icondialog/pack/IconDrawableLoader;->access$getBIN_XML_END$cp()[S

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v8, v1, :cond_5

    aget-short v2, v0, v8

    int-to-byte v2, v2

    .line 191
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, p1, 0x7c

    int-to-float p2, p2

    .line 195
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v5, v0, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit16 p1, p1, 0x90

    int-to-float p2, p3

    .line 196
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v5, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string p2, "bb.array()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 145
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
