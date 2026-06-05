.class public Lde/mrapp/android/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private logLevel:Lde/mrapp/android/util/logging/LogLevel;


# direct methods
.method public constructor <init>(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/logging/Logger;->setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V

    return-void
.end method


# virtual methods
.method public final getLogLevel()Lde/mrapp/android/util/logging/LogLevel;
    .locals 1

    .line 56
    iget-object v0, p0, Lde/mrapp/android/util/logging/Logger;->logLevel:Lde/mrapp/android/util/logging/LogLevel;

    return-object v0
.end method

.method public final logDebug(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->DEBUG:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 133
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logDebug(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 152
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The cause may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->DEBUG:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 158
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final logError(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 263
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->ERROR:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 268
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logError(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 287
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The cause may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->ERROR:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 293
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final logInfo(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->INFO:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 178
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logInfo(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 197
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The cause may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->INFO:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 203
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final logVerbose(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->VERBOSE:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 88
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logVerbose(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 107
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The cause may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->VERBOSE:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 113
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final logWarn(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 218
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->WARN:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 223
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logWarn(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 242
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The tag may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The message may not be empty"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The cause may not be null"

    invoke-virtual {v0, p3, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->WARN:Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v0

    invoke-virtual {p0}, Lde/mrapp/android/util/logging/Logger;->getLogLevel()Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/util/logging/LogLevel;->getRank()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 248
    sget-object v0, Lde/mrapp/util/ClassUtil;->INSTANCE:Lde/mrapp/util/ClassUtil;

    invoke-virtual {v0, p1}, Lde/mrapp/util/ClassUtil;->getTruncatedName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final setLogLevel(Lde/mrapp/android/util/logging/LogLevel;)V
    .locals 2

    .line 68
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The log level may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lde/mrapp/android/util/logging/Logger;->logLevel:Lde/mrapp/android/util/logging/LogLevel;

    return-void
.end method
