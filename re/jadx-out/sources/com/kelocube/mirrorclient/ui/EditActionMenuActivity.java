package com.kelocube.mirrorclient.ui;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.afollestad.materialdialogs.MaterialDialog;
import com.kelocube.mirrorclient.Prefs;
import com.kelocube.mirrorclient.R;
import com.kelocube.mirrorclient.UtilKt;
import com.kelocube.mirrorclient.databinding.ActivityEditActionMenuBinding;
import com.kelocube.mirrorclient.databinding.LayoutEditAmItemBinding;
import com.kelocube.mirrorclient.models.Action;
import com.kelocube.mirrorclient.models.ActionMenuButton;
import com.kelocube.mirrorclient.ui.EditActionMenuActivity;
import com.maltaisn.icondialog.IconDialog;
import com.maltaisn.icondialog.IconDialogSettings;
import com.maltaisn.icondialog.data.Icon;
import com.maltaisn.icondialog.pack.IconPack;
import com.maltaisn.icondialog.pack.IconPackLoader;
import com.maltaisn.iconpack.defaultpack.IconPackDefault;
import com.woxthebox.draglistview.DragItemAdapter;
import com.woxthebox.draglistview.DragListView;
import com.woxthebox.draglistview.swipe.ListSwipeHelper;
import com.woxthebox.draglistview.swipe.ListSwipeItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: compiled from: EditActionMenuActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001+B\u0005¢\u0006\u0002\u0010\u0003J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u001e\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020\r2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020&0%H\u0016J\u0010\u0010'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\rX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity;", "Lcom/maltaisn/icondialog/IconDialog$Callback;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "binding", "Lcom/kelocube/mirrorclient/databinding/ActivityEditActionMenuBinding;", "dialogOwner", "Lcom/kelocube/mirrorclient/ui/DialogOwner;", "getDialogOwner", "()Lcom/kelocube/mirrorclient/ui/DialogOwner;", "setDialogOwner", "(Lcom/kelocube/mirrorclient/ui/DialogOwner;)V", "iconDialog", "Lcom/maltaisn/icondialog/IconDialog;", "getIconDialog", "()Lcom/maltaisn/icondialog/IconDialog;", "setIconDialog", "(Lcom/maltaisn/icondialog/IconDialog;)V", "iconDialogIconPack", "Lcom/maltaisn/icondialog/pack/IconPack;", "getIconDialogIconPack", "()Lcom/maltaisn/icondialog/pack/IconPack;", "setIconDialogIconPack", "(Lcom/maltaisn/icondialog/pack/IconPack;)V", "nextItemId", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateOptionsMenu", "", "menu", "Landroid/view/Menu;", "onIconDialogIconsSelected", "dialog", "icons", "", "Lcom/maltaisn/icondialog/data/Icon;", "onOptionsItemSelected", "item", "Landroid/view/MenuItem;", "saveList", "Adapter", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class EditActionMenuActivity extends AppCompatActivity implements IconDialog.Callback {
    private ActivityEditActionMenuBinding binding;
    public DialogOwner dialogOwner;
    public IconDialog iconDialog;
    private IconPack iconDialogIconPack;
    private long nextItemId;

    /* JADX INFO: compiled from: EditActionMenuActivity.kt */
    @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0004\u0012\u00020\u00050\u0001:\u0001*B]\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u00126\u0010\u000e\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00160\u000f¢\u0006\u0002\u0010\u0017J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0014H\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0014H\u0016J\u0018\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014H\u0016J$\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&2\u0006\u0010(\u001a\u00020)R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R>\u0010\u000e\u001a2\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0011\u0012\b\b\u0012\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00160\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter;", "Lcom/woxthebox/draglistview/DragItemAdapter;", "Lkotlin/Pair;", "", "Lcom/kelocube/mirrorclient/models/ActionMenuButton;", "Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$ViewHolder;", "context", "Landroid/content/Context;", "dialogOwner", "Lcom/kelocube/mirrorclient/ui/DialogOwner;", "iconPack", "Lcom/maltaisn/icondialog/pack/IconPack;", "iconLoader", "Lcom/maltaisn/icondialog/pack/IconPackLoader;", "showIconDialog", "Lkotlin/Function2;", "Landroid/os/Bundle;", "Lkotlin/ParameterName;", "name", "args", "", "icon", "", "(Landroid/content/Context;Lcom/kelocube/mirrorclient/ui/DialogOwner;Lcom/maltaisn/icondialog/pack/IconPack;Lcom/maltaisn/icondialog/pack/IconPackLoader;Lkotlin/jvm/functions/Function2;)V", "parseContext", "Lcom/kelocube/mirrorclient/models/Action$ParseContext;", "getUniqueItemId", "position", "onBindViewHolder", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onIconDialogIconsSelected", "dialog", "Lcom/maltaisn/icondialog/IconDialog;", "icons", "", "Lcom/maltaisn/icondialog/data/Icon;", "view", "Lcom/woxthebox/draglistview/DragListView;", "ViewHolder", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Adapter extends DragItemAdapter<Pair<? extends Long, ? extends ActionMenuButton>, ViewHolder> {
        private final Context context;
        private final DialogOwner dialogOwner;
        private final IconPackLoader iconLoader;
        private final IconPack iconPack;
        private final Action.ParseContext parseContext;
        private final Function2<Bundle, Integer, Unit> showIconDialog;

        /* JADX INFO: compiled from: EditActionMenuActivity.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/kelocube/mirrorclient/ui/EditActionMenuActivity$Adapter$ViewHolder;", "Lcom/woxthebox/draglistview/DragItemAdapter$ViewHolder;", "binding", "Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;", "(Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;)V", "getBinding", "()Lcom/kelocube/mirrorclient/databinding/LayoutEditAmItemBinding;", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
        public static final class ViewHolder extends DragItemAdapter.ViewHolder {
            private final LayoutEditAmItemBinding binding;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ViewHolder(LayoutEditAmItemBinding binding) {
                super(binding.getRoot(), R.id.layout_root, true);
                Intrinsics.checkNotNullParameter(binding, "binding");
                this.binding = binding;
            }

            public final LayoutEditAmItemBinding getBinding() {
                return this.binding;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Adapter(Context context, DialogOwner dialogOwner, IconPack iconPack, IconPackLoader iconLoader, Function2<? super Bundle, ? super Integer, Unit> showIconDialog) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(dialogOwner, "dialogOwner");
            Intrinsics.checkNotNullParameter(iconPack, "iconPack");
            Intrinsics.checkNotNullParameter(iconLoader, "iconLoader");
            Intrinsics.checkNotNullParameter(showIconDialog, "showIconDialog");
            this.context = context;
            this.dialogOwner = dialogOwner;
            this.iconPack = iconPack;
            this.iconLoader = iconLoader;
            this.showIconDialog = showIconDialog;
            this.parseContext = new Action.ParseContext(context);
            setItemList(new ArrayList());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            Intrinsics.checkNotNullParameter(parent, "parent");
            LayoutEditAmItemBinding layoutEditAmItemBindingInflate = LayoutEditAmItemBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(layoutEditAmItemBindingInflate, "inflate(...)");
            return new ViewHolder(layoutEditAmItemBindingInflate);
        }

        @Override // com.woxthebox.draglistview.DragItemAdapter
        public long getUniqueItemId(int position) {
            return getItemList().get(position).getFirst().longValue();
        }

        @Override // com.woxthebox.draglistview.DragItemAdapter
        public void onBindViewHolder(ViewHolder holder, int position) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            super.onBindViewHolder(holder, position);
            final Pair<? extends Long, ? extends ActionMenuButton> pair = getItemList().get(position);
            final ActionMenuButton second = pair.getSecond();
            final LayoutEditAmItemBinding binding = holder.getBinding();
            binding.actionTap.setText(this.context.getString(R.string.edit_am_tap_action, Action.Companion.toString$default(Action.INSTANCE, this.parseContext, second.getTapAction(), null, 4, null)));
            binding.actionTap.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$Adapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditActionMenuActivity.Adapter.onBindViewHolder$lambda$4$lambda$0(this.f$0, second, binding, view);
                }
            });
            binding.actionHold.setText(this.context.getString(R.string.edit_am_hold_action, Action.Companion.toString$default(Action.INSTANCE, this.parseContext, second.getHoldAction(), null, 4, null)));
            binding.actionHold.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$Adapter$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditActionMenuActivity.Adapter.onBindViewHolder$lambda$4$lambda$1(this.f$0, second, binding, view);
                }
            });
            binding.icon.setImageDrawable(this.iconPack.getIconDrawable(second.getIcon(), this.iconLoader.getDrawableLoader()));
            binding.icon.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$Adapter$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EditActionMenuActivity.Adapter.onBindViewHolder$lambda$4$lambda$3(this.f$0, second, pair, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$4$lambda$0(final Adapter this$0, final ActionMenuButton model, final LayoutEditAmItemBinding this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(model, "$model");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            DialogOwner.showDialog$default(this$0.dialogOwner, null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Dialog invoke(Context it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    String string = it.getString(R.string.edit_am_set_tap_action);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    int tapAction = model.getTapAction();
                    final ActionMenuButton actionMenuButton = model;
                    final LayoutEditAmItemBinding layoutEditAmItemBinding = this_apply;
                    final EditActionMenuActivity.Adapter adapter = this$0;
                    return EditActionDialogKt.editActionDialog(it, string, tapAction, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$Adapter$onBindViewHolder$1$1$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                            invoke(num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i) {
                            actionMenuButton.setTapAction(i);
                            layoutEditAmItemBinding.actionTap.setText(adapter.context.getString(R.string.edit_am_tap_action, Action.Companion.toString$default(Action.INSTANCE, adapter.parseContext, actionMenuButton.getTapAction(), null, 4, null)));
                            adapter.notifyDataSetChanged();
                        }
                    });
                }
            }, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$4$lambda$1(final Adapter this$0, final ActionMenuButton model, final LayoutEditAmItemBinding this_apply, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(model, "$model");
            Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
            DialogOwner.showDialog$default(this$0.dialogOwner, null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Dialog invoke(Context it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    String string = it.getString(R.string.edit_am_set_hold_action);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    int holdAction = model.getHoldAction();
                    final ActionMenuButton actionMenuButton = model;
                    final LayoutEditAmItemBinding layoutEditAmItemBinding = this_apply;
                    final EditActionMenuActivity.Adapter adapter = this$0;
                    return EditActionDialogKt.editActionDialog(it, string, holdAction, new Function1<Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$Adapter$onBindViewHolder$1$2$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                            invoke(num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i) {
                            actionMenuButton.setHoldAction(i);
                            layoutEditAmItemBinding.actionHold.setText(adapter.context.getString(R.string.edit_am_hold_action, Action.Companion.toString$default(Action.INSTANCE, adapter.parseContext, actionMenuButton.getHoldAction(), null, 4, null)));
                            adapter.notifyDataSetChanged();
                        }
                    });
                }
            }, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindViewHolder$lambda$4$lambda$3(Adapter this$0, ActionMenuButton model, Pair pair, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(model, "$model");
            Function2<Bundle, Integer, Unit> function2 = this$0.showIconDialog;
            Bundle bundle = new Bundle();
            bundle.putLong("button_id", ((Number) pair.getFirst()).longValue());
            function2.invoke(bundle, Integer.valueOf(model.getIcon()));
        }

        public final void onIconDialogIconsSelected(IconDialog dialog, List<Icon> icons, DragListView view) {
            String string;
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            Intrinsics.checkNotNullParameter(icons, "icons");
            Intrinsics.checkNotNullParameter(view, "view");
            Context context = this.context;
            Icon icon = (Icon) CollectionsKt.firstOrNull((List) icons);
            if (icon == null || (string = Integer.valueOf(icon.getId()).toString()) == null) {
                string = "none";
            }
            UtilKt.debugToast(context, string);
            Bundle arguments = dialog.getArguments();
            if (arguments != null) {
                RecyclerView.ViewHolder viewHolderFindViewHolderForItemId = view.getRecyclerView().findViewHolderForItemId(arguments.getLong("button_id"));
                if (viewHolderFindViewHolderForItemId != null) {
                    Intrinsics.checkNotNull(viewHolderFindViewHolderForItemId);
                    List<Pair<? extends Long, ? extends ActionMenuButton>> itemList = getItemList();
                    Intrinsics.checkNotNullExpressionValue(itemList, "getItemList(...)");
                    Pair pair = (Pair) CollectionsKt.getOrNull(itemList, viewHolderFindViewHolderForItemId.getAdapterPosition());
                    if (pair != null) {
                        ActionMenuButton actionMenuButton = (ActionMenuButton) pair.getSecond();
                        Icon icon2 = (Icon) CollectionsKt.firstOrNull((List) icons);
                        actionMenuButton.setIcon(icon2 != null ? icon2.getId() : ActionMenuButton.DEFAULT_ICON);
                        UtilKt.debugToast(this.context, String.valueOf(((ActionMenuButton) pair.getSecond()).getIcon()));
                        ((ViewHolder) viewHolderFindViewHolderForItemId).getBinding().icon.setImageDrawable(this.iconPack.getIconDrawable(((ActionMenuButton) pair.getSecond()).getIcon(), this.iconLoader.getDrawableLoader()));
                        notifyDataSetChanged();
                    }
                }
            }
        }
    }

    @Override // com.maltaisn.icondialog.IconDialog.Callback
    public void onIconDialogCancelled() {
        IconDialog.Callback.DefaultImpls.onIconDialogCancelled(this);
    }

    public final DialogOwner getDialogOwner() {
        DialogOwner dialogOwner = this.dialogOwner;
        if (dialogOwner != null) {
            return dialogOwner;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dialogOwner");
        return null;
    }

    public final void setDialogOwner(DialogOwner dialogOwner) {
        Intrinsics.checkNotNullParameter(dialogOwner, "<set-?>");
        this.dialogOwner = dialogOwner;
    }

    public final IconDialog getIconDialog() {
        IconDialog iconDialog = this.iconDialog;
        if (iconDialog != null) {
            return iconDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("iconDialog");
        return null;
    }

    public final void setIconDialog(IconDialog iconDialog) {
        Intrinsics.checkNotNullParameter(iconDialog, "<set-?>");
        this.iconDialog = iconDialog;
    }

    @Override // com.maltaisn.icondialog.IconDialog.Callback
    public IconPack getIconDialogIconPack() {
        return this.iconDialogIconPack;
    }

    public void setIconDialogIconPack(IconPack iconPack) {
        this.iconDialogIconPack = iconPack;
    }

    @Override // com.maltaisn.icondialog.IconDialog.Callback
    public void onIconDialogIconsSelected(IconDialog dialog, List<Icon> icons) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        Intrinsics.checkNotNullParameter(icons, "icons");
        ActivityEditActionMenuBinding activityEditActionMenuBinding = this.binding;
        ActivityEditActionMenuBinding activityEditActionMenuBinding2 = null;
        if (activityEditActionMenuBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding = null;
        }
        DragItemAdapter adapter = activityEditActionMenuBinding.buttonList.getAdapter();
        Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.kelocube.mirrorclient.ui.EditActionMenuActivity.Adapter");
        Adapter adapter2 = (Adapter) adapter;
        ActivityEditActionMenuBinding activityEditActionMenuBinding3 = this.binding;
        if (activityEditActionMenuBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityEditActionMenuBinding2 = activityEditActionMenuBinding3;
        }
        DragListView buttonList = activityEditActionMenuBinding2.buttonList;
        Intrinsics.checkNotNullExpressionValue(buttonList, "buttonList");
        adapter2.onIconDialogIconsSelected(dialog, icons, buttonList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void saveList() {
        try {
            Prefs.Companion companion = Prefs.INSTANCE;
            EditActionMenuActivity editActionMenuActivity = this;
            ActivityEditActionMenuBinding activityEditActionMenuBinding = this.binding;
            if (activityEditActionMenuBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityEditActionMenuBinding = null;
            }
            DragItemAdapter adapter = activityEditActionMenuBinding.buttonList.getAdapter();
            Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.kelocube.mirrorclient.ui.EditActionMenuActivity.Adapter");
            List<Pair<? extends Long, ? extends ActionMenuButton>> itemList = ((Adapter) adapter).getItemList();
            Intrinsics.checkNotNullExpressionValue(itemList, "getItemList(...)");
            List<Pair<? extends Long, ? extends ActionMenuButton>> list = itemList;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add((ActionMenuButton) ((Pair) it.next()).getSecond());
            }
            companion.setActionMenu(editActionMenuActivity, arrayList);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        menu.add(0, 0, 0, R.string.edit_am_reset);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getItemId() != 0) {
            return false;
        }
        DialogOwner.showDialog$default(getDialogOwner(), null, new Function1<Context, Dialog>() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity.onOptionsItemSelected.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Dialog invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                MaterialDialog materialDialog = new MaterialDialog(EditActionMenuActivity.this, null, 2, null);
                final EditActionMenuActivity editActionMenuActivity = EditActionMenuActivity.this;
                MaterialDialog.message$default(materialDialog, Integer.valueOf(R.string.edit_am_reset_message), null, null, 6, null);
                MaterialDialog.negativeButton$default(materialDialog, Integer.valueOf(R.string.word_cancel), null, null, 6, null);
                MaterialDialog.positiveButton$default(materialDialog, Integer.valueOf(R.string.edit_am_reset), null, new Function1<MaterialDialog, Unit>() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$onOptionsItemSelected$1$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(MaterialDialog materialDialog2) throws JSONException {
                        invoke2(materialDialog2);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(MaterialDialog it2) throws JSONException {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        EditActionMenuActivity editActionMenuActivity2 = editActionMenuActivity;
                        EditActionMenuActivity editActionMenuActivity3 = editActionMenuActivity2;
                        ActivityEditActionMenuBinding activityEditActionMenuBinding = null;
                        Prefs.INSTANCE.setActionMenu(editActionMenuActivity3, null);
                        ActivityEditActionMenuBinding activityEditActionMenuBinding2 = editActionMenuActivity2.binding;
                        if (activityEditActionMenuBinding2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            activityEditActionMenuBinding2 = null;
                        }
                        DragItemAdapter adapter = activityEditActionMenuBinding2.buttonList.getAdapter();
                        Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.kelocube.mirrorclient.ui.EditActionMenuActivity.Adapter");
                        EditActionMenuActivity.Adapter adapter2 = (EditActionMenuActivity.Adapter) adapter;
                        ActionMenuButton[] actionMenu = Prefs.INSTANCE.getActionMenu(editActionMenuActivity3);
                        EditActionMenuActivity editActionMenuActivity4 = editActionMenuActivity;
                        ArrayList arrayList = new ArrayList(actionMenu.length);
                        for (ActionMenuButton actionMenuButton : actionMenu) {
                            long j = editActionMenuActivity4.nextItemId;
                            editActionMenuActivity4.nextItemId = 1 + j;
                            arrayList.add(new Pair(Long.valueOf(j), actionMenuButton));
                        }
                        adapter2.setItemList(arrayList);
                        ActivityEditActionMenuBinding activityEditActionMenuBinding3 = editActionMenuActivity2.binding;
                        if (activityEditActionMenuBinding3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        } else {
                            activityEditActionMenuBinding = activityEditActionMenuBinding3;
                        }
                        activityEditActionMenuBinding.buttonList.getAdapter().notifyDataSetChanged();
                    }
                }, 2, null);
                materialDialog.show();
                return materialDialog;
            }
        }, 1, null);
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        ActivityEditActionMenuBinding activityEditActionMenuBinding = null;
        if (Build.VERSION.SDK_INT >= 34) {
            EdgeToEdge.enable$default(this, null, null, 3, null);
        }
        super.onCreate(savedInstanceState);
        ActivityEditActionMenuBinding activityEditActionMenuBindingInflate = ActivityEditActionMenuBinding.inflate(getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(activityEditActionMenuBindingInflate, "inflate(...)");
        this.binding = activityEditActionMenuBindingInflate;
        if (activityEditActionMenuBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBindingInflate = null;
        }
        setContentView(activityEditActionMenuBindingInflate.getRoot());
        if (Build.VERSION.SDK_INT >= 34) {
            ActivityEditActionMenuBinding activityEditActionMenuBinding2 = this.binding;
            if (activityEditActionMenuBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityEditActionMenuBinding2 = null;
            }
            ViewCompat.setOnApplyWindowInsetsListener(activityEditActionMenuBinding2.getRoot(), new OnApplyWindowInsetsListener() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$$ExternalSyntheticLambda0
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return EditActionMenuActivity.onCreate$lambda$1(view, windowInsetsCompat);
                }
            });
        }
        setDialogOwner(new DialogOwner(this));
        IconDialog iconDialogNewInstance = (IconDialog) getSupportFragmentManager().findFragmentByTag("icon_picker");
        if (iconDialogNewInstance == null) {
            iconDialogNewInstance = IconDialog.INSTANCE.newInstance(new IconDialogSettings.Builder().build());
        }
        setIconDialog(iconDialogNewInstance);
        EditActionMenuActivity editActionMenuActivity = this;
        IconPackLoader iconPackLoader = new IconPackLoader(editActionMenuActivity);
        final IconPack iconPackCreateDefaultIconPack = IconPackDefault.createDefaultIconPack(iconPackLoader);
        iconPackCreateDefaultIconPack.loadDrawables(iconPackLoader.getDrawableLoader());
        setIconDialogIconPack(iconPackCreateDefaultIconPack);
        ActivityEditActionMenuBinding activityEditActionMenuBinding3 = this.binding;
        if (activityEditActionMenuBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding3 = null;
        }
        activityEditActionMenuBinding3.buttonList.setLayoutManager(new LinearLayoutManager(editActionMenuActivity));
        ActivityEditActionMenuBinding activityEditActionMenuBinding4 = this.binding;
        if (activityEditActionMenuBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding4 = null;
        }
        activityEditActionMenuBinding4.buttonList.setVerticalScrollBarEnabled(true);
        ActivityEditActionMenuBinding activityEditActionMenuBinding5 = this.binding;
        if (activityEditActionMenuBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding5 = null;
        }
        activityEditActionMenuBinding5.buttonList.setScrollingEnabled(true);
        ActivityEditActionMenuBinding activityEditActionMenuBinding6 = this.binding;
        if (activityEditActionMenuBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding6 = null;
        }
        activityEditActionMenuBinding6.buttonList.setAdapter(new Adapter(editActionMenuActivity, getDialogOwner(), iconPackCreateDefaultIconPack, iconPackLoader, new Function2<Bundle, Integer, Unit>() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity.onCreate.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Bundle bundle, Integer num) {
                invoke(bundle, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Bundle args, int i) {
                Intrinsics.checkNotNullParameter(args, "args");
                EditActionMenuActivity.this.getIconDialog().setArguments(args);
                if (iconPackCreateDefaultIconPack.getIcon(i) == null) {
                    i = ActionMenuButton.DEFAULT_ICON;
                }
                EditActionMenuActivity.this.getIconDialog().setSelectedIconIds(CollectionsKt.listOf(Integer.valueOf(i)));
                EditActionMenuActivity.this.getIconDialog().show(EditActionMenuActivity.this.getSupportFragmentManager(), "icon_picker");
            }
        }), true);
        ActivityEditActionMenuBinding activityEditActionMenuBinding7 = this.binding;
        if (activityEditActionMenuBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding7 = null;
        }
        DragItemAdapter adapter = activityEditActionMenuBinding7.buttonList.getAdapter();
        ActionMenuButton[] actionMenu = Prefs.INSTANCE.getActionMenu(editActionMenuActivity);
        ArrayList arrayList = new ArrayList(actionMenu.length);
        for (ActionMenuButton actionMenuButton : actionMenu) {
            long j = this.nextItemId;
            this.nextItemId = 1 + j;
            arrayList.add(new Pair(Long.valueOf(j), actionMenuButton));
        }
        adapter.setItemList(arrayList);
        ActivityEditActionMenuBinding activityEditActionMenuBinding8 = this.binding;
        if (activityEditActionMenuBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding8 = null;
        }
        activityEditActionMenuBinding8.buttonList.getAdapter().registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity.onCreate.4
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                EditActionMenuActivity.this.saveList();
            }
        });
        ActivityEditActionMenuBinding activityEditActionMenuBinding9 = this.binding;
        if (activityEditActionMenuBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding9 = null;
        }
        activityEditActionMenuBinding9.buttonList.setSwipeListener(new ListSwipeHelper.OnSwipeListener() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity.onCreate.5
            @Override // com.woxthebox.draglistview.swipe.ListSwipeHelper.OnSwipeListener
            public void onItemSwipeStarted(ListSwipeItem item) {
            }

            @Override // com.woxthebox.draglistview.swipe.ListSwipeHelper.OnSwipeListener
            public void onItemSwiping(ListSwipeItem item, float swipedDistanceX) {
            }

            @Override // com.woxthebox.draglistview.swipe.ListSwipeHelper.OnSwipeListener
            public void onItemSwipeEnded(ListSwipeItem item, ListSwipeItem.SwipeDirection swipedDirection) {
                long jLongValue;
                Intrinsics.checkNotNullParameter(item, "item");
                Intrinsics.checkNotNullParameter(swipedDirection, "swipedDirection");
                if (swipedDirection != ListSwipeItem.SwipeDirection.NONE) {
                    ActivityEditActionMenuBinding activityEditActionMenuBinding10 = EditActionMenuActivity.this.binding;
                    ActivityEditActionMenuBinding activityEditActionMenuBinding11 = null;
                    if (activityEditActionMenuBinding10 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        activityEditActionMenuBinding10 = null;
                    }
                    DragItemAdapter adapter2 = activityEditActionMenuBinding10.buttonList.getAdapter();
                    ActivityEditActionMenuBinding activityEditActionMenuBinding12 = EditActionMenuActivity.this.binding;
                    if (activityEditActionMenuBinding12 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        activityEditActionMenuBinding12 = null;
                    }
                    DragItemAdapter adapter3 = activityEditActionMenuBinding12.buttonList.getAdapter();
                    Object tag = item.getTag();
                    Integer num = tag instanceof Integer ? (Integer) tag : null;
                    if (num != null) {
                        jLongValue = num.intValue();
                    } else {
                        Object tag2 = item.getTag();
                        Long l = tag2 instanceof Long ? (Long) tag2 : null;
                        jLongValue = l != null ? l.longValue() : -1L;
                    }
                    adapter2.removeItem(adapter3.getPositionForItemId(jLongValue));
                    ActivityEditActionMenuBinding activityEditActionMenuBinding13 = EditActionMenuActivity.this.binding;
                    if (activityEditActionMenuBinding13 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        activityEditActionMenuBinding11 = activityEditActionMenuBinding13;
                    }
                    activityEditActionMenuBinding11.buttonList.getAdapter().notifyDataSetChanged();
                }
            }
        });
        ActivityEditActionMenuBinding activityEditActionMenuBinding10 = this.binding;
        if (activityEditActionMenuBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            activityEditActionMenuBinding = activityEditActionMenuBinding10;
        }
        activityEditActionMenuBinding.addButton.setOnClickListener(new View.OnClickListener() { // from class: com.kelocube.mirrorclient.ui.EditActionMenuActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditActionMenuActivity.onCreate$lambda$3(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat onCreate$lambda$1(View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        view.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$3(EditActionMenuActivity this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ActivityEditActionMenuBinding activityEditActionMenuBinding = this$0.binding;
        ActivityEditActionMenuBinding activityEditActionMenuBinding2 = null;
        if (activityEditActionMenuBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            activityEditActionMenuBinding = null;
        }
        if (activityEditActionMenuBinding.buttonList.getAdapter().getGlobalSize() < 10) {
            ActivityEditActionMenuBinding activityEditActionMenuBinding3 = this$0.binding;
            if (activityEditActionMenuBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityEditActionMenuBinding3 = null;
            }
            DragItemAdapter adapter = activityEditActionMenuBinding3.buttonList.getAdapter();
            ActivityEditActionMenuBinding activityEditActionMenuBinding4 = this$0.binding;
            if (activityEditActionMenuBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityEditActionMenuBinding4 = null;
            }
            int globalSize = activityEditActionMenuBinding4.buttonList.getAdapter().getGlobalSize();
            long j = this$0.nextItemId;
            this$0.nextItemId = 1 + j;
            adapter.addItem(globalSize, new Pair(Long.valueOf(j), new ActionMenuButton()));
            ActivityEditActionMenuBinding activityEditActionMenuBinding5 = this$0.binding;
            if (activityEditActionMenuBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityEditActionMenuBinding2 = activityEditActionMenuBinding5;
            }
            activityEditActionMenuBinding2.buttonList.getAdapter().notifyDataSetChanged();
            return;
        }
        Toast.makeText(this$0, R.string.edit_am_too_many_items, 1).show();
    }
}
