package de.mrapp.android.util.view;

import android.view.View;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractViewHolderAdapter {
    private View currentParentView;

    protected final void setCurrentParentView(View view) {
        Condition.INSTANCE.ensureNotNull(view, "The parent view may not be null");
        this.currentParentView = view;
    }

    protected final <ViewType extends View> ViewType findViewById(int i) {
        Condition.INSTANCE.ensureNotNull(this.currentParentView, "No parent view set", IllegalStateException.class);
        ViewHolder viewHolder = (ViewHolder) this.currentParentView.getTag();
        if (viewHolder == null) {
            viewHolder = new ViewHolder(this.currentParentView);
            this.currentParentView.setTag(viewHolder);
        }
        return (ViewType) viewHolder.findViewById(i);
    }
}
