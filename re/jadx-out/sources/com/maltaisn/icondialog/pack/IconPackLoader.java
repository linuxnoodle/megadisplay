package com.maltaisn.icondialog.pack;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import com.kelocube.mirrorclient.MirrorActivity;
import com.maltaisn.icondialog.ExtensionsKt;
import com.maltaisn.icondialog.data.Category;
import com.maltaisn.icondialog.data.GroupingTag;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.data.NamedTag;
import de.mrapp.util.FileUtil;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: IconPackLoader.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 -2\u00020\u0001:\u0001-B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J6\u0010\r\u001a\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\u00102\b\b\u0003\u0010\u0011\u001a\u00020\u00102\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000eH\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u000eH\u0002J\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u001f\u001a\u00020 H\u0002¢\u0006\u0002\u0010!J0\u0010\"\u001a\u00020#2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u0010H\u0002J\u000e\u0010'\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000eJ0\u0010(\u001a\u0004\u0018\u00010\u0010*\u00020\u001d2\u0006\u0010)\u001a\u00020 2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0+H\u0082\b¢\u0006\u0002\u0010,R\u0016\u0010\u0002\u001a\n \u0005*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0007@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006."}, d2 = {"Lcom/maltaisn/icondialog/pack/IconPackLoader;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "kotlin.jvm.PlatformType", "<set-?>", "Lcom/maltaisn/icondialog/pack/IconDrawableLoader;", "drawableLoader", "getDrawableLoader", "()Lcom/maltaisn/icondialog/pack/IconDrawableLoader;", "setDrawableLoader$lib_release", "(Lcom/maltaisn/icondialog/pack/IconDrawableLoader;)V", "load", "Lcom/maltaisn/icondialog/pack/IconPack;", "iconsXml", "", "tagsXml", "locales", "", "Ljava/util/Locale;", "parent", "loadIcons", "", "pack", "loadTags", "parseCategory", "Lcom/maltaisn/icondialog/data/Category;", "parser", "Landroid/content/res/XmlResourceParser;", "parseDrawableId", "str", "", "(Ljava/lang/String;)Ljava/lang/Integer;", "parseIcon", "Lcom/maltaisn/icondialog/data/Icon;", "categoryId", "packWidth", "packHeight", "reloadStrings", "getPositiveInt", "attr", MirrorActivity.RESULT_EXTRA_ERROR, "Lkotlin/Function1;", "(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Integer;", "Companion", "lib_release"}, k = 1, mv = {1, 1, 16})
public final class IconPackLoader {
    private static final String XML_ATTR_CATG_ID = "id";
    private static final String XML_ATTR_CATG_NAME = "name";
    private static final String XML_ATTR_ICON_CATG = "category";
    private static final String XML_ATTR_ICON_HEIGHT = "height";
    private static final String XML_ATTR_ICON_ID = "id";
    private static final String XML_ATTR_ICON_PATH = "path";
    private static final String XML_ATTR_ICON_SRC = "src";
    private static final String XML_ATTR_ICON_TAGS = "tags";
    private static final String XML_ATTR_ICON_WIDTH = "width";
    private static final String XML_ATTR_TAG_NAME = "name";
    private static final String XML_TAG_ALIAS = "alias";
    private static final String XML_TAG_CATEGORY = "category";
    private static final String XML_TAG_ICON = "icon";
    private static final String XML_TAG_ICONS = "icons";
    private static final String XML_TAG_TAG = "tag";
    private static final String XML_TAG_TAGS = "tags";
    private final Context context;
    private IconDrawableLoader drawableLoader;

    public IconPackLoader(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context.getApplicationContext();
        this.drawableLoader = new IconDrawableLoader(context);
    }

    public final IconDrawableLoader getDrawableLoader() {
        return this.drawableLoader;
    }

    public final void setDrawableLoader$lib_release(IconDrawableLoader iconDrawableLoader) {
        Intrinsics.checkParameterIsNotNull(iconDrawableLoader, "<set-?>");
        this.drawableLoader = iconDrawableLoader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ IconPack load$default(IconPackLoader iconPackLoader, int i, int i2, List list, IconPack iconPack, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            list = CollectionsKt.emptyList();
        }
        if ((i3 & 8) != 0) {
            iconPack = null;
        }
        return iconPackLoader.load(i, i2, list, iconPack);
    }

    public final IconPack load(int iconsXml, int tagsXml, List<Locale> locales, IconPack parent) throws IconPackParseException {
        Intrinsics.checkParameterIsNotNull(locales, "locales");
        IconPack iconPack = new IconPack(parent, null, null, null, locales, tagsXml, 14, null);
        loadIcons(iconPack, iconsXml);
        loadTags(iconPack);
        return iconPack;
    }

    public final void reloadStrings(IconPack pack) throws IconPackParseException {
        Intrinsics.checkParameterIsNotNull(pack, "pack");
        if (pack.getParent() != null) {
            reloadStrings(pack.getParent());
        }
        pack.getTags().clear();
        loadTags(pack);
        for (Map.Entry<Integer, Category> entry : pack.getCategories().entrySet()) {
            int iIntValue = entry.getKey().intValue();
            Category value = entry.getValue();
            if (value.getNameRes() != 0) {
                Map<Integer, Category> categories = pack.getCategories();
                Integer numValueOf = Integer.valueOf(iIntValue);
                String string = this.context.getString(value.getNameRes());
                Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(category.nameRes)");
                categories.put(numValueOf, Category.copy$default(value, 0, string, 0, 5, null));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r16v5 */
    private final void loadIcons(IconPack pack, int iconsXml) throws IconPackParseException {
        ?? r16;
        Integer intOrNull;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Context context = this.context;
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        XmlResourceParser xml = context.getResources().getXml(iconsXml);
        Intrinsics.checkExpressionValueIsNotNull(xml, "context.resources.getXml(iconsXml)");
        boolean z = false;
        boolean z2 = false;
        int id = -1;
        int iIntValue = 0;
        int iIntValue2 = 0;
        for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
            String name = xml.getName();
            if (eventType == 2) {
                Integer num = null;
                if (!Intrinsics.areEqual(name, XML_TAG_ICONS)) {
                    if (!z2) {
                        IconPackLoaderKt.parseError("Invalid root element <" + name + ">.");
                        throw null;
                    }
                    if (z) {
                        IconPackLoaderKt.parseError("Icon element cannot have body.");
                        throw null;
                    }
                    if (name != null) {
                        int iHashCode = name.hashCode();
                        if (iHashCode != 3226745) {
                            if (iHashCode != 50511102 || !name.equals("category")) {
                                r16 = 0;
                                IconPackLoaderKt.parseError("Unknown element <" + name + ">.");
                                throw r16;
                            }
                            if (id != -1) {
                                IconPackLoaderKt.parseError("Nested category element is not allowed.");
                                throw null;
                            }
                            Category category = parseCategory(xml, pack);
                            id = category.getId();
                            if (linkedHashMap2.containsKey(Integer.valueOf(id))) {
                                IconPackLoaderKt.parseError("Duplicate category ID '" + id + "' in same file.");
                                throw null;
                            }
                            linkedHashMap2.put(Integer.valueOf(id), category);
                        } else {
                            num = null;
                            if (name.equals(XML_TAG_ICON)) {
                                Icon icon = parseIcon(xml, pack, id, iIntValue, iIntValue2);
                                if (linkedHashMap.containsKey(Integer.valueOf(icon.getId()))) {
                                    IconPackLoaderKt.parseError("Duplicate icon ID '" + icon.getId() + "' in same file.");
                                    throw null;
                                }
                                linkedHashMap.put(Integer.valueOf(icon.getId()), icon);
                                z = true;
                            }
                        }
                    }
                    r16 = num;
                    IconPackLoaderKt.parseError("Unknown element <" + name + ">.");
                    throw r16;
                }
                String attributeValue = xml.getAttributeValue(null, XML_ATTR_ICON_WIDTH);
                if (attributeValue != null) {
                    intOrNull = StringsKt.toIntOrNull(attributeValue);
                    if (intOrNull == null || intOrNull.intValue() < 0) {
                        IconPackLoaderKt.parseError("Invalid global icon width '" + attributeValue + "'.");
                        throw null;
                    }
                } else {
                    intOrNull = null;
                }
                iIntValue = intOrNull != null ? intOrNull.intValue() : 24;
                String attributeValue2 = xml.getAttributeValue(null, XML_ATTR_ICON_HEIGHT);
                if (attributeValue2 != null) {
                    Integer intOrNull2 = StringsKt.toIntOrNull(attributeValue2);
                    if (intOrNull2 == null || intOrNull2.intValue() < 0) {
                        IconPackLoaderKt.parseError("Invalid global icon height '" + attributeValue2 + "'.");
                        throw null;
                    }
                    num = intOrNull2;
                }
                iIntValue2 = num != null ? num.intValue() : 24;
                z2 = true;
            } else if (eventType == 3) {
                if (Intrinsics.areEqual(name, "category")) {
                    id = -1;
                } else if (Intrinsics.areEqual(name, XML_TAG_ICON)) {
                    z = false;
                }
            }
        }
        pack.getIcons().putAll(linkedHashMap);
        pack.getCategories().putAll(linkedHashMap2);
    }

    private final Integer parseDrawableId(String str) {
        if (!StringsKt.startsWith$default((CharSequence) str, '@', false, 2, (Object) null)) {
            return null;
        }
        if (!StringsKt.startsWith$default(str, "@drawable/", false, 2, (Object) null)) {
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring = str.substring(1);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
            return StringsKt.toIntOrNull(strSubstring);
        }
        Context context = this.context;
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        Resources resources = context.getResources();
        if (str != null) {
            String strSubstring2 = str.substring(10);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            Context context2 = this.context;
            Intrinsics.checkExpressionValueIsNotNull(context2, "context");
            return Integer.valueOf(resources.getIdentifier(strSubstring2, "drawable", context2.getPackageName()));
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    private final void loadTags(IconPack pack) throws IconPackParseException {
        if (pack.getTagsXml() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        Context context = this.context;
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        XmlResourceParser xml = context.getResources().getXml(pack.getTagsXml());
        Intrinsics.checkExpressionValueIsNotNull(xml, "context.resources.getXml(pack.tagsXml)");
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
            String name = xml.getName();
            if (eventType != 2) {
                if (eventType != 3) {
                    if (eventType == 4 && str != null) {
                        String text = xml.getText();
                        Intrinsics.checkExpressionValueIsNotNull(text, "parser.text");
                        String strReplace$default = StringsKt.replace$default(text, '`', '\'', false, 4, (Object) null);
                        NamedTag.Value value = new NamedTag.Value(strReplace$default, ExtensionsKt.normalize(strReplace$default));
                        if (z2) {
                            arrayList.add(value);
                        } else {
                            if (!arrayList.isEmpty()) {
                                IconPackLoaderKt.parseError("Tag cannot have both a value and aliases.");
                                throw null;
                            }
                            arrayList.add(value);
                            z3 = true;
                        }
                    }
                } else if (Intrinsics.areEqual(name, XML_TAG_TAG) && str != null) {
                    linkedHashMap.put(str, new NamedTag(str, CollectionsKt.toList(arrayList)));
                    arrayList.clear();
                    str = null;
                    z3 = false;
                } else if (Intrinsics.areEqual(name, XML_TAG_ALIAS)) {
                    z2 = false;
                }
            } else if (Intrinsics.areEqual(name, "tags")) {
                z = true;
            } else {
                if (!z) {
                    IconPackLoaderKt.parseError("Invalid root element <" + name + ">.");
                    throw null;
                }
                if (z2) {
                    IconPackLoaderKt.parseError("Alias cannot have nested elements.");
                    throw null;
                }
                if (Intrinsics.areEqual(name, XML_TAG_TAG)) {
                    if (str != null) {
                        IconPackLoaderKt.parseError("Nested tag element is not allowed.");
                        throw null;
                    }
                    String attributeValue = xml.getAttributeValue(null, "name");
                    if (attributeValue == null) {
                        IconPackLoaderKt.parseError("Tag element has no name attribute.");
                        throw null;
                    }
                    if (StringsKt.startsWith$default((CharSequence) attributeValue, '_', false, 2, (Object) null)) {
                        IconPackLoaderKt.parseError("Grouping tag '" + attributeValue + "' not allowed in labels XML.");
                        throw null;
                    }
                    if (linkedHashMap.containsKey(attributeValue)) {
                        IconPackLoaderKt.parseError("Duplicate tag '" + attributeValue + "' in same file.");
                        throw null;
                    }
                    str = attributeValue;
                    z3 = false;
                } else {
                    if (!Intrinsics.areEqual(name, XML_TAG_ALIAS)) {
                        IconPackLoaderKt.parseError("Unknown element <" + name + ">.");
                        throw null;
                    }
                    if (str == null) {
                        IconPackLoaderKt.parseError("Alias element must be in tag element body.");
                        throw null;
                    }
                    if (z3) {
                        IconPackLoaderKt.parseError("Tag cannot have both a value and aliases.");
                        throw null;
                    }
                    z2 = true;
                }
            }
        }
        pack.getTags().putAll(linkedHashMap);
    }

    private final Integer getPositiveInt(XmlResourceParser xmlResourceParser, String str, Function1<? super String, String> function1) throws IconPackParseException {
        String attributeValue = xmlResourceParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return null;
        }
        Integer intOrNull = StringsKt.toIntOrNull(attributeValue);
        if (intOrNull != null && intOrNull.intValue() >= 0) {
            return intOrNull;
        }
        IconPackLoaderKt.parseError(function1.invoke(attributeValue));
        throw null;
    }

    private final Category parseCategory(XmlResourceParser parser, IconPack pack) throws IconPackParseException {
        Integer intOrNull;
        int nameRes;
        int iIntValue;
        String attributeValue = parser.getAttributeValue(null, "id");
        if (attributeValue != null) {
            intOrNull = StringsKt.toIntOrNull(attributeValue);
            if (intOrNull == null || intOrNull.intValue() < 0) {
                IconPackLoaderKt.parseError("Invalid category ID '" + attributeValue + "'.");
                throw null;
            }
        } else {
            intOrNull = null;
        }
        if (intOrNull == null) {
            IconPackLoaderKt.parseError("Category must have an ID.");
            throw null;
        }
        int iIntValue2 = intOrNull.intValue();
        String attributeValue2 = parser.getAttributeValue(null, "name");
        if (attributeValue2 != null) {
            nameRes = 0;
            if (StringsKt.startsWith$default((CharSequence) attributeValue2, '@', false, 2, (Object) null)) {
                if (StringsKt.startsWith$default(attributeValue2, "@string/", false, 2, (Object) null)) {
                    Context context = this.context;
                    Intrinsics.checkExpressionValueIsNotNull(context, "context");
                    Resources resources = context.getResources();
                    String strSubstring = attributeValue2.substring(8);
                    Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
                    Context context2 = this.context;
                    Intrinsics.checkExpressionValueIsNotNull(context2, "context");
                    iIntValue = resources.getIdentifier(strSubstring, "string", context2.getPackageName());
                } else {
                    String strSubstring2 = attributeValue2.substring(1);
                    Intrinsics.checkExpressionValueIsNotNull(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                    Integer intOrNull2 = StringsKt.toIntOrNull(strSubstring2);
                    if (intOrNull2 != null) {
                        iIntValue = intOrNull2.intValue();
                    }
                    attributeValue2 = this.context.getString(nameRes);
                    Intrinsics.checkExpressionValueIsNotNull(attributeValue2, "context.getString(nameRes)");
                }
                nameRes = iIntValue;
                attributeValue2 = this.context.getString(nameRes);
                Intrinsics.checkExpressionValueIsNotNull(attributeValue2, "context.getString(nameRes)");
            }
        } else {
            Category category = pack.getCategory(iIntValue2);
            if (category != null) {
                nameRes = category.getNameRes();
                attributeValue2 = category.getName();
            } else {
                IconPackLoaderKt.parseError("Missing name for category ID " + iIntValue2 + FileUtil.SUFFIX_SEPARATOR_CHAR);
                throw null;
            }
        }
        return new Category(iIntValue2, attributeValue2, nameRes);
    }

    private final Icon parseIcon(XmlResourceParser parser, IconPack pack, int categoryId, int packWidth, int packHeight) throws IconPackParseException {
        Integer intOrNull;
        Integer numValueOf;
        List<String> listEmptyList;
        List<String> list;
        Integer num;
        Integer intOrNull2;
        Integer num2 = null;
        String attributeValue = parser.getAttributeValue(null, "id");
        if (attributeValue != null) {
            intOrNull = StringsKt.toIntOrNull(attributeValue);
            if (intOrNull == null || intOrNull.intValue() < 0) {
                IconPackLoaderKt.parseError("Invalid icon ID '" + attributeValue + "'.");
                throw null;
            }
        } else {
            intOrNull = null;
        }
        if (intOrNull == null) {
            IconPackLoaderKt.parseError("Icon must have an ID.");
            throw null;
        }
        int iIntValue = intOrNull.intValue();
        Icon icon = pack.getIcon(iIntValue);
        String attributeValue2 = parser.getAttributeValue(null, "category");
        if (attributeValue2 != null) {
            numValueOf = StringsKt.toIntOrNull(attributeValue2);
            if (numValueOf == null || numValueOf.intValue() < 0) {
                IconPackLoaderKt.parseError("Invalid icon category ID '" + attributeValue2 + "'.");
                throw null;
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf == null) {
            numValueOf = icon != null ? Integer.valueOf(icon.getCategoryId()) : null;
        }
        int iIntValue2 = numValueOf != null ? numValueOf.intValue() : categoryId;
        String attributeValue3 = parser.getAttributeValue(null, "tags");
        if (attributeValue3 != null) {
            List<String> listSplit$default = StringsKt.split$default((CharSequence) attributeValue3, new char[]{','}, false, 0, 6, (Object) null);
            for (String str : listSplit$default) {
                if (StringsKt.startsWith$default((CharSequence) str, '_', false, 2, (Object) null)) {
                    pack.getTags().put(str, new GroupingTag(str));
                }
            }
            list = listSplit$default;
        } else {
            if (icon == null || (listEmptyList = icon.getTags()) == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            list = listEmptyList;
        }
        String attributeValue4 = parser.getAttributeValue(null, XML_ATTR_ICON_PATH);
        if (attributeValue4 == null) {
            attributeValue4 = icon != null ? icon.getPathData() : null;
        }
        if (attributeValue4 == null) {
            attributeValue4 = "";
        }
        String str2 = attributeValue4;
        String attributeValue5 = parser.getAttributeValue(null, XML_ATTR_ICON_SRC);
        if (attributeValue5 != null && (srcId = parseDrawableId(attributeValue5)) != null) {
            num = srcId;
        } else if (icon != null) {
            Integer srcId = icon.getSrcId();
            num = srcId;
        } else {
            num = null;
        }
        if (StringsKt.isBlank(str2) && num == null) {
            IconPackLoaderKt.parseError("Icon ID " + iIntValue + " has no path data and no drawable resource specified.");
            throw null;
        }
        String attributeValue6 = parser.getAttributeValue(null, XML_ATTR_ICON_WIDTH);
        if (attributeValue6 != null) {
            intOrNull2 = StringsKt.toIntOrNull(attributeValue6);
            if (intOrNull2 == null || intOrNull2.intValue() < 0) {
                IconPackLoaderKt.parseError("Invalid icon width '" + attributeValue6 + "'.");
                throw null;
            }
        } else {
            intOrNull2 = null;
        }
        int iIntValue3 = intOrNull2 != null ? intOrNull2.intValue() : packWidth;
        String attributeValue7 = parser.getAttributeValue(null, XML_ATTR_ICON_HEIGHT);
        if (attributeValue7 != null) {
            Integer intOrNull3 = StringsKt.toIntOrNull(attributeValue7);
            if (intOrNull3 == null || intOrNull3.intValue() < 0) {
                IconPackLoaderKt.parseError("Invalid icon height '" + attributeValue7 + "'.");
                throw null;
            }
            num2 = intOrNull3;
        }
        return new Icon(iIntValue, iIntValue2, list, str2, iIntValue3, num2 != null ? num2.intValue() : packHeight, num);
    }
}
