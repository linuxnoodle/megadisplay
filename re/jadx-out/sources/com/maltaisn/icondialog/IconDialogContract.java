package com.maltaisn.icondialog;

import android.os.Bundle;
import com.google.android.gms.actions.SearchIntents;
import com.maltaisn.icondialog.data.Category;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.pack.IconPack;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: IconDialogContract.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b`\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogContract;", "", "HeaderItemView", "IconItemView", "Presenter", "View", "lib_release"}, k = 1, mv = {1, 1, 16})
public interface IconDialogContract {

    /* JADX INFO: compiled from: IconDialogContract.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;", "", "bindView", "", "category", "Lcom/maltaisn/icondialog/data/Category;", "lib_release"}, k = 1, mv = {1, 1, 16})
    public interface HeaderItemView {
        void bindView(Category category);
    }

    /* JADX INFO: compiled from: IconDialogContract.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;", "", "bindView", "", "icon", "Lcom/maltaisn/icondialog/data/Icon;", "selected", "", "lib_release"}, k = 1, mv = {1, 1, 16})
    public interface IconItemView {
        void bindView(Icon icon, boolean selected);
    }

    /* JADX INFO: compiled from: IconDialogContract.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\b\u0010\f\u001a\u00020\u0007H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0018\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u001aH&J\b\u0010\u001b\u001a\u00020\u0007H&J\b\u0010\u001c\u001a\u00020\u0007H&J\b\u0010\u001d\u001a\u00020\u0007H&J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H&J\b\u0010\"\u001a\u00020\u0007H&J\u0010\u0010#\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H&J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H&J\b\u0010%\u001a\u00020\u0007H&J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006'"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogContract$Presenter;", "", "itemCount", "", "getItemCount", "()I", "attach", "", "view", "Lcom/maltaisn/icondialog/IconDialogContract$View;", "state", "Landroid/os/Bundle;", "detach", "getHeaderPositionForItem", "pos", "getItemId", "", "getItemSpanCount", "max", "getItemType", "isHeader", "", "onBindHeaderItemView", "itemView", "Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;", "onBindIconItemView", "Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;", "onCancelBtnClicked", "onClearBtnClicked", "onDialogCancelled", "onIconItemClicked", "onSearchActionEvent", SearchIntents.EXTRA_QUERY, "", "onSearchClearBtnClicked", "onSearchQueryChanged", "onSearchQueryEntered", "onSelectBtnClicked", "saveState", "lib_release"}, k = 1, mv = {1, 1, 16})
    public interface Presenter {
        void attach(View view, Bundle state);

        void detach();

        int getHeaderPositionForItem(int pos);

        int getItemCount();

        long getItemId(int pos);

        int getItemSpanCount(int pos, int max);

        int getItemType(int pos);

        boolean isHeader(int pos);

        void onBindHeaderItemView(int pos, HeaderItemView itemView);

        void onBindIconItemView(int pos, IconItemView itemView);

        void onCancelBtnClicked();

        void onClearBtnClicked();

        void onDialogCancelled();

        void onIconItemClicked(int pos);

        void onSearchActionEvent(String query);

        void onSearchClearBtnClicked();

        void onSearchQueryChanged(String query);

        void onSearchQueryEntered(String query);

        void onSelectBtnClicked();

        void saveState(Bundle state);
    }

    /* JADX INFO: compiled from: IconDialogContract.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\b\u0010\u0013\u001a\u00020\u0014H&J\b\u0010\u0015\u001a\u00020\u0014H&J\b\u0010\u0016\u001a\u00020\u0014H&J\b\u0010\u0017\u001a\u00020\u0014H&J\b\u0010\u0018\u001a\u00020\u0014H&J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\fH&J\u001e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00140\u001fH&J\b\u0010 \u001a\u00020\u0014H&J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\fH&J\b\u0010\"\u001a\u00020\u0014H&J\u0010\u0010#\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010&\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010'\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010(\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010)\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010*\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\u0010\u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020-H&J\u0010\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020%H&J\u0016\u00100\u001a\u00020\u00142\f\u00101\u001a\b\u0012\u0004\u0012\u0002020\u000bH&J\u0010\u00103\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H&J\b\u00104\u001a\u00020\u0014H&J\u0012\u00105\u001a\u00020\u00142\b\b\u0001\u00106\u001a\u00020\fH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u00067"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogContract$View;", "", "iconPack", "Lcom/maltaisn/icondialog/pack/IconPack;", "getIconPack", "()Lcom/maltaisn/icondialog/pack/IconPack;", "locale", "Ljava/util/Locale;", "getLocale", "()Ljava/util/Locale;", "selectedIconIds", "", "", "getSelectedIconIds", "()Ljava/util/List;", "settings", "Lcom/maltaisn/icondialog/IconDialogSettings;", "getSettings", "()Lcom/maltaisn/icondialog/IconDialogSettings;", "addStickyHeaderDecoration", "", "cancelCallbacks", "exit", "hideKeyboard", "notifyAllIconsChanged", "notifyIconItemChanged", "pos", "postDelayed", "delay", "", "action", "Lkotlin/Function0;", "removeLayoutPadding", "scrollToItemPosition", "setCancelResult", "setClearBtnVisible", "visible", "", "setClearSearchBtnVisible", "setFooterVisible", "setNoResultLabelVisible", "setProgressBarVisible", "setSearchBarVisible", "setSearchQuery", SearchIntents.EXTRA_QUERY, "", "setSelectBtnEnabled", "enabled", "setSelectionResult", "selected", "Lcom/maltaisn/icondialog/data/Icon;", "setTitleVisible", "showMaxSelectionMessage", "updateTitle", "titleRes", "lib_release"}, k = 1, mv = {1, 1, 16})
    public interface View {
        void addStickyHeaderDecoration();

        void cancelCallbacks();

        void exit();

        IconPack getIconPack();

        Locale getLocale();

        List<Integer> getSelectedIconIds();

        IconDialogSettings getSettings();

        void hideKeyboard();

        void notifyAllIconsChanged();

        void notifyIconItemChanged(int pos);

        void postDelayed(long delay, Function0<Unit> action);

        void removeLayoutPadding();

        void scrollToItemPosition(int pos);

        void setCancelResult();

        void setClearBtnVisible(boolean visible);

        void setClearSearchBtnVisible(boolean visible);

        void setFooterVisible(boolean visible);

        void setNoResultLabelVisible(boolean visible);

        void setProgressBarVisible(boolean visible);

        void setSearchBarVisible(boolean visible);

        void setSearchQuery(String query);

        void setSelectBtnEnabled(boolean enabled);

        void setSelectionResult(List<Icon> selected);

        void setTitleVisible(boolean visible);

        void showMaxSelectionMessage();

        void updateTitle(int titleRes);
    }
}
