package kotlin.script.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: dependencies_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u001c\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a4\u0010\u0000\u001a\u00020\u0001\"\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0002\u001a/\u0010\u0007\u001a\u00020\u0001\"\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u00022\b\u0010\u0006\u001a\u0004\u0018\u0001H\u0002H\u0002¢\u0006\u0002\u0010\b\u001a\u001b\u0010\t\u001a\u00020\u0001*\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000bH\u0082\b¨\u0006\f"}, d2 = {"compareIterables", "", "T", "", "a", "", "b", "compareValues", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)I", "chainCompare", "compFn", "Lkotlin/Function0;", "kotlin-script-runtime"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Dependencies_deprecatedKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends Comparable<?>> int compareValues(T t, T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends Comparable<? super T>> int compareIterables(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        int iCompareValues;
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends T> it2 = iterable2.iterator();
        do {
            if (it.hasNext() && !it2.hasNext()) {
                return 1;
            }
            if (!it.hasNext() && !it2.hasNext()) {
                return 0;
            }
            if (!it.hasNext()) {
                return -1;
            }
            iCompareValues = compareValues(it.next(), it2.next());
        } while (iCompareValues == 0);
        return iCompareValues;
    }

    private static final int chainCompare(int i, Function0<Integer> function0) {
        return i != 0 ? i : function0.invoke().intValue();
    }
}
