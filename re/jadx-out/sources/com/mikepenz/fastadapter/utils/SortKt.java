package com.mikepenz.fastadapter.utils;

import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Sort.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a8\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u001e\u0010\u0004\u001a\u001a\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0018\u00010\u0005j\f\u0012\u0006\b\u0000\u0012\u0002H\u0002\u0018\u0001`\u0006H\u0000¨\u0006\u0007"}, d2 = {"trySortWith", "", "T", "", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "fastadapter"}, k = 2, mv = {1, 1, 16})
public final class SortKt {
    public static final <T> void trySortWith(List<T> trySortWith, Comparator<? super T> comparator) {
        Intrinsics.checkParameterIsNotNull(trySortWith, "$this$trySortWith");
        if (comparator != null) {
            CollectionsKt.sortWith(trySortWith, comparator);
        }
    }
}
