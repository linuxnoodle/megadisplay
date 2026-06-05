package com.mikepenz.fastadapter.utils;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.IItem;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InterceptorUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\u0003"}, d2 = {"Lcom/mikepenz/fastadapter/utils/InterceptorUtil;", "", "Companion", "fastadapter"}, k = 1, mv = {1, 1, 16})
public interface InterceptorUtil {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Function1<IItem<? extends RecyclerView.ViewHolder>, IItem<? extends RecyclerView.ViewHolder>> DEFAULT = new Function1<IItem<? extends RecyclerView.ViewHolder>, IItem<? extends RecyclerView.ViewHolder>>() { // from class: com.mikepenz.fastadapter.utils.InterceptorUtil$Companion$DEFAULT$1
        @Override // kotlin.jvm.functions.Function1
        public final IItem<? extends RecyclerView.ViewHolder> invoke(IItem<? extends RecyclerView.ViewHolder> it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it;
        }
    };

    /* JADX INFO: compiled from: InterceptorUtil.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002RM\u0010\u0003\u001a9\u0012\u001f\u0012\u001d\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005j\u0002`\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0014\u0012\u0012\u0012\u0006\b\u0001\u0012\u00020\u0006\u0018\u00010\u0005j\u0004\u0018\u0001`\u00070\u00048\u0006X\u0087\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\u000b"}, d2 = {"Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion;", "", "()V", "DEFAULT", "Lkotlin/Function1;", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lkotlin/ParameterName;", "name", "element", "fastadapter"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = null;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
