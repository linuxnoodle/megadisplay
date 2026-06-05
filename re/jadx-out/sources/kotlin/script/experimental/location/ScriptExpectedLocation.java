package kotlin.script.experimental.location;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: scriptLocation_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Experimental API")
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlin/script/experimental/location/ScriptExpectedLocation;", "", "(Ljava/lang/String;I)V", "SourcesOnly", "TestsOnly", "Libraries", "Project", "Everywhere", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ScriptExpectedLocation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ScriptExpectedLocation[] $VALUES;
    public static final ScriptExpectedLocation SourcesOnly = new ScriptExpectedLocation("SourcesOnly", 0);
    public static final ScriptExpectedLocation TestsOnly = new ScriptExpectedLocation("TestsOnly", 1);
    public static final ScriptExpectedLocation Libraries = new ScriptExpectedLocation("Libraries", 2);
    public static final ScriptExpectedLocation Project = new ScriptExpectedLocation("Project", 3);
    public static final ScriptExpectedLocation Everywhere = new ScriptExpectedLocation("Everywhere", 4);

    private static final /* synthetic */ ScriptExpectedLocation[] $values() {
        return new ScriptExpectedLocation[]{SourcesOnly, TestsOnly, Libraries, Project, Everywhere};
    }

    public static EnumEntries<ScriptExpectedLocation> getEntries() {
        return $ENTRIES;
    }

    public static ScriptExpectedLocation valueOf(String str) {
        return (ScriptExpectedLocation) Enum.valueOf(ScriptExpectedLocation.class, str);
    }

    public static ScriptExpectedLocation[] values() {
        return (ScriptExpectedLocation[]) $VALUES.clone();
    }

    private ScriptExpectedLocation(String str, int i) {
    }

    static {
        ScriptExpectedLocation[] scriptExpectedLocationArr$values = $values();
        $VALUES = scriptExpectedLocationArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(scriptExpectedLocationArr$values);
    }
}
