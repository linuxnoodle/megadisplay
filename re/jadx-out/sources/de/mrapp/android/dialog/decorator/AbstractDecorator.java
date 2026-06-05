package de.mrapp.android.dialog.decorator;

import android.content.Context;
import android.view.View;
import android.view.Window;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.listener.AreaListener;
import de.mrapp.android.dialog.model.Dialog;
import de.mrapp.android.dialog.model.DialogDecorator;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractDecorator<DialogType extends Dialog, ParamType> implements DialogDecorator {
    private final ListenerList<AreaListener> areaListeners;
    private final DialogType dialog;
    private DialogRootView dialogRootView;
    private View view;
    private Window window;

    protected abstract Map<DialogRootView.ViewType, View> onAttach(Window window, View view, Map<DialogRootView.ViewType, View> map, ParamType paramtype);

    protected abstract void onDetach();

    public AbstractDecorator(DialogType dialogtype) {
        Condition.INSTANCE.ensureNotNull(dialogtype, "The dialog may not be null");
        this.dialog = dialogtype;
        this.areaListeners = new ListenerList<>();
        this.window = null;
        this.view = null;
        this.dialogRootView = null;
    }

    public final Map<DialogRootView.ViewType, View> attach(Window window, View view, Map<DialogRootView.ViewType, View> map, ParamType paramtype) {
        Condition.INSTANCE.ensureNotNull(window, "The window may not be null");
        Condition.INSTANCE.ensureNotNull(view, "The view may not be null");
        this.window = window;
        this.view = view;
        this.dialogRootView = (DialogRootView) view.findViewById(R.id.dialog_root_view);
        return onAttach(window, view, map, paramtype);
    }

    public final void detach() {
        this.window = null;
        this.view = null;
        this.dialogRootView = null;
        onDetach();
    }

    public final void addAreaListener(AreaListener areaListener) {
        Condition.INSTANCE.ensureNotNull(areaListener, "The listener may not be null");
        this.areaListeners.add(areaListener);
    }

    public final void removeAreaListener(AreaListener areaListener) {
        Condition.INSTANCE.ensureNotNull(areaListener, "The listener may not be null");
        this.areaListeners.remove(areaListener);
    }

    protected final void notifyOnAreaShown(ScrollableArea.Area area) {
        Iterator<AreaListener> it = this.areaListeners.iterator();
        while (it.hasNext()) {
            it.next().onAreaShown(area);
        }
    }

    protected final void notifyOnAreaHidden(ScrollableArea.Area area) {
        Iterator<AreaListener> it = this.areaListeners.iterator();
        while (it.hasNext()) {
            it.next().onAreaHidden(area);
        }
    }

    protected final DialogType getDialog() {
        return this.dialog;
    }

    protected final Window getWindow() {
        return this.window;
    }

    protected final View getView() {
        return this.view;
    }

    protected final DialogRootView getRootView() {
        return this.dialogRootView;
    }

    @Override // de.mrapp.android.dialog.model.Dialog
    public final Context getContext() {
        return this.dialog.getContext();
    }
}
