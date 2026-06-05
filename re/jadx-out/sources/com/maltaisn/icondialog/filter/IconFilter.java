package com.maltaisn.icondialog.filter;

import android.os.Parcelable;
import com.google.android.gms.actions.SearchIntents;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.pack.IconPack;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: IconFilter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u00032\u00020\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H&J\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH&¨\u0006\u000f"}, d2 = {"Lcom/maltaisn/icondialog/filter/IconFilter;", "Ljava/util/Comparator;", "Lcom/maltaisn/icondialog/data/Icon;", "Lkotlin/Comparator;", "Landroid/os/Parcelable;", "compare", "", "icon1", "icon2", "queryIcons", "", "pack", "Lcom/maltaisn/icondialog/pack/IconPack;", SearchIntents.EXTRA_QUERY, "", "lib_release"}, k = 1, mv = {1, 1, 16})
public interface IconFilter extends Comparator<Icon>, Parcelable {
    int compare(Icon icon1, Icon icon2);

    List<Icon> queryIcons(IconPack pack, String query);

    /* JADX INFO: compiled from: IconFilter.kt */
    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    public static final class DefaultImpls {
        public static /* synthetic */ List queryIcons$default(IconFilter iconFilter, IconPack iconPack, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryIcons");
            }
            if ((i & 2) != 0) {
                str = null;
            }
            return iconFilter.queryIcons(iconPack, str);
        }
    }
}
