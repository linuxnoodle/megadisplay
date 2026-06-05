package com.maltaisn.icondialog.pack;

import android.graphics.drawable.Drawable;
import com.maltaisn.icondialog.data.Category;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.data.IconTag;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IconPack.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001Bm\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u0012\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0004\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\b\b\u0003\u0010\u000f\u001a\u00020\u0005¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001f\u001a\u00020\u0005J\u0010\u0010 \u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001f\u001a\u00020\u0005J\u0018\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$J\u0010\u0010%\u001a\u0004\u0018\u00010\u000b2\u0006\u0010&\u001a\u00020\nJ\u000e\u0010'\u001a\u00020(2\u0006\u0010#\u001a\u00020$J\b\u0010)\u001a\u00020\nH\u0016R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00128F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\b0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0011\u0010\u000f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006*"}, d2 = {"Lcom/maltaisn/icondialog/pack/IconPack;", "", "parent", "icons", "", "", "Lcom/maltaisn/icondialog/data/Icon;", "categories", "Lcom/maltaisn/icondialog/data/Category;", "tags", "", "Lcom/maltaisn/icondialog/data/IconTag;", "locales", "", "Ljava/util/Locale;", "tagsXml", "(Lcom/maltaisn/icondialog/pack/IconPack;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;I)V", "allIcons", "", "getAllIcons", "()Ljava/util/List;", "getCategories", "()Ljava/util/Map;", "getIcons", "getLocales", "getParent", "()Lcom/maltaisn/icondialog/pack/IconPack;", "getTags", "getTagsXml", "()I", "getCategory", "id", "getIcon", "getIconDrawable", "Landroid/graphics/drawable/Drawable;", "loader", "Lcom/maltaisn/icondialog/pack/IconDrawableLoader;", "getTag", "name", "loadDrawables", "", "toString", "lib_release"}, k = 1, mv = {1, 1, 16})
public final class IconPack {
    private final Map<Integer, Category> categories;
    private final Map<Integer, Icon> icons;
    private final List<Locale> locales;
    private final IconPack parent;
    private final Map<String, IconTag> tags;
    private final int tagsXml;

    public IconPack() {
        this(null, null, null, null, null, 0, 63, null);
    }

    public IconPack(IconPack iconPack, Map<Integer, Icon> icons, Map<Integer, Category> categories, Map<String, IconTag> tags, List<Locale> locales, int i) {
        Intrinsics.checkParameterIsNotNull(icons, "icons");
        Intrinsics.checkParameterIsNotNull(categories, "categories");
        Intrinsics.checkParameterIsNotNull(tags, "tags");
        Intrinsics.checkParameterIsNotNull(locales, "locales");
        this.parent = iconPack;
        this.icons = icons;
        this.categories = categories;
        this.tags = tags;
        this.locales = locales;
        this.tagsXml = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ IconPack(IconPack iconPack, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, LinkedHashMap linkedHashMap3, List list, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            iconPack = null;
        }
        this(iconPack, (i2 & 2) != 0 ? new LinkedHashMap() : linkedHashMap, (i2 & 4) != 0 ? new LinkedHashMap() : linkedHashMap2, (i2 & 8) != 0 ? new LinkedHashMap() : linkedHashMap3, (i2 & 16) != 0 ? CollectionsKt.emptyList() : list, (i2 & 32) != 0 ? 0 : i);
    }

    public final IconPack getParent() {
        return this.parent;
    }

    public final Map<Integer, Icon> getIcons() {
        return this.icons;
    }

    public final Map<Integer, Category> getCategories() {
        return this.categories;
    }

    public final Map<String, IconTag> getTags() {
        return this.tags;
    }

    public final List<Locale> getLocales() {
        return this.locales;
    }

    public final int getTagsXml() {
        return this.tagsXml;
    }

    public final List<Icon> getAllIcons() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (IconPack iconPack = this; iconPack != null; iconPack = iconPack.parent) {
            for (Map.Entry<Integer, Icon> entry : iconPack.icons.entrySet()) {
                int iIntValue = entry.getKey().intValue();
                Icon value = entry.getValue();
                LinkedHashMap linkedHashMap2 = linkedHashMap;
                if (!linkedHashMap2.containsKey(Integer.valueOf(iIntValue))) {
                    linkedHashMap2.put(Integer.valueOf(iIntValue), value);
                }
            }
        }
        Collection collectionValues = linkedHashMap.values();
        Intrinsics.checkExpressionValueIsNotNull(collectionValues, "iconsMap.values");
        return CollectionsKt.toMutableList(collectionValues);
    }

    public final Icon getIcon(int id) {
        Icon icon = this.icons.get(Integer.valueOf(id));
        if (icon != null) {
            return icon;
        }
        IconPack iconPack = this.parent;
        if (iconPack != null) {
            return iconPack.getIcon(id);
        }
        return null;
    }

    public final Category getCategory(int id) {
        Category category = this.categories.get(Integer.valueOf(id));
        if (category != null) {
            return category;
        }
        IconPack iconPack = this.parent;
        if (iconPack != null) {
            return iconPack.getCategory(id);
        }
        return null;
    }

    public final IconTag getTag(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        IconTag iconTag = this.tags.get(name);
        if (iconTag != null) {
            return iconTag;
        }
        IconPack iconPack = this.parent;
        if (iconPack != null) {
            return iconPack.getTag(name);
        }
        return null;
    }

    public final Drawable getIconDrawable(int id, IconDrawableLoader loader) {
        Intrinsics.checkParameterIsNotNull(loader, "loader");
        Icon icon = getIcon(id);
        if (icon == null) {
            return null;
        }
        loader.loadDrawable(icon);
        return icon.getDrawable();
    }

    public final void loadDrawables(IconDrawableLoader loader) {
        Intrinsics.checkParameterIsNotNull(loader, "loader");
        Iterator<Icon> it = getAllIcons().iterator();
        while (it.hasNext()) {
            loader.loadDrawable(it.next());
        }
    }

    public String toString() {
        return "IconPack(" + this.icons.size() + " icons, " + this.categories.size() + " categories, " + this.tags.size() + " tags, locales=" + this.locales + ", parent=" + this.parent + ')';
    }
}
