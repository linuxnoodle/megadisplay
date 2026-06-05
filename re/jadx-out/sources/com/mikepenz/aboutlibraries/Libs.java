package com.mikepenz.aboutlibraries;

import android.content.Context;
import android.util.Log;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.entity.License;
import com.mikepenz.aboutlibraries.util.ContextExtensionKt;
import com.mikepenz.aboutlibraries.util.GenericsUtilKt;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: Libs.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u0000 :2\u00020\u0001:\u0003:;<B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\b¢\u0006\u0002\u0010\tJ4\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J$\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aJ$\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aJ\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001aJ\u001a\u0010\u001e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0006H\u0002J\u001a\u0010!\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0006H\u0002J\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\f0\u000f2\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0015J\"\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060&2\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0006J\u0016\u0010'\u001a\u0012\u0012\u0004\u0012\u00020\f0(j\b\u0012\u0004\u0012\u00020\f`)J\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\f0(j\b\u0012\u0004\u0012\u00020\f`)J\u0010\u0010+\u001a\u0004\u0018\u00010\f2\u0006\u0010 \u001a\u00020\u0006J\u0010\u0010,\u001a\u0004\u0018\u00010\u00132\u0006\u0010\"\u001a\u00020\u0006J\u0016\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u00130(j\b\u0012\u0004\u0012\u00020\u0013`)J\"\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060&J(\u00101\u001a\u0002022 \u00103\u001a\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060&\u0018\u00010&Je\u00104\u001a\u0012\u0012\u0004\u0012\u00020\f0(j\b\u0012\u0004\u0012\u00020\f`)2\u0006\u0010\u001f\u001a\u00020\u00032\u0010\b\u0002\u00105\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00052\u0010\b\u0002\u00106\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00052\b\b\u0002\u00107\u001a\u00020\u00152\b\b\u0002\u0010$\u001a\u00020\u00152\b\b\u0002\u00108\u001a\u00020\u0015¢\u0006\u0002\u00109R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Lcom/mikepenz/aboutlibraries/Libs;", "", "context", "Landroid/content/Context;", "fields", "", "", "libraryEnchantments", "", "(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V", "externLibraries", "", "Lcom/mikepenz/aboutlibraries/entity/Library;", "internLibraries", "libraries", "", "getLibraries", "()Ljava/util/List;", "licenses", "Lcom/mikepenz/aboutlibraries/entity/License;", "usedGradlePlugin", "", "find", "searchTerm", "idOnly", "limit", "", "findInExternalLibrary", "findInInternalLibrary", "findLibrary", "genLibrary", "ctx", "libraryName", "genLicense", "licenseName", "getAutoDetectedLibraries", "checkCachedDetection", "getCustomVariables", "Ljava/util/HashMap;", "getExternLibraries", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "getInternLibraries", "getLibrary", "getLicense", "getLicenses", "insertVariables", "insertIntoVar", "variables", "modifyLibraries", "", "modifications", "prepareLibraries", "internalLibraries", "excludeLibraries", "autoDetect", "sort", "(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;ZZZ)Ljava/util/ArrayList;", "Companion", "LibraryFields", "SpecialButton", "aboutlibraries-core"}, k = 1, mv = {1, 1, 16})
public final class Libs {
    public static final String BUNDLE_EDGE_TO_EDGE = "ABOUT_LIBRARIES_EDGE_TO_EDGE";
    public static final String BUNDLE_TITLE = "ABOUT_LIBRARIES_TITLE";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String DEFINE_EXT = "define_";
    private static final String DEFINE_INT = "define_int_";
    private static final String DEFINE_LICENSE = "define_license_";
    private static final String DEFINE_PLUGIN = "define_plu_";
    private static final String DELIMITER = ";";
    private final List<Library> externLibraries;
    private final List<Library> internLibraries;
    private final List<License> licenses;
    private boolean usedGradlePlugin;

    /* JADX INFO: compiled from: Libs.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0010\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;", "", "(Ljava/lang/String;I)V", "AUTHOR_NAME", "AUTHOR_WEBSITE", "LIBRARY_NAME", "LIBRARY_DESCRIPTION", "LIBRARY_VERSION", "LIBRARY_ARTIFACT_ID", "LIBRARY_WEBSITE", "LIBRARY_OPEN_SOURCE", "LIBRARY_REPOSITORY_LINK", "LIBRARY_CLASSPATH", "LICENSE_NAME", "LICENSE_SHORT_DESCRIPTION", "LICENSE_DESCRIPTION", "LICENSE_WEBSITE", "aboutlibraries-core"}, k = 1, mv = {1, 1, 16})
    public enum LibraryFields {
        AUTHOR_NAME,
        AUTHOR_WEBSITE,
        LIBRARY_NAME,
        LIBRARY_DESCRIPTION,
        LIBRARY_VERSION,
        LIBRARY_ARTIFACT_ID,
        LIBRARY_WEBSITE,
        LIBRARY_OPEN_SOURCE,
        LIBRARY_REPOSITORY_LINK,
        LIBRARY_CLASSPATH,
        LICENSE_NAME,
        LICENSE_SHORT_DESCRIPTION,
        LICENSE_DESCRIPTION,
        LICENSE_WEBSITE
    }

    /* JADX INFO: compiled from: Libs.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;", "", "(Ljava/lang/String;I)V", "SPECIAL1", "SPECIAL2", "SPECIAL3", "aboutlibraries-core"}, k = 1, mv = {1, 1, 16})
    public enum SpecialButton {
        SPECIAL1,
        SPECIAL2,
        SPECIAL3
    }

    public Libs(Context context, String[] fields, Map<String, String> libraryEnchantments) {
        Library libraryGenLibrary;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(fields, "fields");
        Intrinsics.checkParameterIsNotNull(libraryEnchantments, "libraryEnchantments");
        this.internLibraries = new ArrayList();
        this.externLibraries = new ArrayList();
        this.licenses = new ArrayList();
        ArrayList<String> arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        ArrayList<String> arrayList3 = new ArrayList();
        ArrayList<String> arrayList4 = new ArrayList();
        for (String str : fields) {
            if (StringsKt.startsWith$default(str, DEFINE_LICENSE, false, 2, (Object) null)) {
                arrayList.add(StringsKt.replace$default(str, DEFINE_LICENSE, "", false, 4, (Object) null));
            } else if (StringsKt.startsWith$default(str, DEFINE_INT, false, 2, (Object) null)) {
                arrayList2.add(StringsKt.replace$default(str, DEFINE_INT, "", false, 4, (Object) null));
            } else if (StringsKt.startsWith$default(str, DEFINE_PLUGIN, false, 2, (Object) null)) {
                arrayList4.add(StringsKt.replace$default(str, DEFINE_PLUGIN, "", false, 4, (Object) null));
            } else if (StringsKt.startsWith$default(str, DEFINE_EXT, false, 2, (Object) null)) {
                arrayList3.add(StringsKt.replace$default(str, DEFINE_EXT, "", false, 4, (Object) null));
            }
        }
        for (String licenseIdentifier : arrayList) {
            Intrinsics.checkExpressionValueIsNotNull(licenseIdentifier, "licenseIdentifier");
            License licenseGenLicense = genLicense(context, licenseIdentifier);
            if (licenseGenLicense != null) {
                this.licenses.add(licenseGenLicense);
            }
        }
        for (String pluginLibraryIdentifier : arrayList4) {
            Intrinsics.checkExpressionValueIsNotNull(pluginLibraryIdentifier, "pluginLibraryIdentifier");
            Library libraryGenLibrary2 = genLibrary(context, pluginLibraryIdentifier);
            if (libraryGenLibrary2 != null) {
                libraryGenLibrary2.setInternal(false);
                libraryGenLibrary2.setPlugin(true);
                this.externLibraries.add(libraryGenLibrary2);
                this.usedGradlePlugin = true;
                String str2 = libraryEnchantments.get(pluginLibraryIdentifier);
                if (str2 != null && (libraryGenLibrary = genLibrary(context, str2)) != null) {
                    libraryGenLibrary2.enchantBy(libraryGenLibrary);
                }
            }
        }
        if (arrayList4.isEmpty()) {
            for (String internalIdentifier : arrayList2) {
                Intrinsics.checkExpressionValueIsNotNull(internalIdentifier, "internalIdentifier");
                Library libraryGenLibrary3 = genLibrary(context, internalIdentifier);
                if (libraryGenLibrary3 != null) {
                    libraryGenLibrary3.setInternal(true);
                    this.internLibraries.add(libraryGenLibrary3);
                }
            }
            for (String externalIdentifier : arrayList3) {
                Intrinsics.checkExpressionValueIsNotNull(externalIdentifier, "externalIdentifier");
                Library libraryGenLibrary4 = genLibrary(context, externalIdentifier);
                if (libraryGenLibrary4 != null) {
                    libraryGenLibrary4.setInternal(false);
                    this.externLibraries.add(libraryGenLibrary4);
                }
            }
        }
    }

    public /* synthetic */ Libs(Context context, String[] strArr, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? GenericsUtilKt.getFields(context) : strArr, (i & 4) != 0 ? MapsKt.emptyMap() : map);
    }

    public final List<Library> getLibraries() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getInternLibraries());
        arrayList.addAll(getExternLibraries());
        return arrayList;
    }

    public final ArrayList<Library> prepareLibraries(Context ctx, String[] internalLibraries, String[] excludeLibraries, boolean autoDetect, boolean checkCachedDetection, boolean sort) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(internalLibraries, "internalLibraries");
        Intrinsics.checkParameterIsNotNull(excludeLibraries, "excludeLibraries");
        boolean z = !(excludeLibraries.length == 0);
        HashMap map = new HashMap();
        ArrayList<Library> arrayList = new ArrayList<>();
        if (!this.usedGradlePlugin && autoDetect) {
            List<Library> autoDetectedLibraries = getAutoDetectedLibraries(ctx, checkCachedDetection);
            arrayList.addAll(autoDetectedLibraries);
            if (z) {
                for (Library library : autoDetectedLibraries) {
                    map.put(library.getDefinedName(), library);
                }
            }
        }
        ArrayList<Library> externLibraries = getExternLibraries();
        arrayList.addAll(externLibraries);
        if (z) {
            for (Library lib : externLibraries) {
                String definedName = lib.getDefinedName();
                Intrinsics.checkExpressionValueIsNotNull(lib, "lib");
                map.put(definedName, lib);
            }
        }
        if (!(internalLibraries.length == 0)) {
            for (String str : internalLibraries) {
                Library library2 = getLibrary(str);
                if (library2 != null) {
                    arrayList.add(library2);
                    map.put(library2.getDefinedName(), library2);
                }
            }
        }
        if (z) {
            for (String str2 : excludeLibraries) {
                Library library3 = (Library) map.get(str2);
                if (library3 != null) {
                    Intrinsics.checkExpressionValueIsNotNull(library3, "libraries[excludeLibrary] ?: continue");
                    arrayList.remove(library3);
                }
            }
        }
        if (sort) {
            CollectionsKt.sort(arrayList);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.mikepenz.aboutlibraries.entity.Library> getAutoDetectedLibraries(android.content.Context r11, boolean r12) {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.aboutlibraries.Libs.getAutoDetectedLibraries(android.content.Context, boolean):java.util.List");
    }

    public final ArrayList<Library> getInternLibraries() {
        return new ArrayList<>(this.internLibraries);
    }

    public final ArrayList<Library> getExternLibraries() {
        return new ArrayList<>(this.externLibraries);
    }

    public final ArrayList<License> getLicenses() {
        return new ArrayList<>(this.licenses);
    }

    public final Library getLibrary(String libraryName) {
        Intrinsics.checkParameterIsNotNull(libraryName, "libraryName");
        Iterator<Library> it = getLibraries().iterator();
        while (it.hasNext()) {
            Library next = it.next();
            if (StringsKt.equals(next.getLibraryName(), libraryName, true) || StringsKt.equals(next.getDefinedName(), libraryName, true)) {
                return next;
            }
        }
        return null;
    }

    public final List<Library> findLibrary(String searchTerm, int limit) {
        Intrinsics.checkParameterIsNotNull(searchTerm, "searchTerm");
        return find(getLibraries(), searchTerm, false, limit);
    }

    public final List<Library> findInInternalLibrary(String searchTerm, boolean idOnly, int limit) {
        Intrinsics.checkParameterIsNotNull(searchTerm, "searchTerm");
        return find(getInternLibraries(), searchTerm, idOnly, limit);
    }

    public final List<Library> findInExternalLibrary(String searchTerm, boolean idOnly, int limit) {
        Intrinsics.checkParameterIsNotNull(searchTerm, "searchTerm");
        return find(getExternLibraries(), searchTerm, idOnly, limit);
    }

    private final List<Library> find(List<Library> libraries, String searchTerm, boolean idOnly, int limit) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Library library : libraries) {
            if (idOnly) {
                if (StringsKt.contains((CharSequence) library.getDefinedName(), (CharSequence) searchTerm, true)) {
                    arrayList.add(library);
                    i++;
                    if (limit != -1 && limit < i) {
                        break;
                    }
                } else {
                    continue;
                }
            } else {
                String str = searchTerm;
                if (StringsKt.contains((CharSequence) library.getLibraryName(), (CharSequence) str, true) || StringsKt.contains((CharSequence) library.getDefinedName(), (CharSequence) str, true)) {
                    arrayList.add(library);
                    i++;
                    if (limit != -1 && limit < i) {
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    public final License getLicense(String licenseName) {
        Intrinsics.checkParameterIsNotNull(licenseName, "licenseName");
        Iterator<License> it = getLicenses().iterator();
        while (it.hasNext()) {
            License next = it.next();
            if (StringsKt.equals(next.getLicenseName(), licenseName, true) || StringsKt.equals(next.getDefinedName(), licenseName, true)) {
                return next;
            }
        }
        return null;
    }

    private final License genLicense(Context ctx, String licenseName) {
        String str;
        String strReplace$default = StringsKt.replace$default(licenseName, "-", "_", false, 4, (Object) null);
        try {
            String stringResourceByName = ContextExtensionKt.getStringResourceByName(ctx, "license_" + strReplace$default + "_licenseDescription");
            if (StringsKt.startsWith$default(stringResourceByName, "raw:", false, 2, (Object) null)) {
                InputStream inputStreamOpenRawResource = ctx.getResources().openRawResource(ContextExtensionKt.getRawResourceId(ctx, StringsKt.removePrefix(stringResourceByName, (CharSequence) "raw:")));
                Intrinsics.checkExpressionValueIsNotNull(inputStreamOpenRawResource, "ctx.resources.openRawRes…on.removePrefix(\"raw:\")))");
                Reader inputStreamReader = new InputStreamReader(inputStreamOpenRawResource, Charsets.UTF_8);
                BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                try {
                    String text = TextStreamsKt.readText(bufferedReader);
                    CloseableKt.closeFinally(bufferedReader, null);
                    str = text;
                } finally {
                }
            } else {
                str = stringResourceByName;
            }
            return new License(strReplace$default, ContextExtensionKt.getStringResourceByName(ctx, "license_" + strReplace$default + "_licenseName"), ContextExtensionKt.getStringResourceByName(ctx, "license_" + strReplace$default + "_licenseWebsite"), ContextExtensionKt.getStringResourceByName(ctx, "license_" + strReplace$default + "_licenseShortDescription"), str);
        } catch (Exception e) {
            Log.e("aboutlibraries", "Failed to generateLicense from file: " + e.toString());
            return null;
        }
    }

    private final Library genLibrary(Context ctx, String libraryName) {
        String strReplace$default = StringsKt.replace$default(libraryName, "-", "_", false, 4, (Object) null);
        try {
            Library library = new Library(strReplace$default, false, false, ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_libraryName"), null, null, null, null, null, null, null, false, null, null, 16374, null);
            HashMap<String, String> customVariables = getCustomVariables(ctx, strReplace$default);
            library.setAuthor(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_author"));
            library.setAuthorWebsite(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_authorWebsite"));
            library.setLibraryDescription(insertVariables(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_libraryDescription"), customVariables));
            library.setLibraryVersion(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_libraryVersion"));
            library.setLibraryArtifactId(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_libraryArtifactId"));
            library.setLibraryWebsite(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_libraryWebsite"));
            String stringResourceByName = ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_licenseId");
            if (StringsKt.isBlank(stringResourceByName)) {
                library.setLicense(new License("", ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_licenseVersion"), ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_licenseLink"), insertVariables(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_licenseContent"), customVariables), insertVariables(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_licenseContent"), customVariables)));
            } else {
                License license = getLicense(stringResourceByName);
                if (license != null) {
                    License licenseCopy$default = License.copy$default(license, null, null, null, null, null, 31, null);
                    licenseCopy$default.setLicenseShortDescription(insertVariables(licenseCopy$default.getLicenseShortDescription(), customVariables));
                    licenseCopy$default.setLicenseDescription(insertVariables(licenseCopy$default.getLicenseDescription(), customVariables));
                    library.setLicense(licenseCopy$default);
                }
            }
            Boolean boolValueOf = Boolean.valueOf(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_isOpenSource"));
            Intrinsics.checkExpressionValueIsNotNull(boolValueOf, "java.lang.Boolean.valueO… name + \"_isOpenSource\"))");
            library.setOpenSource(boolValueOf.booleanValue());
            library.setRepositoryLink(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_repositoryLink"));
            library.setClassPath(ContextExtensionKt.getStringResourceByName(ctx, "library_" + strReplace$default + "_classPath"));
            if (StringsKt.isBlank(library.getLibraryName())) {
                if (StringsKt.isBlank(library.getLibraryDescription())) {
                    return null;
                }
            }
            return library;
        } catch (Exception e) {
            Log.e("aboutlibraries", "Failed to generateLibrary from file: " + e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap<java.lang.String, java.lang.String> getCustomVariables(final android.content.Context r8, final java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.aboutlibraries.Libs.getCustomVariables(android.content.Context, java.lang.String):java.util.HashMap");
    }

    public final String insertVariables(String insertIntoVar, HashMap<String, String> variables) {
        Intrinsics.checkParameterIsNotNull(insertIntoVar, "insertIntoVar");
        Intrinsics.checkParameterIsNotNull(variables, "variables");
        while (true) {
            String str = insertIntoVar;
            for (Map.Entry<String, String> entry : variables.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (value.length() > 0) {
                    StringBuilder sb = new StringBuilder("<<<");
                    Locale locale = Locale.US;
                    Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
                    if (key == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    String upperCase = key.toUpperCase(locale);
                    Intrinsics.checkExpressionValueIsNotNull(upperCase, "(this as java.lang.String).toUpperCase(locale)");
                    sb.append(upperCase);
                    sb.append(">>>");
                    insertIntoVar = StringsKt.replace$default(str, sb.toString(), value, false, 4, (Object) null);
                }
            }
            return StringsKt.replace$default(StringsKt.replace$default(str, "<<<", "", false, 4, (Object) null), ">>>", "", false, 4, (Object) null);
        }
    }

    public final void modifyLibraries(HashMap<String, HashMap<String, String>> modifications) {
        if (modifications != null) {
            for (Map.Entry<String, HashMap<String, String>> entry : modifications.entrySet()) {
                String key = entry.getKey();
                HashMap<String, String> value = entry.getValue();
                List<Library> listFindInExternalLibrary = findInExternalLibrary(key, true, 1);
                if (listFindInExternalLibrary == null || listFindInExternalLibrary.isEmpty()) {
                    listFindInExternalLibrary = findInInternalLibrary(key, true, 1);
                }
                if (listFindInExternalLibrary.size() == 1) {
                    Library library = listFindInExternalLibrary.get(0);
                    for (Map.Entry<String, String> entry2 : value.entrySet()) {
                        String key2 = entry2.getKey();
                        String value2 = entry2.getValue();
                        Locale locale = Locale.US;
                        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
                        if (key2 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                        }
                        String upperCase = key2.toUpperCase(locale);
                        Intrinsics.checkExpressionValueIsNotNull(upperCase, "(this as java.lang.String).toUpperCase(locale)");
                        if (Intrinsics.areEqual(upperCase, LibraryFields.AUTHOR_NAME.name())) {
                            library.setAuthor(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.AUTHOR_WEBSITE.name())) {
                            library.setAuthorWebsite(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_NAME.name())) {
                            library.setLibraryName(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_DESCRIPTION.name())) {
                            library.setLibraryDescription(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_VERSION.name())) {
                            library.setLibraryVersion(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_ARTIFACT_ID.name())) {
                            library.setLibraryArtifactId(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_WEBSITE.name())) {
                            library.setLibraryWebsite(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_OPEN_SOURCE.name())) {
                            library.setOpenSource(Boolean.parseBoolean(value2));
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_REPOSITORY_LINK.name())) {
                            library.setRepositoryLink(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LIBRARY_CLASSPATH.name())) {
                            library.setClassPath(value2);
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LICENSE_NAME.name())) {
                            if (library.getLicense() == null) {
                                library.setLicense(new License("", "", "", "", ""));
                            }
                            License license = library.getLicense();
                            if (license != null) {
                                license.setLicenseName(value2);
                            }
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LICENSE_SHORT_DESCRIPTION.name())) {
                            if (library.getLicense() == null) {
                                library.setLicense(new License("", "", "", "", ""));
                            }
                            License license2 = library.getLicense();
                            if (license2 != null) {
                                license2.setLicenseShortDescription(value2);
                            }
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LICENSE_DESCRIPTION.name())) {
                            if (library.getLicense() == null) {
                                library.setLicense(new License("", "", "", "", ""));
                            }
                            License license3 = library.getLicense();
                            if (license3 != null) {
                                license3.setLicenseDescription(value2);
                            }
                        } else if (Intrinsics.areEqual(upperCase, LibraryFields.LICENSE_WEBSITE.name())) {
                            if (library.getLicense() == null) {
                                library.setLicense(new License("", "", "", "", ""));
                            }
                            License license4 = library.getLicense();
                            if (license4 != null) {
                                license4.setLicenseWebsite(value2);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: compiled from: Libs.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000e¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/mikepenz/aboutlibraries/Libs$Companion;", "", "()V", "BUNDLE_EDGE_TO_EDGE", "", "BUNDLE_TITLE", "DEFINE_EXT", "DEFINE_INT", "DEFINE_LICENSE", "DEFINE_PLUGIN", "DELIMITER", "classFields", "", "rClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)[Ljava/lang/String;", "aboutlibraries-core"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String[] classFields(Class<?> rClass) {
            Intrinsics.checkParameterIsNotNull(rClass, "rClass");
            Field[] fields = rClass.getFields();
            Intrinsics.checkExpressionValueIsNotNull(fields, "rClass.fields");
            return GenericsUtilKt.toStringArray(fields);
        }
    }
}
