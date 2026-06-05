package com.mikepenz.aboutlibraries;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.animation.LayoutAnimationController;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.ui.LibsActivity;
import com.mikepenz.aboutlibraries.ui.LibsFragment;
import com.mikepenz.aboutlibraries.ui.LibsSupportFragment;
import com.mikepenz.aboutlibraries.ui.item.LibraryItem;
import com.mikepenz.aboutlibraries.util.GenericsUtilKt;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LibsBuilder.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0010\u0011\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020uJ\u0012\u0010v\u001a\u0006\u0012\u0002\b\u00030w2\u0006\u0010x\u001a\u00020uJ\u0006\u0010y\u001a\u00020zJ\u001e\u0010{\u001a\u00020|2\u0006\u0010t\u001a\u00020u2\f\b\u0002\u0010}\u001a\u0006\u0012\u0002\b\u00030^H\u0007J\b\u0010~\u001a\u00020sH\u0002J\u000e\u0010\u007f\u001a\u00020s2\u0006\u0010t\u001a\u00020uJ\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001J\u000f\u0010\u0082\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000f\u0010\u0083\u0001\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0004J\u000f\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fJ\u000f\u0010\u0085\u0001\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J\u000f\u0010\u0086\u0001\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0004J\u000f\u0010\u0087\u0001\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0004J\u000f\u0010\u0088\u0001\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0004J\u000f\u0010\u0089\u0001\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0004J\u000f\u0010\u008a\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0004J\u000f\u0010\u008b\u0001\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001fJ\u000f\u0010\u008c\u0001\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001fJ\u000f\u0010\u008d\u0001\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001fJ\u000f\u0010\u008e\u0001\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0004J\u000f\u0010\u008f\u0001\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0004J\u000f\u0010\u0090\u0001\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u001fJ\u000f\u0010\u0091\u0001\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u001fJ\u0010\u0010\u0092\u0001\u001a\u00020\u00002\u0007\u0010\u0093\u0001\u001a\u00020\u001fJ!\u0010\u0094\u0001\u001a\u00020\u00002\u0012\u0010<\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040=\"\u00020\u0004¢\u0006\u0003\u0010\u0095\u0001J\u001c\u0010\u0096\u0001\u001a\u00020\u00002\r\u0010C\u001a\t\u0012\u0005\u0012\u00030\u0097\u00010=¢\u0006\u0003\u0010\u0098\u0001J\u001b\u0010\u0096\u0001\u001a\u00020\u00002\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040=¢\u0006\u0003\u0010\u0095\u0001J\u0011\u0010\u0099\u0001\u001a\u00020\u00002\b\u0010\u009a\u0001\u001a\u00030\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\u00002\b\u0010\u009d\u0001\u001a\u00030\u009e\u0001J\u0011\u0010\u009f\u0001\u001a\u00020\u00002\b\u0010I\u001a\u0004\u0018\u00010JJ\"\u0010 \u0001\u001a\u00020\u00002\u0013\u0010¡\u0001\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040=\"\u00020\u0004¢\u0006\u0003\u0010\u0095\u0001J\u0017\u0010¢\u0001\u001a\u00020\u00002\u000e\u0010O\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010PJ\u0019\u0010£\u0001\u001a\u00020\u00002\u0007\u0010¤\u0001\u001a\u00020\u00042\u0007\u0010¥\u0001\u001a\u00020\u0004J#\u0010¦\u0001\u001a\u00020\u00002\u0007\u0010¤\u0001\u001a\u00020\u00042\b\u0010§\u0001\u001a\u00030¨\u00012\u0007\u0010©\u0001\u001a\u00020\u0004JS\u0010¦\u0001\u001a\u00020\u00002J\u0010[\u001aF\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040W0Wj*\u0012\u0004\u0012\u00020\u0004\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040Wj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`X`XJ\u0011\u0010ª\u0001\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001J\u000f\u0010\u00ad\u0001\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u001fJ\u000f\u0010®\u0001\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u001fJ\u0011\u0010¯\u0001\u001a\u00020\u00002\b\u0010°\u0001\u001a\u00030±\u0001J\u0013\u0010²\u0001\u001a\u00020\u00002\n\u0010}\u001a\u0006\u0012\u0002\b\u00030^J\u000f\u0010³\u0001\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u001fJ\u000f\u0010´\u0001\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u001fJ\u0011\u0010µ\u0001\u001a\u00020\u00002\b\u0010¶\u0001\u001a\u00030·\u0001J\u000f\u0010¸\u0001\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u001fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R\u001a\u0010'\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010!\"\u0004\b)\u0010#R\u001a\u0010*\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010!\"\u0004\b,\u0010#R\u001a\u0010-\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0006\"\u0004\b2\u0010\bR\u001a\u00103\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010!\"\u0004\b5\u0010#R\u001a\u00106\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010!\"\u0004\b8\u0010#R\u001a\u00109\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010!\"\u0004\b;\u0010#R$\u0010<\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040=X\u0086\u000e¢\u0006\u0010\n\u0002\u0010B\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00040=X\u0086\u000e¢\u0006\u0010\n\u0002\u0010B\u001a\u0004\bD\u0010?\"\u0004\bE\u0010AR$\u0010F\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040=X\u0086\u000e¢\u0006\u0010\n\u0002\u0010B\u001a\u0004\bG\u0010?\"\u0004\bH\u0010AR\u001a\u0010I\u001a\u00020JX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\"\u0010O\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010PX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR-\u0010V\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040Wj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`X¢\u0006\b\n\u0000\u001a\u0004\bY\u0010ZRU\u0010[\u001aF\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040W0Wj*\u0012\u0004\u0012\u00020\u0004\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040Wj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`X`X¢\u0006\b\n\u0000\u001a\u0004\b\\\u0010ZR\u001e\u0010]\u001a\u0006\u0012\u0002\b\u00030^X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\u001a\u0010c\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010!\"\u0004\be\u0010#R\u001a\u0010f\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bg\u0010!\"\u0004\bh\u0010#R\u001a\u0010i\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010!\"\u0004\bk\u0010#R\u001a\u0010l\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bm\u0010!\"\u0004\bn\u0010#R\u001a\u0010o\u001a\u00020\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010!\"\u0004\bq\u0010#¨\u0006¹\u0001"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsBuilder;", "Ljava/io/Serializable;", "()V", "aboutAppName", "", "getAboutAppName", "()Ljava/lang/String;", "setAboutAppName", "(Ljava/lang/String;)V", "aboutAppSpecial1", "getAboutAppSpecial1", "setAboutAppSpecial1", "aboutAppSpecial1Description", "getAboutAppSpecial1Description", "setAboutAppSpecial1Description", "aboutAppSpecial2", "getAboutAppSpecial2", "setAboutAppSpecial2", "aboutAppSpecial2Description", "getAboutAppSpecial2Description", "setAboutAppSpecial2Description", "aboutAppSpecial3", "getAboutAppSpecial3", "setAboutAppSpecial3", "aboutAppSpecial3Description", "getAboutAppSpecial3Description", "setAboutAppSpecial3Description", "aboutDescription", "getAboutDescription", "setAboutDescription", "aboutShowIcon", "", "getAboutShowIcon", "()Z", "setAboutShowIcon", "(Z)V", "aboutShowVersion", "getAboutShowVersion", "setAboutShowVersion", "aboutShowVersionCode", "getAboutShowVersionCode", "setAboutShowVersionCode", "aboutShowVersionName", "getAboutShowVersionName", "setAboutShowVersionName", "aboutVersionString", "getAboutVersionString", "setAboutVersionString", "activityTitle", "getActivityTitle", "setActivityTitle", "autoDetect", "getAutoDetect", "setAutoDetect", "checkCachedDetection", "getCheckCachedDetection", "setCheckCachedDetection", "edgeToEdge", "getEdgeToEdge", "setEdgeToEdge", "excludeLibraries", "", "getExcludeLibraries", "()[Ljava/lang/String;", "setExcludeLibraries", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "fields", "getFields", "setFields", "internalLibraries", "getInternalLibraries", "setInternalLibraries", "libTaskExecutor", "Lcom/mikepenz/aboutlibraries/LibTaskExecutor;", "getLibTaskExecutor", "()Lcom/mikepenz/aboutlibraries/LibTaskExecutor;", "setLibTaskExecutor", "(Lcom/mikepenz/aboutlibraries/LibTaskExecutor;)V", "libraryComparator", "Ljava/util/Comparator;", "Lcom/mikepenz/aboutlibraries/entity/Library;", "getLibraryComparator", "()Ljava/util/Comparator;", "setLibraryComparator", "(Ljava/util/Comparator;)V", "libraryEnchantment", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getLibraryEnchantment", "()Ljava/util/HashMap;", "libraryModification", "getLibraryModification", "ownLibsActivityClass", "Ljava/lang/Class;", "getOwnLibsActivityClass", "()Ljava/lang/Class;", "setOwnLibsActivityClass", "(Ljava/lang/Class;)V", "showLicense", "getShowLicense", "setShowLicense", "showLicenseDialog", "getShowLicenseDialog", "setShowLicenseDialog", "showLoadingProgress", "getShowLoadingProgress", "setShowLoadingProgress", "showVersion", "getShowVersion", "setShowVersion", "sort", "getSort", "setSort", "activity", "", "ctx", "Landroid/content/Context;", "adapter", "Lcom/mikepenz/fastadapter/FastAdapter;", "context", "fragment", "Lcom/mikepenz/aboutlibraries/ui/LibsFragment;", "intent", "Landroid/content/Intent;", "clazz", "preCheck", "start", "supportFragment", "Lcom/mikepenz/aboutlibraries/ui/LibsSupportFragment;", "withAboutAppName", "withAboutDescription", "withAboutIconShown", "withAboutSpecial1", "withAboutSpecial1Description", "withAboutSpecial2", "withAboutSpecial2Description", "withAboutSpecial3", "withAboutSpecial3Description", "withAboutVersionShown", "withAboutVersionShownCode", "withAboutVersionShownName", "withAboutVersionString", "withActivityTitle", "withAutoDetect", "withCheckCachedDetection", "withEdgeToEdge", "asEdgeToEdge", "withExcludedLibraries", "([Ljava/lang/String;)Lcom/mikepenz/aboutlibraries/LibsBuilder;", "withFields", "Ljava/lang/reflect/Field;", "([Ljava/lang/reflect/Field;)Lcom/mikepenz/aboutlibraries/LibsBuilder;", "withLayoutAnimationController", "layoutAnimationController", "Landroid/view/animation/LayoutAnimationController;", "withLibTaskCallback", "libTaskCallback", "Lcom/mikepenz/aboutlibraries/LibTaskCallback;", "withLibTaskExecutor", "withLibraries", "libraries", "withLibraryComparator", "withLibraryEnchantment", "library", "enchantWith", "withLibraryModification", "modificationKey", "Lcom/mikepenz/aboutlibraries/Libs$LibraryFields;", "modificationValue", "withLibsRecyclerViewListener", "recyclerViewListener", "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;", "withLicenseDialog", "withLicenseShown", "withListener", "libsListener", "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;", "withOwnLibsActivityClass", "withShowLoadingProgress", "withSortEnabled", "withUiListener", "uiListener", "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;", "withVersionShown", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class LibsBuilder implements Serializable {
    private String aboutAppName;
    private String aboutAppSpecial1;
    private String aboutAppSpecial1Description;
    private String aboutAppSpecial2;
    private String aboutAppSpecial2Description;
    private String aboutAppSpecial3;
    private String aboutAppSpecial3Description;
    private String aboutDescription;
    private String activityTitle;
    private boolean edgeToEdge;
    private Comparator<Library> libraryComparator;
    private boolean showLicense;
    private String[] fields = new String[0];
    private String[] internalLibraries = new String[0];
    private String[] excludeLibraries = new String[0];
    private boolean autoDetect = true;
    private boolean checkCachedDetection = true;
    private boolean sort = true;
    private boolean showLicenseDialog = true;
    private boolean showVersion = true;
    private boolean showLoadingProgress = true;
    private boolean aboutShowIcon = true;
    private String aboutVersionString = "";
    private boolean aboutShowVersion = true;
    private boolean aboutShowVersionName = true;
    private boolean aboutShowVersionCode = true;
    private LibTaskExecutor libTaskExecutor = LibTaskExecutor.DEFAULT_EXECUTOR;
    private final HashMap<String, HashMap<String, String>> libraryModification = new HashMap<>();
    private final HashMap<String, String> libraryEnchantment = new HashMap<>();
    private Class<?> ownLibsActivityClass = LibsActivity.class;

    public final Intent intent(Context context) {
        return intent$default(this, context, null, 2, null);
    }

    public final String[] getFields() {
        return this.fields;
    }

    public final void setFields(String[] strArr) {
        Intrinsics.checkParameterIsNotNull(strArr, "<set-?>");
        this.fields = strArr;
    }

    public final String[] getInternalLibraries() {
        return this.internalLibraries;
    }

    public final void setInternalLibraries(String[] strArr) {
        Intrinsics.checkParameterIsNotNull(strArr, "<set-?>");
        this.internalLibraries = strArr;
    }

    public final String[] getExcludeLibraries() {
        return this.excludeLibraries;
    }

    public final void setExcludeLibraries(String[] strArr) {
        Intrinsics.checkParameterIsNotNull(strArr, "<set-?>");
        this.excludeLibraries = strArr;
    }

    public final boolean getAutoDetect() {
        return this.autoDetect;
    }

    public final void setAutoDetect(boolean z) {
        this.autoDetect = z;
    }

    public final boolean getCheckCachedDetection() {
        return this.checkCachedDetection;
    }

    public final void setCheckCachedDetection(boolean z) {
        this.checkCachedDetection = z;
    }

    public final boolean getSort() {
        return this.sort;
    }

    public final void setSort(boolean z) {
        this.sort = z;
    }

    public final Comparator<Library> getLibraryComparator() {
        return this.libraryComparator;
    }

    public final void setLibraryComparator(Comparator<Library> comparator) {
        this.libraryComparator = comparator;
    }

    public final boolean getShowLicense() {
        return this.showLicense;
    }

    public final void setShowLicense(boolean z) {
        this.showLicense = z;
    }

    public final boolean getShowLicenseDialog() {
        return this.showLicenseDialog;
    }

    public final void setShowLicenseDialog(boolean z) {
        this.showLicenseDialog = z;
    }

    public final boolean getShowVersion() {
        return this.showVersion;
    }

    public final void setShowVersion(boolean z) {
        this.showVersion = z;
    }

    public final boolean getShowLoadingProgress() {
        return this.showLoadingProgress;
    }

    public final void setShowLoadingProgress(boolean z) {
        this.showLoadingProgress = z;
    }

    public final boolean getAboutShowIcon() {
        return this.aboutShowIcon;
    }

    public final void setAboutShowIcon(boolean z) {
        this.aboutShowIcon = z;
    }

    public final String getAboutVersionString() {
        return this.aboutVersionString;
    }

    public final void setAboutVersionString(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.aboutVersionString = str;
    }

    public final String getAboutAppName() {
        return this.aboutAppName;
    }

    public final void setAboutAppName(String str) {
        this.aboutAppName = str;
    }

    public final boolean getAboutShowVersion() {
        return this.aboutShowVersion;
    }

    public final void setAboutShowVersion(boolean z) {
        this.aboutShowVersion = z;
    }

    public final String getAboutDescription() {
        return this.aboutDescription;
    }

    public final void setAboutDescription(String str) {
        this.aboutDescription = str;
    }

    public final boolean getAboutShowVersionName() {
        return this.aboutShowVersionName;
    }

    public final void setAboutShowVersionName(boolean z) {
        this.aboutShowVersionName = z;
    }

    public final boolean getAboutShowVersionCode() {
        return this.aboutShowVersionCode;
    }

    public final void setAboutShowVersionCode(boolean z) {
        this.aboutShowVersionCode = z;
    }

    public final String getAboutAppSpecial1() {
        return this.aboutAppSpecial1;
    }

    public final void setAboutAppSpecial1(String str) {
        this.aboutAppSpecial1 = str;
    }

    public final String getAboutAppSpecial1Description() {
        return this.aboutAppSpecial1Description;
    }

    public final void setAboutAppSpecial1Description(String str) {
        this.aboutAppSpecial1Description = str;
    }

    public final String getAboutAppSpecial2() {
        return this.aboutAppSpecial2;
    }

    public final void setAboutAppSpecial2(String str) {
        this.aboutAppSpecial2 = str;
    }

    public final String getAboutAppSpecial2Description() {
        return this.aboutAppSpecial2Description;
    }

    public final void setAboutAppSpecial2Description(String str) {
        this.aboutAppSpecial2Description = str;
    }

    public final String getAboutAppSpecial3() {
        return this.aboutAppSpecial3;
    }

    public final void setAboutAppSpecial3(String str) {
        this.aboutAppSpecial3 = str;
    }

    public final String getAboutAppSpecial3Description() {
        return this.aboutAppSpecial3Description;
    }

    public final void setAboutAppSpecial3Description(String str) {
        this.aboutAppSpecial3Description = str;
    }

    public final String getActivityTitle() {
        return this.activityTitle;
    }

    public final void setActivityTitle(String str) {
        this.activityTitle = str;
    }

    public final boolean getEdgeToEdge() {
        return this.edgeToEdge;
    }

    public final void setEdgeToEdge(boolean z) {
        this.edgeToEdge = z;
    }

    public final LibTaskExecutor getLibTaskExecutor() {
        return this.libTaskExecutor;
    }

    public final void setLibTaskExecutor(LibTaskExecutor libTaskExecutor) {
        Intrinsics.checkParameterIsNotNull(libTaskExecutor, "<set-?>");
        this.libTaskExecutor = libTaskExecutor;
    }

    public final HashMap<String, HashMap<String, String>> getLibraryModification() {
        return this.libraryModification;
    }

    public final HashMap<String, String> getLibraryEnchantment() {
        return this.libraryEnchantment;
    }

    public final Class<?> getOwnLibsActivityClass() {
        return this.ownLibsActivityClass;
    }

    public final void setOwnLibsActivityClass(Class<?> cls) {
        Intrinsics.checkParameterIsNotNull(cls, "<set-?>");
        this.ownLibsActivityClass = cls;
    }

    public final LibsBuilder withOwnLibsActivityClass(Class<?> clazz) {
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        this.ownLibsActivityClass = clazz;
        return this;
    }

    public final LibsBuilder withFields(Field[] fields) {
        Intrinsics.checkParameterIsNotNull(fields, "fields");
        return withFields(GenericsUtilKt.toStringArray(fields));
    }

    public final LibsBuilder withFields(String[] fields) {
        Intrinsics.checkParameterIsNotNull(fields, "fields");
        this.fields = fields;
        return this;
    }

    public final LibsBuilder withLibraries(String... libraries) {
        Intrinsics.checkParameterIsNotNull(libraries, "libraries");
        this.internalLibraries = libraries;
        return this;
    }

    public final LibsBuilder withExcludedLibraries(String... excludeLibraries) {
        Intrinsics.checkParameterIsNotNull(excludeLibraries, "excludeLibraries");
        this.excludeLibraries = excludeLibraries;
        return this;
    }

    public final LibsBuilder withAutoDetect(boolean autoDetect) {
        this.autoDetect = autoDetect;
        return this;
    }

    public final LibsBuilder withCheckCachedDetection(boolean checkCachedDetection) {
        this.checkCachedDetection = checkCachedDetection;
        return this;
    }

    public final LibsBuilder withSortEnabled(boolean sort) {
        this.sort = sort;
        return this;
    }

    public final LibsBuilder withLibraryComparator(Comparator<Library> libraryComparator) {
        this.libraryComparator = libraryComparator;
        this.sort = libraryComparator != null;
        return this;
    }

    public final LibsBuilder withLicenseShown(boolean showLicense) {
        this.showLicense = showLicense;
        return this;
    }

    public final LibsBuilder withLicenseDialog(boolean showLicenseDialog) {
        this.showLicenseDialog = showLicenseDialog;
        return this;
    }

    public final LibsBuilder withVersionShown(boolean showVersion) {
        this.showVersion = showVersion;
        return this;
    }

    public final LibsBuilder withAboutIconShown(boolean aboutShowIcon) {
        this.aboutShowIcon = aboutShowIcon;
        return this;
    }

    public final LibsBuilder withAboutVersionShown(boolean aboutShowVersion) {
        this.aboutShowVersion = aboutShowVersion;
        this.aboutShowVersionName = aboutShowVersion;
        this.aboutShowVersionCode = aboutShowVersion;
        return this;
    }

    public final LibsBuilder withAboutVersionShownName(boolean aboutShowVersion) {
        this.aboutShowVersionName = aboutShowVersion;
        return this;
    }

    public final LibsBuilder withAboutVersionShownCode(boolean aboutShowVersion) {
        this.aboutShowVersionCode = aboutShowVersion;
        return this;
    }

    public final LibsBuilder withAboutVersionString(String aboutVersionString) {
        Intrinsics.checkParameterIsNotNull(aboutVersionString, "aboutVersionString");
        this.aboutVersionString = aboutVersionString;
        return this;
    }

    public final LibsBuilder withAboutAppName(String aboutAppName) {
        Intrinsics.checkParameterIsNotNull(aboutAppName, "aboutAppName");
        this.aboutAppName = aboutAppName;
        return this;
    }

    public final LibsBuilder withAboutDescription(String aboutDescription) {
        Intrinsics.checkParameterIsNotNull(aboutDescription, "aboutDescription");
        this.aboutDescription = aboutDescription;
        return this;
    }

    public final LibsBuilder withAboutSpecial1(String aboutAppSpecial1) {
        Intrinsics.checkParameterIsNotNull(aboutAppSpecial1, "aboutAppSpecial1");
        this.aboutAppSpecial1 = aboutAppSpecial1;
        return this;
    }

    public final LibsBuilder withAboutSpecial1Description(String aboutAppSpecial1Description) {
        Intrinsics.checkParameterIsNotNull(aboutAppSpecial1Description, "aboutAppSpecial1Description");
        this.aboutAppSpecial1Description = aboutAppSpecial1Description;
        return this;
    }

    public final LibsBuilder withAboutSpecial2(String aboutAppSpecial2) {
        Intrinsics.checkParameterIsNotNull(aboutAppSpecial2, "aboutAppSpecial2");
        this.aboutAppSpecial2 = aboutAppSpecial2;
        return this;
    }

    public final LibsBuilder withAboutSpecial2Description(String aboutAppSpecial2Description) {
        Intrinsics.checkParameterIsNotNull(aboutAppSpecial2Description, "aboutAppSpecial2Description");
        this.aboutAppSpecial2Description = aboutAppSpecial2Description;
        return this;
    }

    public final LibsBuilder withAboutSpecial3(String aboutAppSpecial3) {
        Intrinsics.checkParameterIsNotNull(aboutAppSpecial3, "aboutAppSpecial3");
        this.aboutAppSpecial3 = aboutAppSpecial3;
        return this;
    }

    public final LibsBuilder withAboutSpecial3Description(String aboutAppSpecial3Description) {
        Intrinsics.checkParameterIsNotNull(aboutAppSpecial3Description, "aboutAppSpecial3Description");
        this.aboutAppSpecial3Description = aboutAppSpecial3Description;
        return this;
    }

    public final LibsBuilder withActivityTitle(String activityTitle) {
        Intrinsics.checkParameterIsNotNull(activityTitle, "activityTitle");
        this.activityTitle = activityTitle;
        return this;
    }

    public final LibsBuilder withEdgeToEdge(boolean asEdgeToEdge) {
        this.edgeToEdge = asEdgeToEdge;
        return this;
    }

    public final LibsBuilder withLibraryEnchantment(String library, String enchantWith) {
        Intrinsics.checkParameterIsNotNull(library, "library");
        Intrinsics.checkParameterIsNotNull(enchantWith, "enchantWith");
        this.libraryEnchantment.put(library, enchantWith);
        return this;
    }

    public final LibsBuilder withLibraryModification(HashMap<String, HashMap<String, String>> libraryModification) {
        Intrinsics.checkParameterIsNotNull(libraryModification, "libraryModification");
        this.libraryModification.clear();
        this.libraryModification.putAll(libraryModification);
        return this;
    }

    public final LibsBuilder withLibraryModification(String library, Libs.LibraryFields modificationKey, String modificationValue) {
        Intrinsics.checkParameterIsNotNull(library, "library");
        Intrinsics.checkParameterIsNotNull(modificationKey, "modificationKey");
        Intrinsics.checkParameterIsNotNull(modificationValue, "modificationValue");
        if (!this.libraryModification.containsKey(library)) {
            this.libraryModification.put(library, new HashMap<>());
        }
        HashMap<String, String> map = this.libraryModification.get(library);
        if (map != null) {
            map.put(modificationKey.name(), modificationValue);
        }
        return this;
    }

    public final LibsBuilder withListener(LibsConfiguration.LibsListener libsListener) {
        Intrinsics.checkParameterIsNotNull(libsListener, "libsListener");
        LibsConfiguration.INSTANCE.getInstance().setListener(libsListener);
        return this;
    }

    public final LibsBuilder withLibsRecyclerViewListener(LibsConfiguration.LibsRecyclerViewListener recyclerViewListener) {
        Intrinsics.checkParameterIsNotNull(recyclerViewListener, "recyclerViewListener");
        LibsConfiguration.INSTANCE.getInstance().setLibsRecyclerViewListener(recyclerViewListener);
        return this;
    }

    public final LibsBuilder withUiListener(LibsConfiguration.LibsUIListener uiListener) {
        Intrinsics.checkParameterIsNotNull(uiListener, "uiListener");
        LibsConfiguration.INSTANCE.getInstance().setUiListener(uiListener);
        return this;
    }

    public final LibsBuilder withLayoutAnimationController(LayoutAnimationController layoutAnimationController) {
        Intrinsics.checkParameterIsNotNull(layoutAnimationController, "layoutAnimationController");
        LibsConfiguration.INSTANCE.getInstance().setLayoutAnimationController(layoutAnimationController);
        return this;
    }

    public final LibsBuilder withLibTaskExecutor(LibTaskExecutor libTaskExecutor) {
        if (libTaskExecutor != null) {
            this.libTaskExecutor = libTaskExecutor;
        }
        return this;
    }

    public final LibsBuilder withLibTaskCallback(LibTaskCallback libTaskCallback) {
        Intrinsics.checkParameterIsNotNull(libTaskCallback, "libTaskCallback");
        LibsConfiguration.INSTANCE.getInstance().setLibTaskCallback(libTaskCallback);
        return this;
    }

    public final LibsBuilder withShowLoadingProgress(boolean showLoadingProgress) {
        this.showLoadingProgress = showLoadingProgress;
        return this;
    }

    private final void preCheck() {
        if (this.fields.length == 0) {
            Log.w("AboutLibraries", "Have you missed to call withFields(R.string.class.getFields())? - autoDetect won't work - https://github.com/mikepenz/AboutLibraries/wiki/HOWTO:-Fragment");
        }
    }

    public final FastAdapter<?> adapter(Context context) {
        Libs libs;
        Intrinsics.checkParameterIsNotNull(context, "context");
        if (this.fields.length == 0) {
            libs = new Libs(context, null, this.libraryEnchantment, 2, null);
        } else {
            libs = new Libs(context, this.fields, this.libraryEnchantment);
        }
        Libs libs2 = libs;
        libs2.modifyLibraries(this.libraryModification);
        ArrayList<Library> arrayListPrepareLibraries = libs2.prepareLibraries(context, this.internalLibraries, this.excludeLibraries, this.autoDetect, this.checkCachedDetection, this.sort);
        ItemAdapter itemAdapter = new ItemAdapter();
        ArrayList arrayList = new ArrayList();
        for (Library library : arrayListPrepareLibraries) {
            Intrinsics.checkExpressionValueIsNotNull(library, "library");
            arrayList.add(new LibraryItem(library, this));
        }
        FastAdapter<?> fastAdapterWith = FastAdapter.INSTANCE.with(itemAdapter);
        itemAdapter.add((List) arrayList);
        return fastAdapterWith;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Intent intent$default(LibsBuilder libsBuilder, Context context, Class cls, int i, Object obj) {
        if ((i & 2) != 0) {
            cls = libsBuilder.ownLibsActivityClass;
        }
        return libsBuilder.intent(context, cls);
    }

    public final Intent intent(Context ctx, Class<?> clazz) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        preCheck();
        Intent intent = new Intent(ctx, clazz);
        intent.putExtra("data", this);
        String str = this.activityTitle;
        if (str != null) {
            intent.putExtra(Libs.BUNDLE_TITLE, str);
        }
        intent.putExtra(Libs.BUNDLE_EDGE_TO_EDGE, this.edgeToEdge);
        return intent;
    }

    public final void start(Context ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intent intentIntent$default = intent$default(this, ctx, null, 2, null);
        intentIntent$default.addFlags(268435456);
        ctx.startActivity(intentIntent$default);
    }

    public final void activity(Context ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        start(ctx);
    }

    public final LibsSupportFragment supportFragment() {
        if (this.libraryComparator != null) {
            throw new IllegalArgumentException("Can not use a 'libraryComparator' with the support fragment");
        }
        Bundle bundle = new Bundle();
        bundle.putSerializable("data", this);
        LibsSupportFragment libsSupportFragment = new LibsSupportFragment();
        libsSupportFragment.setArguments(bundle);
        return libsSupportFragment;
    }

    public final LibsFragment fragment() {
        if (this.libraryComparator != null) {
            throw new IllegalArgumentException("Can not use a 'libraryComparator' with the fragment");
        }
        Bundle bundle = new Bundle();
        bundle.putSerializable("data", this);
        LibsFragment libsFragment = new LibsFragment();
        libsFragment.setArguments(bundle);
        return libsFragment;
    }
}
