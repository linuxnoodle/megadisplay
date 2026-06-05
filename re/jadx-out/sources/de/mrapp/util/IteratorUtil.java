package de.mrapp.util;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: IteratorUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004J.\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\t\"\u0004\b\u0000\u0010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00050\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00050\tJ6\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\u0004\"\u0004\b\u0000\u0010\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00042\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u000e0\rJ6\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\t\"\u0004\b\u0000\u0010\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00050\t2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u00020\u000e0\rJ:\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0004\"\u0004\b\u0000\u0010\u0013\"\u0004\b\u0001\u0010\u00122\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00042\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\rJ:\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00120\t\"\u0004\b\u0000\u0010\u0013\"\u0004\b\u0001\u0010\u00122\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00130\t2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\rJB\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00170\u0004\"\u0004\b\u0000\u0010\u0018\"\u0004\b\u0001\u0010\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00180\u00042\u0018\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u0002H\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\t0\rJB\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00170\t\"\u0004\b\u0000\u0010\u0018\"\u0004\b\u0001\u0010\u00172\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u00180\t2\u0018\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u0002H\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\t0\rJ\"\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\b\u0000\u0010\u00052\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\u0004J\"\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00050\t\"\u0004\b\u0000\u0010\u00052\u000e\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00050\t¨\u0006\u001f"}, d2 = {"Lde/mrapp/util/IteratorUtil;", "", "()V", "createConcatenatedIterable", "", "T", "first", "second", "createConcatenatedIterator", "", "createFilteredIterable", "iterable", "filter", "Lkotlin/Function1;", "", "createFilteredIterator", "iterator", "createMappedIterable", "O", "I", "mapper", "createMappedIterator", "createNestedIterable", "T2", "T1", "outerIterable", "factory", "createNestedIterator", "outerIterator", "createNotNullIterable", "createNotNullIterator", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class IteratorUtil {
    public static final IteratorUtil INSTANCE = new IteratorUtil();

    private IteratorUtil() {
    }

    public final <I, O> Iterable<O> createMappedIterable(Iterable<? extends I> iterable, Function1<? super I, ? extends O> mapper) {
        Intrinsics.checkParameterIsNotNull(iterable, "iterable");
        Intrinsics.checkParameterIsNotNull(mapper, "mapper");
        Condition.INSTANCE.ensureNotNull(iterable, "The iterable may not be null");
        Condition.INSTANCE.ensureNotNull(mapper, "The mapper may not be null");
        return new IteratorUtil$createMappedIterable$$inlined$Iterable$1(iterable, mapper);
    }

    public final <I, O> Iterator<O> createMappedIterator(Iterator<? extends I> iterator, Function1<? super I, ? extends O> mapper) {
        Intrinsics.checkParameterIsNotNull(iterator, "iterator");
        Intrinsics.checkParameterIsNotNull(mapper, "mapper");
        Condition.INSTANCE.ensureNotNull(iterator, "The iterator may not be null");
        Condition.INSTANCE.ensureNotNull(mapper, "The mapper may not be null");
        return new C00771(iterator, mapper);
    }

    /* JADX INFO: Add missing generic type declarations: [O] */
    /* JADX INFO: renamed from: de.mrapp.util.IteratorUtil$createMappedIterator$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IteratorUtil.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u000e\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"de/mrapp/util/IteratorUtil$createMappedIterator$1", "", "hasNext", "", "next", "()Ljava/lang/Object;", "JavaUtil"}, k = 1, mv = {1, 1, 16})
    public static final class C00771<O> implements Iterator<O>, KMappedMarker {
        final /* synthetic */ Iterator $iterator;
        final /* synthetic */ Function1 $mapper;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C00771(Iterator it, Function1 function1) {
            this.$iterator = it;
            this.$mapper = function1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.$iterator.hasNext();
        }

        @Override // java.util.Iterator
        public O next() {
            return (O) this.$mapper.invoke(this.$iterator.next());
        }
    }

    public final <T> Iterable<T> createConcatenatedIterable(Iterable<? extends T> first, Iterable<? extends T> second) {
        Intrinsics.checkParameterIsNotNull(first, "first");
        Intrinsics.checkParameterIsNotNull(second, "second");
        Condition.INSTANCE.ensureNotNull(first, "The first iterable may not be null");
        Condition.INSTANCE.ensureNotNull(second, "The second iterable may not be null");
        return new IteratorUtil$createConcatenatedIterable$$inlined$Iterable$1(first, second);
    }

    public final <T> Iterator<T> createConcatenatedIterator(Iterator<? extends T> first, Iterator<? extends T> second) {
        Intrinsics.checkParameterIsNotNull(first, "first");
        Intrinsics.checkParameterIsNotNull(second, "second");
        Condition.INSTANCE.ensureNotNull(first, "The first iterator may not be null");
        Condition.INSTANCE.ensureNotNull(second, "The second iterator may not be null");
        return new AnonymousClass1(first, second);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: de.mrapp.util.IteratorUtil$createConcatenatedIterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: IteratorUtil.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u000e\u0010\u0004\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"de/mrapp/util/IteratorUtil$createConcatenatedIterator$1", "", "hasNext", "", "next", "()Ljava/lang/Object;", "JavaUtil"}, k = 1, mv = {1, 1, 16})
    public static final class AnonymousClass1<T> implements Iterator<T>, KMappedMarker {
        final /* synthetic */ Iterator $first;
        final /* synthetic */ Iterator $second;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        AnonymousClass1(Iterator it, Iterator it2) {
            this.$first = it;
            this.$second = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.$first.hasNext() || this.$second.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            try {
                return (T) this.$first.next();
            } catch (NoSuchElementException unused) {
                return (T) this.$second.next();
            }
        }
    }

    public final <T> Iterable<T> createFilteredIterable(Iterable<? extends T> iterable, Function1<? super T, Boolean> filter) {
        Intrinsics.checkParameterIsNotNull(iterable, "iterable");
        Intrinsics.checkParameterIsNotNull(filter, "filter");
        Condition.INSTANCE.ensureNotNull(iterable, "The iterable may not be null");
        Condition.INSTANCE.ensureNotNull(filter, "The filter may not be null");
        return new IteratorUtil$createFilteredIterable$$inlined$Iterable$1(iterable, filter);
    }

    public final <T> Iterator<T> createFilteredIterator(Iterator<? extends T> iterator, Function1<? super T, Boolean> filter) {
        Intrinsics.checkParameterIsNotNull(iterator, "iterator");
        Intrinsics.checkParameterIsNotNull(filter, "filter");
        Condition.INSTANCE.ensureNotNull(iterator, "The iterator may not be null");
        Condition.INSTANCE.ensureNotNull(filter, "The filter may not be null");
        return new C00761(iterator, filter);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: de.mrapp.util.IteratorUtil$createFilteredIterator$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IteratorUtil.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J\b\u0010\u0006\u001a\u00020\u0007H\u0002J\t\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0096\u0002¢\u0006\u0002\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\t"}, d2 = {"de/mrapp/util/IteratorUtil$createFilteredIterator$1", "", "hasNext", "", "next", "Ljava/lang/Object;", "computeNext", "", "()Ljava/lang/Object;", "JavaUtil"}, k = 1, mv = {1, 1, 16})
    public static final class C00761<T> implements Iterator<T>, KMappedMarker {
        final /* synthetic */ Function1 $filter;
        final /* synthetic */ Iterator $iterator;
        private boolean hasNext;
        private T next;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C00761(Iterator it, Function1 function1) {
            this.$iterator = it;
            this.$filter = function1;
            computeNext();
        }

        private final void computeNext() {
            this.hasNext = false;
            while (this.$iterator.hasNext()) {
                T t = (T) this.$iterator.next();
                if (((Boolean) this.$filter.invoke(t)).booleanValue()) {
                    this.hasNext = true;
                    this.next = t;
                    return;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.hasNext) {
                T t = this.next;
                computeNext();
                return t;
            }
            throw new NoSuchElementException();
        }
    }

    public final <T> Iterable<T> createNotNullIterable(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "iterable");
        Condition.INSTANCE.ensureNotNull(iterable, "The iterable may not be null");
        return new IteratorUtil$createNotNullIterable$$inlined$Iterable$1(iterable);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: de.mrapp.util.IteratorUtil$createNotNullIterator$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IteratorUtil.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0004\u001a\u0004\u0018\u00018\u0000H\u0002¢\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0007H\u0096\u0002J\u000e\u0010\u0002\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0005R\u0012\u0010\u0002\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0003¨\u0006\b"}, d2 = {"de/mrapp/util/IteratorUtil$createNotNullIterator$1", "", "next", "Ljava/lang/Object;", "computeNext", "()Ljava/lang/Object;", "hasNext", "", "JavaUtil"}, k = 1, mv = {1, 1, 16})
    public static final class C00791<T> implements Iterator<T>, KMappedMarker {
        final /* synthetic */ Iterator $iterator;
        private T next = computeNext();

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C00791(Iterator it) {
            this.$iterator = it;
        }

        private final T computeNext() {
            T t = null;
            while (t == null && this.$iterator.hasNext()) {
                Object next = this.$iterator.next();
                if (next != null) {
                    t = (T) next;
                }
            }
            return t;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        public T next() {
            T t = this.next;
            if (t != null) {
                this.next = computeNext();
                if (t != null) {
                    return t;
                }
            }
            throw new NoSuchElementException();
        }
    }

    public final <T> Iterator<T> createNotNullIterator(Iterator<? extends T> iterator) {
        Intrinsics.checkParameterIsNotNull(iterator, "iterator");
        Condition.INSTANCE.ensureNotNull(iterator, "The iterator may not be null");
        return new C00791(iterator);
    }

    public final <T1, T2> Iterable<T2> createNestedIterable(Iterable<? extends T1> outerIterable, Function1<? super T1, ? extends Iterator<? extends T2>> factory) {
        Intrinsics.checkParameterIsNotNull(outerIterable, "outerIterable");
        Intrinsics.checkParameterIsNotNull(factory, "factory");
        Condition.INSTANCE.ensureNotNull(outerIterable, "The iterable may not be null");
        Condition.INSTANCE.ensureNotNull(factory, "The factory may not be null");
        return new IteratorUtil$createNestedIterable$$inlined$Iterable$1(outerIterable, factory);
    }

    public final <T1, T2> Iterator<T2> createNestedIterator(Iterator<? extends T1> outerIterator, Function1<? super T1, ? extends Iterator<? extends T2>> factory) {
        Intrinsics.checkParameterIsNotNull(outerIterator, "outerIterator");
        Intrinsics.checkParameterIsNotNull(factory, "factory");
        Condition.INSTANCE.ensureNotNull(outerIterator, "The iterator may not be null");
        Condition.INSTANCE.ensureNotNull(factory, "The factory may not be null");
        return new C00781(outerIterator, factory);
    }

    /* JADX INFO: Add missing generic type declarations: [T2] */
    /* JADX INFO: renamed from: de.mrapp.util.IteratorUtil$createNestedIterator$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IteratorUtil.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J\b\u0010\u0007\u001a\u00020\bH\u0002J\t\u0010\u0002\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00018\u0000H\u0096\u0002¢\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\n"}, d2 = {"de/mrapp/util/IteratorUtil$createNestedIterator$1", "", "hasNext", "", "innerIterator", "next", "Ljava/lang/Object;", "computeNext", "", "()Ljava/lang/Object;", "JavaUtil"}, k = 1, mv = {1, 1, 16})
    public static final class C00781<T2> implements Iterator<T2>, KMappedMarker {
        final /* synthetic */ Function1 $factory;
        final /* synthetic */ Iterator $outerIterator;
        private boolean hasNext;
        private Iterator<? extends T2> innerIterator;
        private T2 next;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        C00781(Iterator it, Function1 function1) {
            this.$outerIterator = it;
            this.$factory = function1;
            computeNext();
        }

        private final void computeNext() {
            this.hasNext = false;
            Iterator<? extends T2> it = this.innerIterator;
            while (true) {
                if ((it == null || !it.hasNext()) && !this.$outerIterator.hasNext()) {
                    return;
                }
                if (it != null && it.hasNext()) {
                    this.hasNext = true;
                    this.next = it.next();
                    return;
                } else {
                    it = (Iterator) this.$factory.invoke(this.$outerIterator.next());
                    this.innerIterator = it;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.util.Iterator
        public T2 next() {
            if (this.hasNext) {
                T2 t2 = this.next;
                computeNext();
                return t2;
            }
            throw new NoSuchElementException();
        }
    }
}
