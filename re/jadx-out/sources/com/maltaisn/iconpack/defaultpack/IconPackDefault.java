package com.maltaisn.iconpack.defaultpack;

import com.maltaisn.icondialog.pack.IconPack;
import com.maltaisn.icondialog.pack.IconPackLoader;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: iconPackDefault.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"createDefaultIconPack", "Lcom/maltaisn/icondialog/pack/IconPack;", "loader", "Lcom/maltaisn/icondialog/pack/IconPackLoader;", "iconpack-default_release"}, k = 2, mv = {1, 1, 16})
public final class IconPackDefault {
    public static final IconPack createDefaultIconPack(IconPackLoader loader) {
        Intrinsics.checkParameterIsNotNull(loader, "loader");
        return IconPackLoader.load$default(loader, R.xml.iconpack_default_icons, R.xml.iconpack_default_tags, CollectionsKt.listOf((Object[]) new Locale[]{new Locale("en"), new Locale("fr"), new Locale("es"), new Locale("de"), new Locale("pt")}), null, 8, null);
    }
}
