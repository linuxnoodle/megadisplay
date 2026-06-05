package kotlin.script.experimental.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: dependencies.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eBQ\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\nJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\u000f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003JU\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00052\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001f"}, d2 = {"Lkotlin/script/experimental/dependencies/ScriptDependencies;", "", "javaHome", "Ljava/io/File;", "classpath", "", "imports", "", "sources", "scripts", "(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getClasspath", "()Ljava/util/List;", "getImports", "getJavaHome", "()Ljava/io/File;", "getScripts", "getSources", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final /* data */ class ScriptDependencies {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ScriptDependencies Empty = new ScriptDependencies(null, null, null, null, null, 31, null);
    private final List<File> classpath;
    private final List<String> imports;
    private final File javaHome;
    private final List<File> scripts;
    private final List<File> sources;

    public ScriptDependencies() {
        this(null, null, null, null, null, 31, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ScriptDependencies copy$default(ScriptDependencies scriptDependencies, File file, List list, List list2, List list3, List list4, int i, Object obj) {
        if ((i & 1) != 0) {
            file = scriptDependencies.javaHome;
        }
        if ((i & 2) != 0) {
            list = scriptDependencies.classpath;
        }
        List list5 = list;
        if ((i & 4) != 0) {
            list2 = scriptDependencies.imports;
        }
        List list6 = list2;
        if ((i & 8) != 0) {
            list3 = scriptDependencies.sources;
        }
        List list7 = list3;
        if ((i & 16) != 0) {
            list4 = scriptDependencies.scripts;
        }
        return scriptDependencies.copy(file, list5, list6, list7, list4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final File getJavaHome() {
        return this.javaHome;
    }

    public final List<File> component2() {
        return this.classpath;
    }

    public final List<String> component3() {
        return this.imports;
    }

    public final List<File> component4() {
        return this.sources;
    }

    public final List<File> component5() {
        return this.scripts;
    }

    public final ScriptDependencies copy(File javaHome, List<? extends File> classpath, List<String> imports, List<? extends File> sources, List<? extends File> scripts) {
        Intrinsics.checkNotNullParameter(classpath, "classpath");
        Intrinsics.checkNotNullParameter(imports, "imports");
        Intrinsics.checkNotNullParameter(sources, "sources");
        Intrinsics.checkNotNullParameter(scripts, "scripts");
        return new ScriptDependencies(javaHome, classpath, imports, sources, scripts);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ScriptDependencies)) {
            return false;
        }
        ScriptDependencies scriptDependencies = (ScriptDependencies) other;
        return Intrinsics.areEqual(this.javaHome, scriptDependencies.javaHome) && Intrinsics.areEqual(this.classpath, scriptDependencies.classpath) && Intrinsics.areEqual(this.imports, scriptDependencies.imports) && Intrinsics.areEqual(this.sources, scriptDependencies.sources) && Intrinsics.areEqual(this.scripts, scriptDependencies.scripts);
    }

    public int hashCode() {
        File file = this.javaHome;
        return ((((((((file == null ? 0 : file.hashCode()) * 31) + this.classpath.hashCode()) * 31) + this.imports.hashCode()) * 31) + this.sources.hashCode()) * 31) + this.scripts.hashCode();
    }

    public String toString() {
        return "ScriptDependencies(javaHome=" + this.javaHome + ", classpath=" + this.classpath + ", imports=" + this.imports + ", sources=" + this.sources + ", scripts=" + this.scripts + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ScriptDependencies(File file, List<? extends File> classpath, List<String> imports, List<? extends File> sources, List<? extends File> scripts) {
        Intrinsics.checkNotNullParameter(classpath, "classpath");
        Intrinsics.checkNotNullParameter(imports, "imports");
        Intrinsics.checkNotNullParameter(sources, "sources");
        Intrinsics.checkNotNullParameter(scripts, "scripts");
        this.javaHome = file;
        this.classpath = classpath;
        this.imports = imports;
        this.sources = sources;
        this.scripts = scripts;
    }

    public final File getJavaHome() {
        return this.javaHome;
    }

    public /* synthetic */ ScriptDependencies(File file, List list, List list2, List list3, List list4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : file, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? CollectionsKt.emptyList() : list2, (i & 8) != 0 ? CollectionsKt.emptyList() : list3, (i & 16) != 0 ? CollectionsKt.emptyList() : list4);
    }

    public final List<File> getClasspath() {
        return this.classpath;
    }

    public final List<String> getImports() {
        return this.imports;
    }

    public final List<File> getSources() {
        return this.sources;
    }

    public final List<File> getScripts() {
        return this.scripts;
    }

    /* JADX INFO: compiled from: dependencies.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/script/experimental/dependencies/ScriptDependencies$Companion;", "", "()V", "Empty", "Lkotlin/script/experimental/dependencies/ScriptDependencies;", "getEmpty", "()Lkotlin/script/experimental/dependencies/ScriptDependencies;", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ScriptDependencies getEmpty() {
            return ScriptDependencies.Empty;
        }
    }
}
