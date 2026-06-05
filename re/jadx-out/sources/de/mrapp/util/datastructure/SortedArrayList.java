package de.mrapp.util.datastructure;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SortedArrayList.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u0015\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0002\u0010\u0006B\u000f\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB\u0019\b\u0016\u0012\u0010\u0010\n\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\u000b¢\u0006\u0002\u0010\fB'\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0010\u0010\n\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\u000b¢\u0006\u0002\u0010\rB\u001f\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0010\u0010\n\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\u000b¢\u0006\u0002\u0010\u000eJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0012J\u001d\u0010\u000f\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0015J\u001e\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\b2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0016J\u0016\u0010\u0016\u001a\u00020\u00102\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0016J\u0010\u0010\n\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\u000bJ\u0016\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0012J\u0015\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0012J\u001a\u0010\u001d\u001a\u00020\u00132\u0010\u0010\u001e\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\u000bH\u0016R\u0018\u0010\n\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lde/mrapp/util/datastructure/SortedArrayList;", "T", "Ljava/util/ArrayList;", "()V", "items", "", "(Ljava/util/Collection;)V", "initialCapacity", "", "(I)V", "comparator", "Ljava/util/Comparator;", "(Ljava/util/Comparator;)V", "(Ljava/util/Collection;Ljava/util/Comparator;)V", "(ILjava/util/Comparator;)V", "add", "", "element", "(Ljava/lang/Object;)Z", "", "index", "(ILjava/lang/Object;)V", "addAll", "elements", "contains", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "remove", "sort", "c", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public class SortedArrayList<T> extends ArrayList<T> {
    private Comparator<? super T> comparator;
    private final int initialCapacity;

    public /* bridge */ int getSize() {
        return super.size();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ T remove(int i) {
        return (T) removeAt(i);
    }

    public /* bridge */ Object removeAt(int i) {
        return super.remove(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    public SortedArrayList(int i, Comparator<? super T> comparator) {
        super(i);
        this.initialCapacity = i;
        this.comparator = comparator;
    }

    public SortedArrayList() {
        this(0, (Comparator) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SortedArrayList(Collection<? extends T> items) {
        this(0, (Comparator) null);
        Intrinsics.checkParameterIsNotNull(items, "items");
        addAll(items);
    }

    public SortedArrayList(int i) {
        this(i, (Comparator) null);
    }

    public SortedArrayList(Comparator<? super T> comparator) {
        this(0, comparator);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SortedArrayList(Collection<? extends T> items, Comparator<? super T> comparator) {
        this(0, comparator);
        Intrinsics.checkParameterIsNotNull(items, "items");
        addAll(items);
    }

    public final Comparator<? super T> comparator() {
        return this.comparator;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T element) {
        int iBinarySearch = Collections.binarySearch(this, element, this.comparator);
        if (iBinarySearch < 0) {
            iBinarySearch = ~iBinarySearch;
        }
        super.add(iBinarySearch, element);
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int index, T element) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends T> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        if (!(!elements.isEmpty())) {
            return false;
        }
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends T> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        int iLastIndexOf = lastIndexOf(element);
        if (iLastIndexOf != -1) {
            for (int i = iLastIndexOf - 1; i >= 0; i--) {
                if (!Intrinsics.areEqual(get(i), element)) {
                    return i + 1;
                }
            }
        }
        return iLastIndexOf;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        int iBinarySearch = Collections.binarySearch(this, element, this.comparator);
        if (iBinarySearch >= 0) {
            return iBinarySearch;
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return lastIndexOf(element) != -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.List
    public void sort(Comparator<? super T> c) {
        this.comparator = c;
        super.sort(c);
    }
}
