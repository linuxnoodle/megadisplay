package kotlin.script.dependencies;

import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.File;
import java.lang.annotation.Annotation;
import kotlin.Metadata;

/* JADX INFO: compiled from: resolvers_deprecated.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u001c\n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0001\u000fR\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lkotlin/script/dependencies/ScriptContents;", "", "annotations", "", "", "getAnnotations", "()Ljava/lang/Iterable;", "file", "Ljava/io/File;", "getFile", "()Ljava/io/File;", "text", "", "getText", "()Ljava/lang/CharSequence;", "Position", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public interface ScriptContents {
    Iterable<Annotation> getAnnotations();

    File getFile();

    CharSequence getText();

    /* JADX INFO: compiled from: resolvers_deprecated.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lkotlin/script/dependencies/ScriptContents$Position;", "", "line", "", "col", "(II)V", "getCol", "()I", "getLine", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "kotlin-script-runtime"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final /* data */ class Position {
        private final int col;
        private final int line;

        public static /* synthetic */ Position copy$default(Position position, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = position.line;
            }
            if ((i3 & 2) != 0) {
                i2 = position.col;
            }
            return position.copy(i, i2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getLine() {
            return this.line;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getCol() {
            return this.col;
        }

        public final Position copy(int line, int col) {
            return new Position(line, col);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Position)) {
                return false;
            }
            Position position = (Position) other;
            return this.line == position.line && this.col == position.col;
        }

        public int hashCode() {
            return (this.line * 31) + this.col;
        }

        public String toString() {
            return "Position(line=" + this.line + ", col=" + this.col + ')';
        }

        public Position(int i, int i2) {
            this.line = i;
            this.col = i2;
        }

        public final int getCol() {
            return this.col;
        }

        public final int getLine() {
            return this.line;
        }
    }
}
