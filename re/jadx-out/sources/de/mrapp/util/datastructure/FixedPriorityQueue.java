package de.mrapp.util.datastructure;

import de.mrapp.util.Condition;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FixedPriorityQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B1\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0012\b\u0002\u0010\u0007\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\b¢\u0006\u0002\u0010\tB#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\b\u0002\u0010\u0007\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\b¢\u0006\u0002\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lde/mrapp/util/datastructure/FixedPriorityQueue;", "T", "Ljava/util/PriorityQueue;", "maxSize", "", "items", "", "comparator", "Ljava/util/Comparator;", "(ILjava/util/Collection;Ljava/util/Comparator;)V", "(ILjava/util/Comparator;)V", "compare", "first", "second", "(Ljava/lang/Object;Ljava/lang/Object;)I", "offer", "", "e", "(Ljava/lang/Object;)Z", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class FixedPriorityQueue<T> extends PriorityQueue<T> {
    private final int maxSize;

    /* JADX WARN: Multi-variable type inference failed */
    public FixedPriorityQueue(int i) {
        this(i, null, 2, 0 == true ? 1 : 0);
    }

    public FixedPriorityQueue(int i, Collection<? extends T> collection) {
        this(i, collection, null, 4, null);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    @Override // java.util.PriorityQueue, java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ FixedPriorityQueue(int i, Comparator comparator, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            comparator = null;
        }
        this(i, comparator);
    }

    public FixedPriorityQueue(int i, Comparator<? super T> comparator) {
        super(i, comparator);
        this.maxSize = i;
        Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum size must be at least 1");
    }

    private final int compare(T first, T second) {
        Comparator<? super T> comparator = comparator();
        if (comparator != null) {
            return comparator.compare(first, second);
        }
        if (first != null) {
            return ((Comparable) first).compareTo(second);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Comparable<T>");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FixedPriorityQueue(int i, Collection<? extends T> items, Comparator<? super T> comparator) {
        this(i, comparator);
        Intrinsics.checkParameterIsNotNull(items, "items");
        Iterator<T> it = items.iterator();
        while (it.hasNext()) {
            offer(it.next());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ FixedPriorityQueue(int i, Collection collection, Comparator comparator, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 4) != 0) {
            comparator = null;
        }
        this(i, collection, comparator);
    }

    @Override // java.util.PriorityQueue, java.util.Queue
    public boolean offer(T e) {
        if (size() >= this.maxSize) {
            if (compare(e, peek()) <= 0) {
                return false;
            }
            poll();
            return super.offer(e);
        }
        return super.offer(e);
    }
}
