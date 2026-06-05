package com.maltaisn.icondialog.data;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NamedTag.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/maltaisn/icondialog/data/NamedTag;", "Lcom/maltaisn/icondialog/data/IconTag;", "name", "", "values", "", "Lcom/maltaisn/icondialog/data/NamedTag$Value;", "(Ljava/lang/String;Ljava/util/List;)V", "getName", "()Ljava/lang/String;", "getValues", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Value", "lib_release"}, k = 1, mv = {1, 1, 16})
public final /* data */ class NamedTag implements IconTag {
    private final String name;
    private final List<Value> values;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NamedTag copy$default(NamedTag namedTag, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = namedTag.getName();
        }
        if ((i & 2) != 0) {
            list = namedTag.values;
        }
        return namedTag.copy(str, list);
    }

    public final String component1() {
        return getName();
    }

    public final List<Value> component2() {
        return this.values;
    }

    public final NamedTag copy(String name, List<Value> values) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(values, "values");
        return new NamedTag(name, values);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NamedTag)) {
            return false;
        }
        NamedTag namedTag = (NamedTag) other;
        return Intrinsics.areEqual(getName(), namedTag.getName()) && Intrinsics.areEqual(this.values, namedTag.values);
    }

    public int hashCode() {
        String name = getName();
        int iHashCode = (name != null ? name.hashCode() : 0) * 31;
        List<Value> list = this.values;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "NamedTag(name=" + getName() + ", values=" + this.values + ")";
    }

    public NamedTag(String name, List<Value> values) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(values, "values");
        this.name = name;
        this.values = values;
    }

    @Override // com.maltaisn.icondialog.data.IconTag
    public String getName() {
        return this.name;
    }

    public final List<Value> getValues() {
        return this.values;
    }

    /* JADX INFO: compiled from: NamedTag.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/maltaisn/icondialog/data/NamedTag$Value;", "", "value", "", "normValue", "(Ljava/lang/String;Ljava/lang/String;)V", "getNormValue", "()Ljava/lang/String;", "getValue", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "lib_release"}, k = 1, mv = {1, 1, 16})
    public static final /* data */ class Value {
        private final String normValue;
        private final String value;

        public static /* synthetic */ Value copy$default(Value value, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = value.value;
            }
            if ((i & 2) != 0) {
                str2 = value.normValue;
            }
            return value.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getNormValue() {
            return this.normValue;
        }

        public final Value copy(String value, String normValue) {
            Intrinsics.checkParameterIsNotNull(value, "value");
            Intrinsics.checkParameterIsNotNull(normValue, "normValue");
            return new Value(value, normValue);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Value)) {
                return false;
            }
            Value value = (Value) other;
            return Intrinsics.areEqual(this.value, value.value) && Intrinsics.areEqual(this.normValue, value.normValue);
        }

        public int hashCode() {
            String str = this.value;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.normValue;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return "Value(value=" + this.value + ", normValue=" + this.normValue + ")";
        }

        public Value(String value, String normValue) {
            Intrinsics.checkParameterIsNotNull(value, "value");
            Intrinsics.checkParameterIsNotNull(normValue, "normValue");
            this.value = value;
            this.normValue = normValue;
        }

        public final String getNormValue() {
            return this.normValue;
        }

        public final String getValue() {
            return this.value;
        }
    }
}
