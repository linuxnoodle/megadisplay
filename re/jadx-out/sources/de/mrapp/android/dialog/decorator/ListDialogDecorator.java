package de.mrapp.android.dialog.decorator;

import android.R;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.adapter.ArrayRecyclerViewAdapter;
import de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper;
import de.mrapp.android.dialog.listener.OnItemClickListenerWrapper;
import de.mrapp.android.dialog.listener.OnMultiChoiceClickListenerWrapper;
import de.mrapp.android.dialog.model.ButtonBarDialog;
import de.mrapp.android.dialog.model.ListDialog;
import de.mrapp.android.dialog.model.ValidateableDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.android.dialog.view.Divider;
import de.mrapp.util.Condition;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ListDialogDecorator extends AbstractDialogDecorator<ButtonBarDialog> implements de.mrapp.android.dialog.model.ListDialogDecorator {
    private static final String CHECKED_ITEMS_EXTRA = "ListDialogDecorator::checkedItems";
    private static final String ENABLED_ITEMS_EXTRA = "ListDialogDecorator::enabledItems";
    private static final String ICON_RESOURCE_IDS_EXTRA = "ListDialogDecorator::iconResourceIds";
    private static final String ITEMS_EXTRA = "ListDialogDecorator::items";
    private static final String ITEM_COLOR_EXTRA = "ListDialogDecorator::itemColor";
    private static final String MULTI_CHOICE_ITEMS_EXTRA = "ListDialogDecorator::multiChoiceItems";
    private static final String SINGLE_CHOICE_ITEMS_EXTRA = "ListDialogDecorator::singleChoiceItems";
    private RecyclerViewAdapterWrapper<?> adapter;
    private int[] iconResourceIds;
    private boolean inflatedCustomView;
    private ColorStateList itemColor;
    private ColorStateList itemIconTintList;
    private PorterDuff.Mode itemIconTintMode;
    private Typeface itemTypeface;
    private CharSequence[] items;
    private RecyclerView.LayoutManager layoutManager;
    private Divider listDivider;
    private RecyclerView listView;
    private ListDialog.OnItemEnabledListener listViewItemEnabledListener;
    private ListDialog.OnItemSelectedListener listViewItemSelectedListener;
    private CharSequence[] multiChoiceItems;
    private DialogInterface.OnMultiChoiceClickListener multiChoiceListener;
    private CharSequence[] singleChoiceItems;
    private DialogInterface.OnClickListener singleChoiceListener;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    private void inflateListView(ViewGroup viewGroup) {
        View viewFindViewById = viewGroup.findViewById(R.id.list);
        RecyclerView recyclerView = viewFindViewById instanceof RecyclerView ? (RecyclerView) viewFindViewById : null;
        this.listView = recyclerView;
        if (recyclerView == null && !((ButtonBarDialog) getDialog()).isCustomViewUsed()) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(de.mrapp.android.dialog.R.layout.material_dialog_list_view, viewGroup, false);
            this.listView = (RecyclerView) viewInflate.findViewById(R.id.list);
            ((ButtonBarDialog) getDialog()).setView(viewInflate);
            this.inflatedCustomView = true;
        } else {
            this.inflatedCustomView = false;
        }
        View viewFindViewById2 = viewGroup.findViewById(de.mrapp.android.dialog.R.id.list_divider);
        this.listDivider = viewFindViewById2 instanceof Divider ? (Divider) viewFindViewById2 : null;
    }

    private void attachAdapter() {
        RecyclerView recyclerView = this.listView;
        if (recyclerView != null) {
            if (this.adapter != null) {
                recyclerView.setHasFixedSize(false);
                this.listView.setLayoutManager(this.layoutManager);
                this.listView.setAdapter(this.adapter);
                this.listView.setVisibility(this.adapter == null ? 8 : 0);
                this.adapter.setOnItemSelectedListener(this.listViewItemSelectedListener);
                this.adapter.setOnItemEnabledListener(this.listViewItemEnabledListener);
                initializeSelectionListener();
                adaptItemColor();
                adaptItemTypeface();
                adaptItemIconTintList();
                adaptItemIconTintMode();
                return;
            }
            if (this.inflatedCustomView) {
                ((ButtonBarDialog) getDialog()).setView((View) null);
            }
            this.listView = null;
        }
    }

    private boolean[] getCheckedItems() {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper == null) {
            return null;
        }
        int itemCount = recyclerViewAdapterWrapper.getGlobalSize();
        boolean[] zArr = new boolean[itemCount];
        for (int i = 0; i < itemCount; i++) {
            zArr[i] = this.adapter.isItemChecked(i);
        }
        return zArr;
    }

    private boolean[] getEnabledItems() {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper == null) {
            return null;
        }
        int itemCount = recyclerViewAdapterWrapper.getGlobalSize();
        boolean[] zArr = new boolean[itemCount];
        for (int i = 0; i < itemCount; i++) {
            zArr[i] = this.adapter.isItemEnabled(i);
        }
        return zArr;
    }

    private int indexOfCheckedItem(boolean[] zArr) {
        for (int i = 0; i < zArr.length; i++) {
            if (zArr[i]) {
                return i;
            }
        }
        return -1;
    }

    private void initializeSelectionListener() {
        RecyclerViewAdapterWrapper.ChoiceMode choiceMode = this.adapter.getChoiceMode();
        if (choiceMode instanceof RecyclerViewAdapterWrapper.MultipleChoiceMode) {
            this.adapter.setOnItemClickListener(new OnMultiChoiceClickListenerWrapper(this.multiChoiceListener, (ValidateableDialog) getDialog(), 0));
        } else if (choiceMode instanceof RecyclerViewAdapterWrapper.SingleChoiceMode) {
            this.adapter.setOnItemClickListener(new OnItemClickListenerWrapper(this.singleChoiceListener, (ValidateableDialog) getDialog(), 0));
        } else {
            this.adapter.setOnItemClickListener(new OnItemClickListenerWrapper(this.singleChoiceListener, (ValidateableDialog) getDialog(), -1));
        }
    }

    private void adaptItemColor() {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper != null) {
            Object wrappedAdapter = recyclerViewAdapterWrapper.getWrappedAdapter();
            if (wrappedAdapter instanceof ArrayRecyclerViewAdapter) {
                ((ArrayRecyclerViewAdapter) wrappedAdapter).setItemColor(this.itemColor);
            }
        }
    }

    private void adaptItemTypeface() {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper == null || this.itemTypeface == null) {
            return;
        }
        Object wrappedAdapter = recyclerViewAdapterWrapper.getWrappedAdapter();
        if (wrappedAdapter instanceof ArrayRecyclerViewAdapter) {
            ((ArrayRecyclerViewAdapter) wrappedAdapter).setItemTypeface(this.itemTypeface);
        }
    }

    private void adaptItemIconTintList() {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper != null) {
            Object wrappedAdapter = recyclerViewAdapterWrapper.getWrappedAdapter();
            if (wrappedAdapter instanceof ArrayRecyclerViewAdapter) {
                ((ArrayRecyclerViewAdapter) wrappedAdapter).setItemIconTintList(this.itemIconTintList);
            }
        }
    }

    private void adaptItemIconTintMode() {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper != null) {
            Object wrappedAdapter = recyclerViewAdapterWrapper.getWrappedAdapter();
            if (wrappedAdapter instanceof ArrayRecyclerViewAdapter) {
                ((ArrayRecyclerViewAdapter) wrappedAdapter).setItemIconTintMode(this.itemIconTintMode);
            }
        }
    }

    private void adaptEnabledItems(boolean[] zArr) {
        if (zArr == null || this.adapter == null) {
            return;
        }
        for (int i = 0; i < zArr.length; i++) {
            this.adapter.setItemEnabled(i, zArr[i]);
        }
    }

    public ListDialogDecorator(ButtonBarDialog buttonBarDialog) {
        super(buttonBarDialog);
        this.itemIconTintMode = PorterDuff.Mode.SRC_ATOP;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final RecyclerView getListView() {
        RecyclerView recyclerView = this.listView;
        if (recyclerView == null || recyclerView.getVisibility() != 0) {
            return null;
        }
        return this.listView;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final RecyclerView.Adapter<?> getListAdapter() {
        return this.adapter;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final ColorStateList getItemColor() {
        return this.itemColor;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemColor(int i) {
        setItemColor(ColorStateList.valueOf(i));
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemColor(ColorStateList colorStateList) {
        Condition.INSTANCE.ensureNotNull(colorStateList, "The color state list may not be null");
        this.itemColor = colorStateList;
        adaptItemColor();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemTypeface(Typeface typeface) {
        Condition.INSTANCE.ensureNotNull(typeface, "The typeface may not be null");
        this.itemTypeface = typeface;
        adaptItemTypeface();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final Typeface getItemTypeface() {
        return this.itemTypeface;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final ColorStateList getItemIconTintList() {
        return this.itemIconTintList;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemIconTint(int i) {
        setItemIconTintList(ColorStateList.valueOf(i));
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemIconTintList(ColorStateList colorStateList) {
        this.itemIconTintList = colorStateList;
        adaptItemIconTintList();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final PorterDuff.Mode getItemIconTintMode() {
        return this.itemIconTintMode;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemIconTintMode(PorterDuff.Mode mode) {
        Condition.INSTANCE.ensureNotNull(mode, "The tint mode may not be null");
        this.itemIconTintMode = mode;
        adaptItemIconTintMode();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final int getItemCount() {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper != null) {
            return recyclerViewAdapterWrapper.getGlobalSize();
        }
        return 0;
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final boolean isItemChecked(int i) {
        Condition.INSTANCE.ensureNotNull(this.adapter, "No list items are shown by the dialog", IndexOutOfBoundsException.class);
        return this.adapter.isItemChecked(i);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemChecked(int i, boolean z) {
        Condition.INSTANCE.ensureNotNull(this.adapter, "No list items are shown by the dialog", IndexOutOfBoundsException.class);
        this.adapter.setItemChecked(i, z);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final boolean isItemEnabled(int i) {
        Condition.INSTANCE.ensureNotNull(this.adapter, "No list items are shown by the dialog", IndexOutOfBoundsException.class);
        return this.adapter.isItemEnabled(i);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItemEnabled(int i, boolean z) {
        Condition.INSTANCE.ensureNotNull(this.adapter, "No list items are shown by the dialog", IndexOutOfBoundsException.class);
        this.adapter.setItemEnabled(i, z);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        setItems(charSequenceArr, (int[]) null, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        this.items = charSequenceArr;
        this.iconResourceIds = iArr;
        this.singleChoiceItems = null;
        this.multiChoiceItems = null;
        this.adapter = charSequenceArr != null ? new RecyclerViewAdapterWrapper<>(getContext(), new ArrayRecyclerViewAdapter(R.layout.simple_list_item_1, charSequenceArr, iArr), new RecyclerViewAdapterWrapper.NoChoiceMode()) : null;
        this.layoutManager = new LinearLayoutManager(getContext());
        if (charSequenceArr == null) {
            onClickListener = null;
        }
        this.singleChoiceListener = onClickListener;
        this.multiChoiceListener = null;
        attachAdapter();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(int i, DialogInterface.OnClickListener onClickListener) {
        setItems(i, (int[]) null, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setItems(int i, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        setItems(getContext().getResources().getTextArray(i), iArr, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final <VH extends RecyclerView.ViewHolder> void setAdapter(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, DialogInterface.OnClickListener onClickListener) {
        this.items = null;
        this.iconResourceIds = null;
        this.singleChoiceItems = null;
        this.multiChoiceItems = null;
        this.adapter = adapter != null ? new RecyclerViewAdapterWrapper<>(getContext(), adapter, new RecyclerViewAdapterWrapper.NoChoiceMode()) : null;
        if (adapter == null) {
            layoutManager = null;
        } else if (layoutManager == null) {
            layoutManager = new LinearLayoutManager(getContext());
        }
        this.layoutManager = layoutManager;
        if (adapter == null) {
            onClickListener = null;
        }
        this.singleChoiceListener = onClickListener;
        this.multiChoiceListener = null;
        attachAdapter();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        setSingleChoiceItems(charSequenceArr, (int[]) null, i, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(CharSequence[] charSequenceArr, int[] iArr, int i, DialogInterface.OnClickListener onClickListener) {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper;
        this.items = null;
        this.iconResourceIds = iArr;
        this.singleChoiceItems = charSequenceArr;
        this.multiChoiceItems = null;
        this.adapter = charSequenceArr != null ? new RecyclerViewAdapterWrapper<>(getContext(), new ArrayRecyclerViewAdapter(R.layout.simple_list_item_single_choice, charSequenceArr, iArr), new RecyclerViewAdapterWrapper.SingleChoiceMode()) : null;
        this.layoutManager = new LinearLayoutManager(getContext());
        if (charSequenceArr == null) {
            onClickListener = null;
        }
        this.singleChoiceListener = onClickListener;
        this.multiChoiceListener = null;
        if (i != -1 && (recyclerViewAdapterWrapper = this.adapter) != null) {
            recyclerViewAdapterWrapper.setItemChecked(i, true);
        }
        attachAdapter();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(int i, int i2, DialogInterface.OnClickListener onClickListener) {
        setSingleChoiceItems(i, (int[]) null, i2, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setSingleChoiceItems(int i, int[] iArr, int i2, DialogInterface.OnClickListener onClickListener) {
        setSingleChoiceItems(getContext().getResources().getTextArray(i), iArr, i2, onClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final <VH extends RecyclerView.ViewHolder> void setSingleChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, int i, DialogInterface.OnClickListener onClickListener) {
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper;
        this.items = null;
        this.iconResourceIds = null;
        this.singleChoiceItems = null;
        this.multiChoiceItems = null;
        this.adapter = adapter != null ? new RecyclerViewAdapterWrapper<>(getContext(), adapter, new RecyclerViewAdapterWrapper.SingleChoiceMode()) : null;
        if (adapter == null) {
            layoutManager = null;
        } else if (layoutManager == null) {
            layoutManager = new LinearLayoutManager(getContext());
        }
        this.layoutManager = layoutManager;
        if (adapter == null) {
            onClickListener = null;
        }
        this.singleChoiceListener = onClickListener;
        this.multiChoiceListener = null;
        if (i != -1 && (recyclerViewAdapterWrapper = this.adapter) != null) {
            recyclerViewAdapterWrapper.setItemChecked(i, true);
        }
        attachAdapter();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        setMultiChoiceItems(charSequenceArr, (int[]) null, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(CharSequence[] charSequenceArr, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        Condition.INSTANCE.ensureTrue(zArr == null || charSequenceArr == null || zArr.length == charSequenceArr.length, "Invalid number of checked items given");
        this.items = null;
        this.iconResourceIds = iArr;
        this.singleChoiceItems = null;
        this.multiChoiceItems = charSequenceArr;
        this.adapter = charSequenceArr != null ? new RecyclerViewAdapterWrapper<>(getContext(), new ArrayRecyclerViewAdapter(R.layout.simple_list_item_multiple_choice, charSequenceArr, iArr), new RecyclerViewAdapterWrapper.MultipleChoiceMode()) : null;
        this.layoutManager = new LinearLayoutManager(getContext());
        this.singleChoiceListener = null;
        if (charSequenceArr == null) {
            onMultiChoiceClickListener = null;
        }
        this.multiChoiceListener = onMultiChoiceClickListener;
        if (this.adapter != null && zArr != null) {
            for (int i = 0; i < zArr.length; i++) {
                this.adapter.setItemChecked(i, zArr[i]);
            }
        }
        attachAdapter();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        setMultiChoiceItems(i, (int[]) null, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setMultiChoiceItems(int i, int[] iArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        setMultiChoiceItems(getContext().getResources().getTextArray(i), iArr, zArr, onMultiChoiceClickListener);
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final <VH extends RecyclerView.ViewHolder> void setMultiChoiceItems(RecyclerView.Adapter<VH> adapter, RecyclerView.LayoutManager layoutManager, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        Condition.INSTANCE.ensureTrue(zArr == null || adapter == null || adapter.getGlobalSize() == zArr.length, "Invalid number of checked items given");
        this.items = null;
        this.iconResourceIds = null;
        this.singleChoiceItems = null;
        this.multiChoiceItems = null;
        this.adapter = adapter != null ? new RecyclerViewAdapterWrapper<>(getContext(), adapter, new RecyclerViewAdapterWrapper.MultipleChoiceMode()) : null;
        if (adapter == null) {
            layoutManager = null;
        } else if (layoutManager == null) {
            layoutManager = new LinearLayoutManager(getContext());
        }
        this.layoutManager = layoutManager;
        this.singleChoiceListener = null;
        if (adapter == null) {
            onMultiChoiceClickListener = null;
        }
        this.multiChoiceListener = onMultiChoiceClickListener;
        if (this.adapter != null && zArr != null) {
            for (int i = 0; i < zArr.length; i++) {
                this.adapter.setItemChecked(i, zArr[i]);
            }
        }
        attachAdapter();
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setOnItemSelectedListener(ListDialog.OnItemSelectedListener onItemSelectedListener) {
        this.listViewItemSelectedListener = onItemSelectedListener;
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper != null) {
            recyclerViewAdapterWrapper.setOnItemSelectedListener(onItemSelectedListener);
        }
    }

    @Override // de.mrapp.android.dialog.model.ListDialogDecorator
    public final void setOnItemEnabledListener(ListDialog.OnItemEnabledListener onItemEnabledListener) {
        this.listViewItemEnabledListener = onItemEnabledListener;
        RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper = this.adapter;
        if (recyclerViewAdapterWrapper != null) {
            recyclerViewAdapterWrapper.setOnItemEnabledListener(onItemEnabledListener);
        }
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable(ITEM_COLOR_EXTRA, getItemColor());
        bundle.putIntArray(ICON_RESOURCE_IDS_EXTRA, this.iconResourceIds);
        CharSequence[] charSequenceArr = this.items;
        if (charSequenceArr != null) {
            bundle.putCharSequenceArray(ITEMS_EXTRA, charSequenceArr);
            bundle.putBooleanArray(ENABLED_ITEMS_EXTRA, getEnabledItems());
            return;
        }
        CharSequence[] charSequenceArr2 = this.singleChoiceItems;
        if (charSequenceArr2 != null) {
            bundle.putCharSequenceArray(SINGLE_CHOICE_ITEMS_EXTRA, charSequenceArr2);
            bundle.putBooleanArray(CHECKED_ITEMS_EXTRA, getCheckedItems());
            bundle.putBooleanArray(ENABLED_ITEMS_EXTRA, getEnabledItems());
        } else {
            CharSequence[] charSequenceArr3 = this.multiChoiceItems;
            if (charSequenceArr3 != null) {
                bundle.putCharSequenceArray(MULTI_CHOICE_ITEMS_EXTRA, charSequenceArr3);
                bundle.putBooleanArray(CHECKED_ITEMS_EXTRA, getCheckedItems());
                bundle.putBooleanArray(ENABLED_ITEMS_EXTRA, getEnabledItems());
            }
        }
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
        ColorStateList colorStateList = (ColorStateList) bundle.getParcelable(ITEM_COLOR_EXTRA);
        if (colorStateList != null) {
            setItemColor(colorStateList);
        }
        CharSequence[] charSequenceArray = bundle.getCharSequenceArray(ITEMS_EXTRA);
        int[] intArray = bundle.getIntArray(ICON_RESOURCE_IDS_EXTRA);
        if (charSequenceArray != null) {
            boolean[] booleanArray = bundle.getBooleanArray(ENABLED_ITEMS_EXTRA);
            setItems(charSequenceArray, intArray, this.singleChoiceListener);
            adaptEnabledItems(booleanArray);
            return;
        }
        boolean[] booleanArray2 = bundle.getBooleanArray(CHECKED_ITEMS_EXTRA);
        boolean[] booleanArray3 = bundle.getBooleanArray(ENABLED_ITEMS_EXTRA);
        CharSequence[] charSequenceArray2 = bundle.getCharSequenceArray(SINGLE_CHOICE_ITEMS_EXTRA);
        if (charSequenceArray2 != null) {
            setSingleChoiceItems(charSequenceArray2, intArray, booleanArray2 != null ? indexOfCheckedItem(booleanArray2) : -1, this.singleChoiceListener);
            adaptEnabledItems(booleanArray3);
            return;
        }
        CharSequence[] charSequenceArray3 = bundle.getCharSequenceArray(MULTI_CHOICE_ITEMS_EXTRA);
        if (charSequenceArray3 != null) {
            setMultiChoiceItems(charSequenceArray3, intArray, booleanArray2, this.multiChoiceListener);
            adaptEnabledItems(booleanArray3);
        }
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        View view2 = map.get(new DialogRootView.AreaViewType(ScrollableArea.Area.CONTENT));
        if (view2 instanceof ViewGroup) {
            inflateListView((ViewGroup) view2);
            attachAdapter();
        }
        if (this.listDivider != null) {
            HashMap map2 = new HashMap();
            map2.put(new DialogRootView.DividerViewType(DialogRootView.DividerLocation.TOP), this.listDivider);
            return map2;
        }
        return Collections.emptyMap();
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
        this.listView = null;
    }
}
