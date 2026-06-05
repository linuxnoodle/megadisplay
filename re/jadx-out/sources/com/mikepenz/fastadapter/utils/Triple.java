package com.mikepenz.fastadapter.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Triple.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u00020\u0004B!\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\b\u0010\u0006\u001a\u0004\u0018\u00018\u0001\u0012\b\u0010\u0007\u001a\u0004\u0018\u00018\u0002¢\u0006\u0002\u0010\bJ\u000e\u0010\u000e\u001a\u00028\u0000HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u000f\u001a\u0004\u0018\u00018\u0001HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0010\u001a\u0004\u0018\u00018\u0002HÆ\u0003¢\u0006\u0002\u0010\nJB\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00028\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u00012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00018\u0002HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0013\u0010\u0005\u001a\u00028\u0000¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0006\u001a\u0004\u0018\u00018\u0001¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u0015\u0010\u0007\u001a\u0004\u0018\u00018\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/mikepenz/fastadapter/utils/Triple;", "T", "U", "V", "", "first", "second", "third", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "getFirst", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getSecond", "getThird", "component1", "component2", "component3", "copy", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/mikepenz/fastadapter/utils/Triple;", "equals", "", "other", "hashCode", "", "toString", "", "fastadapter"}, k = 1, mv = {1, 1, 16})
public final /* data */ class Triple<T, U, V> {
    private final T first;
    private final U second;
    private final V third;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Triple copy$default(Triple triple, Object obj, Object obj2, Object obj3, int i, Object obj4) {
        if ((i & 1) != 0) {
            obj = triple.first;
        }
        if ((i & 2) != 0) {
            obj2 = triple.second;
        }
        if ((i & 4) != 0) {
            obj3 = triple.third;
        }
        return triple.copy(obj, obj2, obj3);
    }

    public final T component1() {
        return this.first;
    }

    public final U component2() {
        return this.second;
    }

    public final V component3() {
        return this.third;
    }

    public final Triple<T, U, V> copy(T first, U second, V third) {
        return new Triple<>(first, second, third);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Triple)) {
            return false;
        }
        Triple triple = (Triple) other;
        return Intrinsics.areEqual(this.first, triple.first) && Intrinsics.areEqual(this.second, triple.second) && Intrinsics.areEqual(this.third, triple.third);
    }

    public int hashCode() {
        T t = this.first;
        int iHashCode = (t != null ? t.hashCode() : 0) * 31;
        U u = this.second;
        int iHashCode2 = (iHashCode + (u != null ? u.hashCode() : 0)) * 31;
        V v = this.third;
        return iHashCode2 + (v != null ? v.hashCode() : 0);
    }

    public String toString() {
        return "Triple(first=" + this.first + ", second=" + this.second + ", third=" + this.third + ")";
    }

    public Triple(T t, U u, V v) {
        this.first = t;
        this.second = u;
        this.third = v;
    }

    public final T getFirst() {
        return this.first;
    }

    public final U getSecond() {
        return this.second;
    }

    public final V getThird() {
        return this.third;
    }
}
