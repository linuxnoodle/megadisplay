package com.maltaisn.icondialog;

import android.os.Bundle;
import com.google.android.gms.actions.SearchIntents;
import com.maltaisn.icondialog.IconDialog;
import com.maltaisn.icondialog.IconDialogContract;
import com.maltaisn.icondialog.data.Category;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.filter.IconFilter;
import com.maltaisn.icondialog.pack.IconPack;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: IconDialogPresenter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0000\u0018\u0000 >2\u00020\u0001:\u0004>?@AB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001aH\u0002J\b\u0010\u001e\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\bH\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010 \u001a\u00020\bH\u0016J\u0018\u0010#\u001a\u00020\b2\u0006\u0010 \u001a\u00020\b2\u0006\u0010$\u001a\u00020\bH\u0016J\u0010\u0010%\u001a\u00020\b2\u0006\u0010 \u001a\u00020\bH\u0016J\u0010\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0002J\u001a\u0010(\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0010\u0010)\u001a\u00020*2\u0006\u0010 \u001a\u00020\bH\u0016J\u0018\u0010+\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\b2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\b2\u0006\u0010,\u001a\u00020/H\u0016J\b\u00100\u001a\u00020\u001aH\u0016J\b\u00101\u001a\u00020\u001aH\u0016J\b\u00102\u001a\u00020\u001aH\u0016J\u0010\u00103\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\bH\u0016J\u0010\u00104\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000fH\u0016J\b\u00106\u001a\u00020\u001aH\u0016J\u0010\u00107\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000fH\u0016J\u0010\u00108\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000fH\u0016J\b\u00109\u001a\u00020\u001aH\u0016J\u0010\u0010:\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010;\u001a\u00020\u001aH\u0002J\b\u0010<\u001a\u00020\u001aH\u0002J\u001a\u0010=\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0011j\b\u0012\u0004\u0012\u00020\b`\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006B"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogPresenter;", "Lcom/maltaisn/icondialog/IconDialogContract$Presenter;", "()V", "iconPack", "Lcom/maltaisn/icondialog/pack/IconPack;", "getIconPack", "()Lcom/maltaisn/icondialog/pack/IconPack;", "itemCount", "", "getItemCount", "()I", "listItems", "", "Lcom/maltaisn/icondialog/IconDialogPresenter$Item;", "searchQuery", "", "selectedIconIds", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "settings", "Lcom/maltaisn/icondialog/IconDialogSettings;", "getSettings", "()Lcom/maltaisn/icondialog/IconDialogSettings;", "view", "Lcom/maltaisn/icondialog/IconDialogContract$View;", "attach", "", "state", "Landroid/os/Bundle;", "confirmSelection", "detach", "getHeaderPositionForItem", "pos", "getItemId", "", "getItemSpanCount", "max", "getItemType", "getPosByIconId", "id", "initialize", "isHeader", "", "onBindHeaderItemView", "itemView", "Lcom/maltaisn/icondialog/IconDialogContract$HeaderItemView;", "onBindIconItemView", "Lcom/maltaisn/icondialog/IconDialogContract$IconItemView;", "onCancelBtnClicked", "onClearBtnClicked", "onDialogCancelled", "onIconItemClicked", "onSearchActionEvent", SearchIntents.EXTRA_QUERY, "onSearchClearBtnClicked", "onSearchQueryChanged", "onSearchQueryEntered", "onSelectBtnClicked", "saveState", "updateList", "updateSearchAndTitleVisibility", "waitForIconPack", "Companion", "HeaderItem", "IconItem", "Item", "lib_release"}, k = 1, mv = {1, 1, 16})
public final class IconDialogPresenter implements IconDialogContract.Presenter {
    private static final long ICON_PACK_CHECK_DELAY = 100;
    public static final int ITEM_TYPE_HEADER = 1;
    public static final int ITEM_TYPE_ICON = 0;
    public static final int ITEM_TYPE_STICKY_HEADER = 2;
    private IconDialogContract.View view;
    private final List<Item> listItems = new ArrayList();
    private final LinkedHashSet<Integer> selectedIconIds = new LinkedHashSet<>();
    private String searchQuery = "";

    /* JADX INFO: compiled from: IconDialogPresenter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\bb\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogPresenter$Item;", "", "id", "", "getId", "()J", "lib_release"}, k = 1, mv = {1, 1, 16})
    private interface Item {
        long getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IconDialogSettings getSettings() {
        IconDialogContract.View view = this.view;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        return view.getSettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IconPack getIconPack() {
        IconDialogContract.View view = this.view;
        if (view == null) {
            Intrinsics.throwNpe();
        }
        return view.getIconPack();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void attach(IconDialogContract.View view, Bundle state) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        if (!(this.view == null)) {
            throw new IllegalStateException("Presenter already attached.".toString());
        }
        this.view = view;
        this.listItems.clear();
        this.selectedIconIds.clear();
        this.searchQuery = "";
        if (getIconPack() == null) {
            view.updateTitle(view.getSettings().getDialogTitle());
            view.setFooterVisible(view.getSettings().getShowSelectBtn());
            view.setProgressBarVisible(true);
            view.setSelectBtnEnabled(false);
            view.setClearBtnVisible(false);
            view.setNoResultLabelVisible(false);
            view.notifyAllIconsChanged();
            updateSearchAndTitleVisibility();
            waitForIconPack(view, state);
            return;
        }
        initialize(view, state);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void waitForIconPack(final IconDialogContract.View view, final Bundle state) {
        view.postDelayed(ICON_PACK_CHECK_DELAY, new Function0<Unit>() { // from class: com.maltaisn.icondialog.IconDialogPresenter.waitForIconPack.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (IconDialogPresenter.this.getIconPack() != null) {
                    IconDialogPresenter.this.initialize(view, state);
                } else {
                    IconDialogPresenter.this.waitForIconPack(view, state);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initialize(IconDialogContract.View view, Bundle state) {
        IconPack iconPack = getIconPack();
        if (iconPack == null) {
            throw new IllegalStateException("Icon pack must be initialized.".toString());
        }
        if (state == null) {
            List mutableList = CollectionsKt.toMutableList((Collection) view.getSelectedIconIds());
            Iterator it = mutableList.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                if (iconPack.getIcon(iIntValue) == null) {
                    throw new IllegalStateException(("Selected icon ID " + iIntValue + " not found in icon pack.").toString());
                }
            }
            if (mutableList.size() > getSettings().getMaxSelection() && getSettings().getMaxSelection() != -1) {
                mutableList.subList(getSettings().getMaxSelection(), mutableList.size()).clear();
            }
            CollectionsKt.addAll(this.selectedIconIds, mutableList);
        } else {
            LinkedHashSet<Integer> linkedHashSet = this.selectedIconIds;
            ArrayList<Integer> integerArrayList = state.getIntegerArrayList("selectedIconIds");
            if (integerArrayList == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(integerArrayList, "state.getIntegerArrayList(\"selectedIconIds\")!!");
            CollectionsKt.addAll(linkedHashSet, integerArrayList);
            String string = state.getString("searchQuery");
            if (string == null) {
                Intrinsics.throwNpe();
            }
            this.searchQuery = string;
        }
        updateSearchAndTitleVisibility();
        view.updateTitle(getSettings().getDialogTitle());
        view.setFooterVisible(getSettings().getShowSelectBtn());
        view.setSelectBtnEnabled(!this.selectedIconIds.isEmpty());
        view.setClearBtnVisible(getSettings().getShowSelectBtn() && getSettings().getShowClearBtn() && (this.selectedIconIds.isEmpty() ^ true));
        view.setProgressBarVisible(false);
        view.setNoResultLabelVisible(false);
        view.setClearSearchBtnVisible(this.searchQuery.length() > 0);
        if (getSettings().getHeadersVisibility() == IconDialog.HeadersVisibility.STICKY) {
            view.addStickyHeaderDecoration();
        }
        updateList();
        if (state == null && (!this.selectedIconIds.isEmpty())) {
            view.scrollToItemPosition(getPosByIconId(((Number) CollectionsKt.first(this.selectedIconIds)).intValue()));
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void detach() {
        IconDialogContract.View view = this.view;
        if (view != null) {
            view.cancelCallbacks();
        }
        this.view = null;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void saveState(Bundle state) {
        Intrinsics.checkParameterIsNotNull(state, "state");
        state.putIntegerArrayList("selectedIconIds", new ArrayList<>(this.selectedIconIds));
        state.putString("searchQuery", this.searchQuery);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onSelectBtnClicked() {
        confirmSelection();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onCancelBtnClicked() {
        onDialogCancelled();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onClearBtnClicked() {
        for (Integer id : this.selectedIconIds) {
            Intrinsics.checkExpressionValueIsNotNull(id, "id");
            int posByIconId = getPosByIconId(id.intValue());
            if (posByIconId != -1) {
                Item item = this.listItems.get(posByIconId);
                if (item == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem");
                }
                ((IconItem) item).setSelected(false);
                IconDialogContract.View view = this.view;
                if (view != null) {
                    view.notifyIconItemChanged(posByIconId);
                }
            }
        }
        this.selectedIconIds.clear();
        IconDialogContract.View view2 = this.view;
        if (view2 != null) {
            view2.setClearBtnVisible(false);
        }
        IconDialogContract.View view3 = this.view;
        if (view3 != null) {
            view3.setSelectBtnEnabled(false);
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onDialogCancelled() {
        IconDialogContract.View view = this.view;
        if (view != null) {
            view.cancelCallbacks();
            view.setCancelResult();
            view.exit();
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onSearchQueryChanged(String query) {
        Intrinsics.checkParameterIsNotNull(query, "query");
        IconDialogContract.View view = this.view;
        if (view != null) {
            view.setClearSearchBtnVisible(query.length() > 0);
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onSearchQueryEntered(String query) {
        Intrinsics.checkParameterIsNotNull(query, "query");
        String string = StringsKt.trim((CharSequence) query).toString();
        if (!Intrinsics.areEqual(string, this.searchQuery)) {
            this.searchQuery = string;
            updateList();
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onSearchActionEvent(String query) {
        Intrinsics.checkParameterIsNotNull(query, "query");
        IconDialogContract.View view = this.view;
        if (view != null) {
            view.hideKeyboard();
        }
        onSearchQueryEntered(query);
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onSearchClearBtnClicked() {
        onSearchQueryEntered("");
        IconDialogContract.View view = this.view;
        if (view != null) {
            view.setSearchQuery("");
        }
        IconDialogContract.View view2 = this.view;
        if (view2 != null) {
            view2.setClearSearchBtnVisible(false);
        }
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public int getItemCount() {
        return this.listItems.size();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public long getItemId(int pos) {
        return this.listItems.get(pos).getId();
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public int getItemType(int pos) {
        return !(this.listItems.get(pos) instanceof IconItem) ? 1 : 0;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public int getItemSpanCount(int pos, int max) {
        if (this.listItems.get(pos) instanceof HeaderItem) {
            return max;
        }
        return 1;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onBindIconItemView(int pos, IconDialogContract.IconItemView itemView) {
        Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        Item item = this.listItems.get(pos);
        if (item == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem");
        }
        IconItem iconItem = (IconItem) item;
        itemView.bindView(iconItem.getIcon(), iconItem.getSelected());
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onBindHeaderItemView(int pos, IconDialogContract.HeaderItemView itemView) {
        Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        Item item = this.listItems.get(pos);
        if (item == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.HeaderItem");
        }
        itemView.bindView(((HeaderItem) item).getCategory());
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public boolean isHeader(int pos) {
        return this.listItems.get(pos) instanceof HeaderItem;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public int getHeaderPositionForItem(int pos) {
        while (pos >= 0) {
            if (this.listItems.get(pos) instanceof HeaderItem) {
                return pos;
            }
            pos--;
        }
        return -1;
    }

    @Override // com.maltaisn.icondialog.IconDialogContract.Presenter
    public void onIconItemClicked(int pos) {
        IconDialogContract.View view = this.view;
        if (view != null) {
            view.hideKeyboard();
        }
        Item item = this.listItems.get(pos);
        if (item == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem");
        }
        IconItem iconItem = (IconItem) item;
        if (iconItem.getIcon().getDrawable() == null) {
            return;
        }
        boolean z = false;
        if (getSettings().getShowSelectBtn()) {
            if (iconItem.getSelected()) {
                iconItem.setSelected(false);
                this.selectedIconIds.remove(Integer.valueOf(iconItem.getIcon().getId()));
            } else if (this.selectedIconIds.size() == getSettings().getMaxSelection() && getSettings().getMaxSelection() != -1) {
                if (getSettings().getShowMaxSelectionMessage()) {
                    IconDialogContract.View view2 = this.view;
                    if (view2 != null) {
                        view2.showMaxSelectionMessage();
                        return;
                    }
                    return;
                }
                int iIntValue = ((Number) CollectionsKt.first(this.selectedIconIds)).intValue();
                this.selectedIconIds.remove(Integer.valueOf(iIntValue));
                int posByIconId = getPosByIconId(iIntValue);
                if (posByIconId != -1) {
                    Item item2 = this.listItems.get(posByIconId);
                    if (item2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem");
                    }
                    ((IconItem) item2).setSelected(false);
                    IconDialogContract.View view3 = this.view;
                    if (view3 != null) {
                        view3.notifyIconItemChanged(posByIconId);
                    }
                }
                iconItem.setSelected(true);
                this.selectedIconIds.add(Integer.valueOf(iconItem.getIcon().getId()));
            } else {
                iconItem.setSelected(true);
                this.selectedIconIds.add(Integer.valueOf(iconItem.getIcon().getId()));
            }
            boolean z2 = !this.selectedIconIds.isEmpty();
            IconDialogContract.View view4 = this.view;
            if (view4 != null) {
                view4.setSelectBtnEnabled(z2);
            }
            IconDialogContract.View view5 = this.view;
            if (view5 != null) {
                if (getSettings().getShowClearBtn() && z2) {
                    z = true;
                }
                view5.setClearBtnVisible(z);
            }
        } else {
            if (!this.selectedIconIds.isEmpty()) {
                int iIntValue2 = ((Number) CollectionsKt.first(this.selectedIconIds)).intValue();
                this.selectedIconIds.remove(Integer.valueOf(iIntValue2));
                int posByIconId2 = getPosByIconId(iIntValue2);
                if (posByIconId2 != -1) {
                    Item item3 = this.listItems.get(posByIconId2);
                    if (item3 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem");
                    }
                    ((IconItem) item3).setSelected(false);
                    IconDialogContract.View view6 = this.view;
                    if (view6 != null) {
                        view6.notifyIconItemChanged(posByIconId2);
                    }
                }
            }
            iconItem.setSelected(true);
            this.selectedIconIds.add(Integer.valueOf(iconItem.getIcon().getId()));
            confirmSelection();
        }
        IconDialogContract.View view7 = this.view;
        if (view7 != null) {
            view7.notifyIconItemChanged(pos);
        }
    }

    private final void confirmSelection() {
        IconPack iconPack = getIconPack();
        if (iconPack != null) {
            IconDialogContract.View view = this.view;
            if (view != null) {
                LinkedHashSet<Integer> linkedHashSet = this.selectedIconIds;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(linkedHashSet, 10));
                Iterator<T> it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    Icon icon = iconPack.getIcon(((Number) it.next()).intValue());
                    if (icon == null) {
                        Intrinsics.throwNpe();
                    }
                    arrayList.add(icon);
                }
                view.setSelectionResult(arrayList);
            }
            IconDialogContract.View view2 = this.view;
            if (view2 != null) {
                view2.exit();
            }
        }
    }

    private final int getPosByIconId(int id) {
        int i = 0;
        for (Item item : this.listItems) {
            if ((item instanceof IconItem) && ((IconItem) item).getIcon().getId() == id) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private final void updateList() {
        Icon icon;
        IconPack iconPack = getIconPack();
        if (iconPack != null) {
            List<Icon> listQueryIcons = getSettings().getIconFilter().queryIcons(iconPack, this.searchQuery);
            CollectionsKt.sortWith(listQueryIcons, new Comparator<Icon>() { // from class: com.maltaisn.icondialog.IconDialogPresenter.updateList.1
                @Override // java.util.Comparator
                public final int compare(Icon icon1, Icon icon2) {
                    int iCompare = Intrinsics.compare(icon1.getCategoryId(), icon2.getCategoryId());
                    if (iCompare != 0) {
                        return iCompare;
                    }
                    IconFilter iconFilter = IconDialogPresenter.this.getSettings().getIconFilter();
                    Intrinsics.checkExpressionValueIsNotNull(icon1, "icon1");
                    Intrinsics.checkExpressionValueIsNotNull(icon2, "icon2");
                    return iconFilter.compare(icon1, icon2);
                }
            });
            this.listItems.clear();
            List<Item> list = this.listItems;
            List<Icon> list2 = listQueryIcons;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (Icon icon2 : list2) {
                arrayList.add(new IconItem(icon2, this.selectedIconIds.contains(Integer.valueOf(icon2.getId()))));
            }
            CollectionsKt.addAll(list, arrayList);
            if (getSettings().getHeadersVisibility() != IconDialog.HeadersVisibility.HIDE && (!this.listItems.isEmpty())) {
                int i = 0;
                while (i < this.listItems.size()) {
                    IconItem iconItem = (IconItem) CollectionsKt.getOrNull(this.listItems, i - 1);
                    Integer numValueOf = (iconItem == null || (icon = iconItem.getIcon()) == null) ? null : Integer.valueOf(icon.getCategoryId());
                    Item item = this.listItems.get(i);
                    if (item == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.maltaisn.icondialog.IconDialogPresenter.IconItem");
                    }
                    int categoryId = ((IconItem) item).getIcon().getCategoryId();
                    if ((numValueOf == null || categoryId != numValueOf.intValue()) && categoryId != -1) {
                        List<Item> list3 = this.listItems;
                        Category category = iconPack.getCategory(categoryId);
                        if (category == null) {
                            Intrinsics.throwNpe();
                        }
                        list3.add(i, new HeaderItem(category));
                        i++;
                    }
                    i++;
                }
            }
            IconDialogContract.View view = this.view;
            if (view != null) {
                view.notifyAllIconsChanged();
            }
            IconDialogContract.View view2 = this.view;
            if (view2 != null) {
                view2.setNoResultLabelVisible(this.listItems.isEmpty());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void updateSearchAndTitleVisibility() {
        /*
            r6 = this;
            com.maltaisn.icondialog.IconDialogContract$View r0 = r6.view
            if (r0 == 0) goto La1
            com.maltaisn.icondialog.pack.IconPack r1 = r6.getIconPack()
            if (r1 == 0) goto L11
            java.util.List r1 = r1.getLocales()
            if (r1 == 0) goto L11
            goto L15
        L11:
            java.util.List r1 = kotlin.collections.CollectionsKt.emptyList()
        L15:
            com.maltaisn.icondialog.IconDialogSettings r2 = r6.getSettings()
            com.maltaisn.icondialog.IconDialog$SearchVisibility r2 = r2.getSearchVisibility()
            com.maltaisn.icondialog.IconDialog$SearchVisibility r3 = com.maltaisn.icondialog.IconDialog.SearchVisibility.ALWAYS
            r4 = 0
            r5 = 1
            if (r2 != r3) goto L2d
            r2 = r1
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            r2 = r2 ^ r5
            if (r2 != 0) goto L70
        L2d:
            com.maltaisn.icondialog.IconDialogSettings r2 = r6.getSettings()
            com.maltaisn.icondialog.IconDialog$SearchVisibility r2 = r2.getSearchVisibility()
            com.maltaisn.icondialog.IconDialog$SearchVisibility r3 = com.maltaisn.icondialog.IconDialog.SearchVisibility.IF_LANGUAGE_AVAILABLE
            if (r2 != r3) goto L72
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r1, r3)
            r2.<init>(r3)
            java.util.Collection r2 = (java.util.Collection) r2
            java.util.Iterator r1 = r1.iterator()
        L4c:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L60
            java.lang.Object r3 = r1.next()
            java.util.Locale r3 = (java.util.Locale) r3
            java.lang.String r3 = r3.getLanguage()
            r2.add(r3)
            goto L4c
        L60:
            java.util.List r2 = (java.util.List) r2
            java.util.Locale r1 = r0.getLocale()
            java.lang.String r1 = r1.getLanguage()
            boolean r1 = r2.contains(r1)
            if (r1 == 0) goto L72
        L70:
            r1 = 1
            goto L73
        L72:
            r1 = 0
        L73:
            com.maltaisn.icondialog.IconDialogSettings r2 = r6.getSettings()
            com.maltaisn.icondialog.IconDialog$TitleVisibility r2 = r2.getTitleVisibility()
            com.maltaisn.icondialog.IconDialog$TitleVisibility r3 = com.maltaisn.icondialog.IconDialog.TitleVisibility.ALWAYS
            if (r2 == r3) goto L8d
            com.maltaisn.icondialog.IconDialogSettings r2 = r6.getSettings()
            com.maltaisn.icondialog.IconDialog$TitleVisibility r2 = r2.getTitleVisibility()
            com.maltaisn.icondialog.IconDialog$TitleVisibility r3 = com.maltaisn.icondialog.IconDialog.TitleVisibility.IF_SEARCH_HIDDEN
            if (r2 != r3) goto L8e
            if (r1 != 0) goto L8e
        L8d:
            r4 = 1
        L8e:
            r0.setSearchBarVisible(r1)
            r0.setTitleVisible(r4)
            if (r1 != 0) goto La1
            if (r4 != 0) goto La1
            com.maltaisn.icondialog.pack.IconPack r1 = r6.getIconPack()
            if (r1 == 0) goto La1
            r0.removeLayoutPadding()
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.maltaisn.icondialog.IconDialogPresenter.updateSearchAndTitleVisibility():void");
    }

    /* JADX INFO: compiled from: IconDialogPresenter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogPresenter$IconItem;", "Lcom/maltaisn/icondialog/IconDialogPresenter$Item;", "icon", "Lcom/maltaisn/icondialog/data/Icon;", "selected", "", "(Lcom/maltaisn/icondialog/data/Icon;Z)V", "getIcon", "()Lcom/maltaisn/icondialog/data/Icon;", "id", "", "getId", "()J", "getSelected", "()Z", "setSelected", "(Z)V", "lib_release"}, k = 1, mv = {1, 1, 16})
    private static final class IconItem implements Item {
        private final Icon icon;
        private boolean selected;

        public IconItem(Icon icon, boolean z) {
            Intrinsics.checkParameterIsNotNull(icon, "icon");
            this.icon = icon;
            this.selected = z;
        }

        public final Icon getIcon() {
            return this.icon;
        }

        public final boolean getSelected() {
            return this.selected;
        }

        public final void setSelected(boolean z) {
            this.selected = z;
        }

        @Override // com.maltaisn.icondialog.IconDialogPresenter.Item
        public long getId() {
            return this.icon.getId();
        }
    }

    /* JADX INFO: compiled from: IconDialogPresenter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/maltaisn/icondialog/IconDialogPresenter$HeaderItem;", "Lcom/maltaisn/icondialog/IconDialogPresenter$Item;", "category", "Lcom/maltaisn/icondialog/data/Category;", "(Lcom/maltaisn/icondialog/data/Category;)V", "getCategory", "()Lcom/maltaisn/icondialog/data/Category;", "id", "", "getId", "()J", "lib_release"}, k = 1, mv = {1, 1, 16})
    private static final class HeaderItem implements Item {
        private final Category category;

        public HeaderItem(Category category) {
            Intrinsics.checkParameterIsNotNull(category, "category");
            this.category = category;
        }

        public final Category getCategory() {
            return this.category;
        }

        @Override // com.maltaisn.icondialog.IconDialogPresenter.Item
        public long getId() {
            return ~this.category.getId();
        }
    }
}
