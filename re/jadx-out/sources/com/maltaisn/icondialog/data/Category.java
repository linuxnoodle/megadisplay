package com.maltaisn.icondialog.data;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Category.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/maltaisn/icondialog/data/Category;", "", "id", "", "name", "", "nameRes", "(ILjava/lang/String;I)V", "getId", "()I", "getName", "()Ljava/lang/String;", "getNameRes", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "resolveName", "context", "Landroid/content/Context;", "toString", "lib_release"}, k = 1, mv = {1, 1, 16})
public final /* data */ class Category {
    private final int id;
    private final String name;
    private final int nameRes;

    public static /* synthetic */ Category copy$default(Category category, int i, String str, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = category.id;
        }
        if ((i3 & 2) != 0) {
            str = category.name;
        }
        if ((i3 & 4) != 0) {
            i2 = category.nameRes;
        }
        return category.copy(i, str, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getNameRes() {
        return this.nameRes;
    }

    public final Category copy(int id, String name, int nameRes) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return new Category(id, name, nameRes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Category)) {
            return false;
        }
        Category category = (Category) other;
        return this.id == category.id && Intrinsics.areEqual(this.name, category.name) && this.nameRes == category.nameRes;
    }

    public int hashCode() {
        int i = this.id * 31;
        String str = this.name;
        return ((i + (str != null ? str.hashCode() : 0)) * 31) + this.nameRes;
    }

    public String toString() {
        return "Category(id=" + this.id + ", name=" + this.name + ", nameRes=" + this.nameRes + ")";
    }

    public Category(int i, String name, int i2) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        this.id = i;
        this.name = name;
        this.nameRes = i2;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final int getNameRes() {
        return this.nameRes;
    }

    public final String resolveName(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        int i = this.nameRes;
        if (i == 0) {
            return this.name;
        }
        String string = context.getString(i);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(nameRes)");
        return string;
    }
}
