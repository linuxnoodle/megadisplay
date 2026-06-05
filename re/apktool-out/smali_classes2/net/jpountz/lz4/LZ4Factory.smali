.class public final Lnet/jpountz/lz4/LZ4Factory;
.super Ljava/lang/Object;
.source "LZ4Factory.java"


# static fields
.field private static JAVA_SAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

.field private static JAVA_UNSAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

.field private static NATIVE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;


# instance fields
.field private final fastCompressor:Lnet/jpountz/lz4/LZ4Compressor;

.field private final fastDecompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

.field private final highCompressor:Lnet/jpountz/lz4/LZ4Compressor;

.field private final highCompressors:[Lnet/jpountz/lz4/LZ4Compressor;

.field private final impl:Ljava/lang/String;

.field private final safeDecompressor:Lnet/jpountz/lz4/LZ4SafeDecompressor;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x12

    .line 187
    new-array v2, v2, [Lnet/jpountz/lz4/LZ4Compressor;

    iput-object v2, v0, Lnet/jpountz/lz4/LZ4Factory;->highCompressors:[Lnet/jpountz/lz4/LZ4Compressor;

    .line 190
    iput-object v1, v0, Lnet/jpountz/lz4/LZ4Factory;->impl:Ljava/lang/String;

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "net.jpountz.lz4.LZ4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Compressor"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/jpountz/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/jpountz/lz4/LZ4Compressor;

    iput-object v3, v0, Lnet/jpountz/lz4/LZ4Factory;->fastCompressor:Lnet/jpountz/lz4/LZ4Compressor;

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "net.jpountz.lz4.LZ4HC"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/jpountz/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/jpountz/lz4/LZ4Compressor;

    iput-object v3, v0, Lnet/jpountz/lz4/LZ4Factory;->highCompressor:Lnet/jpountz/lz4/LZ4Compressor;

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "FastDecompressor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/jpountz/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/jpountz/lz4/LZ4FastDecompressor;

    iput-object v5, v0, Lnet/jpountz/lz4/LZ4Factory;->fastDecompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SafeDecompressor"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4Factory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/jpountz/lz4/LZ4SafeDecompressor;

    iput-object v1, v0, Lnet/jpountz/lz4/LZ4Factory;->safeDecompressor:Lnet/jpountz/lz4/LZ4SafeDecompressor;

    .line 195
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/16 v5, 0x9

    .line 196
    aput-object v3, v2, v5

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x11

    if-gt v2, v3, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    iget-object v3, v0, Lnet/jpountz/lz4/LZ4Factory;->highCompressors:[Lnet/jpountz/lz4/LZ4Compressor;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v7

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/jpountz/lz4/LZ4Compressor;

    aput-object v6, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    .line 203
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 204
    iget-object v2, v0, Lnet/jpountz/lz4/LZ4Factory;->fastCompressor:Lnet/jpountz/lz4/LZ4Compressor;

    iget-object v3, v0, Lnet/jpountz/lz4/LZ4Factory;->highCompressor:Lnet/jpountz/lz4/LZ4Compressor;

    const/4 v5, 0x2

    new-array v5, v5, [Lnet/jpountz/lz4/LZ4Compressor;

    aput-object v2, v5, v7

    aput-object v3, v5, v4

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lnet/jpountz/lz4/LZ4Compressor;

    const/16 v3, 0x14

    .line 205
    invoke-virtual {v8, v3}, Lnet/jpountz/lz4/LZ4Compressor;->maxCompressedLength(I)I

    move-result v14

    .line 206
    new-array v4, v14, [B

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    move v11, v3

    move-object v12, v4

    .line 207
    invoke-virtual/range {v8 .. v14}, Lnet/jpountz/lz4/LZ4Compressor;->compress([BII[BII)I

    move-result v18

    .line 208
    new-array v5, v3, [B

    .line 209
    iget-object v9, v0, Lnet/jpountz/lz4/LZ4Factory;->fastDecompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    const/4 v11, 0x0

    move-object v10, v4

    move-object v12, v5

    move v14, v3

    invoke-virtual/range {v9 .. v14}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress([BI[BII)I

    .line 210
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 213
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 214
    iget-object v15, v0, Lnet/jpountz/lz4/LZ4Factory;->safeDecompressor:Lnet/jpountz/lz4/LZ4SafeDecompressor;

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v15 .. v20}, Lnet/jpountz/lz4/LZ4SafeDecompressor;->decompress([BII[BI)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 215
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 216
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 211
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    return-void

    :array_0
    .array-data 1
        0x61t
        0x62t
        0x63t
        0x64t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
    .end array-data
.end method

.method private static classInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 175
    const-class v0, Lnet/jpountz/lz4/LZ4Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 177
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 178
    const-string v0, "INSTANCE"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static fastestInstance()Lnet/jpountz/lz4/LZ4Factory;
    .locals 2

    .line 161
    invoke-static {}, Lnet/jpountz/util/Native;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/jpountz/util/Native;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestJavaInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    return-object v0

    .line 164
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->nativeInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 166
    :catchall_0
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestJavaInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    return-object v0
.end method

.method public static fastestJavaInstance()Lnet/jpountz/lz4/LZ4Factory;
    .locals 1

    .line 137
    invoke-static {}, Lnet/jpountz/util/Utils;->isUnalignedAccessAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :try_start_0
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->unsafeInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 141
    :catchall_0
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->safeInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->safeInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    return-object v0
.end method

.method private static instance(Ljava/lang/String;)Lnet/jpountz/lz4/LZ4Factory;
    .locals 1

    .line 51
    :try_start_0
    new-instance v0, Lnet/jpountz/lz4/LZ4Factory;

    invoke-direct {v0, p0}, Lnet/jpountz/lz4/LZ4Factory;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .line 317
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fastest instance is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fastest Java instance is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestJavaInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized nativeInstance()Lnet/jpountz/lz4/LZ4Factory;
    .locals 2

    const-class v0, Lnet/jpountz/lz4/LZ4Factory;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lnet/jpountz/lz4/LZ4Factory;->NATIVE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

    if-nez v1, :cond_0

    .line 91
    const-string v1, "JNI"

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4Factory;->instance(Ljava/lang/String;)Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v1

    sput-object v1, Lnet/jpountz/lz4/LZ4Factory;->NATIVE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

    .line 93
    :cond_0
    sget-object v1, Lnet/jpountz/lz4/LZ4Factory;->NATIVE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized safeInstance()Lnet/jpountz/lz4/LZ4Factory;
    .locals 2

    const-class v0, Lnet/jpountz/lz4/LZ4Factory;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lnet/jpountz/lz4/LZ4Factory;->JAVA_SAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

    if-nez v1, :cond_0

    .line 105
    const-string v1, "JavaSafe"

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4Factory;->instance(Ljava/lang/String;)Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v1

    sput-object v1, Lnet/jpountz/lz4/LZ4Factory;->JAVA_SAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

    .line 107
    :cond_0
    sget-object v1, Lnet/jpountz/lz4/LZ4Factory;->JAVA_SAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unsafeInstance()Lnet/jpountz/lz4/LZ4Factory;
    .locals 2

    const-class v0, Lnet/jpountz/lz4/LZ4Factory;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lnet/jpountz/lz4/LZ4Factory;->JAVA_UNSAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

    if-nez v1, :cond_0

    .line 121
    const-string v1, "JavaUnsafe"

    invoke-static {v1}, Lnet/jpountz/lz4/LZ4Factory;->instance(Ljava/lang/String;)Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v1

    sput-object v1, Lnet/jpountz/lz4/LZ4Factory;->JAVA_UNSAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;

    .line 123
    :cond_0
    sget-object v1, Lnet/jpountz/lz4/LZ4Factory;->JAVA_UNSAFE_INSTANCE:Lnet/jpountz/lz4/LZ4Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public decompressor()Lnet/jpountz/lz4/LZ4Decompressor;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lnet/jpountz/lz4/LZ4Factory;->fastDecompressor()Lnet/jpountz/lz4/LZ4FastDecompressor;

    move-result-object v0

    return-object v0
.end method

.method public fastCompressor()Lnet/jpountz/lz4/LZ4Compressor;
    .locals 1

    .line 228
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4Factory;->fastCompressor:Lnet/jpountz/lz4/LZ4Compressor;

    return-object v0
.end method

.method public fastDecompressor()Lnet/jpountz/lz4/LZ4FastDecompressor;
    .locals 1

    .line 279
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4Factory;->fastDecompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    return-object v0
.end method

.method public highCompressor()Lnet/jpountz/lz4/LZ4Compressor;
    .locals 1

    .line 239
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4Factory;->highCompressor:Lnet/jpountz/lz4/LZ4Compressor;

    return-object v0
.end method

.method public highCompressor(I)Lnet/jpountz/lz4/LZ4Compressor;
    .locals 1

    const/16 v0, 0x11

    if-le p1, v0, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/16 p1, 0x9

    .line 267
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4Factory;->highCompressors:[Lnet/jpountz/lz4/LZ4Compressor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public safeDecompressor()Lnet/jpountz/lz4/LZ4SafeDecompressor;
    .locals 1

    .line 288
    iget-object v0, p0, Lnet/jpountz/lz4/LZ4Factory;->safeDecompressor:Lnet/jpountz/lz4/LZ4SafeDecompressor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/jpountz/lz4/LZ4Factory;->impl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unknownSizeDecompressor()Lnet/jpountz/lz4/LZ4UnknownSizeDecompressor;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lnet/jpountz/lz4/LZ4Factory;->safeDecompressor()Lnet/jpountz/lz4/LZ4SafeDecompressor;

    move-result-object v0

    return-object v0
.end method
