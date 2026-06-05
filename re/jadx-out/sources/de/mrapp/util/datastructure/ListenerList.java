package de.mrapp.util.datastructure;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import de.mrapp.util.Condition;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: ListenerList.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001$B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002J\u0006\u0010\u0014\u001a\u00020\u0012J#\u0010\u0015\u001a\u00020\u000e2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000f\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u0016J!\u0010\u0017\u001a\u00020\u000e2\b\u0010\u0018\u001a\u0004\u0018\u00018\u00002\b\u0010\u0019\u001a\u0004\u0018\u00018\u0000H\u0002¢\u0006\u0002\u0010\u001aJ\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cJ\u0006\u0010\u001d\u001a\u00020\u000eJ\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0096\u0002J\u0013\u0010 \u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0002\u0010\u0010J\u0014\u0010!\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002J\u0006\u0010\"\u001a\u00020#R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lde/mrapp/util/datastructure/ListenerList;", "T", "", "()V", "compareMethod", "Lde/mrapp/util/datastructure/ListenerList$CompareMethod;", "(Lde/mrapp/util/datastructure/ListenerList$CompareMethod;)V", "getCompareMethod", "()Lde/mrapp/util/datastructure/ListenerList$CompareMethod;", "listeners", "", "lock", "", "add", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "(Ljava/lang/Object;)Z", "addAll", "", "iterable", "clear", "contains", "(Ljava/lang/Iterable;Ljava/lang/Object;)Z", "equals", "listener1", "listener2", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "getAll", "", "isEmpty", "iterator", "", "remove", "removeAll", "size", "", "CompareMethod", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class ListenerList<T> implements Iterable<T>, KMappedMarker {
    private final CompareMethod compareMethod;
    private List<? extends T> listeners;
    private final Object lock;

    /* JADX INFO: compiled from: ListenerList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lde/mrapp/util/datastructure/ListenerList$CompareMethod;", "", "(Ljava/lang/String;I)V", "EQUALITY", "IDENTITY", "JavaUtil"}, k = 1, mv = {1, 1, 16})
    public enum CompareMethod {
        EQUALITY,
        IDENTITY
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CompareMethod.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[CompareMethod.EQUALITY.ordinal()] = 1;
            iArr[CompareMethod.IDENTITY.ordinal()] = 2;
        }
    }

    public ListenerList(CompareMethod compareMethod) {
        Intrinsics.checkParameterIsNotNull(compareMethod, "compareMethod");
        this.compareMethod = compareMethod;
        this.lock = new Object();
        this.listeners = CollectionsKt.emptyList();
    }

    public final CompareMethod getCompareMethod() {
        return this.compareMethod;
    }

    private final boolean contains(Iterable<? extends T> iterable, T listener) {
        T next;
        Iterator<? extends T> it = iterable.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (equals(next, listener)) {
                break;
            }
        }
        return next != null;
    }

    private final boolean equals(T listener1, T listener2) {
        if (listener1 == null) {
            if (listener2 != null) {
                return false;
            }
        } else {
            if (listener2 == null) {
                return false;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[this.compareMethod.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                if (listener1 != listener2) {
                    return false;
                }
            } else if (!Intrinsics.areEqual(listener1, listener2)) {
                return false;
            }
        }
        return true;
    }

    public ListenerList() {
        this(CompareMethod.EQUALITY);
    }

    public final boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.lock) {
            zIsEmpty = this.listeners.isEmpty();
        }
        return zIsEmpty;
    }

    public final int size() {
        int size;
        synchronized (this.lock) {
            size = this.listeners.size();
        }
        return size;
    }

    public final boolean add(T listener) {
        synchronized (this.lock) {
            if (!contains(this.listeners, listener)) {
                LinkedList linkedList = new LinkedList(this.listeners);
                linkedList.add(listener);
                this.listeners = linkedList;
                return true;
            }
            Unit unit = Unit.INSTANCE;
            return false;
        }
    }

    public final void addAll(Iterable<? extends T> iterable) {
        boolean zContains;
        Intrinsics.checkParameterIsNotNull(iterable, "iterable");
        synchronized (this.lock) {
            LinkedList linkedList = null;
            for (T t : iterable) {
                Condition.INSTANCE.ensureNotNull(t, "The listener may not be null");
                if (linkedList == null) {
                    zContains = contains(this.listeners, t);
                } else {
                    zContains = contains(linkedList, t);
                }
                if (!zContains) {
                    if (linkedList == null) {
                        linkedList = new LinkedList(this.listeners);
                    }
                    linkedList.add(t);
                }
            }
            if (linkedList != null) {
                this.listeners = linkedList;
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean remove(T listener) {
        synchronized (this.lock) {
            if (!contains(this.listeners, listener)) {
                return false;
            }
            LinkedList linkedList = new LinkedList();
            List<? extends T> list = this.listeners;
            ArrayList arrayList = new ArrayList();
            for (T t : list) {
                if (true ^ equals(t, listener)) {
                    arrayList.add(t);
                }
            }
            Iterator<T> it = arrayList.iterator();
            while (it.hasNext()) {
                linkedList.add(it.next());
            }
            this.listeners = linkedList;
            return true;
        }
    }

    public final void removeAll(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "iterable");
        synchronized (this.lock) {
            LinkedList linkedList = null;
            for (T t : this.listeners) {
                if (!contains(iterable, t)) {
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                    }
                    linkedList.add(t);
                }
            }
            if (linkedList != null) {
                this.listeners = linkedList;
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void clear() {
        synchronized (this.lock) {
            this.listeners = CollectionsKt.emptyList();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Collection<T> getAll() {
        List listUnmodifiableCollection;
        synchronized (this.lock) {
            if (isEmpty()) {
                listUnmodifiableCollection = CollectionsKt.emptyList();
            } else {
                listUnmodifiableCollection = Collections.unmodifiableCollection(new LinkedList(this.listeners));
                Intrinsics.checkExpressionValueIsNotNull(listUnmodifiableCollection, "Collections.unmodifiable…nkedList(this.listeners))");
            }
        }
        return listUnmodifiableCollection;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        Iterator<? extends T> it;
        synchronized (this.lock) {
            it = this.listeners.iterator();
        }
        return it;
    }
}
