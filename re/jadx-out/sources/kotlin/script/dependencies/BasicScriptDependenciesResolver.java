package kotlin.script.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Map;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.script.dependencies.ScriptContents;
import kotlin.script.dependencies.ScriptDependenciesResolver;

/* JADX INFO: compiled from: resolvers_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlin/script/dependencies/BasicScriptDependenciesResolver;", "Lkotlin/script/dependencies/ScriptDependenciesResolver;", "()V", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class BasicScriptDependenciesResolver implements ScriptDependenciesResolver {
    @Override // kotlin.script.dependencies.ScriptDependenciesResolver
    public Future<KotlinScriptExternalDependencies> resolve(ScriptContents scriptContents, Map<String, ? extends Object> map, Function3<? super ScriptDependenciesResolver.ReportSeverity, ? super String, ? super ScriptContents.Position, Unit> function3, KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
        return ScriptDependenciesResolver.DefaultImpls.resolve(this, scriptContents, map, function3, kotlinScriptExternalDependencies);
    }
}
