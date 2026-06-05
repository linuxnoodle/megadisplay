package com.mikepenz.aboutlibraries.ui.item;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.LibsBuilder;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.R;
import com.mikepenz.aboutlibraries.util.MovementCheck;
import com.mikepenz.aboutlibraries.util.UIUtilsKt;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HeaderItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00022\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0016J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0015\u0010%\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010&J\u0010\u0010'\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0005R\u0014\u0010\u0019\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0015¨\u0006*"}, d2 = {"Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;", "Lcom/mikepenz/fastadapter/items/AbstractItem;", "Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;", "libsBuilder", "Lcom/mikepenz/aboutlibraries/LibsBuilder;", "(Lcom/mikepenz/aboutlibraries/LibsBuilder;)V", "aboutIcon", "Landroid/graphics/drawable/Drawable;", "aboutVersionCode", "", "Ljava/lang/Integer;", "aboutVersionName", "", "value", "", "isSelectable", "()Z", "setSelectable", "(Z)V", "layoutRes", "getLayoutRes", "()I", "getLibsBuilder", "()Lcom/mikepenz/aboutlibraries/LibsBuilder;", "setLibsBuilder", "type", "getType", "bindView", "", "holder", "payloads", "", "", "getViewHolder", "v", "Landroid/view/View;", "withAboutIcon", "withAboutVersionCode", "(Ljava/lang/Integer;)Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem;", "withAboutVersionName", "withLibsBuilder", "ViewHolder", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class HeaderItem extends AbstractItem<ViewHolder> {
    private Drawable aboutIcon;
    private Integer aboutVersionCode;
    private String aboutVersionName;
    private LibsBuilder libsBuilder;

    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    /* JADX INFO: renamed from: isSelectable */
    public boolean getIsSelectable() {
        return false;
    }

    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    public void setSelectable(boolean z) {
    }

    public HeaderItem(LibsBuilder libsBuilder) {
        Intrinsics.checkParameterIsNotNull(libsBuilder, "libsBuilder");
        this.libsBuilder = libsBuilder;
    }

    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    public /* bridge */ /* synthetic */ void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        bindView((ViewHolder) viewHolder, (List<? extends Object>) list);
    }

    public final LibsBuilder getLibsBuilder() {
        return this.libsBuilder;
    }

    public final void setLibsBuilder(LibsBuilder libsBuilder) {
        Intrinsics.checkParameterIsNotNull(libsBuilder, "<set-?>");
        this.libsBuilder = libsBuilder;
    }

    public final HeaderItem withAboutVersionCode(Integer aboutVersionCode) {
        this.aboutVersionCode = aboutVersionCode;
        return this;
    }

    public final HeaderItem withAboutVersionName(String aboutVersionName) {
        this.aboutVersionName = aboutVersionName;
        return this;
    }

    public final HeaderItem withAboutIcon(Drawable aboutIcon) {
        this.aboutIcon = aboutIcon;
        return this;
    }

    public final HeaderItem withLibsBuilder(LibsBuilder libsBuilder) {
        Intrinsics.checkParameterIsNotNull(libsBuilder, "libsBuilder");
        this.libsBuilder = libsBuilder;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getType() {
        return R.id.header_item_id;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public int getLayoutRes() {
        return R.layout.listheader_opensource;
    }

    public void bindView(ViewHolder holder, List<? extends Object> payloads) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        super.bindView(holder, payloads);
        View view = holder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        final Context context = view.getContext();
        if (this.libsBuilder.getAboutShowIcon() && this.aboutIcon != null) {
            holder.getAboutIcon().setImageDrawable(this.aboutIcon);
            holder.getAboutIcon().setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.bindView.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View it) {
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(it, "it");
                        listener.onIconClicked(it);
                    }
                }
            });
            holder.getAboutIcon().setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.bindView.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View v) {
                    LibsConfiguration.LibsListener listener;
                    if (LibsConfiguration.INSTANCE.getInstance().getListener() != null && (listener = LibsConfiguration.INSTANCE.getInstance().getListener()) != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        if (listener.onIconLongClicked(v)) {
                            return true;
                        }
                    }
                    return false;
                }
            });
        } else {
            holder.getAboutIcon().setVisibility(8);
        }
        String aboutAppName = this.libsBuilder.getAboutAppName();
        if (aboutAppName != null && aboutAppName.length() != 0) {
            holder.getAboutAppName().setText(this.libsBuilder.getAboutAppName());
        } else {
            holder.getAboutAppName().setVisibility(8);
        }
        holder.getAboutSpecialContainer().setVisibility(8);
        holder.getAboutSpecial1().setVisibility(8);
        holder.getAboutSpecial2().setVisibility(8);
        holder.getAboutSpecial3().setVisibility(8);
        if (!TextUtils.isEmpty(this.libsBuilder.getAboutAppSpecial1()) && (!TextUtils.isEmpty(this.libsBuilder.getAboutAppSpecial1Description()) || LibsConfiguration.INSTANCE.getInstance().getListener() != null)) {
            holder.getAboutSpecial1().setText(this.libsBuilder.getAboutAppSpecial1());
            Function1<TextView, Unit> postTextAction = LibsConfiguration.INSTANCE.getInstance().getPostTextAction();
            if (postTextAction != null) {
                postTextAction.invoke(holder.getAboutSpecial1());
            }
            holder.getAboutSpecial1().setVisibility(0);
            holder.getAboutSpecial1().setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.bindView.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View v) {
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        if (listener.onExtraClicked(v, Libs.SpecialButton.SPECIAL1)) {
                            return;
                        }
                    }
                    if (TextUtils.isEmpty(HeaderItem.this.getLibsBuilder().getAboutAppSpecial1Description())) {
                        return;
                    }
                    try {
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setMessage(Html.fromHtml(HeaderItem.this.getLibsBuilder().getAboutAppSpecial1Description())).create();
                        Intrinsics.checkExpressionValueIsNotNull(alertDialogCreate, "AlertDialog.Builder(ctx)…                .create()");
                        alertDialogCreate.show();
                        TextView textView = (TextView) alertDialogCreate.findViewById(android.R.id.message);
                        if (textView != null) {
                            textView.setMovementMethod(LinkMovementMethod.getInstance());
                        }
                    } catch (Exception unused) {
                    }
                }
            });
            holder.getAboutSpecialContainer().setVisibility(0);
        }
        if (!TextUtils.isEmpty(this.libsBuilder.getAboutAppSpecial2()) && (!TextUtils.isEmpty(this.libsBuilder.getAboutAppSpecial2Description()) || LibsConfiguration.INSTANCE.getInstance().getListener() != null)) {
            holder.getAboutSpecial2().setText(this.libsBuilder.getAboutAppSpecial2());
            Function1<TextView, Unit> postTextAction2 = LibsConfiguration.INSTANCE.getInstance().getPostTextAction();
            if (postTextAction2 != null) {
                postTextAction2.invoke(holder.getAboutSpecial2());
            }
            holder.getAboutSpecial2().setVisibility(0);
            holder.getAboutSpecial2().setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.bindView.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View v) {
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        if (listener.onExtraClicked(v, Libs.SpecialButton.SPECIAL2)) {
                            return;
                        }
                    }
                    if (TextUtils.isEmpty(HeaderItem.this.getLibsBuilder().getAboutAppSpecial2Description())) {
                        return;
                    }
                    try {
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setMessage(Html.fromHtml(HeaderItem.this.getLibsBuilder().getAboutAppSpecial2Description())).create();
                        Intrinsics.checkExpressionValueIsNotNull(alertDialogCreate, "AlertDialog.Builder(ctx)…                .create()");
                        alertDialogCreate.show();
                        TextView textView = (TextView) alertDialogCreate.findViewById(android.R.id.message);
                        if (textView != null) {
                            textView.setMovementMethod(LinkMovementMethod.getInstance());
                        }
                    } catch (Exception unused) {
                    }
                }
            });
            holder.getAboutSpecialContainer().setVisibility(0);
        }
        if (!TextUtils.isEmpty(this.libsBuilder.getAboutAppSpecial3()) && (!TextUtils.isEmpty(this.libsBuilder.getAboutAppSpecial3Description()) || LibsConfiguration.INSTANCE.getInstance().getListener() != null)) {
            holder.getAboutSpecial3().setText(this.libsBuilder.getAboutAppSpecial3());
            Function1<TextView, Unit> postTextAction3 = LibsConfiguration.INSTANCE.getInstance().getPostTextAction();
            if (postTextAction3 != null) {
                postTextAction3.invoke(holder.getAboutSpecial3());
            }
            holder.getAboutSpecial3().setVisibility(0);
            holder.getAboutSpecial3().setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.bindView.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View v) {
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        if (listener.onExtraClicked(v, Libs.SpecialButton.SPECIAL3)) {
                            return;
                        }
                    }
                    if (TextUtils.isEmpty(HeaderItem.this.getLibsBuilder().getAboutAppSpecial3Description())) {
                        return;
                    }
                    try {
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setMessage(Html.fromHtml(HeaderItem.this.getLibsBuilder().getAboutAppSpecial3Description())).create();
                        Intrinsics.checkExpressionValueIsNotNull(alertDialogCreate, "AlertDialog.Builder(ctx)…                .create()");
                        alertDialogCreate.show();
                        TextView textView = (TextView) alertDialogCreate.findViewById(android.R.id.message);
                        if (textView != null) {
                            textView.setMovementMethod(LinkMovementMethod.getInstance());
                        }
                    } catch (Exception unused) {
                    }
                }
            });
            holder.getAboutSpecialContainer().setVisibility(0);
        }
        if (this.libsBuilder.getAboutVersionString().length() > 0) {
            holder.getAboutVersion().setText(this.libsBuilder.getAboutVersionString());
        } else if (this.libsBuilder.getAboutShowVersion()) {
            holder.getAboutVersion().setText(context.getString(R.string.version) + ' ' + this.aboutVersionName + " (" + this.aboutVersionCode + ')');
        } else if (this.libsBuilder.getAboutShowVersionName()) {
            holder.getAboutVersion().setText(context.getString(R.string.version) + ' ' + this.aboutVersionName);
        } else if (this.libsBuilder.getAboutShowVersionCode()) {
            holder.getAboutVersion().setText(context.getString(R.string.version) + ' ' + this.aboutVersionCode);
        } else {
            holder.getAboutVersion().setVisibility(8);
        }
        String aboutDescription = this.libsBuilder.getAboutDescription();
        if (aboutDescription != null && aboutDescription.length() != 0) {
            holder.getAboutAppDescription().setText(Html.fromHtml(this.libsBuilder.getAboutDescription()));
            Function1<TextView, Unit> postTextAction4 = LibsConfiguration.INSTANCE.getInstance().getPostTextAction();
            if (postTextAction4 != null) {
                postTextAction4.invoke(holder.getAboutAppDescription());
            }
            holder.getAboutAppDescription().setMovementMethod(MovementCheck.INSTANCE.getInstance());
        } else {
            holder.getAboutAppDescription().setVisibility(8);
        }
        if ((!this.libsBuilder.getAboutShowIcon() && !this.libsBuilder.getAboutShowVersion()) || TextUtils.isEmpty(this.libsBuilder.getAboutDescription())) {
            holder.getAboutDivider().setVisibility(8);
        }
        LibsConfiguration.LibsRecyclerViewListener libsRecyclerViewListener = LibsConfiguration.INSTANCE.getInstance().getLibsRecyclerViewListener();
        if (libsRecyclerViewListener != null) {
            libsRecyclerViewListener.onBindViewHolder(holder);
        }
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public ViewHolder getViewHolder(View v) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        return new ViewHolder(v);
    }

    /* JADX INFO: compiled from: HeaderItem.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0004R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u001b\"\u0004\b \u0010\u001dR\u001a\u0010!\u001a\u00020\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010\u001dR\u001a\u0010$\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0010\"\u0004\b&\u0010\u0004R\u001a\u0010'\u001a\u00020\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\b\"\u0004\b)\u0010\n¨\u0006*"}, d2 = {"Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "headerView", "Landroid/view/View;", "(Landroid/view/View;)V", "aboutAppDescription", "Landroid/widget/TextView;", "getAboutAppDescription$aboutlibraries", "()Landroid/widget/TextView;", "setAboutAppDescription$aboutlibraries", "(Landroid/widget/TextView;)V", "aboutAppName", "getAboutAppName$aboutlibraries", "setAboutAppName$aboutlibraries", "aboutDivider", "getAboutDivider$aboutlibraries", "()Landroid/view/View;", "setAboutDivider$aboutlibraries", "aboutIcon", "Landroid/widget/ImageView;", "getAboutIcon$aboutlibraries", "()Landroid/widget/ImageView;", "setAboutIcon$aboutlibraries", "(Landroid/widget/ImageView;)V", "aboutSpecial1", "Landroid/widget/Button;", "getAboutSpecial1$aboutlibraries", "()Landroid/widget/Button;", "setAboutSpecial1$aboutlibraries", "(Landroid/widget/Button;)V", "aboutSpecial2", "getAboutSpecial2$aboutlibraries", "setAboutSpecial2$aboutlibraries", "aboutSpecial3", "getAboutSpecial3$aboutlibraries", "setAboutSpecial3$aboutlibraries", "aboutSpecialContainer", "getAboutSpecialContainer$aboutlibraries", "setAboutSpecialContainer$aboutlibraries", "aboutVersion", "getAboutVersion$aboutlibraries", "setAboutVersion$aboutlibraries", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private TextView aboutAppDescription;
        private TextView aboutAppName;
        private View aboutDivider;
        private ImageView aboutIcon;
        private Button aboutSpecial1;
        private Button aboutSpecial2;
        private Button aboutSpecial3;
        private View aboutSpecialContainer;
        private TextView aboutVersion;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View headerView) {
            super(headerView);
            Intrinsics.checkParameterIsNotNull(headerView, "headerView");
            View viewFindViewById = headerView.findViewById(R.id.aboutIcon);
            if (viewFindViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.ImageView");
            }
            this.aboutIcon = (ImageView) viewFindViewById;
            View viewFindViewById2 = headerView.findViewById(R.id.aboutName);
            if (viewFindViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.aboutAppName = (TextView) viewFindViewById2;
            View viewFindViewById3 = headerView.findViewById(R.id.aboutSpecialContainer);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "headerView.findViewById(…id.aboutSpecialContainer)");
            this.aboutSpecialContainer = viewFindViewById3;
            View viewFindViewById4 = headerView.findViewById(R.id.aboutSpecial1);
            if (viewFindViewById4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
            }
            this.aboutSpecial1 = (Button) viewFindViewById4;
            View viewFindViewById5 = headerView.findViewById(R.id.aboutSpecial2);
            if (viewFindViewById5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
            }
            this.aboutSpecial2 = (Button) viewFindViewById5;
            View viewFindViewById6 = headerView.findViewById(R.id.aboutSpecial3);
            if (viewFindViewById6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
            }
            this.aboutSpecial3 = (Button) viewFindViewById6;
            View viewFindViewById7 = headerView.findViewById(R.id.aboutVersion);
            if (viewFindViewById7 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.aboutVersion = (TextView) viewFindViewById7;
            View viewFindViewById8 = headerView.findViewById(R.id.aboutDivider);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "headerView.findViewById(R.id.aboutDivider)");
            this.aboutDivider = viewFindViewById8;
            View viewFindViewById9 = headerView.findViewById(R.id.aboutDescription);
            if (viewFindViewById9 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.aboutAppDescription = (TextView) viewFindViewById9;
            View itemView = this.itemView;
            Intrinsics.checkExpressionValueIsNotNull(itemView, "itemView");
            final Context ctx = itemView.getContext();
            Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
            UIUtilsKt.resolveStyledValue$default(ctx, null, 0, 0, new Function1<TypedArray, Unit>() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.ViewHolder.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TypedArray typedArray) {
                    invoke2(typedArray);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(TypedArray it) {
                    Intrinsics.checkParameterIsNotNull(it, "it");
                    ViewHolder.this.getAboutAppName().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesDescriptionTitle));
                    ViewHolder.this.getAboutVersion().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesDescriptionText));
                    ViewHolder.this.getAboutAppDescription().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesDescriptionText));
                    View aboutDivider = ViewHolder.this.getAboutDivider();
                    int i = R.styleable.AboutLibraries_aboutLibrariesDescriptionDivider;
                    Context ctx2 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx2, "ctx");
                    int i2 = R.attr.aboutLibrariesDescriptionDivider;
                    Context ctx3 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx3, "ctx");
                    aboutDivider.setBackgroundColor(it.getColor(i, UIUtilsKt.getThemeColor(ctx2, i2, UIUtilsKt.getSupportColor(ctx3, R.color.about_libraries_dividerLight_openSource))));
                    ViewHolder.this.getAboutSpecial1().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesSpecialButtonText));
                    ViewHolder.this.getAboutSpecial2().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesSpecialButtonText));
                    ViewHolder.this.getAboutSpecial3().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesSpecialButtonText));
                }
            }, 7, null);
        }

        /* JADX INFO: renamed from: getAboutIcon$aboutlibraries, reason: from getter */
        public final ImageView getAboutIcon() {
            return this.aboutIcon;
        }

        public final void setAboutIcon$aboutlibraries(ImageView imageView) {
            Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
            this.aboutIcon = imageView;
        }

        /* JADX INFO: renamed from: getAboutAppName$aboutlibraries, reason: from getter */
        public final TextView getAboutAppName() {
            return this.aboutAppName;
        }

        public final void setAboutAppName$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.aboutAppName = textView;
        }

        /* JADX INFO: renamed from: getAboutSpecialContainer$aboutlibraries, reason: from getter */
        public final View getAboutSpecialContainer() {
            return this.aboutSpecialContainer;
        }

        public final void setAboutSpecialContainer$aboutlibraries(View view) {
            Intrinsics.checkParameterIsNotNull(view, "<set-?>");
            this.aboutSpecialContainer = view;
        }

        /* JADX INFO: renamed from: getAboutSpecial1$aboutlibraries, reason: from getter */
        public final Button getAboutSpecial1() {
            return this.aboutSpecial1;
        }

        public final void setAboutSpecial1$aboutlibraries(Button button) {
            Intrinsics.checkParameterIsNotNull(button, "<set-?>");
            this.aboutSpecial1 = button;
        }

        /* JADX INFO: renamed from: getAboutSpecial2$aboutlibraries, reason: from getter */
        public final Button getAboutSpecial2() {
            return this.aboutSpecial2;
        }

        public final void setAboutSpecial2$aboutlibraries(Button button) {
            Intrinsics.checkParameterIsNotNull(button, "<set-?>");
            this.aboutSpecial2 = button;
        }

        /* JADX INFO: renamed from: getAboutSpecial3$aboutlibraries, reason: from getter */
        public final Button getAboutSpecial3() {
            return this.aboutSpecial3;
        }

        public final void setAboutSpecial3$aboutlibraries(Button button) {
            Intrinsics.checkParameterIsNotNull(button, "<set-?>");
            this.aboutSpecial3 = button;
        }

        /* JADX INFO: renamed from: getAboutVersion$aboutlibraries, reason: from getter */
        public final TextView getAboutVersion() {
            return this.aboutVersion;
        }

        public final void setAboutVersion$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.aboutVersion = textView;
        }

        /* JADX INFO: renamed from: getAboutDivider$aboutlibraries, reason: from getter */
        public final View getAboutDivider() {
            return this.aboutDivider;
        }

        public final void setAboutDivider$aboutlibraries(View view) {
            Intrinsics.checkParameterIsNotNull(view, "<set-?>");
            this.aboutDivider = view;
        }

        /* JADX INFO: renamed from: getAboutAppDescription$aboutlibraries, reason: from getter */
        public final TextView getAboutAppDescription() {
            return this.aboutAppDescription;
        }

        public final void setAboutAppDescription$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.aboutAppDescription = textView;
        }
    }
}
