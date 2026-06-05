package de.mrapp.android.util.logging;

import android.util.Log;
import de.mrapp.util.ClassUtil;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class Logger {
    private LogLevel logLevel;

    public Logger(LogLevel logLevel) {
        setLogLevel(logLevel);
    }

    public final LogLevel getLogLevel() {
        return this.logLevel;
    }

    public final void setLogLevel(LogLevel logLevel) {
        Condition.INSTANCE.ensureNotNull(logLevel, "The log level may not be null");
        this.logLevel = logLevel;
    }

    public final void logVerbose(Class<?> cls, String str) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        if (LogLevel.VERBOSE.getRank() >= getLogLevel().getRank()) {
            Log.v(ClassUtil.INSTANCE.getTruncatedName(cls), str);
        }
    }

    public final void logVerbose(Class<?> cls, String str, Throwable th) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        Condition.INSTANCE.ensureNotNull(th, "The cause may not be null");
        if (LogLevel.VERBOSE.getRank() >= getLogLevel().getRank()) {
            Log.v(ClassUtil.INSTANCE.getTruncatedName(cls), str, th);
        }
    }

    public final void logDebug(Class<?> cls, String str) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        if (LogLevel.DEBUG.getRank() >= getLogLevel().getRank()) {
            Log.d(ClassUtil.INSTANCE.getTruncatedName(cls), str);
        }
    }

    public final void logDebug(Class<?> cls, String str, Throwable th) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        Condition.INSTANCE.ensureNotNull(th, "The cause may not be null");
        if (LogLevel.DEBUG.getRank() >= getLogLevel().getRank()) {
            Log.d(ClassUtil.INSTANCE.getTruncatedName(cls), str, th);
        }
    }

    public final void logInfo(Class<?> cls, String str) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        if (LogLevel.INFO.getRank() >= getLogLevel().getRank()) {
            Log.i(ClassUtil.INSTANCE.getTruncatedName(cls), str);
        }
    }

    public final void logInfo(Class<?> cls, String str, Throwable th) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        Condition.INSTANCE.ensureNotNull(th, "The cause may not be null");
        if (LogLevel.INFO.getRank() >= getLogLevel().getRank()) {
            Log.i(ClassUtil.INSTANCE.getTruncatedName(cls), str, th);
        }
    }

    public final void logWarn(Class<?> cls, String str) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        if (LogLevel.WARN.getRank() >= getLogLevel().getRank()) {
            Log.w(ClassUtil.INSTANCE.getTruncatedName(cls), str);
        }
    }

    public final void logWarn(Class<?> cls, String str, Throwable th) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        Condition.INSTANCE.ensureNotNull(th, "The cause may not be null");
        if (LogLevel.WARN.getRank() >= getLogLevel().getRank()) {
            Log.w(ClassUtil.INSTANCE.getTruncatedName(cls), str, th);
        }
    }

    public final void logError(Class<?> cls, String str) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        if (LogLevel.ERROR.getRank() >= getLogLevel().getRank()) {
            Log.e(ClassUtil.INSTANCE.getTruncatedName(cls), str);
        }
    }

    public final void logError(Class<?> cls, String str, Throwable th) {
        Condition.INSTANCE.ensureNotNull(cls, "The tag may not be null");
        Condition.INSTANCE.ensureNotNull(str, "The message may not be null");
        Condition.INSTANCE.ensureNotEmpty(str, "The message may not be empty");
        Condition.INSTANCE.ensureNotNull(th, "The cause may not be null");
        if (LogLevel.ERROR.getRank() >= getLogLevel().getRank()) {
            Log.e(ClassUtil.INSTANCE.getTruncatedName(cls), str, th);
        }
    }
}
