package de.mrapp.util.datastructure;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Triple.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u001b*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u00020\u0004:\u0001\u001bB#\u0012\b\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\b\u0010\u0006\u001a\u0004\u0018\u00018\u0001\u0012\b\u0010\u0007\u001a\u0004\u0018\u00018\u0002¢\u0006\u0002\u0010\bJ\u0010\u0010\u000e\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u000f\u001a\u0004\u0018\u00018\u0001HÆ\u0003¢\u0006\u0002\u0010\nJ\u0010\u0010\u0010\u001a\u0004\u0018\u00018\u0002HÆ\u0003¢\u0006\u0002\u0010\nJD\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u00012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00018\u0002HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0006\u001a\u0004\u0018\u00018\u0001¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\f\u0010\nR\u0015\u0010\u0007\u001a\u0004\u0018\u00018\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\n¨\u0006\u001c"}, d2 = {"Lde/mrapp/util/datastructure/Triple;", "F", "S", "T", "Ljava/io/Serializable;", "first", "second", "third", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "getFirst", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getSecond", "getThird", "component1", "component2", "component3", "copy", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lde/mrapp/util/datastructure/Triple;", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final /* data */ class Triple<F, S, T> implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final F first;
    private final S second;
    private final T third;

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

    public final F component1() {
        return this.first;
    }

    public final S component2() {
        return this.second;
    }

    public final T component3() {
        return this.third;
    }

    public final Triple<F, S, T> copy(F first, S second, T third) {
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
        F f = this.first;
        int iHashCode = (f != null ? f.hashCode() : 0) * 31;
        S s = this.second;
        int iHashCode2 = (iHashCode + (s != null ? s.hashCode() : 0)) * 31;
        T t = this.third;
        return iHashCode2 + (t != null ? t.hashCode() : 0);
    }

    public String toString() {
        return "Triple(first=" + this.first + ", second=" + this.second + ", third=" + this.third + ")";
    }

    public Triple(F f, S s, T t) {
        this.first = f;
        this.second = s;
        this.third = t;
    }

    public final F getFirst() {
        return this.first;
    }

    public final S getSecond() {
        return this.second;
    }

    public final T getThird() {
        return this.third;
    }

    /* JADX INFO: compiled from: Triple.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JG\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0004\"\u0004\b\u0003\u0010\u0005\"\u0004\b\u0004\u0010\u0006\"\u0004\b\u0005\u0010\u00072\u0006\u0010\b\u001a\u0002H\u00052\u0006\u0010\t\u001a\u0002H\u00062\u0006\u0010\n\u001a\u0002H\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lde/mrapp/util/datastructure/Triple$Companion;", "", "()V", "create", "Lde/mrapp/util/datastructure/Triple;", "F", "S", "T", "first", "second", "third", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lde/mrapp/util/datastructure/Triple;", "JavaUtil"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <F, S, T> Triple<F, S, T> create(F first, S second, T third) {
            return new Triple<>(first, second, third);
        }
    }
}
