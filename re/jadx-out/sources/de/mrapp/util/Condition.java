package de.mrapp.util;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Condition.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ$\u0010\u0013\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u00012\b\u0010\b\u001a\u0004\u0018\u00010\tJ8\u0010\u0013\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u00012\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\b\u001a\u0004\u0018\u00010\tJ,\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u0016\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\tJ,\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\b\u001a\u0004\u0018\u00010\tJ,\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u0018\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\b\u001a\u0004\u0018\u00010\tJ,\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u001a\u0010\u001f\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\b\u001a\u0004\u0018\u00010\tJ.\u0010\u001f\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u001a\u0010\"\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\b\u001a\u0004\u0018\u00010\tJ.\u0010\"\u001a\u00020\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u001c\u0010\"\u001a\u00020\u00042\n\u0010#\u001a\u0006\u0012\u0002\b\u00030$2\b\u0010\b\u001a\u0004\u0018\u00010\tJ0\u0010\"\u001a\u00020\u00042\n\u0010#\u001a\u0006\u0012\u0002\b\u00030$2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ$\u0010%\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u00012\b\u0010\b\u001a\u0004\u0018\u00010\tJ8\u0010%\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00012\b\u0010\u0015\u001a\u0004\u0018\u00010\u00012\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u001a\u0010&\u001a\u00020\u00042\b\u0010'\u001a\u0004\u0018\u00010\u00012\b\u0010\b\u001a\u0004\u0018\u00010\tJ.\u0010&\u001a\u00020\u00042\b\u0010'\u001a\u0004\u0018\u00010\u00012\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ \u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\tJ4\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ\u0018\u0010)\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\b\u001a\u0004\u0018\u00010\tJ,\u0010)\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bJ&\u0010*\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0012\u0010\n\u001a\u000e\u0012\n\b\u0001\u0012\u00060\fj\u0002`\r0\u000bH\u0002¨\u0006+"}, d2 = {"Lde/mrapp/util/Condition;", "", "()V", "ensureAtLeast", "", "value", "", "referenceValue", "exceptionMessage", "", "exceptionClass", "Ljava/lang/Class;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "", "", "", "", "ensureAtMaximum", "ensureEqual", "object1", "object2", "ensureFalse", "expression", "", "ensureFileExists", "file", "Ljava/io/File;", "ensureFileIsDirectory", "ensureFileIsNoDirectory", "ensureGreater", "ensureHasText", "text", "", "ensureNotEmpty", "iterable", "", "ensureNotEqual", "ensureNotNull", "obj", "ensureSmaller", "ensureTrue", "throwException", "JavaUtil"}, k = 1, mv = {1, 1, 16})
public final class Condition {
    public static final Condition INSTANCE = new Condition();

    private Condition() {
    }

    private final void throwException(String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        RuntimeException exception;
        try {
            exception = exceptionClass.getConstructor(String.class).newInstance(exceptionMessage);
        } catch (Exception unused) {
            exception = new RuntimeException(exceptionMessage);
        }
        Intrinsics.checkExpressionValueIsNotNull(exception, "exception");
        throw exception;
    }

    public final void ensureTrue(boolean expression, String exceptionMessage) {
        ensureTrue(expression, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureTrue(boolean expression, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (expression) {
            return;
        }
        throwException(exceptionMessage, exceptionClass);
    }

    public final void ensureFalse(boolean expression, String exceptionMessage) {
        ensureFalse(expression, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureFalse(boolean expression, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (expression) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureEqual(Object object1, Object object2, String exceptionMessage) {
        ensureEqual(object1, object2, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureEqual(Object object1, Object object2, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if ((object1 != null || object2 == null) && (object1 == null || !(!Intrinsics.areEqual(object1, object2)))) {
            return;
        }
        throwException(exceptionMessage, exceptionClass);
    }

    public final void ensureNotEqual(Object object1, Object object2, String exceptionMessage) {
        ensureNotEqual(object1, object2, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureNotEqual(Object object1, Object object2, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (!(object1 == null && object2 == null) && (object1 == null || !Intrinsics.areEqual(object1, object2))) {
            return;
        }
        throwException(exceptionMessage, exceptionClass);
    }

    public final void ensureNotNull(Object obj, String exceptionMessage) {
        ensureNotNull(obj, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureNotNull(Object obj, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (obj == null) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureNotEmpty(CharSequence text, String exceptionMessage) {
        ensureNotEmpty(text, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureNotEmpty(CharSequence text, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (TextUtil.INSTANCE.isEmpty(text)) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureHasText(CharSequence text, String exceptionMessage) {
        ensureHasText(text, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureHasText(CharSequence text, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (TextUtil.INSTANCE.hasNoText(text)) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtLeast(short value, short referenceValue, String exceptionMessage) {
        ensureAtLeast(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtLeast(short value, short referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value < referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtLeast(int value, int referenceValue, String exceptionMessage) {
        ensureAtLeast(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtLeast(int value, int referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value < referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtLeast(long value, long referenceValue, String exceptionMessage) {
        ensureAtLeast(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtLeast(long value, long referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value < referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtLeast(float value, float referenceValue, String exceptionMessage) {
        ensureAtLeast(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtLeast(float value, float referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value < referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtLeast(double value, double referenceValue, String exceptionMessage) {
        ensureAtLeast(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtLeast(double value, double referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value < referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtMaximum(short value, short referenceValue, String exceptionMessage) {
        ensureAtMaximum(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtMaximum(short value, short referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value > referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtMaximum(int value, int referenceValue, String exceptionMessage) {
        ensureAtMaximum(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtMaximum(int value, int referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value > referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtMaximum(long value, long referenceValue, String exceptionMessage) {
        ensureAtMaximum(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtMaximum(long value, long referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value > referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtMaximum(float value, float referenceValue, String exceptionMessage) {
        ensureAtMaximum(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtMaximum(float value, float referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value > referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureAtMaximum(double value, double referenceValue, String exceptionMessage) {
        ensureAtMaximum(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureAtMaximum(double value, double referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value > referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureGreater(short value, short referenceValue, String exceptionMessage) {
        ensureGreater(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureGreater(short value, short referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value <= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureGreater(int value, int referenceValue, String exceptionMessage) {
        ensureGreater(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureGreater(int value, int referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value <= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureGreater(long value, long referenceValue, String exceptionMessage) {
        ensureGreater(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureGreater(long value, long referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value <= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureGreater(float value, float referenceValue, String exceptionMessage) {
        ensureGreater(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureGreater(float value, float referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value <= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureGreater(double value, double referenceValue, String exceptionMessage) {
        ensureGreater(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureGreater(double value, double referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value <= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureSmaller(short value, short referenceValue, String exceptionMessage) {
        ensureSmaller(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureSmaller(short value, short referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value >= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureSmaller(int value, int referenceValue, String exceptionMessage) {
        ensureSmaller(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureSmaller(int value, int referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value >= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureSmaller(long value, long referenceValue, String exceptionMessage) {
        ensureSmaller(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureSmaller(long value, long referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value >= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureSmaller(float value, float referenceValue, String exceptionMessage) {
        ensureSmaller(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureSmaller(float value, float referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value >= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureSmaller(double value, double referenceValue, String exceptionMessage) {
        ensureSmaller(value, referenceValue, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureSmaller(double value, double referenceValue, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (value >= referenceValue) {
            throwException(exceptionMessage, exceptionClass);
        }
    }

    public final void ensureNotEmpty(Iterable<?> iterable, String exceptionMessage) {
        Intrinsics.checkParameterIsNotNull(iterable, "iterable");
        ensureNotEmpty(iterable, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureNotEmpty(Iterable<?> iterable, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(iterable, "iterable");
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (iterable.iterator().hasNext()) {
            return;
        }
        throwException(exceptionMessage, exceptionClass);
    }

    public final void ensureFileExists(File file, String exceptionMessage) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(exceptionMessage, "exceptionMessage");
        ensureFileExists(file, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureFileExists(File file, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (file.exists()) {
            return;
        }
        throwException(exceptionMessage, exceptionClass);
    }

    public final void ensureFileIsDirectory(File file, String exceptionMessage) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        ensureFileIsDirectory(file, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureFileIsDirectory(File file, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (file.isDirectory()) {
            return;
        }
        throwException(exceptionMessage, exceptionClass);
    }

    public final void ensureFileIsNoDirectory(File file, String exceptionMessage) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        ensureFileIsNoDirectory(file, exceptionMessage, IllegalArgumentException.class);
    }

    public final void ensureFileIsNoDirectory(File file, String exceptionMessage, Class<? extends RuntimeException> exceptionClass) {
        Intrinsics.checkParameterIsNotNull(file, "file");
        Intrinsics.checkParameterIsNotNull(exceptionClass, "exceptionClass");
        if (file.isFile()) {
            return;
        }
        throwException(exceptionMessage, exceptionClass);
    }
}
