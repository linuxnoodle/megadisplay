package kotlin.script.experimental.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.script.experimental.dependencies.DependenciesResolver;

/* JADX INFO: compiled from: resolvers.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"asSuccess", "Lkotlin/script/experimental/dependencies/DependenciesResolver$ResolveResult$Success;", "Lkotlin/script/experimental/dependencies/ScriptDependencies;", "kotlin-script-runtime"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ResolversKt {
    public static final DependenciesResolver.ResolveResult.Success asSuccess(ScriptDependencies scriptDependencies) {
        Intrinsics.checkNotNullParameter(scriptDependencies, "<this>");
        return new DependenciesResolver.ResolveResult.Success(scriptDependencies, null, 2, null);
    }
}
