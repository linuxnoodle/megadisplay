.class public final Lnet/jpountz/xxhash/XXHashFactory;
.super Ljava/lang/Object;
.source "XXHashFactory.java"


# static fields
.field private static JAVA_SAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

.field private static JAVA_UNSAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

.field private static NATIVE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;


# instance fields
.field private final hash32:Lnet/jpountz/xxhash/XXHash32;

.field private final hash64:Lnet/jpountz/xxhash/XXHash64;

.field private final impl:Ljava/lang/String;

.field private final streamingHash32Factory:Lnet/jpountz/xxhash/StreamingXXHash32$Factory;

.field private final streamingHash64Factory:Lnet/jpountz/xxhash/StreamingXXHash64$Factory;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lnet/jpountz/xxhash/XXHashFactory;->impl:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net.jpountz.xxhash.XXHash32"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/jpountz/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/jpountz/xxhash/XXHash32;

    iput-object v0, p0, Lnet/jpountz/xxhash/XXHashFactory;->hash32:Lnet/jpountz/xxhash/XXHash32;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "net.jpountz.xxhash.StreamingXXHash32"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Factory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/jpountz/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/jpountz/xxhash/StreamingXXHash32$Factory;

    iput-object v1, p0, Lnet/jpountz/xxhash/XXHashFactory;->streamingHash32Factory:Lnet/jpountz/xxhash/StreamingXXHash32$Factory;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "net.jpountz.xxhash.XXHash64"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/jpountz/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lnet/jpountz/xxhash/XXHash64;

    iput-object v3, p0, Lnet/jpountz/xxhash/XXHashFactory;->hash64:Lnet/jpountz/xxhash/XXHash64;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "net.jpountz.xxhash.StreamingXXHash64"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/jpountz/xxhash/XXHashFactory;->classInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/jpountz/xxhash/StreamingXXHash64$Factory;

    iput-object p1, p0, Lnet/jpountz/xxhash/XXHashFactory;->streamingHash64Factory:Lnet/jpountz/xxhash/StreamingXXHash64$Factory;

    const/16 p1, 0x64

    .line 183
    new-array v1, p1, [B

    .line 184
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 185
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 186
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const/4 v9, 0x0

    .line 188
    invoke-virtual {v0, v1, v9, p1, v2}, Lnet/jpountz/xxhash/XXHash32;->hash([BIII)I

    move-result v0

    .line 189
    invoke-virtual {p0, v2}, Lnet/jpountz/xxhash/XXHashFactory;->newStreamingHash32(I)Lnet/jpountz/xxhash/StreamingXXHash32;

    move-result-object v4

    .line 190
    invoke-virtual {v4, v1, v9, p1}, Lnet/jpountz/xxhash/StreamingXXHash32;->update([BII)V

    .line 191
    invoke-virtual {v4}, Lnet/jpountz/xxhash/StreamingXXHash32;->getValue()I

    move-result v10

    int-to-long v11, v2

    const/4 v5, 0x0

    move-object v4, v1

    move v6, p1

    move-wide v7, v11

    .line 192
    invoke-virtual/range {v3 .. v8}, Lnet/jpountz/xxhash/XXHash64;->hash([BIIJ)J

    move-result-wide v2

    .line 193
    invoke-virtual {p0, v11, v12}, Lnet/jpountz/xxhash/XXHashFactory;->newStreamingHash64(J)Lnet/jpountz/xxhash/StreamingXXHash64;

    move-result-object v4

    .line 194
    invoke-virtual {v4, v1, v9, p1}, Lnet/jpountz/xxhash/StreamingXXHash64;->update([BII)V

    .line 195
    invoke-virtual {v4}, Lnet/jpountz/xxhash/StreamingXXHash64;->getValue()J

    move-result-wide v4

    if-ne v0, v10, :cond_1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 197
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
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

    .line 162
    const-class v0, Lnet/jpountz/xxhash/XXHashFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 164
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 165
    const-string v0, "INSTANCE"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static fastestInstance()Lnet/jpountz/xxhash/XXHashFactory;
    .locals 2

    .line 148
    invoke-static {}, Lnet/jpountz/util/Native;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lnet/jpountz/util/Native;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->fastestJavaInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v0

    return-object v0

    .line 151
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->nativeInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 153
    :catchall_0
    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->fastestJavaInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v0

    return-object v0
.end method

.method public static fastestJavaInstance()Lnet/jpountz/xxhash/XXHashFactory;
    .locals 1

    .line 124
    invoke-static {}, Lnet/jpountz/util/Utils;->isUnalignedAccessAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->unsafeInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 128
    :catchall_0
    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->safeInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->safeInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v0

    return-object v0
.end method

.method private static instance(Ljava/lang/String;)Lnet/jpountz/xxhash/XXHashFactory;
    .locals 1

    .line 47
    :try_start_0
    new-instance v0, Lnet/jpountz/xxhash/XXHashFactory;

    invoke-direct {v0, p0}, Lnet/jpountz/xxhash/XXHashFactory;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 49
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .line 248
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fastest instance is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->fastestInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 249
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fastest Java instance is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/jpountz/xxhash/XXHashFactory;->fastestJavaInstance()Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized nativeInstance()Lnet/jpountz/xxhash/XXHashFactory;
    .locals 2

    const-class v0, Lnet/jpountz/xxhash/XXHashFactory;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lnet/jpountz/xxhash/XXHashFactory;->NATIVE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

    if-nez v1, :cond_0

    .line 80
    const-string v1, "JNI"

    invoke-static {v1}, Lnet/jpountz/xxhash/XXHashFactory;->instance(Ljava/lang/String;)Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    sput-object v1, Lnet/jpountz/xxhash/XXHashFactory;->NATIVE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

    .line 82
    :cond_0
    sget-object v1, Lnet/jpountz/xxhash/XXHashFactory;->NATIVE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized safeInstance()Lnet/jpountz/xxhash/XXHashFactory;
    .locals 2

    const-class v0, Lnet/jpountz/xxhash/XXHashFactory;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lnet/jpountz/xxhash/XXHashFactory;->JAVA_SAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

    if-nez v1, :cond_0

    .line 94
    const-string v1, "JavaSafe"

    invoke-static {v1}, Lnet/jpountz/xxhash/XXHashFactory;->instance(Ljava/lang/String;)Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    sput-object v1, Lnet/jpountz/xxhash/XXHashFactory;->JAVA_SAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

    .line 96
    :cond_0
    sget-object v1, Lnet/jpountz/xxhash/XXHashFactory;->JAVA_SAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unsafeInstance()Lnet/jpountz/xxhash/XXHashFactory;
    .locals 2

    const-class v0, Lnet/jpountz/xxhash/XXHashFactory;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lnet/jpountz/xxhash/XXHashFactory;->JAVA_UNSAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

    if-nez v1, :cond_0

    .line 108
    const-string v1, "JavaUnsafe"

    invoke-static {v1}, Lnet/jpountz/xxhash/XXHashFactory;->instance(Ljava/lang/String;)Lnet/jpountz/xxhash/XXHashFactory;

    move-result-object v1

    sput-object v1, Lnet/jpountz/xxhash/XXHashFactory;->JAVA_UNSAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;

    .line 110
    :cond_0
    sget-object v1, Lnet/jpountz/xxhash/XXHashFactory;->JAVA_UNSAFE_INSTANCE:Lnet/jpountz/xxhash/XXHashFactory;
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
.method public hash32()Lnet/jpountz/xxhash/XXHash32;
    .locals 1

    .line 210
    iget-object v0, p0, Lnet/jpountz/xxhash/XXHashFactory;->hash32:Lnet/jpountz/xxhash/XXHash32;

    return-object v0
.end method

.method public hash64()Lnet/jpountz/xxhash/XXHash64;
    .locals 1

    .line 219
    iget-object v0, p0, Lnet/jpountz/xxhash/XXHashFactory;->hash64:Lnet/jpountz/xxhash/XXHash64;

    return-object v0
.end method

.method public newStreamingHash32(I)Lnet/jpountz/xxhash/StreamingXXHash32;
    .locals 1

    .line 229
    iget-object v0, p0, Lnet/jpountz/xxhash/XXHashFactory;->streamingHash32Factory:Lnet/jpountz/xxhash/StreamingXXHash32$Factory;

    invoke-interface {v0, p1}, Lnet/jpountz/xxhash/StreamingXXHash32$Factory;->newStreamingHash(I)Lnet/jpountz/xxhash/StreamingXXHash32;

    move-result-object p1

    return-object p1
.end method

.method public newStreamingHash64(J)Lnet/jpountz/xxhash/StreamingXXHash64;
    .locals 1

    .line 239
    iget-object v0, p0, Lnet/jpountz/xxhash/XXHashFactory;->streamingHash64Factory:Lnet/jpountz/xxhash/StreamingXXHash64$Factory;

    invoke-interface {v0, p1, p2}, Lnet/jpountz/xxhash/StreamingXXHash64$Factory;->newStreamingHash(J)Lnet/jpountz/xxhash/StreamingXXHash64;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/jpountz/xxhash/XXHashFactory;->impl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
