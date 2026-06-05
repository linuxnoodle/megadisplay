package com.mikepenz.fastadapter;

import com.mikepenz.fastadapter.ISubItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;

/* JADX INFO: compiled from: MutableSubItemList.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\t\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0010+\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0004\u0018\u0000*\f\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B!\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0002\u0010\u0007J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0010\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\r2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\u0016\u0010\u0017\u001a\u00020\u00112\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0014H\u0016J\u0016\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0003¢\u0006\u0002\u0010\u0013J\u0017\u0010\u001c\u001a\u00020\u00112\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0096\u0001J\u0016\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\rH\u0096\u0003¢\u0006\u0002\u0010\u001eJ\u0016\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010 J\t\u0010!\u001a\u00020\u0011H\u0096\u0001J\u000f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000#H\u0096\u0003J\u0016\u0010$\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0002\u0010 J\u000f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000&H\u0096\u0001J\u0017\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000&2\u0006\u0010\u0015\u001a\u00020\rH\u0096\u0001J\u0015\u0010'\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0013J\u0016\u0010(\u001a\u00020\u00112\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0016J\u0015\u0010)\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u001eJ\u0017\u0010*\u001a\u00020\u00112\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019H\u0096\u0001J\u001e\u0010+\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010,J\u0014\u0010-\u001a\u00020\u00142\f\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000/J\u001f\u00100\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u00101\u001a\u00020\r2\u0006\u00102\u001a\u00020\rH\u0096\u0001R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u00063"}, d2 = {"Lcom/mikepenz/fastadapter/MutableSubItemList;", "E", "Lcom/mikepenz/fastadapter/ISubItem;", "", "parent", "Lcom/mikepenz/fastadapter/IParentItem;", "list", "(Lcom/mikepenz/fastadapter/IParentItem;Ljava/util/List;)V", "getList", "()Ljava/util/List;", "getParent", "()Lcom/mikepenz/fastadapter/IParentItem;", "size", "", "getSize", "()I", "add", "", "element", "(Lcom/mikepenz/fastadapter/ISubItem;)Z", "", "index", "(ILcom/mikepenz/fastadapter/ISubItem;)V", "addAll", "elements", "", "clear", "contains", "containsAll", "get", "(I)Lcom/mikepenz/fastadapter/ISubItem;", "indexOf", "(Lcom/mikepenz/fastadapter/ISubItem;)I", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "remove", "removeAll", "removeAt", "retainAll", "set", "(ILcom/mikepenz/fastadapter/ISubItem;)Lcom/mikepenz/fastadapter/ISubItem;", "setNewList", "newList", "", "subList", "fromIndex", "toIndex", "fastadapter"}, k = 1, mv = {1, 1, 16})
public final class MutableSubItemList<E extends ISubItem<?>> implements List<E>, KMutableList {
    private final List<E> list;
    private final IParentItem<?> parent;

    public boolean contains(E element) {
        Intrinsics.checkParameterIsNotNull(element, "element");
        return this.list.contains(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        return this.list.containsAll(elements);
    }

    @Override // java.util.List
    public E get(int index) {
        E e = this.list.get(index);
        Intrinsics.checkExpressionValueIsNotNull(e, "get(...)");
        return e;
    }

    public int getSize() {
        return this.list.size();
    }

    public int indexOf(E element) {
        Intrinsics.checkParameterIsNotNull(element, "element");
        return this.list.indexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return this.list.iterator();
    }

    public int lastIndexOf(E element) {
        Intrinsics.checkParameterIsNotNull(element, "element");
        return this.list.lastIndexOf(element);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return this.list.listIterator();
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int index) {
        return this.list.listIterator(index);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        return this.list.retainAll(elements);
    }

    @Override // java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        return this.list.subList(fromIndex, toIndex);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    public MutableSubItemList(IParentItem<?> parent, List<E> list) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Intrinsics.checkParameterIsNotNull(list, "list");
        this.parent = parent;
        this.list = list;
    }

    public /* synthetic */ MutableSubItemList(IParentItem iParentItem, ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(iParentItem, (i & 2) != 0 ? new ArrayList() : arrayList);
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ISubItem) {
            return contains((ISubItem) obj);
        }
        return false;
    }

    public final List<E> getList() {
        return this.list;
    }

    public final IParentItem<?> getParent() {
        return this.parent;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ISubItem) {
            return indexOf((ISubItem) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ISubItem) {
            return lastIndexOf((ISubItem) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ E remove(int i) {
        return (E) remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof ISubItem) {
            return remove((ISubItem) obj);
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public boolean remove(E element) {
        Intrinsics.checkParameterIsNotNull(element, "element");
        boolean zRemove = this.list.remove(element);
        if (zRemove) {
            element.setParent(null);
        }
        return zRemove;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: removeAt, reason: merged with bridge method [inline-methods] */
    public E remove(int index) {
        E eRemove = this.list.remove(index);
        eRemove.setParent(null);
        return eRemove;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        ArrayList arrayList = new ArrayList();
        for (Object obj : elements) {
            if (this.list.contains((ISubItem) obj)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ISubItem) it.next()).setParent(null);
        }
        return this.list.removeAll(elements);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E element) {
        Intrinsics.checkParameterIsNotNull(element, "element");
        element.setParent(this.parent);
        return this.list.add(element);
    }

    @Override // java.util.List
    public void add(int index, E element) {
        Intrinsics.checkParameterIsNotNull(element, "element");
        element.setParent(this.parent);
        this.list.add(index, element);
    }

    @Override // java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            ((ISubItem) it.next()).setParent(this.parent);
        }
        return this.list.addAll(index, elements);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            ((ISubItem) it.next()).setParent(this.parent);
        }
        return this.list.addAll(elements);
    }

    @Override // java.util.List
    public E set(int index, E element) {
        Intrinsics.checkParameterIsNotNull(element, "element");
        element.setParent(this.parent);
        E e = this.list.set(index, element);
        e.setParent(null);
        return e;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        Iterator<T> it = this.list.iterator();
        while (it.hasNext()) {
            ((ISubItem) it.next()).setParent(null);
        }
        this.list.clear();
    }

    public final void setNewList(List<? extends E> newList) {
        Intrinsics.checkParameterIsNotNull(newList, "newList");
        clear();
        addAll(newList);
    }
}
