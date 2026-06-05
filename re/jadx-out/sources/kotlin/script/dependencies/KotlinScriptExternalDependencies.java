package kotlin.script.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.File;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: dependencies_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0000H\u0096\u0002R\u001a\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u0006R\u0016\u0010\n\u001a\u0004\u0018\u00010\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0006R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0006¨\u0006\u0014"}, d2 = {"Lkotlin/script/dependencies/KotlinScriptExternalDependencies;", "", "classpath", "", "Ljava/io/File;", "getClasspath", "()Ljava/lang/Iterable;", "imports", "", "getImports", "javaHome", "getJavaHome", "()Ljava/lang/String;", "scripts", "getScripts", "sources", "getSources", "compareTo", "", "other", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public interface KotlinScriptExternalDependencies extends Comparable<KotlinScriptExternalDependencies> {
    int compareTo(KotlinScriptExternalDependencies other);

    Iterable<File> getClasspath();

    Iterable<String> getImports();

    String getJavaHome();

    Iterable<File> getScripts();

    Iterable<File> getSources();

    /* JADX INFO: compiled from: dependencies_deprecated.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class DefaultImpls {
        public static String getJavaHome(KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
            return null;
        }

        public static Iterable<File> getClasspath(KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
            return CollectionsKt.emptyList();
        }

        public static Iterable<String> getImports(KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
            return CollectionsKt.emptyList();
        }

        public static Iterable<File> getSources(KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
            return CollectionsKt.emptyList();
        }

        public static Iterable<File> getScripts(KotlinScriptExternalDependencies kotlinScriptExternalDependencies) {
            return CollectionsKt.emptyList();
        }

        public static int compareTo(KotlinScriptExternalDependencies kotlinScriptExternalDependencies, KotlinScriptExternalDependencies other) {
            Intrinsics.checkNotNullParameter(other, "other");
            int iCompareValues = Dependencies_deprecatedKt.compareValues(kotlinScriptExternalDependencies.getJavaHome(), other.getJavaHome());
            if (iCompareValues == 0) {
                iCompareValues = Dependencies_deprecatedKt.compareIterables(kotlinScriptExternalDependencies.getClasspath(), other.getClasspath());
            }
            if (iCompareValues == 0) {
                iCompareValues = Dependencies_deprecatedKt.compareIterables(kotlinScriptExternalDependencies.getImports(), other.getImports());
            }
            if (iCompareValues == 0) {
                iCompareValues = Dependencies_deprecatedKt.compareIterables(kotlinScriptExternalDependencies.getSources(), other.getSources());
            }
            return iCompareValues != 0 ? iCompareValues : Dependencies_deprecatedKt.compareIterables(kotlinScriptExternalDependencies.getScripts(), other.getScripts());
        }
    }
}
