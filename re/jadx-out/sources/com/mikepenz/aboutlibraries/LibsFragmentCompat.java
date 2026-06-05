package com.mikepenz.aboutlibraries;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.ui.item.HeaderItem;
import com.mikepenz.aboutlibraries.ui.item.LibraryItem;
import com.mikepenz.aboutlibraries.ui.item.LoaderItem;
import com.mikepenz.aboutlibraries.util.ContextExtensionKt;
import com.mikepenz.aboutlibraries.util.UIUtilsKt;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LibsFragmentCompat.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0018\u00010\u000eR\u00020\u0000H\u0004J4\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eJ\u0006\u0010 \u001a\u00020\u0013J\u000e\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0016J\u0014\u0010#\u001a\u00020\u00132\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tR\u0018\u0010\u0003\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0004X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\fX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0018\u00010\u000eR\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\n0\u0010j\b\u0012\u0004\u0012\u00020\n`\u0011X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;", "", "()V", "adapter", "Lcom/mikepenz/fastadapter/FastAdapter;", "Lcom/mikepenz/fastadapter/IItem;", "builder", "Lcom/mikepenz/aboutlibraries/LibsBuilder;", "comparator", "Ljava/util/Comparator;", "Lcom/mikepenz/aboutlibraries/entity/Library;", "itemAdapter", "Lcom/mikepenz/fastadapter/adapters/ItemAdapter;", "libTask", "Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;", "libraries", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "executeLibTask", "", "libraryTask", "onCreateView", "Landroid/view/View;", "context", "Landroid/content/Context;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "arguments", "onDestroyView", "onViewCreated", "view", "setLibraryComparator", "LibraryTask", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class LibsFragmentCompat {
    private FastAdapter<IItem<?>> adapter;
    private LibsBuilder builder;
    private Comparator<Library> comparator;
    private ItemAdapter<IItem<?>> itemAdapter;
    private LibraryTask libTask;
    private ArrayList<Library> libraries = new ArrayList<>();

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LibTaskExecutor.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[LibTaskExecutor.THREAD_POOL_EXECUTOR.ordinal()] = 1;
            iArr[LibTaskExecutor.SERIAL_EXECUTOR.ordinal()] = 2;
            iArr[LibTaskExecutor.DEFAULT_EXECUTOR.ordinal()] = 3;
        }
    }

    public static final /* synthetic */ LibsBuilder access$getBuilder$p(LibsFragmentCompat libsFragmentCompat) {
        LibsBuilder libsBuilder = libsFragmentCompat.builder;
        if (libsBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("builder");
        }
        return libsBuilder;
    }

    public static final /* synthetic */ ItemAdapter access$getItemAdapter$p(LibsFragmentCompat libsFragmentCompat) {
        ItemAdapter<IItem<?>> itemAdapter = libsFragmentCompat.itemAdapter;
        if (itemAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
        }
        return itemAdapter;
    }

    public final void setLibraryComparator(Comparator<Library> comparator) {
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        this.comparator = comparator;
    }

    public final View onCreateView(Context context, LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState, Bundle arguments) {
        RecyclerView recyclerView;
        View viewPostOnCreateView;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        if (arguments != null) {
            Serializable serializable = arguments.getSerializable("data");
            if (serializable == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.mikepenz.aboutlibraries.LibsBuilder");
            }
            this.builder = (LibsBuilder) serializable;
            View view = inflater.inflate(R.layout.fragment_opensource, container, false);
            LibsConfiguration.LibsUIListener uiListener = LibsConfiguration.INSTANCE.getInstance().getUiListener();
            if (uiListener != null) {
                Intrinsics.checkExpressionValueIsNotNull(view, "view");
                View viewPreOnCreateView = uiListener.preOnCreateView(view);
                if (viewPreOnCreateView != null) {
                    view = viewPreOnCreateView;
                }
            }
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            if (view.getId() == R.id.cardListView) {
                recyclerView = (RecyclerView) view;
            } else {
                View viewFindViewById = view.findViewById(R.id.cardListView);
                if (viewFindViewById == null) {
                    throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
                }
                recyclerView = (RecyclerView) viewFindViewById;
            }
            recyclerView.setLayoutManager(new LinearLayoutManager(context));
            if (LibsConfiguration.INSTANCE.getInstance().getItemAnimator() != null) {
                recyclerView.setItemAnimator(LibsConfiguration.INSTANCE.getInstance().getItemAnimator());
            } else {
                recyclerView.setItemAnimator(new DefaultItemAnimator());
            }
            this.itemAdapter = new ItemAdapter<>();
            FastAdapter.Companion companion = FastAdapter.INSTANCE;
            ItemAdapter<IItem<?>> itemAdapter = this.itemAdapter;
            if (itemAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
            }
            FastAdapter<IItem<?>> fastAdapterWith = companion.with(itemAdapter);
            this.adapter = fastAdapterWith;
            if (fastAdapterWith == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            }
            recyclerView.setAdapter(fastAdapterWith);
            LibsBuilder libsBuilder = this.builder;
            if (libsBuilder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("builder");
            }
            if (libsBuilder.getShowLoadingProgress()) {
                ItemAdapter<IItem<?>> itemAdapter2 = this.itemAdapter;
                if (itemAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                }
                itemAdapter2.add((Object[]) new IItem[]{new LoaderItem()});
            }
            LibsConfiguration.LibsUIListener uiListener2 = LibsConfiguration.INSTANCE.getInstance().getUiListener();
            if (uiListener2 != null && (viewPostOnCreateView = uiListener2.postOnCreateView(view)) != null) {
                view = viewPostOnCreateView;
            }
            UIUtilsKt.doOnApplySystemWindowInsets(recyclerView, 80);
            Intrinsics.checkExpressionValueIsNotNull(view, "view");
            return view;
        }
        Log.e("AboutLibraries", "The AboutLibraries fragment can't be build without the bundle containing the LibsBuilder");
        return new View(context);
    }

    public final void onViewCreated(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (view.getContext() != null) {
            Context context = view.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "view.context");
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkExpressionValueIsNotNull(applicationContext, "view.context.applicationContext");
            LibraryTask libraryTask = new LibraryTask(this, applicationContext);
            this.libTask = libraryTask;
            executeLibTask(libraryTask);
        }
    }

    protected final void executeLibTask(LibraryTask libraryTask) {
        if (libraryTask != null) {
            LibsBuilder libsBuilder = this.builder;
            if (libsBuilder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("builder");
            }
            int i = WhenMappings.$EnumSwitchMapping$0[libsBuilder.getLibTaskExecutor().ordinal()];
            if (i == 1) {
                libraryTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
            } else if (i == 2) {
                libraryTask.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new String[0]);
            } else {
                if (i != 3) {
                    return;
                }
                libraryTask.execute(new String[0]);
            }
        }
    }

    public final void onDestroyView() {
        LibraryTask libraryTask = this.libTask;
        if (libraryTask != null) {
            if (libraryTask != null) {
                libraryTask.cancel(true);
            }
            this.libTask = null;
        }
    }

    /* JADX INFO: compiled from: LibsFragmentCompat.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J!\u0010\u0015\u001a\u00020\u00032\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0017\"\u00020\u0002H\u0014¢\u0006\u0002\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003H\u0014¢\u0006\u0002\u0010\u001bJ\b\u0010\u001c\u001a\u00020\u0003H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0002X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask;", "Landroid/os/AsyncTask;", "", "", "ctx", "Landroid/content/Context;", "(Lcom/mikepenz/aboutlibraries/LibsFragmentCompat;Landroid/content/Context;)V", "getCtx", "()Landroid/content/Context;", "setCtx", "(Landroid/content/Context;)V", "icon", "Landroid/graphics/drawable/Drawable;", "getIcon$aboutlibraries", "()Landroid/graphics/drawable/Drawable;", "setIcon$aboutlibraries", "(Landroid/graphics/drawable/Drawable;)V", "versionCode", "", "Ljava/lang/Integer;", "versionName", "doInBackground", "strings", "", "([Ljava/lang/String;)V", "onPostExecute", "nothing", "(Lkotlin/Unit;)V", "onPreExecute", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public final class LibraryTask extends AsyncTask<String, Unit, Unit> {
        private Context ctx;
        private Drawable icon;
        final /* synthetic */ LibsFragmentCompat this$0;
        private Integer versionCode;
        private String versionName;

        public LibraryTask(LibsFragmentCompat libsFragmentCompat, Context ctx) {
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = libsFragmentCompat;
            this.ctx = ctx;
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ Unit doInBackground(String[] strArr) {
            doInBackground2(strArr);
            return Unit.INSTANCE;
        }

        public final Context getCtx() {
            return this.ctx;
        }

        public final void setCtx(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "<set-?>");
            this.ctx = context;
        }

        /* JADX INFO: renamed from: getIcon$aboutlibraries, reason: from getter */
        public final Drawable getIcon() {
            return this.icon;
        }

        public final void setIcon$aboutlibraries(Drawable drawable) {
            this.icon = drawable;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            LibTaskCallback libTaskCallback = LibsConfiguration.INSTANCE.getInstance().getLibTaskCallback();
            if (libTaskCallback != null) {
                libTaskCallback.onLibTaskStarted();
            }
        }

        /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
        protected void doInBackground2(String... strings) {
            Libs libs;
            ApplicationInfo applicationInfo;
            PackageInfo packageInfo;
            Intrinsics.checkParameterIsNotNull(strings, "strings");
            if (LibsFragmentCompat.access$getBuilder$p(this.this$0).getFields().length == 0) {
                libs = new Libs(this.ctx, null, LibsFragmentCompat.access$getBuilder$p(this.this$0).getLibraryEnchantment(), 2, null);
            } else {
                libs = new Libs(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getFields(), LibsFragmentCompat.access$getBuilder$p(this.this$0).getLibraryEnchantment());
            }
            Libs libs2 = libs;
            LibsBuilder libsBuilderAccess$getBuilder$p = LibsFragmentCompat.access$getBuilder$p(this.this$0);
            Boolean boolExtractBooleanBundleOrResource = ContextExtensionKt.extractBooleanBundleOrResource(this.ctx, Boolean.valueOf(LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowIcon()), "aboutLibraries_description_showIcon");
            libsBuilderAccess$getBuilder$p.setAboutShowIcon(boolExtractBooleanBundleOrResource != null ? boolExtractBooleanBundleOrResource.booleanValue() : false);
            LibsBuilder libsBuilderAccess$getBuilder$p2 = LibsFragmentCompat.access$getBuilder$p(this.this$0);
            Boolean boolExtractBooleanBundleOrResource2 = ContextExtensionKt.extractBooleanBundleOrResource(this.ctx, Boolean.valueOf(LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersion()), "aboutLibraries_description_showVersion");
            libsBuilderAccess$getBuilder$p2.setAboutShowVersion(boolExtractBooleanBundleOrResource2 != null ? boolExtractBooleanBundleOrResource2.booleanValue() : false);
            LibsBuilder libsBuilderAccess$getBuilder$p3 = LibsFragmentCompat.access$getBuilder$p(this.this$0);
            Boolean boolExtractBooleanBundleOrResource3 = ContextExtensionKt.extractBooleanBundleOrResource(this.ctx, Boolean.valueOf(LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersionName()), "aboutLibraries_description_showVersionName");
            libsBuilderAccess$getBuilder$p3.setAboutShowVersionName(boolExtractBooleanBundleOrResource3 != null ? boolExtractBooleanBundleOrResource3.booleanValue() : false);
            LibsBuilder libsBuilderAccess$getBuilder$p4 = LibsFragmentCompat.access$getBuilder$p(this.this$0);
            Boolean boolExtractBooleanBundleOrResource4 = ContextExtensionKt.extractBooleanBundleOrResource(this.ctx, Boolean.valueOf(LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersionCode()), "aboutLibraries_description_showVersionCode");
            libsBuilderAccess$getBuilder$p4.setAboutShowVersionCode(boolExtractBooleanBundleOrResource4 != null ? boolExtractBooleanBundleOrResource4.booleanValue() : false);
            LibsBuilder libsBuilderAccess$getBuilder$p5 = LibsFragmentCompat.access$getBuilder$p(this.this$0);
            String strExtractStringBundleOrResource = ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutAppName(), "aboutLibraries_description_name");
            if (strExtractStringBundleOrResource == null) {
                strExtractStringBundleOrResource = "";
            }
            libsBuilderAccess$getBuilder$p5.setAboutAppName(strExtractStringBundleOrResource);
            LibsBuilder libsBuilderAccess$getBuilder$p6 = LibsFragmentCompat.access$getBuilder$p(this.this$0);
            String strExtractStringBundleOrResource2 = ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutDescription(), "aboutLibraries_description_text");
            libsBuilderAccess$getBuilder$p6.setAboutDescription(strExtractStringBundleOrResource2 != null ? strExtractStringBundleOrResource2 : "");
            LibsFragmentCompat.access$getBuilder$p(this.this$0).setAboutAppSpecial1(ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutAppSpecial1(), "aboutLibraries_description_special1_name"));
            LibsFragmentCompat.access$getBuilder$p(this.this$0).setAboutAppSpecial1Description(ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutAppSpecial1Description(), "aboutLibraries_description_special1_text"));
            LibsFragmentCompat.access$getBuilder$p(this.this$0).setAboutAppSpecial2(ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutAppSpecial2(), "aboutLibraries_description_special2_name"));
            LibsFragmentCompat.access$getBuilder$p(this.this$0).setAboutAppSpecial2Description(ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutAppSpecial2Description(), "aboutLibraries_description_special2_text"));
            LibsFragmentCompat.access$getBuilder$p(this.this$0).setAboutAppSpecial3(ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutAppSpecial3(), "aboutLibraries_description_special3_name"));
            LibsFragmentCompat.access$getBuilder$p(this.this$0).setAboutAppSpecial3Description(ContextExtensionKt.extractStringBundleOrResource(this.ctx, LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutAppSpecial3Description(), "aboutLibraries_description_special3_text"));
            libs2.modifyLibraries(LibsFragmentCompat.access$getBuilder$p(this.this$0).getLibraryModification());
            boolean z = true;
            boolean z2 = LibsFragmentCompat.access$getBuilder$p(this.this$0).getSort() && LibsFragmentCompat.access$getBuilder$p(this.this$0).getLibraryComparator() == null && this.this$0.comparator == null;
            LibsFragmentCompat libsFragmentCompat = this.this$0;
            libsFragmentCompat.libraries = libs2.prepareLibraries(this.ctx, LibsFragmentCompat.access$getBuilder$p(libsFragmentCompat).getInternalLibraries(), LibsFragmentCompat.access$getBuilder$p(this.this$0).getExcludeLibraries(), LibsFragmentCompat.access$getBuilder$p(this.this$0).getAutoDetect(), LibsFragmentCompat.access$getBuilder$p(this.this$0).getCheckCachedDetection(), z2);
            if (this.this$0.comparator != null) {
                Collections.sort(this.this$0.libraries, this.this$0.comparator);
            } else if (LibsFragmentCompat.access$getBuilder$p(this.this$0).getLibraryComparator() != null) {
                Collections.sort(this.this$0.libraries, LibsFragmentCompat.access$getBuilder$p(this.this$0).getLibraryComparator());
            }
            if (!LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersion() && !LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersionName() && !LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersionCode()) {
                z = false;
            }
            if (LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowIcon() && z) {
                PackageManager packageManager = this.ctx.getPackageManager();
                String packageName = this.ctx.getPackageName();
                try {
                    applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                } catch (Exception unused) {
                    applicationInfo = null;
                }
                try {
                    packageInfo = packageManager.getPackageInfo(packageName, 0);
                } catch (Exception unused2) {
                    packageInfo = null;
                }
                if (LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowIcon() && applicationInfo != null) {
                    this.icon = applicationInfo.loadIcon(packageManager);
                }
                this.versionName = null;
                this.versionCode = null;
                if (packageInfo != null) {
                    this.versionName = packageInfo.versionName;
                    this.versionCode = Integer.valueOf(packageInfo.versionCode);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Unit nothing) {
            Intrinsics.checkParameterIsNotNull(nothing, "nothing");
            LibsFragmentCompat.access$getItemAdapter$p(this.this$0).clear();
            boolean z = LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersion() || LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersionName() || LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowVersionCode();
            if (LibsFragmentCompat.access$getBuilder$p(this.this$0).getAboutShowIcon() && z) {
                LibsFragmentCompat.access$getItemAdapter$p(this.this$0).add((Object[]) new IItem[]{new HeaderItem(LibsFragmentCompat.access$getBuilder$p(this.this$0)).withAboutVersionName(this.versionName).withAboutVersionCode(this.versionCode).withAboutIcon(this.icon)});
            }
            ArrayList arrayList = new ArrayList();
            for (Library library : this.this$0.libraries) {
                Intrinsics.checkExpressionValueIsNotNull(library, "library");
                arrayList.add(new LibraryItem(library, LibsFragmentCompat.access$getBuilder$p(this.this$0)));
            }
            LibsFragmentCompat.access$getItemAdapter$p(this.this$0).add((List) arrayList);
            super.onPostExecute(nothing);
            LibTaskCallback libTaskCallback = LibsConfiguration.INSTANCE.getInstance().getLibTaskCallback();
            if (libTaskCallback != null) {
                libTaskCallback.onLibTaskFinished(LibsFragmentCompat.access$getItemAdapter$p(this.this$0));
            }
        }
    }
}
