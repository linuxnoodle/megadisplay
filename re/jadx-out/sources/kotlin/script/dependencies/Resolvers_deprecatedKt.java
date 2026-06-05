package kotlin.script.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;

/* JADX INFO: compiled from: resolvers_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u001a\u0014\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001*\u0004\u0018\u00010\u0002*&\u0010\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00042\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¨\u0006\u0007"}, d2 = {"asFuture", "Lkotlin/script/dependencies/PseudoFuture;", "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;", "Environment", "", "", "", "kotlin-script-runtime"}, k = 2, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Resolvers_deprecatedKt {
    public static final PseudoFuture<KotlinScriptExternalDependencies> asFuture(KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
        return new PseudoFuture<>(kotlinScriptExternalDependencies);
    }
}
