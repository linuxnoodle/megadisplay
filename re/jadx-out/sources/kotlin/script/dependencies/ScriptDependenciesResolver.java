package kotlin.script.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Map;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.script.dependencies.ScriptContents;

/* JADX INFO: compiled from: resolvers_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0001\u0011Jb\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\bj\u0004\u0018\u0001`\n2 \u0010\u000b\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u000f0\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\u0012"}, d2 = {"Lkotlin/script/dependencies/ScriptDependenciesResolver;", "", "resolve", "Ljava/util/concurrent/Future;", "Lkotlin/script/dependencies/KotlinScriptExternalDependencies;", "script", "Lkotlin/script/dependencies/ScriptContents;", "environment", "", "", "Lkotlin/script/dependencies/Environment;", "report", "Lkotlin/Function3;", "Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;", "Lkotlin/script/dependencies/ScriptContents$Position;", "", "previousDependencies", "ReportSeverity", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public interface ScriptDependenciesResolver {
    Future<KotlinScriptExternalDependencies> resolve(ScriptContents script, Map<String, ? extends Object> environment, Function3<? super ReportSeverity, ? super String, ? super ScriptContents.Position, Unit> report, KotlinScriptExternalDependencies previousDependencies);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: resolvers_deprecated.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlin/script/dependencies/ScriptDependenciesResolver$ReportSeverity;", "", "(Ljava/lang/String;I)V", "FATAL", "ERROR", "WARNING", "INFO", "DEBUG", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class ReportSeverity {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ReportSeverity[] $VALUES;
        public static final ReportSeverity FATAL = new ReportSeverity("FATAL", 0);
        public static final ReportSeverity ERROR = new ReportSeverity("ERROR", 1);
        public static final ReportSeverity WARNING = new ReportSeverity("WARNING", 2);
        public static final ReportSeverity INFO = new ReportSeverity("INFO", 3);
        public static final ReportSeverity DEBUG = new ReportSeverity("DEBUG", 4);

        private static final /* synthetic */ ReportSeverity[] $values() {
            return new ReportSeverity[]{FATAL, ERROR, WARNING, INFO, DEBUG};
        }

        public static EnumEntries<ReportSeverity> getEntries() {
            return $ENTRIES;
        }

        public static ReportSeverity valueOf(String str) {
            return (ReportSeverity) Enum.valueOf(ReportSeverity.class, str);
        }

        public static ReportSeverity[] values() {
            return (ReportSeverity[]) $VALUES.clone();
        }

        static {
            ReportSeverity[] reportSeverityArr$values = $values();
            $VALUES = reportSeverityArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(reportSeverityArr$values);
        }

        private ReportSeverity(String str, int i) {
        }
    }

    /* JADX INFO: compiled from: resolvers_deprecated.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class DefaultImpls {
        public static Future<KotlinScriptExternalDependencies> resolve(ScriptDependenciesResolver scriptDependenciesResolver, ScriptContents script, Map<String, ? extends Object> map, Function3<? super ReportSeverity, ? super String, ? super ScriptContents.Position, Unit> report, KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
            Intrinsics.checkNotNullParameter(script, "script");
            Intrinsics.checkNotNullParameter(report, "report");
            return new PseudoFuture(null);
        }
    }
}
