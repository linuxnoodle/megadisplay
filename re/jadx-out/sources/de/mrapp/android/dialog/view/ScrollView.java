package de.mrapp.android.dialog.view;

import android.content.Context;
import android.util.AttributeSet;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ScrollView extends android.widget.ScrollView {
    private ListenerList<ScrollListener> scrollListeners;

    public interface ScrollListener {
        void onScrolled(boolean z, boolean z2);
    }

    private void initialize() {
        this.scrollListeners = new ListenerList<>();
    }

    private void notifyOnScrolled(boolean z, boolean z2) {
        Iterator<ScrollListener> it = this.scrollListeners.iterator();
        while (it.hasNext()) {
            it.next().onScrolled(z, z2);
        }
    }

    public ScrollView(Context context) {
        this(context, null);
    }

    public ScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize();
    }

    public ScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize();
    }

    public ScrollView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize();
    }

    public void addScrollListener(ScrollListener scrollListener) {
        Condition.INSTANCE.ensureNotNull(scrollListener, "The listener may not be null");
        this.scrollListeners.add(scrollListener);
    }

    public void removeScrollListener(ScrollListener scrollListener) {
        Condition.INSTANCE.ensureNotNull(scrollListener, "The listener may not be null");
        this.scrollListeners.remove(scrollListener);
    }

    public final boolean isScrolledToTop() {
        return getScrollY() == 0;
    }

    public final boolean isScrolledToBottom() {
        return getChildAt(0).getBottom() - getScrollY() == getHeight();
    }

    @Override // android.view.View
    protected final void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        notifyOnScrolled(isScrolledToTop(), isScrolledToBottom());
    }
}
