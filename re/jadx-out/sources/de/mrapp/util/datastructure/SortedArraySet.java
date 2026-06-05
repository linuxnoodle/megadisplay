package de.mrapp.util.datastructure;

import de.mrapp.util.Condition;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SortedArraySet.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010)\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0010\u000e\n\u0000\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\u00020\u0004B\u0007\b\u0016¢\u0006\u0002\u0010\u0005B\u0015\b\u0016\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bB\u000f\b\u0016\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bB\u0019\b\u0016\u0012\u0010\u0010\f\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\r¢\u0006\u0002\u0010\u000eB'\b\u0016\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0010\u0010\f\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\r¢\u0006\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0010\u0010\f\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\r¢\u0006\u0002\u0010\u0010J\u0015\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u00020\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J\u0015\u0010\u001f\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020#H\u0016J\u0012\u0010\f\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\rH\u0016J\u0016\u0010$\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u001cJ\u0016\u0010%\u001a\u00020\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000'H\u0016J\u000e\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016J\u0013\u0010)\u001a\u00020\u001a2\b\u0010*\u001a\u0004\u0018\u00010+H\u0096\u0002J\r\u0010,\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010-J\u0015\u0010.\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010!J\b\u0010/\u001a\u00020\nH\u0016J\u001b\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u00101\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00102J#\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u00101\u001a\u00028\u00002\u0006\u00103\u001a\u00020\u001aH\u0016¢\u0006\u0002\u00104J\u0015\u00105\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010!J\b\u00106\u001a\u00020\u001aH\u0016J\u000f\u00107\u001a\b\u0012\u0004\u0012\u00028\u00000'H\u0096\u0002J\r\u00108\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010-J\u0015\u00109\u001a\u00028\u00002\u0006\u0010 \u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010!J\r\u0010:\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010-J\r\u0010;\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010-J\u0015\u0010<\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001cJ\u0016\u0010=\u001a\u00020\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J\u0016\u0010>\u001a\u00020\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0016J#\u0010?\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u00002\u0006\u00101\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010AJ3\u0010?\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u00002\u0006\u0010B\u001a\u00020\u001a2\u0006\u00101\u001a\u00028\u00002\u0006\u0010C\u001a\u00020\u001aH\u0016¢\u0006\u0002\u0010DJ\u001b\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00102J#\u0010E\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010@\u001a\u00028\u00002\u0006\u00103\u001a\u00020\u001aH\u0016¢\u0006\u0002\u00104J\b\u0010F\u001a\u00020GH\u0016R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0012j\b\u0012\u0004\u0012\u00020\n`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006H"}, d2 = {"Lde/mrapp/util/datastructure/SortedArraySet;", "T", "Ljava/util/SortedSet;", "Ljava/util/NavigableSet;", "Ljava/io/Serializable;", "()V", "items", "", "(Ljava/util/Collection;)V", "initialCapacity", "", "(I)V", "comparator", "Ljava/util/Comparator;", "(Ljava/util/Comparator;)V", "(Ljava/util/Collection;Ljava/util/Comparator;)V", "(ILjava/util/Comparator;)V", "hashCodes", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "size", "getSize", "()I", "sortedArrayList", "Lde/mrapp/util/datastructure/SortedArrayList;", "add", "", "element", "(Ljava/lang/Object;)Z", "addAll", "elements", "ceiling", "e", "(Ljava/lang/Object;)Ljava/lang/Object;", "clear", "", "contains", "containsAll", "descendingIterator", "", "descendingSet", "equals", "other", "", "first", "()Ljava/lang/Object;", "floor", "hashCode", "headSet", "toElement", "(Ljava/lang/Object;)Ljava/util/NavigableSet;", "inclusive", "(Ljava/lang/Object;Z)Ljava/util/NavigableSet;", "higher", "isEmpty", "iterator", "last", "lower", "pollFirst", "pollLast", "remove", "removeAll", "retainAll", "subSet", "fromElement", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;", "fromInclusive", "toInclusive", "(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;", "tailSet", "toString", "", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public class SortedArraySet<T> implements SortedSet<T>, NavigableSet<T>, Serializable {
    private final HashSet<Integer> hashCodes;
    private final SortedArrayList<T> sortedArrayList;

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    public SortedArraySet(int i, Comparator<? super T> comparator) {
        this.sortedArrayList = new SortedArrayList<>(i, comparator);
        this.hashCodes = new HashSet<>(i);
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public SortedArraySet() {
        this(0, (Comparator) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SortedArraySet(Collection<? extends T> items) {
        this(0, (Comparator) null);
        Intrinsics.checkParameterIsNotNull(items, "items");
        addAll(items);
    }

    public SortedArraySet(int i) {
        this(i, (Comparator) null);
    }

    public SortedArraySet(Comparator<? super T> comparator) {
        this(0, comparator);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SortedArraySet(Collection<? extends T> items, Comparator<? super T> comparator) {
        this(0, comparator);
        Intrinsics.checkParameterIsNotNull(items, "items");
        addAll(items);
    }

    @Override // java.util.SortedSet
    public Comparator<? super T> comparator() {
        return this.sortedArrayList.comparator();
    }

    @Override // java.util.SortedSet
    public T first() {
        Condition.INSTANCE.ensureFalse(isEmpty(), "Set is empty", NoSuchElementException.class);
        return this.sortedArrayList.get(0);
    }

    @Override // java.util.SortedSet
    public T last() {
        Condition.INSTANCE.ensureFalse(isEmpty(), "Set is empty", NoSuchElementException.class);
        return this.sortedArrayList.get(r0.size() - 1);
    }

    public int getSize() {
        return this.sortedArrayList.size();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.sortedArrayList.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object element) {
        return this.hashCodes.contains(Integer.valueOf(element != null ? element.hashCode() : 0));
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable, java.util.NavigableSet
    public Iterator<T> iterator() {
        Iterator<T> it = this.sortedArrayList.iterator();
        Intrinsics.checkExpressionValueIsNotNull(it, "sortedArrayList.iterator()");
        return it;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(T element) {
        if (!this.hashCodes.add(Integer.valueOf(element != null ? element.hashCode() : 0))) {
            return false;
        }
        this.sortedArrayList.add(element);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object element) {
        if (!this.hashCodes.remove(Integer.valueOf(element != null ? element.hashCode() : 0))) {
            return false;
        }
        this.sortedArrayList.remove(element);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        Collection<? extends Object> collection = elements;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Boolean.valueOf(contains(it.next())));
        }
        Iterator<T> it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        T next = it2.next();
        while (it2.hasNext()) {
            next = (T) Boolean.valueOf(next.booleanValue() && ((Boolean) it2.next()).booleanValue());
        }
        return next.booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        Collection<? extends T> collection = elements;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Boolean.valueOf(add(it.next())));
        }
        Iterator<T> it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        T next = it2.next();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                break;
            }
            boolean zBooleanValue = ((Boolean) it2.next()).booleanValue();
            if (!next.booleanValue() || !zBooleanValue) {
                z = false;
            }
            next = (T) Boolean.valueOf(z);
        }
        return next.booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        boolean z = false;
        if (!elements.isEmpty()) {
            for (int size = size() - 1; size >= 0; size--) {
                T t = this.sortedArrayList.get(size);
                if (t != null && !elements.contains(t)) {
                    int iHashCode = t.hashCode();
                    this.sortedArrayList.remove(size);
                    this.hashCodes.remove(Integer.valueOf(iHashCode));
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        Collection<? extends Object> collection = elements;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Boolean.valueOf(remove(it.next())));
        }
        Iterator<T> it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        T next = it2.next();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                break;
            }
            boolean zBooleanValue = ((Boolean) it2.next()).booleanValue();
            if (!next.booleanValue() || !zBooleanValue) {
                z = false;
            }
            next = (T) Boolean.valueOf(z);
        }
        return next.booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.hashCodes.clear();
        this.sortedArrayList.clear();
    }

    @Override // java.util.SortedSet, java.util.NavigableSet
    public NavigableSet<T> subSet(T fromElement, T toElement) {
        return subSet(fromElement, true, toElement, false);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<T> subSet(T fromElement, boolean fromInclusive, T toElement, boolean toInclusive) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet, java.util.NavigableSet
    public NavigableSet<T> headSet(T toElement) {
        return headSet(toElement, false);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<T> headSet(T toElement, boolean inclusive) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.SortedSet, java.util.NavigableSet
    public NavigableSet<T> tailSet(T fromElement) {
        return tailSet(fromElement, true);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<T> tailSet(T fromElement, boolean inclusive) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public T lower(T e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public T floor(T e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public T higher(T e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public T ceiling(T e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public NavigableSet<T> descendingSet() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public T pollFirst() {
        if (!isEmpty()) {
            T t = (T) CollectionsKt.first((List) this.sortedArrayList);
            remove(t);
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableSet
    public T pollLast() {
        if (!isEmpty()) {
            T t = (T) CollectionsKt.last((List) this.sortedArrayList);
            remove(t);
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableSet
    public Iterator<T> descendingIterator() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        String string = this.sortedArrayList.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "sortedArrayList.toString()");
        return string;
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        return 31 + this.sortedArrayList.hashCode();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || (true ^ Intrinsics.areEqual(getClass(), other.getClass()))) {
            return false;
        }
        return Intrinsics.areEqual(this.sortedArrayList, ((SortedArraySet) other).sortedArrayList);
    }
}
