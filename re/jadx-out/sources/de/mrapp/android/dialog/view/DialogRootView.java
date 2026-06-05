package de.mrapp.android.dialog.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.listener.AreaListener;
import de.mrapp.android.dialog.view.ScrollView;
import de.mrapp.android.util.DisplayUtil;
import de.mrapp.android.util.ViewUtil;
import de.mrapp.util.Condition;
import java.io.Serializable;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class DialogRootView extends LinearLayout implements AreaListener {
    private SortedMap<ScrollableArea.Area, View> areas;
    private Bitmap backingBitmap;
    private Canvas backingCanvas;
    private Divider bottomDivider;
    private int[] dialogPadding;
    private int dividerColor;
    private int dividerMargin;
    private Map<DividerLocation, Divider> dividers;
    private boolean fullscreen;
    private AbsListView listView;
    private int maxHeight;
    private int maxWidth;
    private Paint paint;
    private RecyclerView recyclerView;
    private ScrollView scrollView;
    private ScrollableArea scrollableArea;
    private boolean showDividersOnScroll;
    private Divider topDivider;
    private Drawable windowBackground;
    private Rect windowInsets;

    public enum DividerLocation {
        TOP,
        BOTTOM
    }

    public interface ViewType extends Serializable {
    }

    public static class AreaViewType implements ViewType {
        private static final long serialVersionUID = -4415484663952710929L;
        private final ScrollableArea.Area area;

        public AreaViewType(ScrollableArea.Area area) {
            Condition.INSTANCE.ensureNotNull(area, "The area may not be null");
            this.area = area;
        }

        public final ScrollableArea.Area getArea() {
            return this.area;
        }

        public final String toString() {
            return "AreaViewType [area=" + this.area + "]";
        }

        public final int hashCode() {
            return 31 + this.area.hashCode();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.area.equals(((AreaViewType) obj).area);
            }
            return false;
        }
    }

    public static class DividerViewType implements ViewType {
        private static final long serialVersionUID = -7599447393953393719L;
        private final DividerLocation location;

        public DividerViewType(DividerLocation dividerLocation) {
            Condition.INSTANCE.ensureNotNull(dividerLocation, "The location may not be null");
            this.location = dividerLocation;
        }

        public final DividerLocation getLocation() {
            return this.location;
        }

        public final String toString() {
            return "DividerViewType [location=" + this.location + "]";
        }

        public final int hashCode() {
            return 31 + this.location.hashCode();
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.location.equals(((DividerViewType) obj).location);
            }
            return false;
        }
    }

    private static class AreaComparator implements Comparator<ScrollableArea.Area> {
        private AreaComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ScrollableArea.Area area, ScrollableArea.Area area2) {
            int index = area.getIndex();
            int index2 = area2.getIndex();
            if (index > index2) {
                return 1;
            }
            return index == index2 ? 0 : -1;
        }
    }

    private void initialize() {
        this.scrollableArea = ScrollableArea.create(null, null);
        this.showDividersOnScroll = true;
        this.dividerColor = ContextCompat.getColor(getContext(), R.color.divider_color_light);
        this.dividerMargin = 0;
        this.dialogPadding = new int[]{0, 0, 0, 0};
        Paint paint = new Paint();
        this.paint = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.MULTIPLY));
    }

    private void adaptWindowBackgroundAndInsets() {
        super.setPadding(getLeftInset(), getTopInset(), getRightInset(), getBottomInset());
        invalidate();
    }

    private void addAreas() {
        if (this.areas != null) {
            removeAllViews();
            ScrollableArea.Area area = null;
            this.scrollView = null;
            this.topDivider = null;
            this.bottomDivider = null;
            boolean z = false;
            for (Map.Entry<ScrollableArea.Area, View> entry : this.areas.entrySet()) {
                ScrollableArea.Area key = entry.getKey();
                View value = entry.getValue();
                if (this.scrollableArea.isScrollable(key)) {
                    if (this.topDivider == null && z && !this.scrollableArea.isScrollable(area)) {
                        this.topDivider = addDivider();
                    }
                    inflateScrollView(this.scrollableArea);
                    ViewGroup viewGroup = this.scrollView.getChildCount() > 0 ? (ViewGroup) this.scrollView.getChildAt(0) : this.scrollView;
                    value.getViewTreeObserver().addOnGlobalLayoutListener(createScrollViewChildLayoutListener());
                    viewGroup.addView(value);
                } else {
                    if (this.bottomDivider == null && area != null && this.scrollableArea.getBottomScrollableArea() != null && this.scrollableArea.getBottomScrollableArea().getIndex() < key.getIndex() && value.getVisibility() == 0 && key != ScrollableArea.Area.BUTTON_BAR) {
                        this.bottomDivider = addDivider();
                    }
                    addView(value);
                }
                z |= key != ScrollableArea.Area.HEADER && value.getVisibility() == 0;
                area = key;
            }
            adaptAreaPadding();
            findListOrRecyclerView();
        }
    }

    private void findListOrRecyclerView() {
        View viewFindViewById;
        if (this.scrollView != null || (viewFindViewById = findViewById(R.id.content_container)) == null) {
            return;
        }
        findListOrRecyclerView(viewFindViewById);
    }

    private boolean findListOrRecyclerView(View view) {
        if (view instanceof AbsListView) {
            AbsListView absListView = (AbsListView) view;
            this.listView = absListView;
            absListView.setOnScrollListener(createListViewScrollListener());
            return true;
        }
        if (view instanceof RecyclerView) {
            RecyclerView recyclerView = (RecyclerView) view;
            this.recyclerView = recyclerView;
            recyclerView.addOnScrollListener(createRecyclerViewScrollListener());
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (findListOrRecyclerView(viewGroup.getChildAt(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    private void addDividers() {
        for (Map.Entry<DividerLocation, Divider> entry : this.dividers.entrySet()) {
            if (entry.getKey() == DividerLocation.BOTTOM && this.bottomDivider == null && !this.scrollableArea.isScrollable(ScrollableArea.Area.BUTTON_BAR)) {
                this.bottomDivider = entry.getValue();
            } else if (entry.getKey() == DividerLocation.TOP && this.topDivider == null && !this.scrollableArea.isScrollable(ScrollableArea.Area.CONTENT)) {
                this.topDivider = entry.getValue();
            }
        }
    }

    private Divider addDivider() {
        Divider divider = new Divider(getContext());
        divider.setVisibility(4);
        divider.setBackgroundColor(this.dividerColor);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, DisplayUtil.dpToPixels(getContext(), 1));
        layoutParams.leftMargin = this.dividerMargin;
        layoutParams.rightMargin = this.dividerMargin;
        addView(divider, layoutParams);
        return divider;
    }

    private void adaptAreaPadding() {
        SortedMap<ScrollableArea.Area, View> sortedMap = this.areas;
        if (sortedMap != null) {
            Iterator<Map.Entry<ScrollableArea.Area, View>> it = sortedMap.entrySet().iterator();
            ScrollableArea.Area area = null;
            View view = null;
            boolean zApplyDialogPaddingTop = false;
            int iIntValue = 0;
            int iIntValue2 = 0;
            while (it.hasNext()) {
                Map.Entry<ScrollableArea.Area, View> next = it.next();
                ScrollableArea.Area key = next.getKey();
                View value = next.getValue();
                applyDialogPaddingLeft(key, value);
                applyDialogPaddingRight(key, value);
                if (!zApplyDialogPaddingTop) {
                    zApplyDialogPaddingTop = applyDialogPaddingTop(key, value);
                }
                if (!it.hasNext()) {
                    applyDialogPaddingBottom(key, value);
                }
                if (area != null) {
                    if (key == ScrollableArea.Area.BUTTON_BAR) {
                        applyDialogPaddingBottom(area, view);
                    }
                    Pair<Integer, Integer> pairAddViewSpacing = addViewSpacing(area, view, key);
                    iIntValue2 += pairAddViewSpacing.first != null ? pairAddViewSpacing.first.intValue() : 0;
                    iIntValue += pairAddViewSpacing.second != null ? pairAddViewSpacing.second.intValue() : 0;
                }
                view = value;
                area = key;
            }
            ScrollView scrollView = this.scrollView;
            if (scrollView != null) {
                ((LinearLayout.LayoutParams) scrollView.getLayoutParams()).bottomMargin = iIntValue;
                ScrollView scrollView2 = this.scrollView;
                scrollView2.setPadding(scrollView2.getPaddingLeft(), this.scrollView.getPaddingTop() + iIntValue2, this.scrollView.getPaddingRight(), this.scrollView.getPaddingBottom());
            }
        }
    }

    private void registerScrollLayoutListener() {
        ScrollView scrollView = this.scrollView;
        if (scrollView != null) {
            scrollView.getViewTreeObserver().addOnGlobalLayoutListener(createScrollViewLayoutListener(this.scrollView));
            return;
        }
        AbsListView absListView = this.listView;
        if (absListView != null) {
            absListView.getViewTreeObserver().addOnGlobalLayoutListener(createScrollViewLayoutListener(this.listView));
            return;
        }
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            recyclerView.getViewTreeObserver().addOnGlobalLayoutListener(createScrollViewLayoutListener(this.recyclerView));
        }
    }

    private ViewTreeObserver.OnGlobalLayoutListener createScrollViewLayoutListener(final View view) {
        return new ViewTreeObserver.OnGlobalLayoutListener() { // from class: de.mrapp.android.dialog.view.DialogRootView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ViewUtil.removeOnGlobalLayoutListener(view.getViewTreeObserver(), this);
                DialogRootView.this.adaptDividerVisibilities();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adaptDividerVisibilities() {
        ScrollView scrollView = this.scrollView;
        if (scrollView != null) {
            adaptDividerVisibilities(scrollView.isScrolledToTop(), this.scrollView.isScrolledToBottom(), false);
            return;
        }
        AbsListView absListView = this.listView;
        if (absListView != null) {
            adaptDividerVisibilities(isListViewScrolledToTop(absListView), isListViewScrolledToBottom(this.listView), false);
            return;
        }
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView != null) {
            adaptDividerVisibilities(isRecyclerViewScrolledToTop(recyclerView), isRecyclerViewScrolledToBottom(this.recyclerView), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adaptDividerVisibilities(boolean z, boolean z2, boolean z3) {
        Divider divider = this.topDivider;
        if (divider != null && !divider.isVisibleByDefault()) {
            this.topDivider.setVisibility((z || !this.showDividersOnScroll) ? 4 : 0, z3);
        }
        Divider divider2 = this.bottomDivider;
        if (divider2 == null || divider2.isVisibleByDefault()) {
            return;
        }
        this.bottomDivider.setVisibility((z2 || !this.showDividersOnScroll) ? 4 : 0, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isListViewScrolledToBottom(AbsListView absListView) {
        if (absListView.getCount() <= 0 || absListView.getChildCount() <= 0) {
            return true;
        }
        if (absListView.getLastVisiblePosition() != absListView.getCount() - 1) {
            return false;
        }
        View childAt = absListView.getChildAt(absListView.getChildCount() - 1);
        return childAt == null || childAt.getBottom() <= absListView.getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isListViewScrolledToTop(AbsListView absListView) {
        View childAt;
        if (absListView.getFirstVisiblePosition() == 0) {
            return absListView.getChildCount() == 0 || (childAt = absListView.getChildAt(0)) == null || childAt.getTop() == 0;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRecyclerViewScrolledToBottom(RecyclerView recyclerView) {
        return !recyclerView.canScrollVertically(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRecyclerViewScrolledToTop(RecyclerView recyclerView) {
        return !recyclerView.canScrollVertically(-1);
    }

    private void applyDialogPaddingLeft(ScrollableArea.Area area, View view) {
        int i = 0;
        if (area != ScrollableArea.Area.HEADER && area != ScrollableArea.Area.BUTTON_BAR && area != ScrollableArea.Area.CONTENT) {
            i = this.dialogPadding[0];
        }
        view.setPadding(i, view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
    }

    private boolean applyDialogPaddingTop(ScrollableArea.Area area, View view) {
        if (area == ScrollableArea.Area.HEADER || area == ScrollableArea.Area.CONTENT || area == ScrollableArea.Area.BUTTON_BAR || view.getVisibility() != 0) {
            return false;
        }
        view.setPadding(view.getPaddingLeft(), this.dialogPadding[1], view.getPaddingRight(), view.getPaddingBottom());
        return true;
    }

    private void applyDialogPaddingRight(ScrollableArea.Area area, View view) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), (area == ScrollableArea.Area.HEADER || area == ScrollableArea.Area.BUTTON_BAR || area == ScrollableArea.Area.CONTENT) ? 0 : this.dialogPadding[2], view.getPaddingBottom());
    }

    private void applyDialogPaddingBottom(ScrollableArea.Area area, View view) {
        if (area == ScrollableArea.Area.HEADER || area == ScrollableArea.Area.BUTTON_BAR) {
            return;
        }
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), this.dialogPadding[3]);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.core.util.Pair<java.lang.Integer, java.lang.Integer> addViewSpacing(de.mrapp.android.dialog.ScrollableArea.Area r7, android.view.View r8, de.mrapp.android.dialog.ScrollableArea.Area r9) {
        /*
            r6 = this;
            de.mrapp.android.dialog.ScrollableArea$Area r0 = de.mrapp.android.dialog.ScrollableArea.Area.TITLE
            r1 = -1
            if (r7 != r0) goto L10
            android.content.res.Resources r0 = r6.getResources()
            int r2 = de.mrapp.android.dialog.R.dimen.dialog_title_bottom_padding
            int r0 = r0.getDimensionPixelSize(r2)
            goto L20
        L10:
            de.mrapp.android.dialog.ScrollableArea$Area r0 = de.mrapp.android.dialog.ScrollableArea.Area.MESSAGE
            if (r7 != r0) goto L1f
            android.content.res.Resources r0 = r6.getResources()
            int r2 = de.mrapp.android.dialog.R.dimen.dialog_message_bottom_padding
            int r0 = r0.getDimensionPixelSize(r2)
            goto L20
        L1f:
            r0 = -1
        L20:
            de.mrapp.android.dialog.ScrollableArea$Area r2 = de.mrapp.android.dialog.ScrollableArea.Area.HEADER
            r3 = 0
            if (r7 == r2) goto L3b
            de.mrapp.android.dialog.ScrollableArea r2 = r6.scrollableArea
            boolean r2 = r2.isScrollable(r7)
            if (r2 != 0) goto L3b
            de.mrapp.android.dialog.ScrollableArea r2 = r6.scrollableArea
            boolean r2 = r2.isScrollable(r9)
            if (r2 == 0) goto L3b
            int r7 = r0 / 2
            int r0 = r0 - r7
            r3 = r0
            r0 = r7
            goto L56
        L3b:
            de.mrapp.android.dialog.ScrollableArea$Area r2 = de.mrapp.android.dialog.ScrollableArea.Area.BUTTON_BAR
            if (r9 != r2) goto L56
            de.mrapp.android.dialog.ScrollableArea r2 = r6.scrollableArea
            boolean r7 = r2.isScrollable(r7)
            if (r7 == 0) goto L56
            de.mrapp.android.dialog.ScrollableArea r7 = r6.scrollableArea
            boolean r7 = r7.isScrollable(r9)
            if (r7 != 0) goto L56
            int r7 = r0 / 2
            int r0 = r0 - r7
            r5 = r0
            r0 = r7
            r7 = r5
            goto L57
        L56:
            r7 = 0
        L57:
            if (r0 == r1) goto L6d
            int r9 = r8.getPaddingLeft()
            int r1 = r8.getPaddingTop()
            int r2 = r8.getPaddingRight()
            int r4 = r8.getPaddingBottom()
            int r4 = r4 + r0
            r8.setPadding(r9, r1, r2, r4)
        L6d:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r3)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            androidx.core.util.Pair r7 = androidx.core.util.Pair.create(r8, r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: de.mrapp.android.dialog.view.DialogRootView.addViewSpacing(de.mrapp.android.dialog.ScrollableArea$Area, android.view.View, de.mrapp.android.dialog.ScrollableArea$Area):androidx.core.util.Pair");
    }

    private void inflateScrollView(ScrollableArea scrollableArea) {
        if (this.scrollView == null) {
            ScrollView scrollView = (ScrollView) LayoutInflater.from(getContext()).inflate(R.layout.material_dialog_scroll_view, (ViewGroup) this, false);
            this.scrollView = scrollView;
            scrollView.addScrollListener(createScrollViewScrollListener());
            this.scrollView.setDescendantFocusability(131072);
            this.scrollView.setFocusableInTouchMode(true);
            if (scrollableArea.getBottomScrollableArea().getIndex() - scrollableArea.getTopScrollableArea().getIndex() > 0) {
                LinearLayout linearLayout = new LinearLayout(getContext());
                linearLayout.setOrientation(1);
                this.scrollView.addView(linearLayout, -1, -1);
            }
            addView(this.scrollView);
        }
    }

    private ViewTreeObserver.OnGlobalLayoutListener createScrollViewChildLayoutListener() {
        return new ViewTreeObserver.OnGlobalLayoutListener() { // from class: de.mrapp.android.dialog.view.DialogRootView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                View childAt = DialogRootView.this.scrollView.getChildAt(0);
                int height = childAt.getHeight();
                if ((DialogRootView.this.scrollView.getHeight() - DialogRootView.this.scrollView.getPaddingTop()) - DialogRootView.this.scrollView.getPaddingBottom() > height) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) DialogRootView.this.scrollView.getLayoutParams();
                    layoutParams.height = height;
                    layoutParams.weight = 0.0f;
                    DialogRootView.this.scrollView.requestLayout();
                }
                ViewUtil.removeOnGlobalLayoutListener(childAt.getViewTreeObserver(), this);
            }
        };
    }

    private ScrollView.ScrollListener createScrollViewScrollListener() {
        return new ScrollView.ScrollListener() { // from class: de.mrapp.android.dialog.view.DialogRootView.3
            @Override // de.mrapp.android.dialog.view.ScrollView.ScrollListener
            public void onScrolled(boolean z, boolean z2) {
                DialogRootView.this.adaptDividerVisibilities(z, z2, true);
            }
        };
    }

    private AbsListView.OnScrollListener createListViewScrollListener() {
        return new AbsListView.OnScrollListener() { // from class: de.mrapp.android.dialog.view.DialogRootView.4
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                DialogRootView dialogRootView = DialogRootView.this;
                dialogRootView.adaptDividerVisibilities(dialogRootView.isListViewScrolledToTop(absListView), DialogRootView.this.isListViewScrolledToBottom(absListView), true);
            }
        };
    }

    private RecyclerView.OnScrollListener createRecyclerViewScrollListener() {
        return new RecyclerView.OnScrollListener() { // from class: de.mrapp.android.dialog.view.DialogRootView.5
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                DialogRootView dialogRootView = DialogRootView.this;
                dialogRootView.adaptDividerVisibilities(dialogRootView.isRecyclerViewScrolledToTop(recyclerView), DialogRootView.this.isRecyclerViewScrolledToBottom(recyclerView), true);
            }
        };
    }

    private void adaptDividerColor() {
        adaptDividerColor(this.topDivider);
        adaptDividerColor(this.bottomDivider);
        Map<DividerLocation, Divider> map = this.dividers;
        if (map != null) {
            Iterator<Divider> it = map.values().iterator();
            while (it.hasNext()) {
                adaptDividerColor(it.next());
            }
        }
    }

    private void adaptDividerColor(Divider divider) {
        if (divider != null) {
            divider.setBackgroundColor(this.dividerColor);
        }
    }

    private void adaptDividerMargin() {
        adaptDividerMargin(this.topDivider);
        adaptDividerMargin(this.bottomDivider);
        Map<DividerLocation, Divider> map = this.dividers;
        if (map != null) {
            Iterator<Divider> it = map.values().iterator();
            while (it.hasNext()) {
                adaptDividerMargin(it.next());
            }
        }
    }

    private void adaptDividerMargin(Divider divider) {
        if (divider != null) {
            ViewGroup.LayoutParams layoutParams = divider.getLayoutParams();
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                layoutParams2.leftMargin = this.dividerMargin;
                layoutParams2.rightMargin = this.dividerMargin;
            }
        }
    }

    private int getLeftInset() {
        Rect rect;
        if (this.fullscreen || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.left;
    }

    private int getTopInset() {
        Rect rect;
        if (this.fullscreen || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.top;
    }

    private int getRightInset() {
        Rect rect;
        if (this.fullscreen || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.right;
    }

    private int getBottomInset() {
        Rect rect;
        if (this.fullscreen || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.bottom;
    }

    public DialogRootView(Context context) {
        this(context, null);
    }

    public DialogRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.fullscreen = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        initialize();
    }

    public DialogRootView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.fullscreen = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        initialize();
    }

    public DialogRootView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.fullscreen = false;
        this.maxWidth = -1;
        this.maxHeight = -1;
        initialize();
    }

    public final void setWindowBackgroundAndInset(Drawable drawable, Rect rect) {
        this.windowBackground = drawable;
        this.windowInsets = rect;
        adaptWindowBackgroundAndInsets();
    }

    public final void setFullscreen(boolean z) {
        this.fullscreen = z;
        adaptWindowBackgroundAndInsets();
    }

    public final void setMaxWidth(int i) {
        if (i != -1) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum width must be at least 1");
        }
        this.maxWidth = i;
        requestLayout();
    }

    public final void setMaxHeight(int i) {
        if (i != -1) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum height must be at least 1");
        }
        this.maxHeight = i;
        requestLayout();
    }

    public final ScrollView getScrollView() {
        return this.scrollView;
    }

    public final void setScrollableArea(ScrollableArea scrollableArea) {
        Condition.INSTANCE.ensureNotNull(scrollableArea, "The scrollable area may not be null");
        this.scrollableArea = scrollableArea;
        addAreas();
    }

    public final void showDividersOnScroll(boolean z) {
        this.showDividersOnScroll = z;
        adaptDividerVisibilities();
    }

    public final void setDividerColor(int i) {
        this.dividerColor = i;
        adaptDividerColor();
    }

    public final void setDividerMargin(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The margin must be at least 0");
        this.dividerMargin = i;
        adaptDividerMargin();
    }

    public final void addAreas(Map<ViewType, View> map) {
        this.areas = new TreeMap(new AreaComparator());
        this.dividers = new HashMap();
        for (Map.Entry<ViewType, View> entry : map.entrySet()) {
            ViewType key = entry.getKey();
            View value = entry.getValue();
            if (key instanceof AreaViewType) {
                this.areas.put(((AreaViewType) key).getArea(), value);
            } else if ((key instanceof DividerViewType) && (value instanceof Divider)) {
                this.dividers.put(((DividerViewType) key).getLocation(), (Divider) value);
            }
        }
        addAreas();
        addDividers();
        registerScrollLayoutListener();
    }

    @Override // de.mrapp.android.dialog.listener.AreaListener
    public final void onAreaShown(ScrollableArea.Area area) {
        adaptAreaPadding();
    }

    @Override // de.mrapp.android.dialog.listener.AreaListener
    public final void onAreaHidden(ScrollableArea.Area area) {
        adaptAreaPadding();
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.dialogPadding = new int[]{i, i2, i3, i4};
        adaptAreaPadding();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            this.backingBitmap = Bitmap.createBitmap(i3 - i, i4 - i2, Bitmap.Config.ARGB_8888);
            this.backingCanvas = new Canvas(this.backingBitmap);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.fullscreen || this.windowBackground == null) {
            return;
        }
        this.windowBackground.setBounds(0, 0, getWidth(), getHeight());
        this.backingBitmap.eraseColor(0);
        this.windowBackground.draw(this.backingCanvas);
        canvas.drawBitmap(this.backingBitmap, 0.0f, 0.0f, this.paint);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.fullscreen) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            Rect rect = new Rect();
            Drawable drawable = this.windowBackground;
            if (drawable != null) {
                drawable.getPadding(rect);
            }
            if (x < rect.left || x > getWidth() - rect.right || y < rect.top || y > getHeight() - rect.bottom) {
                return super.onTouchEvent(motionEvent);
            }
        }
        performClick();
        return true;
    }

    @Override // android.view.View
    public final boolean performClick() {
        return super.performClick();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3 = this.maxWidth;
        int iMakeMeasureSpec = i3 != -1 ? View.MeasureSpec.makeMeasureSpec(i3 + getLeftInset() + getRightInset(), Integer.MIN_VALUE) : -1;
        int i4 = this.maxHeight;
        int iMakeMeasureSpec2 = i4 != -1 ? View.MeasureSpec.makeMeasureSpec(i4 + getLeftInset() + getRightInset(), Integer.MIN_VALUE) : -1;
        if (iMakeMeasureSpec != -1) {
            i = iMakeMeasureSpec;
        }
        if (iMakeMeasureSpec2 != -1) {
            i2 = iMakeMeasureSpec2;
        }
        super.onMeasure(i, i2);
    }
}
