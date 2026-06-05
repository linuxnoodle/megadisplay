package de.mrapp.android.dialog.adapter;

import android.content.Context;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.model.ListDialog;
import de.mrapp.android.util.ThemeUtil;
import de.mrapp.util.Condition;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class RecyclerViewAdapterWrapper<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<ViewHolderWrapper<VH>> {
    private final ChoiceMode choiceMode;
    private Set<Integer> disabledItems;
    private final Handler handler;
    private OnItemClickListener itemClickListener;
    private ListDialog.OnItemEnabledListener itemEnabledListener;
    private ListDialog.OnItemSelectedListener itemSelectedListener;
    private final RecyclerView.Adapter<VH> wrappedAdapter;

    public interface ChoiceMode {
        boolean isItemChecked(int i);

        boolean setItemChecked(int i, boolean z);
    }

    public static class NoChoiceMode implements ChoiceMode {
        @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.ChoiceMode
        public final boolean isItemChecked(int i) {
            return false;
        }

        @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.ChoiceMode
        public final boolean setItemChecked(int i, boolean z) {
            return false;
        }
    }

    public interface OnItemClickListener {
        void onItemClick(RecyclerViewAdapterWrapper<?> recyclerViewAdapterWrapper, int i);
    }

    public static class SingleChoiceMode implements ChoiceMode {
        private int checkedItem = -1;

        @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.ChoiceMode
        public final boolean isItemChecked(int i) {
            return this.checkedItem == i;
        }

        @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.ChoiceMode
        public final boolean setItemChecked(int i, boolean z) {
            if (!z || this.checkedItem == i) {
                return false;
            }
            this.checkedItem = i;
            return true;
        }
    }

    public static class MultipleChoiceMode implements ChoiceMode {
        private final Set<Integer> checkedItems = new HashSet();

        @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.ChoiceMode
        public final boolean isItemChecked(int i) {
            return this.checkedItems.contains(Integer.valueOf(i));
        }

        @Override // de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.ChoiceMode
        public final boolean setItemChecked(int i, boolean z) {
            if (z) {
                return this.checkedItems.add(Integer.valueOf(i));
            }
            return this.checkedItems.remove(Integer.valueOf(i));
        }
    }

    public static class ViewHolderWrapper<T extends RecyclerView.ViewHolder> extends RecyclerView.ViewHolder {
        private final T wrappedViewHolder;

        public ViewHolderWrapper(View view, T t) {
            super(view);
            Condition.INSTANCE.ensureNotNull(t, "The view holder may not be null");
            this.wrappedViewHolder = t;
        }

        public T getWrappedViewHolder() {
            return this.wrappedViewHolder;
        }
    }

    private View.OnClickListener createItemClickListener(final int i) {
        return new View.OnClickListener() { // from class: de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RecyclerViewAdapterWrapper.this.setItemChecked(i, !r3.isItemChecked(r0));
                if (RecyclerViewAdapterWrapper.this.itemClickListener != null) {
                    RecyclerViewAdapterWrapper.this.itemClickListener.onItemClick(RecyclerViewAdapterWrapper.this, i);
                }
            }
        };
    }

    private Runnable createCheckableRunnable(final Checkable checkable, final boolean z) {
        return new Runnable() { // from class: de.mrapp.android.dialog.adapter.RecyclerViewAdapterWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                checkable.setChecked(z);
            }
        };
    }

    private boolean setItemEnabledInternally(int i, boolean z) {
        if (z) {
            Set<Integer> set = this.disabledItems;
            if (set == null) {
                return false;
            }
            boolean zRemove = set.remove(Integer.valueOf(i));
            if (!this.disabledItems.isEmpty()) {
                return zRemove;
            }
            this.disabledItems = null;
            return zRemove;
        }
        if (this.disabledItems == null) {
            this.disabledItems = new HashSet();
        }
        return this.disabledItems.add(Integer.valueOf(i));
    }

    private void setViewEnabled(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                setViewEnabled(viewGroup.getChildAt(i), z);
            }
        }
    }

    public RecyclerViewAdapterWrapper(Context context, RecyclerView.Adapter<VH> adapter, ChoiceMode choiceMode) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(adapter, "The wrapped adapter may not be null");
        Condition.INSTANCE.ensureNotNull(choiceMode, "The choice mode may not be null");
        this.wrappedAdapter = adapter;
        this.choiceMode = choiceMode;
        this.handler = new Handler(context.getMainLooper());
        this.disabledItems = null;
    }

    public final void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.itemClickListener = onItemClickListener;
    }

    public final void setOnItemSelectedListener(ListDialog.OnItemSelectedListener onItemSelectedListener) {
        this.itemSelectedListener = onItemSelectedListener;
    }

    public final void setOnItemEnabledListener(ListDialog.OnItemEnabledListener onItemEnabledListener) {
        this.itemEnabledListener = onItemEnabledListener;
    }

    public final ChoiceMode getChoiceMode() {
        return this.choiceMode;
    }

    public final RecyclerView.Adapter<VH> getWrappedAdapter() {
        return this.wrappedAdapter;
    }

    public final boolean isItemChecked(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The position must be at least 0", IndexOutOfBoundsException.class);
        Condition.INSTANCE.ensureSmaller(i, getItemCount(), "The position must be less than " + getItemCount(), IndexOutOfBoundsException.class);
        return this.choiceMode.isItemChecked(i);
    }

    public final void setItemChecked(int i, boolean z) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The position must be at least 0", IndexOutOfBoundsException.class);
        Condition.INSTANCE.ensureSmaller(i, getItemCount(), "The position must be less than " + getItemCount(), IndexOutOfBoundsException.class);
        if (this.choiceMode.setItemChecked(i, z)) {
            notifyDataSetChanged();
            ListDialog.OnItemSelectedListener onItemSelectedListener = this.itemSelectedListener;
            if (onItemSelectedListener != null) {
                onItemSelectedListener.onItemSelectionStateChanged(i, z);
            }
        }
    }

    public final boolean isItemEnabled(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The position must be at least 0", IndexOutOfBoundsException.class);
        Condition.INSTANCE.ensureSmaller(i, getItemCount(), "The position must be less than " + getItemCount(), IndexOutOfBoundsException.class);
        Set<Integer> set = this.disabledItems;
        return set == null || !set.contains(Integer.valueOf(i));
    }

    public final void setItemEnabled(int i, boolean z) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The position must be at least 0", IndexOutOfBoundsException.class);
        Condition.INSTANCE.ensureSmaller(i, getItemCount(), "The position must be less than " + getItemCount(), IndexOutOfBoundsException.class);
        if (setItemEnabledInternally(i, z)) {
            notifyDataSetChanged();
            ListDialog.OnItemEnabledListener onItemEnabledListener = this.itemEnabledListener;
            if (onItemEnabledListener != null) {
                onItemEnabledListener.onItemEnableStateChanged(i, z);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.wrappedAdapter.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return this.wrappedAdapter.getItemId(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return this.wrappedAdapter.getItemViewType(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final ViewHolderWrapper<VH> onCreateViewHolder(ViewGroup viewGroup, int i) {
        RecyclerView.ViewHolder viewHolderCreateViewHolder = this.wrappedAdapter.createViewHolder(viewGroup, i);
        Context context = viewGroup.getContext();
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setForeground(ThemeUtil.getDrawable(context, R.attr.selectableItemBackground));
        frameLayout.addView(viewHolderCreateViewHolder.itemView);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        return new ViewHolderWrapper<>(frameLayout, viewHolderCreateViewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(ViewHolderWrapper<VH> viewHolderWrapper, int i) {
        RecyclerView.ViewHolder wrappedViewHolder = viewHolderWrapper.getWrappedViewHolder();
        this.wrappedAdapter.onBindViewHolder(wrappedViewHolder, i);
        View view = viewHolderWrapper.itemView;
        view.setOnClickListener(createItemClickListener(i));
        setViewEnabled(view, isItemEnabled(i));
        KeyEvent.Callback callback = wrappedViewHolder.itemView;
        if (callback instanceof Checkable) {
            this.handler.post(createCheckableRunnable((Checkable) callback, isItemChecked(i)));
        }
    }
}
