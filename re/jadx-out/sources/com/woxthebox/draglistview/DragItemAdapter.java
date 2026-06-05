package com.woxthebox.draglistview;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.woxthebox.draglistview.DragItemAdapter.ViewHolder;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DragItemAdapter<T, VH extends ViewHolder> extends RecyclerView.Adapter<VH> {
    private DragStartCallback mDragStartCallback;
    protected List<T> mItemList;
    private long mDragItemId = -1;
    private long mDropTargetId = -1;

    interface DragStartCallback {
        boolean isDragging();

        boolean startDrag(View view, long j);
    }

    public abstract long getUniqueItemId(int i);

    public DragItemAdapter() {
        setHasStableIds(true);
    }

    public void setItemList(List<T> list) {
        this.mItemList = list;
        notifyDataSetChanged();
    }

    public List<T> getItemList() {
        return this.mItemList;
    }

    public int getPositionForItem(T t) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (this.mItemList.get(i) == t) {
                return i;
            }
        }
        return -1;
    }

    public Object removeItem(int i) {
        List<T> list = this.mItemList;
        if (list == null || list.size() <= i || i < 0) {
            return null;
        }
        T tRemove = this.mItemList.remove(i);
        notifyItemRemoved(i);
        return tRemove;
    }

    public void addItem(int i, T t) {
        List<T> list = this.mItemList;
        if (list == null || list.size() < i) {
            return;
        }
        this.mItemList.add(i, t);
        notifyItemInserted(i);
    }

    public void changeItemPosition(int i, int i2) {
        List<T> list = this.mItemList;
        if (list == null || list.size() <= i || this.mItemList.size() <= i2) {
            return;
        }
        this.mItemList.add(i2, this.mItemList.remove(i));
        notifyItemMoved(i, i2);
    }

    public void swapItems(int i, int i2) {
        List<T> list = this.mItemList;
        if (list == null || list.size() <= i || this.mItemList.size() <= i2) {
            return;
        }
        Collections.swap(this.mItemList, i, i2);
        notifyDataSetChanged();
    }

    public int getPositionForItemId(long j) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (j == getItemId(i)) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return getUniqueItemId(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<T> list = this.mItemList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(VH vh, int i) {
        long itemId = getItemId(i);
        vh.mItemId = itemId;
        vh.itemView.setVisibility(this.mDragItemId == itemId ? 4 : 0);
        vh.setDragStartCallback(this.mDragStartCallback);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(VH vh) {
        super.onViewRecycled(vh);
        vh.setDragStartCallback(null);
    }

    void setDragStartedListener(DragStartCallback dragStartCallback) {
        this.mDragStartCallback = dragStartCallback;
    }

    void setDragItemId(long j) {
        this.mDragItemId = j;
    }

    void setDropTargetId(long j) {
        this.mDropTargetId = j;
    }

    public long getDropTargetId() {
        return this.mDropTargetId;
    }

    public static abstract class ViewHolder extends RecyclerView.ViewHolder {
        private DragStartCallback mDragStartCallback;
        public View mGrabView;
        public long mItemId;

        public void onItemClicked(View view) {
        }

        public boolean onItemLongClicked(View view) {
            return false;
        }

        public boolean onItemTouch(View view, MotionEvent motionEvent) {
            return false;
        }

        public ViewHolder(final View view, int i, boolean z) {
            super(view);
            View viewFindViewById = view.findViewById(i);
            this.mGrabView = viewFindViewById;
            if (z) {
                viewFindViewById.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.woxthebox.draglistview.DragItemAdapter.ViewHolder.1
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view2) {
                        if (ViewHolder.this.mDragStartCallback == null) {
                            return false;
                        }
                        if (ViewHolder.this.mDragStartCallback.startDrag(view, ViewHolder.this.mItemId)) {
                            return true;
                        }
                        if (view == ViewHolder.this.mGrabView) {
                            return ViewHolder.this.onItemLongClicked(view2);
                        }
                        return false;
                    }
                });
            } else {
                viewFindViewById.setOnTouchListener(new View.OnTouchListener() { // from class: com.woxthebox.draglistview.DragItemAdapter.ViewHolder.2
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        if (ViewHolder.this.mDragStartCallback == null) {
                            return false;
                        }
                        if (motionEvent.getAction() == 0 && ViewHolder.this.mDragStartCallback.startDrag(view, ViewHolder.this.mItemId)) {
                            return true;
                        }
                        if (ViewHolder.this.mDragStartCallback.isDragging() || view != ViewHolder.this.mGrabView) {
                            return false;
                        }
                        return ViewHolder.this.onItemTouch(view2, motionEvent);
                    }
                });
            }
            view.setOnClickListener(new View.OnClickListener() { // from class: com.woxthebox.draglistview.DragItemAdapter.ViewHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ViewHolder.this.onItemClicked(view2);
                }
            });
            if (view != this.mGrabView) {
                view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.woxthebox.draglistview.DragItemAdapter.ViewHolder.4
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view2) {
                        return ViewHolder.this.onItemLongClicked(view2);
                    }
                });
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.woxthebox.draglistview.DragItemAdapter.ViewHolder.5
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        return ViewHolder.this.onItemTouch(view2, motionEvent);
                    }
                });
            }
        }

        public void setDragStartCallback(DragStartCallback dragStartCallback) {
            this.mDragStartCallback = dragStartCallback;
        }
    }
}
