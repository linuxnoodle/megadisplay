package kotlin.script.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: resolvers_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J\r\u0010\t\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\nJ\u001e\u0010\t\u001a\u00028\u00002\u0006\u0010\b\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0096\u0002¢\u0006\u0002\u0010\u000eJ\b\u0010\u000f\u001a\u00020\u0007H\u0016J\b\u0010\u0010\u001a\u00020\u0007H\u0016R\u0010\u0010\u0003\u001a\u00028\u0000X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\u0011"}, d2 = {"Lkotlin/script/dependencies/PseudoFuture;", "T", "Ljava/util/concurrent/Future;", "value", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "cancel", "", "p0", "get", "()Ljava/lang/Object;", "", "p1", "Ljava/util/concurrent/TimeUnit;", "(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;", "isCancelled", "isDone", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class PseudoFuture<T> implements Future<T> {
    private final T value;

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean p0) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    public PseudoFuture(T t) {
        this.value = t;
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.value;
    }

    @Override // java.util.concurrent.Future
    public T get(long p0, TimeUnit p1) {
        Intrinsics.checkNotNullParameter(p1, "p1");
        return this.value;
    }
}
