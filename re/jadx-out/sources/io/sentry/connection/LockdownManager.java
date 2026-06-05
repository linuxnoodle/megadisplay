package io.sentry.connection;

import io.sentry.time.Clock;
import io.sentry.time.SystemClock;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class LockdownManager {
    private long baseLockdownTime;
    private final Clock clock;
    private Date lockdownStartTime;
    private long lockdownTime;
    private long maxLockdownTime;
    public static final long DEFAULT_MAX_LOCKDOWN_TIME = TimeUnit.MINUTES.toMillis(5);
    public static final long DEFAULT_BASE_LOCKDOWN_TIME = TimeUnit.SECONDS.toMillis(1);

    public LockdownManager() {
        this(new SystemClock());
    }

    public LockdownManager(Clock clock) {
        this.maxLockdownTime = DEFAULT_MAX_LOCKDOWN_TIME;
        this.baseLockdownTime = DEFAULT_BASE_LOCKDOWN_TIME;
        this.lockdownTime = 0L;
        this.lockdownStartTime = null;
        this.clock = clock;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean isLockedDown() {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.Date r0 = r5.lockdownStartTime     // Catch: java.lang.Throwable -> L1d
            if (r0 == 0) goto L1a
            io.sentry.time.Clock r0 = r5.clock     // Catch: java.lang.Throwable -> L1d
            long r0 = r0.millis()     // Catch: java.lang.Throwable -> L1d
            java.util.Date r2 = r5.lockdownStartTime     // Catch: java.lang.Throwable -> L1d
            long r2 = r2.getTime()     // Catch: java.lang.Throwable -> L1d
            long r0 = r0 - r2
            long r2 = r5.lockdownTime     // Catch: java.lang.Throwable -> L1d
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L1a
            r0 = 1
            goto L1b
        L1a:
            r0 = 0
        L1b:
            monitor-exit(r5)
            return r0
        L1d:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.connection.LockdownManager.isLockedDown():boolean");
    }

    public synchronized void unlock() {
        this.lockdownTime = 0L;
        this.lockdownStartTime = null;
    }

    public synchronized boolean lockdown(ConnectionException connectionException) {
        if (isLockedDown()) {
            return false;
        }
        if (connectionException != null && connectionException.getRecommendedLockdownTime() != null) {
            this.lockdownTime = connectionException.getRecommendedLockdownTime().longValue();
        } else {
            long j = this.lockdownTime;
            if (j != 0) {
                this.lockdownTime = j * 2;
            } else {
                this.lockdownTime = this.baseLockdownTime;
            }
        }
        this.lockdownTime = Math.min(this.maxLockdownTime, this.lockdownTime);
        this.lockdownStartTime = this.clock.date();
        return true;
    }

    public synchronized void setBaseLockdownTime(long j) {
        this.baseLockdownTime = j;
    }

    public synchronized void setMaxLockdownTime(long j) {
        this.maxLockdownTime = j;
    }
}
