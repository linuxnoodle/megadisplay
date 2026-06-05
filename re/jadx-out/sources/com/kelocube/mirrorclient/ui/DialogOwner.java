package com.kelocube.mirrorclient.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import androidx.activity.ComponentActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DialogOwner.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u001dB\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u0015\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0006\u0010\u0015\u001a\u00020\u0016J&\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\u001bJ\b\u0010\u001c\u001a\u00020\u0016H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/kelocube/mirrorclient/ui/DialogOwner;", "", "activity", "Landroidx/activity/ComponentActivity;", "(Landroidx/activity/ComponentActivity;)V", "fragment", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;)V", "owner", "Landroidx/lifecycle/ViewModelStoreOwner;", "context", "Landroid/content/Context;", "(Landroidx/lifecycle/ViewModelStoreOwner;Landroid/content/Context;)V", "dialog", "Landroid/app/Dialog;", "getDialog", "()Landroid/app/Dialog;", "setDialog", "(Landroid/app/Dialog;)V", "vm", "Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;", "close", "", "showDialog", "tag", "", "factory", "Lkotlin/Function1;", "showNext", "VM", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class DialogOwner {
    private final Context context;
    private Dialog dialog;
    private final VM vm;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void close$lambda$5$lambda$4(DialogInterface dialogInterface) {
    }

    public DialogOwner(ViewModelStoreOwner owner, Context context) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.vm = (VM) new ViewModelProvider(owner).get(VM.class);
        showNext();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DialogOwner(ComponentActivity activity) {
        this(activity, activity);
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DialogOwner(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Fragment fragment2 = fragment;
        Context contextRequireContext = fragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this(fragment2, contextRequireContext);
    }

    /* JADX INFO: compiled from: DialogOwner.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R:\u0010\u0003\u001a\"\u0012\u001e\u0012\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/kelocube/mirrorclient/ui/DialogOwner$VM;", "Landroidx/lifecycle/ViewModel;", "()V", "queue", "", "Lkotlin/Pair;", "Lkotlin/Function1;", "Landroid/content/Context;", "Landroid/app/Dialog;", "", "getQueue", "()Ljava/util/List;", "setQueue", "(Ljava/util/List;)V", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class VM extends ViewModel {
        private List<Pair<Function1<Context, Dialog>, String>> queue = new ArrayList();

        public final List<Pair<Function1<Context, Dialog>, String>> getQueue() {
            return this.queue;
        }

        public final void setQueue(List<Pair<Function1<Context, Dialog>, String>> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.queue = list;
        }
    }

    public final Dialog getDialog() {
        return this.dialog;
    }

    public final void setDialog(Dialog dialog) {
        this.dialog = dialog;
    }

    private final void showNext() {
        Dialog dialog = this.dialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        this.dialog = null;
        Pair pair = (Pair) CollectionsKt.firstOrNull((List) this.vm.getQueue());
        if (pair != null) {
            Dialog dialog2 = (Dialog) ((Function1) pair.getFirst()).invoke(this.context);
            dialog2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kelocube.mirrorclient.ui.DialogOwner$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    DialogOwner.showNext$lambda$2$lambda$1$lambda$0(this.f$0, dialogInterface);
                }
            });
            this.dialog = dialog2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showNext$lambda$2$lambda$1$lambda$0(DialogOwner this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.vm.getQueue().isEmpty()) {
            this$0.vm.getQueue().remove(0);
        }
        this$0.showNext();
    }

    public static /* synthetic */ void showDialog$default(DialogOwner dialogOwner, String str, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        dialogOwner.showDialog(str, function1);
    }

    public final void showDialog(String tag, Function1<? super Context, ? extends Dialog> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (tag != null) {
            List<Pair<Function1<Context, Dialog>, String>> queue = this.vm.getQueue();
            if (!(queue instanceof Collection) || !queue.isEmpty()) {
                Iterator<T> it = queue.iterator();
                while (it.hasNext()) {
                    if (!(!Intrinsics.areEqual(((Pair) it.next()).getSecond(), tag))) {
                        return;
                    }
                }
            }
        }
        this.vm.getQueue().add(new Pair<>(factory, tag));
        if (this.dialog == null) {
            showNext();
        }
    }

    public final void close() {
        Dialog dialog = this.dialog;
        if (dialog != null) {
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kelocube.mirrorclient.ui.DialogOwner$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    DialogOwner.close$lambda$5$lambda$4(dialogInterface);
                }
            });
            dialog.dismiss();
        }
        this.dialog = null;
    }
}
