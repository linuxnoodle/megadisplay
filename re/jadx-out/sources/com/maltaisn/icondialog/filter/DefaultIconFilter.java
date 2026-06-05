package com.maltaisn.icondialog.filter;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.actions.SearchIntents;
import com.maltaisn.icondialog.ExtensionsKt;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.data.IconTag;
import com.maltaisn.icondialog.data.NamedTag;
import com.maltaisn.icondialog.pack.IconPack;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DefaultIconFilter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0013H\u0016J\u001e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0014J \u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u001dH\u0016J\u0018\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u0013H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006)"}, d2 = {"Lcom/maltaisn/icondialog/filter/DefaultIconFilter;", "Lcom/maltaisn/icondialog/filter/IconFilter;", "()V", "idSearchEnabled", "", "getIdSearchEnabled", "()Z", "setIdSearchEnabled", "(Z)V", "queryNormalized", "getQueryNormalized", "setQueryNormalized", "termSplitPattern", "Lkotlin/text/Regex;", "getTermSplitPattern", "()Lkotlin/text/Regex;", "setTermSplitPattern", "(Lkotlin/text/Regex;)V", "compare", "", "icon1", "Lcom/maltaisn/icondialog/data/Icon;", "icon2", "describeContents", "matchesSearch", "tag", "Lcom/maltaisn/icondialog/data/NamedTag$Value;", "terms", "", "", "queryIcons", "", "pack", "Lcom/maltaisn/icondialog/pack/IconPack;", SearchIntents.EXTRA_QUERY, "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "lib_release"}, k = 1, mv = {1, 1, 16})
public class DefaultIconFilter implements IconFilter {
    private boolean idSearchEnabled;
    public static final Parcelable.Creator<DefaultIconFilter> CREATOR = new Parcelable.Creator<DefaultIconFilter>() { // from class: com.maltaisn.icondialog.filter.DefaultIconFilter$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DefaultIconFilter createFromParcel(Parcel parcel) {
            Intrinsics.checkParameterIsNotNull(parcel, "parcel");
            DefaultIconFilter defaultIconFilter = new DefaultIconFilter();
            Bundle bundle = parcel.readBundle(DefaultIconFilter.class.getClassLoader());
            if (bundle == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(bundle, "parcel.readBundle(Defaul…class.java.classLoader)!!");
            String string = bundle.getString("termSplitPattern");
            defaultIconFilter.setTermSplitPattern(string != null ? new Regex(string) : null);
            defaultIconFilter.setQueryNormalized(bundle.getBoolean("queryNormalized"));
            defaultIconFilter.setIdSearchEnabled(bundle.getBoolean("idSearchEnabled"));
            return defaultIconFilter;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DefaultIconFilter[] newArray(int size) {
            return new DefaultIconFilter[size];
        }
    };
    private Regex termSplitPattern = new Regex("[;,\\s]");
    private boolean queryNormalized = true;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Regex getTermSplitPattern() {
        return this.termSplitPattern;
    }

    public final void setTermSplitPattern(Regex regex) {
        this.termSplitPattern = regex;
    }

    public final boolean getQueryNormalized() {
        return this.queryNormalized;
    }

    public final void setQueryNormalized(boolean z) {
        this.queryNormalized = z;
    }

    public final boolean getIdSearchEnabled() {
        return this.idSearchEnabled;
    }

    public final void setIdSearchEnabled(boolean z) {
        this.idSearchEnabled = z;
    }

    @Override // com.maltaisn.icondialog.filter.IconFilter
    public List<Icon> queryIcons(IconPack pack, String query) {
        List<String> listSplit;
        String lowerCase;
        Icon icon;
        Intrinsics.checkParameterIsNotNull(pack, "pack");
        if (this.idSearchEnabled && query != null && StringsKt.startsWith$default(query, "#", false, 2, (Object) null)) {
            String strSubstring = query.substring(1);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
            Integer intOrNull = StringsKt.toIntOrNull(strSubstring);
            if (intOrNull != null && (icon = pack.getIcon(intOrNull.intValue())) != null) {
                return CollectionsKt.mutableListOf(icon);
            }
        }
        List<Icon> allIcons = pack.getAllIcons();
        if (query != null) {
            String str = query;
            if (!StringsKt.isBlank(str)) {
                Regex regex = this.termSplitPattern;
                if (regex == null) {
                    listSplit = CollectionsKt.listOf(query);
                } else {
                    if (regex == null) {
                        Intrinsics.throwNpe();
                    }
                    listSplit = regex.split(str, 0);
                }
                ArrayList arrayList = new ArrayList();
                for (String str2 : listSplit) {
                    if (this.queryNormalized) {
                        lowerCase = ExtensionsKt.normalize(str2);
                    } else {
                        Locale locale = Locale.ROOT;
                        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.ROOT");
                        if (str2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        lowerCase = str2.toLowerCase(locale);
                        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    }
                    if (StringsKt.isBlank(lowerCase)) {
                        lowerCase = null;
                    }
                    if (lowerCase != null) {
                        arrayList.add(lowerCase);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = allIcons.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    Iterator<String> it = allIcons.get(size).getTags().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            IconTag tag = pack.getTag(it.next());
                            if (!(tag instanceof NamedTag)) {
                                tag = null;
                            }
                            NamedTag namedTag = (NamedTag) tag;
                            if (namedTag != null) {
                                List<NamedTag.Value> values = namedTag.getValues();
                                if (!(values instanceof Collection) || !values.isEmpty()) {
                                    Iterator<T> it2 = values.iterator();
                                    while (it2.hasNext()) {
                                        if (matchesSearch((NamedTag.Value) it2.next(), arrayList2)) {
                                            break;
                                        }
                                    }
                                }
                            }
                        } else {
                            allIcons.remove(size);
                            break;
                        }
                    }
                }
            }
        }
        return allIcons;
    }

    protected boolean matchesSearch(NamedTag.Value tag, List<String> terms) {
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.checkParameterIsNotNull(terms, "terms");
        String normValue = this.queryNormalized ? tag.getNormValue() : tag.getValue();
        List<String> list = terms;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (StringsKt.contains$default((CharSequence) normValue, (CharSequence) it.next(), false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Comparator
    public int compare(Icon icon1, Icon icon2) {
        int iCompareTo;
        Intrinsics.checkParameterIsNotNull(icon1, "icon1");
        Intrinsics.checkParameterIsNotNull(icon2, "icon2");
        int size = icon1.getTags().size();
        int size2 = icon2.getTags().size();
        int iMin = Math.min(size, size2);
        for (int i = 0; i < iMin; i++) {
            String str = (String) CollectionsKt.getOrNull(icon1.getTags(), i);
            String str2 = (String) CollectionsKt.getOrNull(icon2.getTags(), i);
            if (str != null && str2 != null && (iCompareTo = str.compareTo(str2)) != 0) {
                return iCompareTo;
            }
        }
        if (size != size2) {
            return Intrinsics.compare(size, size2);
        }
        return Intrinsics.compare(icon1.getId(), icon2.getId());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.checkParameterIsNotNull(parcel, "parcel");
        Bundle bundle = new Bundle();
        Regex regex = this.termSplitPattern;
        bundle.putString("termSplitPattern", regex != null ? regex.getPattern() : null);
        bundle.putBoolean("queryNormalized", this.queryNormalized);
        bundle.putBoolean("idSearchEnabled", this.idSearchEnabled);
        parcel.writeBundle(bundle);
    }
}
