package com.google.android.gms.common.data;

import de.mrapp.util.datastructure.SortedArrayList;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.3.0 */
/* JADX INFO: loaded from: classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        SortedArrayList sortedArrayList = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sortedArrayList.add(arrayList.get(i).freeze());
        }
        return sortedArrayList;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        SortedArrayList sortedArrayList = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            sortedArrayList.add(it.next().freeze());
        }
        return sortedArrayList;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        SortedArrayList sortedArrayList = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            sortedArrayList.add(e.freeze());
        }
        return sortedArrayList;
    }
}
