package com.maltaisn.icondialog;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.maltaisn.icondialog.IconDialog;
import com.maltaisn.icondialog.IconDialogSettings;
import com.maltaisn.icondialog.filter.DefaultIconFilter;
import com.maltaisn.icondialog.filter.IconFilter;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IconDialogSettings.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u0000 82\u00020\u0001:\u000278BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0001\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e¢\u0006\u0002\u0010\u0011J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003J\t\u0010%\u001a\u00020\u000bHÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003J\t\u0010'\u001a\u00020\u000eHÆ\u0003J\t\u0010(\u001a\u00020\u000eHÆ\u0003J\t\u0010)\u001a\u00020\u000eHÆ\u0003Jc\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0003\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000eHÆ\u0001J\b\u0010+\u001a\u00020\u000bH\u0016J\u0013\u0010,\u001a\u00020\u000e2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u000bHÖ\u0001J\t\u00100\u001a\u000201HÖ\u0001J\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u000bH\u0016R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0010\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0011\u0010\u000f\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001cR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 ¨\u00069"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogSettings;", "Landroid/os/Parcelable;", "iconFilter", "Lcom/maltaisn/icondialog/filter/IconFilter;", "searchVisibility", "Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;", "headersVisibility", "Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;", "titleVisibility", "Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;", "dialogTitle", "", "maxSelection", "showMaxSelectionMessage", "", "showSelectBtn", "showClearBtn", "(Lcom/maltaisn/icondialog/filter/IconFilter;Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;IIZZZ)V", "getDialogTitle", "()I", "getHeadersVisibility", "()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;", "getIconFilter", "()Lcom/maltaisn/icondialog/filter/IconFilter;", "getMaxSelection", "getSearchVisibility", "()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;", "getShowClearBtn", "()Z", "getShowMaxSelectionMessage", "getShowSelectBtn", "getTitleVisibility", "()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Builder", "Companion", "lib_release"}, k = 1, mv = {1, 1, 16})
public final /* data */ class IconDialogSettings implements Parcelable {
    public static final int NO_MAX_SELECTION = -1;
    private final int dialogTitle;
    private final IconDialog.HeadersVisibility headersVisibility;
    private final IconFilter iconFilter;
    private final int maxSelection;
    private final IconDialog.SearchVisibility searchVisibility;
    private final boolean showClearBtn;
    private final boolean showMaxSelectionMessage;
    private final boolean showSelectBtn;
    private final IconDialog.TitleVisibility titleVisibility;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<IconDialogSettings> CREATOR = new Parcelable.Creator<IconDialogSettings>() { // from class: com.maltaisn.icondialog.IconDialogSettings$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IconDialogSettings createFromParcel(Parcel parcel) {
            Intrinsics.checkParameterIsNotNull(parcel, "parcel");
            IconDialogSettings.Companion companion = IconDialogSettings.INSTANCE;
            IconDialogSettings.Builder builder = new IconDialogSettings.Builder();
            Bundle bundle = parcel.readBundle(IconDialogSettings.class.getClassLoader());
            if (bundle == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(bundle, "parcel.readBundle(IconDi…class.java.classLoader)!!");
            Parcelable parcelable = bundle.getParcelable("iconFilter");
            if (parcelable == null) {
                Intrinsics.throwNpe();
            }
            builder.setIconFilter((DefaultIconFilter) parcelable);
            Serializable serializable = bundle.getSerializable("searchVisibility");
            if (serializable == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialog.SearchVisibility");
            }
            builder.setSearchVisibility((IconDialog.SearchVisibility) serializable);
            Serializable serializable2 = bundle.getSerializable("headersVisibility");
            if (serializable2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialog.HeadersVisibility");
            }
            builder.setHeadersVisibility((IconDialog.HeadersVisibility) serializable2);
            Serializable serializable3 = bundle.getSerializable("titleVisibility");
            if (serializable3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialog.TitleVisibility");
            }
            builder.setTitleVisibility((IconDialog.TitleVisibility) serializable3);
            builder.setDialogTitle(bundle.getInt("dialogTitle"));
            builder.setMaxSelection(bundle.getInt("maxSelection"));
            builder.setShowMaxSelectionMessage(bundle.getBoolean("showMaxSelectionMessage"));
            builder.setShowSelectBtn(bundle.getBoolean("showSelectBtn"));
            builder.setShowClearBtn(bundle.getBoolean("showClearBtn"));
            return builder.build();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IconDialogSettings[] newArray(int size) {
            return new IconDialogSettings[size];
        }
    };

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final IconFilter getIconFilter() {
        return this.iconFilter;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final IconDialog.SearchVisibility getSearchVisibility() {
        return this.searchVisibility;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final IconDialog.HeadersVisibility getHeadersVisibility() {
        return this.headersVisibility;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final IconDialog.TitleVisibility getTitleVisibility() {
        return this.titleVisibility;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getDialogTitle() {
        return this.dialogTitle;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getMaxSelection() {
        return this.maxSelection;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getShowMaxSelectionMessage() {
        return this.showMaxSelectionMessage;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getShowSelectBtn() {
        return this.showSelectBtn;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getShowClearBtn() {
        return this.showClearBtn;
    }

    public final IconDialogSettings copy(IconFilter iconFilter, IconDialog.SearchVisibility searchVisibility, IconDialog.HeadersVisibility headersVisibility, IconDialog.TitleVisibility titleVisibility, int dialogTitle, int maxSelection, boolean showMaxSelectionMessage, boolean showSelectBtn, boolean showClearBtn) {
        Intrinsics.checkParameterIsNotNull(iconFilter, "iconFilter");
        Intrinsics.checkParameterIsNotNull(searchVisibility, "searchVisibility");
        Intrinsics.checkParameterIsNotNull(headersVisibility, "headersVisibility");
        Intrinsics.checkParameterIsNotNull(titleVisibility, "titleVisibility");
        return new IconDialogSettings(iconFilter, searchVisibility, headersVisibility, titleVisibility, dialogTitle, maxSelection, showMaxSelectionMessage, showSelectBtn, showClearBtn);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IconDialogSettings)) {
            return false;
        }
        IconDialogSettings iconDialogSettings = (IconDialogSettings) other;
        return Intrinsics.areEqual(this.iconFilter, iconDialogSettings.iconFilter) && Intrinsics.areEqual(this.searchVisibility, iconDialogSettings.searchVisibility) && Intrinsics.areEqual(this.headersVisibility, iconDialogSettings.headersVisibility) && Intrinsics.areEqual(this.titleVisibility, iconDialogSettings.titleVisibility) && this.dialogTitle == iconDialogSettings.dialogTitle && this.maxSelection == iconDialogSettings.maxSelection && this.showMaxSelectionMessage == iconDialogSettings.showMaxSelectionMessage && this.showSelectBtn == iconDialogSettings.showSelectBtn && this.showClearBtn == iconDialogSettings.showClearBtn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public int hashCode() {
        IconFilter iconFilter = this.iconFilter;
        int iHashCode = (iconFilter != null ? iconFilter.hashCode() : 0) * 31;
        IconDialog.SearchVisibility searchVisibility = this.searchVisibility;
        int iHashCode2 = (iHashCode + (searchVisibility != null ? searchVisibility.hashCode() : 0)) * 31;
        IconDialog.HeadersVisibility headersVisibility = this.headersVisibility;
        int iHashCode3 = (iHashCode2 + (headersVisibility != null ? headersVisibility.hashCode() : 0)) * 31;
        IconDialog.TitleVisibility titleVisibility = this.titleVisibility;
        int iHashCode4 = (((((iHashCode3 + (titleVisibility != null ? titleVisibility.hashCode() : 0)) * 31) + this.dialogTitle) * 31) + this.maxSelection) * 31;
        boolean z = this.showMaxSelectionMessage;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode4 + r1) * 31;
        boolean z2 = this.showSelectBtn;
        ?? r12 = z2;
        if (z2) {
            r12 = 1;
        }
        int i2 = (i + r12) * 31;
        boolean z3 = this.showClearBtn;
        return i2 + (z3 ? 1 : z3);
    }

    public String toString() {
        return "IconDialogSettings(iconFilter=" + this.iconFilter + ", searchVisibility=" + this.searchVisibility + ", headersVisibility=" + this.headersVisibility + ", titleVisibility=" + this.titleVisibility + ", dialogTitle=" + this.dialogTitle + ", maxSelection=" + this.maxSelection + ", showMaxSelectionMessage=" + this.showMaxSelectionMessage + ", showSelectBtn=" + this.showSelectBtn + ", showClearBtn=" + this.showClearBtn + ")";
    }

    public IconDialogSettings(IconFilter iconFilter, IconDialog.SearchVisibility searchVisibility, IconDialog.HeadersVisibility headersVisibility, IconDialog.TitleVisibility titleVisibility, int i, int i2, boolean z, boolean z2, boolean z3) {
        Intrinsics.checkParameterIsNotNull(iconFilter, "iconFilter");
        Intrinsics.checkParameterIsNotNull(searchVisibility, "searchVisibility");
        Intrinsics.checkParameterIsNotNull(headersVisibility, "headersVisibility");
        Intrinsics.checkParameterIsNotNull(titleVisibility, "titleVisibility");
        this.iconFilter = iconFilter;
        this.searchVisibility = searchVisibility;
        this.headersVisibility = headersVisibility;
        this.titleVisibility = titleVisibility;
        this.dialogTitle = i;
        this.maxSelection = i2;
        this.showMaxSelectionMessage = z;
        this.showSelectBtn = z2;
        this.showClearBtn = z3;
    }

    public final IconFilter getIconFilter() {
        return this.iconFilter;
    }

    public final IconDialog.SearchVisibility getSearchVisibility() {
        return this.searchVisibility;
    }

    public final IconDialog.HeadersVisibility getHeadersVisibility() {
        return this.headersVisibility;
    }

    public final IconDialog.TitleVisibility getTitleVisibility() {
        return this.titleVisibility;
    }

    public final int getDialogTitle() {
        return this.dialogTitle;
    }

    public final int getMaxSelection() {
        return this.maxSelection;
    }

    public final boolean getShowMaxSelectionMessage() {
        return this.showMaxSelectionMessage;
    }

    public final boolean getShowSelectBtn() {
        return this.showSelectBtn;
    }

    public final boolean getShowClearBtn() {
        return this.showClearBtn;
    }

    /* JADX INFO: compiled from: IconDialogSettings.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u00100\u001a\u000201R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R\u001a\u0010'\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010!\"\u0004\b)\u0010#R\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00062"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogSettings$Builder;", "", "()V", "dialogTitle", "", "getDialogTitle", "()I", "setDialogTitle", "(I)V", "headersVisibility", "Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;", "getHeadersVisibility", "()Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;", "setHeadersVisibility", "(Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;)V", "iconFilter", "Lcom/maltaisn/icondialog/filter/DefaultIconFilter;", "getIconFilter", "()Lcom/maltaisn/icondialog/filter/DefaultIconFilter;", "setIconFilter", "(Lcom/maltaisn/icondialog/filter/DefaultIconFilter;)V", "maxSelection", "getMaxSelection", "setMaxSelection", "searchVisibility", "Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;", "getSearchVisibility", "()Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;", "setSearchVisibility", "(Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;)V", "showClearBtn", "", "getShowClearBtn", "()Z", "setShowClearBtn", "(Z)V", "showMaxSelectionMessage", "getShowMaxSelectionMessage", "setShowMaxSelectionMessage", "showSelectBtn", "getShowSelectBtn", "setShowSelectBtn", "titleVisibility", "Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;", "getTitleVisibility", "()Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;", "setTitleVisibility", "(Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;)V", "build", "Lcom/maltaisn/icondialog/IconDialogSettings;", "lib_release"}, k = 1, mv = {1, 1, 16})
    public static final class Builder {
        private boolean showClearBtn;
        private boolean showMaxSelectionMessage;
        private DefaultIconFilter iconFilter = new DefaultIconFilter();
        private IconDialog.SearchVisibility searchVisibility = IconDialog.SearchVisibility.IF_LANGUAGE_AVAILABLE;
        private IconDialog.HeadersVisibility headersVisibility = IconDialog.HeadersVisibility.STICKY;
        private IconDialog.TitleVisibility titleVisibility = IconDialog.TitleVisibility.IF_SEARCH_HIDDEN;
        private int dialogTitle = R.string.icd_title;
        private int maxSelection = 1;
        private boolean showSelectBtn = true;

        public final DefaultIconFilter getIconFilter() {
            return this.iconFilter;
        }

        public final void setIconFilter(DefaultIconFilter defaultIconFilter) {
            Intrinsics.checkParameterIsNotNull(defaultIconFilter, "<set-?>");
            this.iconFilter = defaultIconFilter;
        }

        public final IconDialog.SearchVisibility getSearchVisibility() {
            return this.searchVisibility;
        }

        public final void setSearchVisibility(IconDialog.SearchVisibility searchVisibility) {
            Intrinsics.checkParameterIsNotNull(searchVisibility, "<set-?>");
            this.searchVisibility = searchVisibility;
        }

        public final IconDialog.HeadersVisibility getHeadersVisibility() {
            return this.headersVisibility;
        }

        public final void setHeadersVisibility(IconDialog.HeadersVisibility headersVisibility) {
            Intrinsics.checkParameterIsNotNull(headersVisibility, "<set-?>");
            this.headersVisibility = headersVisibility;
        }

        public final IconDialog.TitleVisibility getTitleVisibility() {
            return this.titleVisibility;
        }

        public final void setTitleVisibility(IconDialog.TitleVisibility titleVisibility) {
            Intrinsics.checkParameterIsNotNull(titleVisibility, "<set-?>");
            this.titleVisibility = titleVisibility;
        }

        public final int getDialogTitle() {
            return this.dialogTitle;
        }

        public final void setDialogTitle(int i) {
            this.dialogTitle = i;
        }

        public final int getMaxSelection() {
            return this.maxSelection;
        }

        public final void setMaxSelection(int i) {
            this.maxSelection = i;
        }

        public final boolean getShowMaxSelectionMessage() {
            return this.showMaxSelectionMessage;
        }

        public final void setShowMaxSelectionMessage(boolean z) {
            this.showMaxSelectionMessage = z;
        }

        public final boolean getShowSelectBtn() {
            return this.showSelectBtn;
        }

        public final void setShowSelectBtn(boolean z) {
            this.showSelectBtn = z;
        }

        public final boolean getShowClearBtn() {
            return this.showClearBtn;
        }

        public final void setShowClearBtn(boolean z) {
            this.showClearBtn = z;
        }

        public final IconDialogSettings build() {
            return new IconDialogSettings(this.iconFilter, this.searchVisibility, this.headersVisibility, this.titleVisibility, this.dialogTitle, this.maxSelection, this.showMaxSelectionMessage, this.showSelectBtn, this.showClearBtn);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        Bundle bundle = new Bundle();
        bundle.putParcelable("iconFilter", this.iconFilter);
        bundle.putSerializable("searchVisibility", this.searchVisibility);
        bundle.putSerializable("headersVisibility", this.headersVisibility);
        bundle.putSerializable("titleVisibility", this.titleVisibility);
        bundle.putInt("dialogTitle", this.dialogTitle);
        bundle.putInt("maxSelection", this.maxSelection);
        bundle.putBoolean("showMaxSelectionMessage", this.showMaxSelectionMessage);
        bundle.putBoolean("showSelectBtn", this.showSelectBtn);
        bundle.putBoolean("showClearBtn", this.showClearBtn);
        parcel.writeBundle(bundle);
    }

    /* JADX INFO: compiled from: IconDialogSettings.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\b\u001a\u00020\u00052\u0019\b\u0002\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\nR\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogSettings$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/maltaisn/icondialog/IconDialogSettings;", "NO_MAX_SELECTION", "", "invoke", "init", "Lkotlin/Function1;", "Lcom/maltaisn/icondialog/IconDialogSettings$Builder;", "", "Lkotlin/ExtensionFunctionType;", "lib_release"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ IconDialogSettings invoke$default(Companion companion, Function1 init, int i, Object obj) {
            if ((i & 1) != 0) {
                init = new Function1<Builder, Unit>() { // from class: com.maltaisn.icondialog.IconDialogSettings$Companion$invoke$1
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(IconDialogSettings.Builder receiver) {
                        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(IconDialogSettings.Builder builder) {
                        invoke2(builder);
                        return Unit.INSTANCE;
                    }
                };
            }
            Intrinsics.checkParameterIsNotNull(init, "init");
            Builder builder = new Builder();
            init.invoke(builder);
            return builder.build();
        }

        public final IconDialogSettings invoke(Function1<? super Builder, Unit> init) {
            Intrinsics.checkParameterIsNotNull(init, "init");
            Builder builder = new Builder();
            init.invoke(builder);
            return builder.build();
        }
    }
}
