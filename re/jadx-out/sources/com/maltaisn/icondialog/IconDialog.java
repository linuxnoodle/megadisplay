package com.maltaisn.icondialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultCaller;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.os.ConfigurationCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.actions.SearchIntents;
import com.maltaisn.icondialog.IconDialogContract;
import com.maltaisn.icondialog.StickyHeaderDecoration;
import com.maltaisn.icondialog.data.Category;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.pack.IconPack;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IconDialog.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 p2\u00020\u00012\u00020\u0002:\u0006opqrstB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010B\u001a\u00020CH\u0016J\b\u0010D\u001a\u00020CH\u0016J\b\u0010E\u001a\u00020CH\u0016J\b\u0010F\u001a\u00020CH\u0016J\b\u0010G\u001a\u00020CH\u0016J\u0010\u0010H\u001a\u00020C2\u0006\u0010I\u001a\u00020\u0014H\u0016J\u0010\u0010J\u001a\u00020C2\u0006\u0010K\u001a\u00020LH\u0016J\u0012\u0010M\u001a\u00020N2\b\u0010O\u001a\u0004\u0018\u00010PH\u0017J\u0010\u0010Q\u001a\u00020C2\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010R\u001a\u00020C2\u0006\u0010O\u001a\u00020PH\u0016J\u001e\u0010S\u001a\u00020C2\u0006\u0010T\u001a\u00020U2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020C0WH\u0016J\b\u0010X\u001a\u00020CH\u0016J\u0010\u0010Y\u001a\u00020C2\u0006\u0010I\u001a\u00020\u0014H\u0016J\b\u0010Z\u001a\u00020CH\u0016J\u0010\u0010[\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010^\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010_\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010`\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010a\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010b\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010c\u001a\u00020C2\u0006\u0010d\u001a\u00020eH\u0016J\u0010\u0010f\u001a\u00020C2\u0006\u0010g\u001a\u00020]H\u0016J\u0016\u0010h\u001a\u00020C2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020j04H\u0016J\u0010\u0010k\u001a\u00020C2\u0006\u0010\\\u001a\u00020]H\u0016J\b\u0010l\u001a\u00020CH\u0016J\u0010\u0010m\u001a\u00020C2\u0006\u0010n\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00060\u0016R\u00020\u0000X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082.¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020*X\u0082.¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020-X\u0082.¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R \u00103\u001a\b\u0012\u0004\u0012\u00020\u001404X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020:X\u0096.¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u000e\u0010?\u001a\u00020\"X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020AX\u0082.¢\u0006\u0002\n\u0000¨\u0006u"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog;", "Landroidx/fragment/app/DialogFragment;", "Lcom/maltaisn/icondialog/IconDialogContract$View;", "()V", "callback", "Lcom/maltaisn/icondialog/IconDialog$Callback;", "getCallback", "()Lcom/maltaisn/icondialog/IconDialog$Callback;", "cancelBtn", "Landroid/widget/Button;", "clearBtn", "dialogView", "Landroid/view/View;", "footerDiv", "headerDiv", "iconPack", "Lcom/maltaisn/icondialog/pack/IconPack;", "getIconPack", "()Lcom/maltaisn/icondialog/pack/IconPack;", "iconSize", "", "listAdapter", "Lcom/maltaisn/icondialog/IconDialog$IconAdapter;", "listLayout", "Lcom/maltaisn/icondialog/IconLayoutManager;", "listRcv", "Landroidx/recyclerview/widget/RecyclerView;", "locale", "Ljava/util/Locale;", "getLocale", "()Ljava/util/Locale;", "maxDialogHeight", "maxDialogWidth", "noResultTxv", "Landroid/widget/TextView;", "presenter", "Lcom/maltaisn/icondialog/IconDialogContract$Presenter;", "progressBar", "Landroid/widget/ProgressBar;", "progressCallback", "Ljava/lang/Runnable;", "progressHandler", "Landroid/os/Handler;", "searchCallback", "searchClearBtn", "Landroid/widget/ImageView;", "searchEdt", "Landroid/widget/EditText;", "searchHandler", "searchImv", "selectBtn", "selectedIconIds", "", "getSelectedIconIds", "()Ljava/util/List;", "setSelectedIconIds", "(Ljava/util/List;)V", "settings", "Lcom/maltaisn/icondialog/IconDialogSettings;", "getSettings", "()Lcom/maltaisn/icondialog/IconDialogSettings;", "setSettings", "(Lcom/maltaisn/icondialog/IconDialogSettings;)V", "titleTxv", "unavailableIconDrawable", "Landroid/graphics/drawable/Drawable;", "addStickyHeaderDecoration", "", "cancelCallbacks", "exit", "hideKeyboard", "notifyAllIconsChanged", "notifyIconItemChanged", "pos", "onCancel", "dialog", "Landroid/content/DialogInterface;", "onCreateDialog", "Landroid/app/Dialog;", "state", "Landroid/os/Bundle;", "onDismiss", "onSaveInstanceState", "postDelayed", "delay", "", "action", "Lkotlin/Function0;", "removeLayoutPadding", "scrollToItemPosition", "setCancelResult", "setClearBtnVisible", "visible", "", "setClearSearchBtnVisible", "setFooterVisible", "setNoResultLabelVisible", "setProgressBarVisible", "setSearchBarVisible", "setSearchQuery", SearchIntents.EXTRA_QUERY, "", "setSelectBtnEnabled", "enabled", "setSelectionResult", "selected", "Lcom/maltaisn/icondialog/data/Icon;", "setTitleVisible", "showMaxSelectionMessage", "updateTitle", "titleRes", "Callback", "Companion", "HeadersVisibility", "IconAdapter", "SearchVisibility", "TitleVisibility", "lib_release"}, k = 1, mv = {1, 1, 16})
public final class IconDialog extends DialogFragment implements IconDialogContract.View {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long SEARCH_DELAY = 300;
    private Button cancelBtn;
    private Button clearBtn;
    private View dialogView;
    private View footerDiv;
    private View headerDiv;
    private int iconSize;
    private IconAdapter listAdapter;
    private IconLayoutManager listLayout;
    private RecyclerView listRcv;
    private int maxDialogHeight;
    private int maxDialogWidth;
    private TextView noResultTxv;
    private IconDialogContract.Presenter presenter;
    private ProgressBar progressBar;
    private Runnable progressCallback;
    private Handler progressHandler;
    private ImageView searchClearBtn;
    private EditText searchEdt;
    private Handler searchHandler;
    private ImageView searchImv;
    private Button selectBtn;
    public IconDialogSettings settings;
    private TextView titleTxv;
    private Drawable unavailableIconDrawable;
    private List<Integer> selectedIconIds = CollectionsKt.emptyList();
    private final Runnable searchCallback = new Runnable() { // from class: com.maltaisn.icondialog.IconDialog$searchCallback$1
        @Override // java.lang.Runnable
        public final void run() {
            IconDialogContract.Presenter presenter = this.this$0.presenter;
            if (presenter != null) {
                presenter.onSearchQueryEntered(IconDialog.access$getSearchEdt$p(this.this$0).getText().toString());
            }
        }
    };

    /* JADX INFO: compiled from: IconDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000e"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$Callback;", "", "iconDialogIconPack", "Lcom/maltaisn/icondialog/pack/IconPack;", "getIconDialogIconPack", "()Lcom/maltaisn/icondialog/pack/IconPack;", "onIconDialogCancelled", "", "onIconDialogIconsSelected", "dialog", "Lcom/maltaisn/icondialog/IconDialog;", "icons", "", "Lcom/maltaisn/icondialog/data/Icon;", "lib_release"}, k = 1, mv = {1, 1, 16})
    public interface Callback {

        /* JADX INFO: compiled from: IconDialog.kt */
        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
        public static final class DefaultImpls {
            public static void onIconDialogCancelled(Callback callback) {
            }
        }

        IconPack getIconDialogIconPack();

        void onIconDialogCancelled();

        void onIconDialogIconsSelected(IconDialog dialog, List<Icon> icons);
    }

    /* JADX INFO: compiled from: IconDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$HeadersVisibility;", "", "(Ljava/lang/String;I)V", "HIDE", "SHOW", "STICKY", "lib_release"}, k = 1, mv = {1, 1, 16})
    public enum HeadersVisibility {
        HIDE,
        SHOW,
        STICKY
    }

    /* JADX INFO: compiled from: IconDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$SearchVisibility;", "", "(Ljava/lang/String;I)V", "NEVER", "ALWAYS", "IF_LANGUAGE_AVAILABLE", "lib_release"}, k = 1, mv = {1, 1, 16})
    public enum SearchVisibility {
        NEVER,
        ALWAYS,
        IF_LANGUAGE_AVAILABLE
    }

    /* JADX INFO: compiled from: IconDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$TitleVisibility;", "", "(Ljava/lang/String;I)V", "NEVER", "ALWAYS", "IF_SEARCH_HIDDEN", "lib_release"}, k = 1, mv = {1, 1, 16})
    public enum TitleVisibility {
        NEVER,
        ALWAYS,
        IF_SEARCH_HIDDEN
    }

    @JvmStatic
    public static final IconDialog newInstance(IconDialogSettings iconDialogSettings) {
        return INSTANCE.newInstance(iconDialogSettings);
    }

    public static final /* synthetic */ View access$getDialogView$p(IconDialog iconDialog) {
        View view = iconDialog.dialogView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        return view;
    }

    public static final /* synthetic */ IconAdapter access$getListAdapter$p(IconDialog iconDialog) {
        IconAdapter iconAdapter = iconDialog.listAdapter;
        if (iconAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listAdapter");
        }
        return iconAdapter;
    }

    public static final /* synthetic */ IconLayoutManager access$getListLayout$p(IconDialog iconDialog) {
        IconLayoutManager iconLayoutManager = iconDialog.listLayout;
        if (iconLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listLayout");
        }
        return iconLayoutManager;
    }

    public static final /* synthetic */ EditText access$getSearchEdt$p(IconDialog iconDialog) {
        EditText editText = iconDialog.searchEdt;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
        }
        return editText;
    }

    public static final /* synthetic */ Handler access$getSearchHandler$p(IconDialog iconDialog) {
        Handler handler = iconDialog.searchHandler;
        if (handler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchHandler");
        }
        return handler;
    }

    public static final /* synthetic */ Drawable access$getUnavailableIconDrawable$p(IconDialog iconDialog) {
        Drawable drawable = iconDialog.unavailableIconDrawable;
        if (drawable == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unavailableIconDrawable");
        }
        return drawable;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public IconDialogSettings getSettings() {
        IconDialogSettings iconDialogSettings = this.settings;
        if (iconDialogSettings == null) {
            Intrinsics.throwUninitializedPropertyAccessException("settings");
        }
        return iconDialogSettings;
    }

    public void setSettings(IconDialogSettings iconDialogSettings) {
        Intrinsics.checkParameterIsNotNull(iconDialogSettings, "<set-?>");
        this.settings = iconDialogSettings;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public IconPack getIconPack() {
        return getCallback().getIconDialogIconPack();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public List<Integer> getSelectedIconIds() {
        return this.selectedIconIds;
    }

    public void setSelectedIconIds(List<Integer> list) {
        Intrinsics.checkParameterIsNotNull(list, "<set-?>");
        this.selectedIconIds = list;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public Locale getLocale() {
        Context contextRequireContext = requireContext();
        Intrinsics.checkExpressionValueIsNotNull(contextRequireContext, "requireContext()");
        Resources resources = contextRequireContext.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "requireContext().resources");
        Locale locale = ConfigurationCompat.getLocales(resources.getConfiguration()).get(0);
        Intrinsics.checkExpressionValueIsNotNull(locale, "ConfigurationCompat.getL…sources.configuration)[0]");
        return locale;
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(final Bundle state) {
        final Context contextRequireContext = requireContext();
        Intrinsics.checkExpressionValueIsNotNull(contextRequireContext, "requireContext()");
        TypedArray typedArrayObtainStyledAttributes = contextRequireContext.obtainStyledAttributes(new int[]{R.attr.icdStyle});
        Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…ArrayOf(R.attr.icdStyle))");
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, R.style.IcdStyle);
        typedArrayObtainStyledAttributes.recycle();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(contextRequireContext, resourceId);
        ContextThemeWrapper contextThemeWrapper2 = contextThemeWrapper;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(contextThemeWrapper2);
        Drawable drawable = ResourcesCompat.getDrawable(contextRequireContext.getResources(), R.drawable.icd_ic_unavailable, null);
        if (drawable == null) {
            Intrinsics.throwNpe();
        }
        this.unavailableIconDrawable = drawable;
        TypedArray typedArrayObtainStyledAttributes2 = contextThemeWrapper.obtainStyledAttributes(R.styleable.IconDialog);
        Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes2, "contextWrapper.obtainSty…s(R.styleable.IconDialog)");
        this.maxDialogWidth = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.IconDialog_icdMaxWidth, -1);
        this.maxDialogHeight = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.IconDialog_icdMaxHeight, -1);
        this.iconSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(R.styleable.IconDialog_icdIconSize, -1);
        Unit unit = Unit.INSTANCE;
        typedArrayObtainStyledAttributes2.recycle();
        this.progressHandler = new Handler();
        this.searchHandler = new Handler();
        View viewInflate = layoutInflaterFrom.inflate(R.layout.icd_dialog_icon, (ViewGroup) null, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "localInflater.inflate(R.…dialog_icon, null, false)");
        this.dialogView = viewInflate;
        if (viewInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById = viewInflate.findViewById(R.id.icd_txv_title);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "dialogView.findViewById(R.id.icd_txv_title)");
        this.titleTxv = (TextView) viewFindViewById;
        View view = this.dialogView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById2 = view.findViewById(R.id.icd_div_header);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "dialogView.findViewById(R.id.icd_div_header)");
        this.headerDiv = viewFindViewById2;
        View view2 = this.dialogView;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById3 = view2.findViewById(R.id.icd_imv_search);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "dialogView.findViewById(R.id.icd_imv_search)");
        this.searchImv = (ImageView) viewFindViewById3;
        View view3 = this.dialogView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById4 = view3.findViewById(R.id.icd_edt_search);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "dialogView.findViewById(R.id.icd_edt_search)");
        this.searchEdt = (EditText) viewFindViewById4;
        View view4 = this.dialogView;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById5 = view4.findViewById(R.id.icd_imv_clear_search);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "dialogView.findViewById(R.id.icd_imv_clear_search)");
        this.searchClearBtn = (ImageView) viewFindViewById5;
        View view5 = this.dialogView;
        if (view5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById6 = view5.findViewById(R.id.icd_txv_no_result);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "dialogView.findViewById(R.id.icd_txv_no_result)");
        this.noResultTxv = (TextView) viewFindViewById6;
        View view6 = this.dialogView;
        if (view6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById7 = view6.findViewById(R.id.icd_progress_bar);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "dialogView.findViewById(R.id.icd_progress_bar)");
        this.progressBar = (ProgressBar) viewFindViewById7;
        EditText editText = this.searchEdt;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
        }
        editText.addTextChangedListener(new TextWatcher() { // from class: com.maltaisn.icondialog.IconDialog$onCreateDialog$$inlined$addTextChangedListener$1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
                IconDialog.access$getSearchHandler$p(this.this$0).removeCallbacks(this.this$0.searchCallback);
                IconDialog.access$getSearchHandler$p(this.this$0).postDelayed(this.this$0.searchCallback, 300L);
                IconDialogContract.Presenter presenter = this.this$0.presenter;
                if (presenter != null) {
                    presenter.onSearchQueryChanged(String.valueOf(s));
                }
            }
        });
        EditText editText2 = this.searchEdt;
        if (editText2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
        }
        editText2.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.maltaisn.icondialog.IconDialog.onCreateDialog.3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                if (i != 3) {
                    return false;
                }
                IconDialog.access$getSearchHandler$p(IconDialog.this).removeCallbacks(IconDialog.this.searchCallback);
                IconDialogContract.Presenter presenter = IconDialog.this.presenter;
                if (presenter != null) {
                    presenter.onSearchActionEvent(IconDialog.access$getSearchEdt$p(IconDialog.this).getText().toString());
                }
                return true;
            }
        });
        ImageView imageView = this.searchClearBtn;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchClearBtn");
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.maltaisn.icondialog.IconDialog.onCreateDialog.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view7) {
                IconDialogContract.Presenter presenter = IconDialog.this.presenter;
                if (presenter != null) {
                    presenter.onSearchClearBtnClicked();
                }
            }
        });
        View view7 = this.dialogView;
        if (view7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById8 = view7.findViewById(R.id.icd_rcv_icon_list);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "dialogView.findViewById(R.id.icd_rcv_icon_list)");
        this.listRcv = (RecyclerView) viewFindViewById8;
        this.listAdapter = new IconAdapter();
        IconLayoutManager iconLayoutManager = new IconLayoutManager(contextRequireContext, this.iconSize);
        this.listLayout = iconLayoutManager;
        iconLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.maltaisn.icondialog.IconDialog.onCreateDialog.5
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int pos) {
                IconDialogContract.Presenter presenter;
                int globalSize = IconDialog.access$getListAdapter$p(IconDialog.this).getGlobalSize();
                if (pos < 0 || globalSize <= pos || (presenter = IconDialog.this.presenter) == null) {
                    return 0;
                }
                return presenter.getItemSpanCount(pos, IconDialog.access$getListLayout$p(IconDialog.this).getSpanCount());
            }
        });
        RecyclerView recyclerView = this.listRcv;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listRcv");
        }
        IconAdapter iconAdapter = this.listAdapter;
        if (iconAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listAdapter");
        }
        recyclerView.setAdapter(iconAdapter);
        RecyclerView recyclerView2 = this.listRcv;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listRcv");
        }
        IconLayoutManager iconLayoutManager2 = this.listLayout;
        if (iconLayoutManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listLayout");
        }
        recyclerView2.setLayoutManager(iconLayoutManager2);
        View view8 = this.dialogView;
        if (view8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById9 = view8.findViewById(R.id.icd_div_footer);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById9, "dialogView.findViewById(R.id.icd_div_footer)");
        this.footerDiv = viewFindViewById9;
        View view9 = this.dialogView;
        if (view9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById10 = view9.findViewById(R.id.icd_btn_select);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById10, "dialogView.findViewById(R.id.icd_btn_select)");
        this.selectBtn = (Button) viewFindViewById10;
        View view10 = this.dialogView;
        if (view10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById11 = view10.findViewById(R.id.icd_btn_cancel);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById11, "dialogView.findViewById(R.id.icd_btn_cancel)");
        this.cancelBtn = (Button) viewFindViewById11;
        View view11 = this.dialogView;
        if (view11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        View viewFindViewById12 = view11.findViewById(R.id.icd_btn_clear);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById12, "dialogView.findViewById(R.id.icd_btn_clear)");
        this.clearBtn = (Button) viewFindViewById12;
        Button button = this.selectBtn;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectBtn");
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.maltaisn.icondialog.IconDialog.onCreateDialog.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view12) {
                IconDialogContract.Presenter presenter = IconDialog.this.presenter;
                if (presenter != null) {
                    presenter.onSelectBtnClicked();
                }
            }
        });
        Button button2 = this.cancelBtn;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cancelBtn");
        }
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.maltaisn.icondialog.IconDialog.onCreateDialog.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view12) {
                IconDialogContract.Presenter presenter = IconDialog.this.presenter;
                if (presenter != null) {
                    presenter.onCancelBtnClicked();
                }
            }
        });
        Button button3 = this.clearBtn;
        if (button3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clearBtn");
        }
        button3.setOnClickListener(new View.OnClickListener() { // from class: com.maltaisn.icondialog.IconDialog.onCreateDialog.8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view12) {
                IconDialogContract.Presenter presenter = IconDialog.this.presenter;
                if (presenter != null) {
                    presenter.onClearBtnClicked();
                }
            }
        });
        final Dialog dialog = new Dialog(contextThemeWrapper2);
        dialog.requestWindowFeature(1);
        dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.maltaisn.icondialog.IconDialog.onCreateDialog.9
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                Rect rect = new Rect();
                Window window = dialog.getWindow();
                if (window == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(window, "dialog.window!!");
                View decorView = window.getDecorView();
                Intrinsics.checkExpressionValueIsNotNull(decorView, "window.decorView");
                decorView.getBackground().getPadding(rect);
                Resources resources = contextRequireContext.getResources();
                Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                int i = (displayMetrics.heightPixels - rect.top) - rect.bottom;
                int i2 = (displayMetrics.widthPixels - rect.top) - rect.bottom;
                if (i2 > IconDialog.this.maxDialogWidth) {
                    i2 = IconDialog.this.maxDialogWidth;
                }
                if (i > IconDialog.this.maxDialogHeight) {
                    i = IconDialog.this.maxDialogHeight;
                }
                window.setLayout(i2, i);
                IconDialog.access$getDialogView$p(IconDialog.this).setLayoutParams(new ViewGroup.LayoutParams(i2, i));
                dialog.setContentView(IconDialog.access$getDialogView$p(IconDialog.this));
                IconDialog.this.presenter = new IconDialogPresenter();
                IconDialogContract.Presenter presenter = IconDialog.this.presenter;
                if (presenter != null) {
                    presenter.attach(IconDialog.this, state);
                }
            }
        });
        if (state != null) {
            Parcelable parcelable = state.getParcelable("settings");
            if (parcelable == null) {
                Intrinsics.throwNpe();
            }
            setSettings((IconDialogSettings) parcelable);
            IconLayoutManager iconLayoutManager3 = this.listLayout;
            if (iconLayoutManager3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("listLayout");
            }
            iconLayoutManager3.onRestoreInstanceState(state.getParcelable("listLayoutState"));
            EditText editText3 = this.searchEdt;
            if (editText3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
            }
            editText3.onRestoreInstanceState(state.getParcelable("searchEdtState"));
        }
        return dialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle state) {
        Intrinsics.checkParameterIsNotNull(state, "state");
        super.onSaveInstanceState(state);
        state.putParcelable("settings", getSettings());
        IconLayoutManager iconLayoutManager = this.listLayout;
        if (iconLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listLayout");
        }
        state.putParcelable("listLayoutState", iconLayoutManager.onSaveInstanceState());
        EditText editText = this.searchEdt;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
        }
        state.putParcelable("searchEdtState", editText.onSaveInstanceState());
        IconDialogContract.Presenter presenter = this.presenter;
        if (presenter != null) {
            presenter.saveState(state);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.checkParameterIsNotNull(dialog, "dialog");
        super.onDismiss(dialog);
        Handler handler = this.searchHandler;
        if (handler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchHandler");
        }
        handler.removeCallbacks(this.searchCallback);
        IconDialogContract.Presenter presenter = this.presenter;
        if (presenter != null) {
            presenter.detach();
        }
        this.presenter = null;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        Intrinsics.checkParameterIsNotNull(dialog, "dialog");
        IconDialogContract.Presenter presenter = this.presenter;
        if (presenter != null) {
            presenter.onDialogCancelled();
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void postDelayed(long delay, final Function0<Unit> action) {
        Intrinsics.checkParameterIsNotNull(action, "action");
        Runnable runnable = new Runnable() { // from class: com.maltaisn.icondialog.IconDialog$sam$java_lang_Runnable$0
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Intrinsics.checkExpressionValueIsNotNull(action.invoke(), "invoke(...)");
            }
        };
        Handler handler = this.progressHandler;
        if (handler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressHandler");
        }
        handler.post(runnable);
        this.progressCallback = runnable;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void cancelCallbacks() {
        Handler handler = this.progressHandler;
        if (handler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressHandler");
        }
        Runnable runnable = this.progressCallback;
        if (runnable != null) {
            handler.removeCallbacks(runnable);
            this.progressCallback = null;
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void exit() {
        dismiss();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void hideKeyboard() {
        EditText editText = this.searchEdt;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
        }
        if (editText.hasFocus()) {
            EditText editText2 = this.searchEdt;
            if (editText2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
            }
            editText2.clearFocus();
            Object systemService = requireContext().getSystemService("input_method");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            }
            InputMethodManager inputMethodManager = (InputMethodManager) systemService;
            EditText editText3 = this.searchEdt;
            if (editText3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
            }
            inputMethodManager.hideSoftInputFromWindow(editText3.getWindowToken(), 0);
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setCancelResult() {
        getCallback().onIconDialogCancelled();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setSelectionResult(List<Icon> selected) {
        Intrinsics.checkParameterIsNotNull(selected, "selected");
        getCallback().onIconDialogIconsSelected(this, selected);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setTitleVisible(boolean visible) {
        TextView textView = this.titleTxv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleTxv");
        }
        textView.setVisibility(visible ? 0 : 8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void updateTitle(int titleRes) {
        TextView textView = this.titleTxv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleTxv");
        }
        textView.setText(getString(titleRes));
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setSearchBarVisible(boolean visible) {
        ImageView imageView = this.searchImv;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchImv");
        }
        imageView.setVisibility(visible ? 0 : 8);
        EditText editText = this.searchEdt;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
        }
        editText.setVisibility(visible ? 0 : 8);
        ImageView imageView2 = this.searchClearBtn;
        if (imageView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchClearBtn");
        }
        imageView2.setVisibility(visible ? 0 : 8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setClearSearchBtnVisible(boolean visible) {
        ImageView imageView = this.searchClearBtn;
        if (imageView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchClearBtn");
        }
        imageView.setVisibility(visible ? 0 : 8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setClearBtnVisible(boolean visible) {
        Button button = this.clearBtn;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clearBtn");
        }
        button.setVisibility(visible ? 0 : 8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setNoResultLabelVisible(boolean visible) {
        TextView textView = this.noResultTxv;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("noResultTxv");
        }
        textView.setVisibility(visible ? 0 : 8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setProgressBarVisible(boolean visible) {
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
        }
        progressBar.setVisibility(visible ? 0 : 8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setFooterVisible(boolean visible) {
        Button button = this.clearBtn;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("clearBtn");
        }
        button.setVisibility(visible ? 0 : 8);
        Button button2 = this.cancelBtn;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("cancelBtn");
        }
        button2.setVisibility(visible ? 0 : 8);
        Button button3 = this.selectBtn;
        if (button3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectBtn");
        }
        button3.setVisibility(visible ? 0 : 8);
        View view = this.footerDiv;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("footerDiv");
        }
        view.setVisibility(visible ? 0 : 8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void removeLayoutPadding() {
        View view = this.dialogView;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialogView");
        }
        view.setPadding(0, 0, 0, 0);
        View view2 = this.headerDiv;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headerDiv");
        }
        view2.setVisibility(8);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void addStickyHeaderDecoration() {
        RecyclerView recyclerView = this.listRcv;
        if (recyclerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listRcv");
        }
        RecyclerView recyclerView2 = this.listRcv;
        if (recyclerView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listRcv");
        }
        IconAdapter iconAdapter = this.listAdapter;
        if (iconAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listAdapter");
        }
        recyclerView.addItemDecoration(new StickyHeaderDecoration(recyclerView2, iconAdapter, 2));
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void scrollToItemPosition(int pos) {
        IconLayoutManager iconLayoutManager = this.listLayout;
        if (iconLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listLayout");
        }
        iconLayoutManager.scrollToPositionWithOffset(pos, this.iconSize);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setSearchQuery(String query) {
        Intrinsics.checkParameterIsNotNull(query, "query");
        EditText editText = this.searchEdt;
        if (editText == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchEdt");
        }
        editText.setText(query);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void setSelectBtnEnabled(boolean enabled) {
        Button button = this.selectBtn;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selectBtn");
        }
        button.setEnabled(enabled);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void notifyIconItemChanged(int pos) {
        IconAdapter iconAdapter = this.listAdapter;
        if (iconAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listAdapter");
        }
        iconAdapter.notifyItemChanged(pos);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void notifyAllIconsChanged() {
        IconAdapter iconAdapter = this.listAdapter;
        if (iconAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listAdapter");
        }
        iconAdapter.notifyDataSetChanged();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.View
    public void showMaxSelectionMessage() {
        Toast.makeText(getContext(), R.string.icd_max_sel_message, 0).show();
    }

    private final Callback getCallback() {
        ActivityResultCaller parentFragment = getParentFragment();
        if (!(parentFragment instanceof Callback)) {
            parentFragment = null;
        }
        Callback callback = (Callback) parentFragment;
        if (callback == null) {
            ActivityResultCaller targetFragment = getTargetFragment();
            if (!(targetFragment instanceof Callback)) {
                targetFragment = null;
            }
            callback = (Callback) targetFragment;
        }
        if (callback == null) {
            FragmentActivity activity = getActivity();
            callback = (Callback) (activity instanceof Callback ? activity : null);
        }
        if (callback != null) {
            return callback;
        }
        throw new IllegalStateException("Icon dialog must have a callback.".toString());
    }

    /* JADX INFO: compiled from: IconDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0015\u0016B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0006H\u0016¨\u0006\u0017"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$IconAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/maltaisn/icondialog/StickyHeaderDecoration$Callback;", "(Lcom/maltaisn/icondialog/IconDialog;)V", "getHeaderPositionForItem", "", "pos", "getItemCount", "getItemId", "", "getItemViewType", "isHeader", "", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "HeaderViewHolder", "IconViewHolder", "lib_release"}, k = 1, mv = {1, 1, 16})
    private final class IconAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements StickyHeaderDecoration.Callback {
        public IconAdapter() {
            setHasStableIds(true);
        }

        /* JADX INFO: compiled from: IconDialog.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$IconAdapter$IconViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;", "itemView", "Landroid/view/View;", "(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V", "iconForeground", "iconImv", "Lcom/maltaisn/icondialog/IconImageView;", "bindView", "", "icon", "Lcom/maltaisn/icondialog/data/Icon;", "selected", "", "lib_release"}, k = 1, mv = {1, 1, 16})
        public final class IconViewHolder extends RecyclerView.ViewHolder implements IconDialogContract.IconItemView {
            private final View iconForeground;
            private final IconImageView iconImv;
            final /* synthetic */ IconAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public IconViewHolder(IconAdapter iconAdapter, View itemView) {
                super(itemView);
                Intrinsics.checkParameterIsNotNull(itemView, "itemView");
                this.this$0 = iconAdapter;
                View viewFindViewById = itemView.findViewById(R.id.icd_imv_icon);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.icd_imv_icon)");
                this.iconImv = (IconImageView) viewFindViewById;
                View viewFindViewById2 = itemView.findViewById(R.id.icd_icon_foreground);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "itemView.findViewById(R.id.icd_icon_foreground)");
                this.iconForeground = viewFindViewById2;
                viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.maltaisn.icondialog.IconDialog.IconAdapter.IconViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        IconDialogContract.Presenter presenter = IconDialog.this.presenter;
                        if (presenter != null) {
                            presenter.onIconItemClicked(IconViewHolder.this.getAdapterPosition());
                        }
                    }
                });
            }

            @Override // com.maltaisn.icondialog.IconDialogContract.IconItemView
            public void bindView(Icon icon, boolean selected) {
                Intrinsics.checkParameterIsNotNull(icon, "icon");
                Drawable drawable = icon.getDrawable();
                if (drawable == null) {
                    drawable = IconDialog.access$getUnavailableIconDrawable$p(IconDialog.this);
                }
                Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                Intrinsics.checkExpressionValueIsNotNull(drawableMutate, "DrawableCompat.wrap(icon…bleIconDrawable).mutate()");
                IconImageView iconImageView = this.iconImv;
                iconImageView.setImageDrawable(drawableMutate);
                iconImageView.setChecked(selected);
                iconImageView.setAlpha(icon.getDrawable() != null ? 1.0f : 0.3f);
            }
        }

        /* JADX INFO: compiled from: IconDialog.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$IconAdapter$HeaderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;", "view", "Landroid/view/View;", "(Lcom/maltaisn/icondialog/IconDialog$IconAdapter;Landroid/view/View;)V", "headerTxv", "Landroid/widget/TextView;", "bindView", "", "category", "Lcom/maltaisn/icondialog/data/Category;", "lib_release"}, k = 1, mv = {1, 1, 16})
        public final class HeaderViewHolder extends RecyclerView.ViewHolder implements IconDialogContract.HeaderItemView {
            private final TextView headerTxv;
            final /* synthetic */ IconAdapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public HeaderViewHolder(IconAdapter iconAdapter, View view) {
                super(view);
                Intrinsics.checkParameterIsNotNull(view, "view");
                this.this$0 = iconAdapter;
                View viewFindViewById = view.findViewById(R.id.icd_header_txv);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.icd_header_txv)");
                this.headerTxv = (TextView) viewFindViewById;
            }

            @Override // com.maltaisn.icondialog.IconDialogContract.HeaderItemView
            public void bindView(Category category) {
                Intrinsics.checkParameterIsNotNull(category, "category");
                TextView textView = this.headerTxv;
                Context contextRequireContext = IconDialog.this.requireContext();
                Intrinsics.checkExpressionValueIsNotNull(contextRequireContext, "requireContext()");
                textView.setText(category.resolveName(contextRequireContext));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
            if (viewType == 0) {
                View viewInflate = layoutInflaterFrom.inflate(R.layout.icd_item_icon, parent, false);
                Intrinsics.checkExpressionValueIsNotNull(viewInflate, "inflater.inflate(R.layou…item_icon, parent, false)");
                return new IconViewHolder(this, viewInflate);
            }
            if (viewType == 1) {
                View viewInflate2 = layoutInflaterFrom.inflate(R.layout.icd_item_header, parent, false);
                Intrinsics.checkExpressionValueIsNotNull(viewInflate2, "inflater.inflate(R.layou…em_header, parent, false)");
                return new HeaderViewHolder(this, viewInflate2);
            }
            if (viewType == 2) {
                View viewInflate3 = layoutInflaterFrom.inflate(R.layout.icd_item_sticky_header, parent, false);
                Intrinsics.checkExpressionValueIsNotNull(viewInflate3, "inflater.inflate(R.layou…ky_header, parent, false)");
                return new HeaderViewHolder(this, viewInflate3);
            }
            throw new IllegalStateException("Unknown view type.".toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int pos) {
            IconDialogContract.Presenter presenter;
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof IconDialogContract.IconItemView) {
                IconDialogContract.Presenter presenter2 = IconDialog.this.presenter;
                if (presenter2 != null) {
                    presenter2.onBindIconItemView(pos, (IconDialogContract.IconItemView) holder);
                    return;
                }
                return;
            }
            if (!(holder instanceof IconDialogContract.HeaderItemView) || (presenter = IconDialog.this.presenter) == null) {
                return;
            }
            presenter.onBindHeaderItemView(pos, (IconDialogContract.HeaderItemView) holder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: getItemCount */
        public int getGlobalSize() {
            IconDialogContract.Presenter presenter = IconDialog.this.presenter;
            if (presenter != null) {
                return presenter.getItemCount();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int pos) {
            IconDialogContract.Presenter presenter = IconDialog.this.presenter;
            if (presenter != null) {
                return presenter.getItemId(pos);
            }
            return 0L;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int pos) {
            IconDialogContract.Presenter presenter = IconDialog.this.presenter;
            if (presenter != null) {
                return presenter.getItemType(pos);
            }
            return 0;
        }

        @Override // com.maltaisn.icondialog.StickyHeaderDecoration.Callback
        public boolean isHeader(int pos) {
            IconDialogContract.Presenter presenter = IconDialog.this.presenter;
            return presenter != null && presenter.isHeader(pos);
        }

        @Override // com.maltaisn.icondialog.StickyHeaderDecoration.Callback
        public int getHeaderPositionForItem(int pos) {
            IconDialogContract.Presenter presenter = IconDialog.this.presenter;
            if (presenter != null) {
                return presenter.getHeaderPositionForItem(pos);
            }
            return 0;
        }
    }

    /* JADX INFO: compiled from: IconDialog.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/maltaisn/icondialog/IconDialog$Companion;", "", "()V", "SEARCH_DELAY", "", "newInstance", "Lcom/maltaisn/icondialog/IconDialog;", "settings", "Lcom/maltaisn/icondialog/IconDialogSettings;", "lib_release"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final IconDialog newInstance(IconDialogSettings settings) {
            Intrinsics.checkParameterIsNotNull(settings, "settings");
            IconDialog iconDialog = new IconDialog();
            iconDialog.setSettings(settings);
            return iconDialog;
        }
    }
}
