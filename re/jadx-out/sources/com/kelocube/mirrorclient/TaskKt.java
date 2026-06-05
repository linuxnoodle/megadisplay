package com.kelocube.mirrorclient;

import android.os.Handler;
import androidx.constraintlayout.widget.ConstraintLayout;
import io.sentry.DefaultSentryClientFactory;
import java.util.Date;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: Task.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0004\u0012\u00020\t0\u0007¨\u0006\n"}, d2 = {"runTask", "", "handler", "Landroid/os/Handler;", DefaultSentryClientFactory.TIMEOUT_OPTION, "", "task", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "app_release"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class TaskKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean runTask(Handler handler, long j, final Function1<? super Function0<Unit>, Unit> task) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        Intrinsics.checkNotNullParameter(task, "task");
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ReentrantLock reentrantLock2 = reentrantLock;
        reentrantLock2.lock();
        try {
            handler.post(new Runnable() { // from class: com.kelocube.mirrorclient.TaskKt$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    TaskKt.runTask$lambda$3$lambda$1(task, reentrantLock, booleanRef, conditionNewCondition, objectRef);
                }
            });
            Date date = new Date(System.currentTimeMillis() + j);
            while (booleanRef.element) {
                if (!conditionNewCondition.awaitUntil(date)) {
                    reentrantLock2.unlock();
                    return false;
                }
            }
            Throwable th = (Throwable) objectRef.element;
            if (th == null) {
                return true;
            }
            throw th;
        } finally {
            reentrantLock2.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runTask$lambda$3$lambda$1(Function1 task, final ReentrantLock lock, final Ref.BooleanRef waiting, final Condition condition, Ref.ObjectRef exception) {
        Intrinsics.checkNotNullParameter(task, "$task");
        Intrinsics.checkNotNullParameter(lock, "$lock");
        Intrinsics.checkNotNullParameter(waiting, "$waiting");
        Intrinsics.checkNotNullParameter(exception, "$exception");
        try {
            task.invoke(new Function0<Unit>() { // from class: com.kelocube.mirrorclient.TaskKt$runTask$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ReentrantLock reentrantLock = lock;
                    Ref.BooleanRef booleanRef = waiting;
                    Condition condition2 = condition;
                    reentrantLock.lock();
                    try {
                        if (booleanRef.element) {
                            booleanRef.element = false;
                            condition2.signal();
                        }
                        Unit unit = Unit.INSTANCE;
                    } finally {
                        reentrantLock.unlock();
                    }
                }
            });
        } catch (Throwable th) {
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (waiting.element) {
                    exception.element = th;
                    waiting.element = false;
                    condition.signal();
                }
                Unit unit = Unit.INSTANCE;
            } finally {
                reentrantLock.unlock();
            }
        }
    }
}
