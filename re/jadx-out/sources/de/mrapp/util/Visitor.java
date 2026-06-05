package de.mrapp.util;

import kotlin.Metadata;

/* JADX INFO: compiled from: Visitor.kt */
/* JADX INFO: loaded from: classes2.dex */
@FunctionalInterface
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lde/mrapp/util/Visitor;", "T", "", "visit", "", "instance", "(Ljava/lang/Object;)V", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public interface Visitor<T> {
    void visit(T instance);
}
