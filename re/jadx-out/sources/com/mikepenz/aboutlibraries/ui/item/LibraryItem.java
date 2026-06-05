package com.mikepenz.aboutlibraries.ui.item;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.mikepenz.aboutlibraries.LibsBuilder;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.R;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.entity.License;
import com.mikepenz.aboutlibraries.util.UIUtilsKt;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LibraryItem.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00022\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020!H\u0002J \u0010$\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0002R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011¨\u0006&"}, d2 = {"Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem;", "Lcom/mikepenz/fastadapter/items/AbstractItem;", "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;", "library", "Lcom/mikepenz/aboutlibraries/entity/Library;", "libsBuilder", "Lcom/mikepenz/aboutlibraries/LibsBuilder;", "(Lcom/mikepenz/aboutlibraries/entity/Library;Lcom/mikepenz/aboutlibraries/LibsBuilder;)V", "value", "", "isSelectable", "()Z", "setSelectable", "(Z)V", "layoutRes", "", "getLayoutRes", "()I", "type", "getType", "bindView", "", "holder", "payloads", "", "", "getViewHolder", "v", "Landroid/view/View;", "openAuthorWebsite", "ctx", "Landroid/content/Context;", "authorWebsite", "", "openLibraryWebsite", "libraryWebsite", "openLicense", "ViewHolder", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class LibraryItem extends AbstractItem<ViewHolder> {
    private final Library library;
    private final LibsBuilder libsBuilder;

    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    /* JADX INFO: renamed from: isSelectable */
    public boolean getIsSelectable() {
        return false;
    }

    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    public void setSelectable(boolean z) {
    }

    public LibraryItem(Library library, LibsBuilder libsBuilder) {
        Intrinsics.checkParameterIsNotNull(library, "library");
        Intrinsics.checkParameterIsNotNull(libsBuilder, "libsBuilder");
        this.library = library;
        this.libsBuilder = libsBuilder;
    }

    @Override // com.mikepenz.fastadapter.items.BaseItem, com.mikepenz.fastadapter.IItem
    public /* bridge */ /* synthetic */ void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        bindView((ViewHolder) viewHolder, (List<? extends Object>) list);
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getType() {
        return R.id.library_item_id;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public int getLayoutRes() {
        return R.layout.listitem_opensource;
    }

    public void bindView(ViewHolder holder, List<? extends Object> payloads) {
        License license;
        String licenseName;
        License license2;
        String licenseWebsite;
        License license3;
        String licenseName2;
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        super.bindView(holder, payloads);
        View view = holder.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
        final Context context = view.getContext();
        holder.getLibraryName().setText(this.library.getLibraryName());
        holder.getLibraryCreator().setText(this.library.getAuthor());
        if (TextUtils.isEmpty(this.library.getLibraryDescription())) {
            holder.getLibraryDescription().setText(this.library.getLibraryDescription());
        } else {
            holder.getLibraryDescription().setText(Html.fromHtml(this.library.getLibraryDescription()));
        }
        boolean z = this.libsBuilder.getShowVersion() || this.libsBuilder.getShowLicense();
        if ((this.library.getLibraryVersion().length() == 0 && (license3 = this.library.getLicense()) != null && (licenseName2 = license3.getLicenseName()) != null && licenseName2.length() == 0) || !z) {
            holder.getLibraryBottomDivider().setVisibility(8);
            holder.getLibraryVersion().setVisibility(8);
            holder.getLibraryLicense().setVisibility(8);
        } else {
            holder.getLibraryBottomDivider().setVisibility(0);
            holder.getLibraryVersion().setVisibility(0);
            holder.getLibraryLicense().setVisibility(0);
            if (this.library.getLibraryVersion().length() > 0 && this.libsBuilder.getShowVersion()) {
                holder.getLibraryVersion().setText(this.library.getLibraryVersion());
            } else {
                holder.getLibraryVersion().setText("");
            }
            if (this.library.getLicense() != null && (license = this.library.getLicense()) != null && (licenseName = license.getLicenseName()) != null && licenseName.length() > 0 && this.libsBuilder.getShowLicense()) {
                TextView libraryLicense = holder.getLibraryLicense();
                License license4 = this.library.getLicense();
                libraryLicense.setText(license4 != null ? license4.getLicenseName() : null);
            } else {
                holder.getLibraryLicense().setText("");
            }
        }
        if (this.library.getAuthorWebsite().length() > 0) {
            holder.getLibraryCreator().setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.bindView.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(view2, "view");
                        if (listener.onLibraryAuthorClicked(view2, LibraryItem.this.library)) {
                            return;
                        }
                    }
                    LibraryItem libraryItem = LibraryItem.this;
                    Context ctx = context;
                    Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
                    libraryItem.openAuthorWebsite(ctx, LibraryItem.this.library.getAuthorWebsite());
                }
            });
            holder.getLibraryCreator().setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.bindView.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View v) {
                    boolean zOnLibraryAuthorLongClicked;
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        zOnLibraryAuthorLongClicked = listener.onLibraryAuthorLongClicked(v, LibraryItem.this.library);
                    } else {
                        zOnLibraryAuthorLongClicked = false;
                    }
                    if (zOnLibraryAuthorLongClicked) {
                        return zOnLibraryAuthorLongClicked;
                    }
                    LibraryItem libraryItem = LibraryItem.this;
                    Context ctx = context;
                    Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
                    libraryItem.openAuthorWebsite(ctx, LibraryItem.this.library.getAuthorWebsite());
                    return true;
                }
            });
        } else {
            holder.getLibraryCreator().setOnTouchListener(null);
            holder.getLibraryCreator().setOnClickListener(null);
            holder.getLibraryCreator().setOnLongClickListener(null);
        }
        if (this.library.getLibraryWebsite().length() > 0 || this.library.getRepositoryLink().length() > 0) {
            holder.getLibraryDescription().setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.bindView.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View v) {
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        if (listener.onLibraryContentClicked(v, LibraryItem.this.library)) {
                            return;
                        }
                    }
                    LibraryItem libraryItem = LibraryItem.this;
                    Context ctx = context;
                    Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
                    libraryItem.openLibraryWebsite(ctx, LibraryItem.this.library.getLibraryWebsite());
                }
            });
            holder.getLibraryDescription().setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.bindView.4
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View v) {
                    boolean zOnLibraryContentLongClicked;
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        zOnLibraryContentLongClicked = listener.onLibraryContentLongClicked(v, LibraryItem.this.library);
                    } else {
                        zOnLibraryContentLongClicked = false;
                    }
                    if (zOnLibraryContentLongClicked) {
                        return zOnLibraryContentLongClicked;
                    }
                    LibraryItem libraryItem = LibraryItem.this;
                    Context ctx = context;
                    Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
                    libraryItem.openLibraryWebsite(ctx, LibraryItem.this.library.getLibraryWebsite());
                    return true;
                }
            });
        } else {
            holder.getLibraryDescription().setOnTouchListener(null);
            holder.getLibraryDescription().setOnClickListener(null);
            holder.getLibraryDescription().setOnLongClickListener(null);
        }
        if (this.library.getLicense() != null && (((license2 = this.library.getLicense()) != null && (licenseWebsite = license2.getLicenseWebsite()) != null && licenseWebsite.length() > 0) || this.libsBuilder.getShowLicenseDialog())) {
            holder.getLibraryLicense().setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.bindView.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(view2, "view");
                        if (listener.onLibraryBottomClicked(view2, LibraryItem.this.library)) {
                            return;
                        }
                    }
                    LibraryItem libraryItem = LibraryItem.this;
                    Context ctx = context;
                    Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
                    libraryItem.openLicense(ctx, LibraryItem.this.libsBuilder, LibraryItem.this.library);
                }
            });
            holder.getLibraryLicense().setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.bindView.6
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View v) {
                    boolean zOnLibraryBottomLongClicked;
                    LibsConfiguration.LibsListener listener = LibsConfiguration.INSTANCE.getInstance().getListener();
                    if (listener != null) {
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        zOnLibraryBottomLongClicked = listener.onLibraryBottomLongClicked(v, LibraryItem.this.library);
                    } else {
                        zOnLibraryBottomLongClicked = false;
                    }
                    if (zOnLibraryBottomLongClicked) {
                        return zOnLibraryBottomLongClicked;
                    }
                    LibraryItem libraryItem = LibraryItem.this;
                    Context ctx = context;
                    Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
                    libraryItem.openLicense(ctx, LibraryItem.this.libsBuilder, LibraryItem.this.library);
                    return true;
                }
            });
        } else {
            holder.getLibraryLicense().setOnTouchListener(null);
            holder.getLibraryLicense().setOnClickListener(null);
            holder.getLibraryLicense().setOnLongClickListener(null);
        }
        LibsConfiguration.LibsRecyclerViewListener libsRecyclerViewListener = LibsConfiguration.INSTANCE.getInstance().getLibsRecyclerViewListener();
        if (libsRecyclerViewListener != null) {
            libsRecyclerViewListener.onBindViewHolder(holder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openAuthorWebsite(Context ctx, String authorWebsite) {
        try {
            ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(authorWebsite)));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openLibraryWebsite(Context ctx, String libraryWebsite) {
        try {
            ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(libraryWebsite)));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openLicense(Context ctx, LibsBuilder libsBuilder, Library library) {
        License license;
        String licenseDescription;
        try {
            if (libsBuilder.getShowLicenseDialog() && (license = library.getLicense()) != null && (licenseDescription = license.getLicenseDescription()) != null && licenseDescription.length() > 0) {
                AlertDialog.Builder builder = new AlertDialog.Builder(ctx);
                License license2 = library.getLicense();
                builder.setMessage(Html.fromHtml(license2 != null ? license2.getLicenseDescription() : null));
                builder.create().show();
                return;
            }
            License license3 = library.getLicense();
            ctx.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(license3 != null ? license3.getLicenseWebsite() : null)));
        } catch (Exception unused) {
        }
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public ViewHolder getViewHolder(View v) {
        Intrinsics.checkParameterIsNotNull(v, "v");
        return new ViewHolder(v);
    }

    /* JADX INFO: compiled from: LibraryItem.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u0004R\u001a\u0010\u000f\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R\u001a\u0010\u0018\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\r\"\u0004\b\u001a\u0010\u0004R\u001a\u0010\u001b\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014R\u001a\u0010\u001e\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0012\"\u0004\b \u0010\u0014R\u001a\u0010!\u001a\u00020\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0012\"\u0004\b#\u0010\u0014¨\u0006$"}, d2 = {"Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "itemView", "Landroid/view/View;", "(Landroid/view/View;)V", "card", "Lcom/google/android/material/card/MaterialCardView;", "getCard$aboutlibraries", "()Lcom/google/android/material/card/MaterialCardView;", "setCard$aboutlibraries", "(Lcom/google/android/material/card/MaterialCardView;)V", "libraryBottomDivider", "getLibraryBottomDivider$aboutlibraries", "()Landroid/view/View;", "setLibraryBottomDivider$aboutlibraries", "libraryCreator", "Landroid/widget/TextView;", "getLibraryCreator$aboutlibraries", "()Landroid/widget/TextView;", "setLibraryCreator$aboutlibraries", "(Landroid/widget/TextView;)V", "libraryDescription", "getLibraryDescription$aboutlibraries", "setLibraryDescription$aboutlibraries", "libraryDescriptionDivider", "getLibraryDescriptionDivider$aboutlibraries", "setLibraryDescriptionDivider$aboutlibraries", "libraryLicense", "getLibraryLicense$aboutlibraries", "setLibraryLicense$aboutlibraries", "libraryName", "getLibraryName$aboutlibraries", "setLibraryName$aboutlibraries", "libraryVersion", "getLibraryVersion$aboutlibraries", "setLibraryVersion$aboutlibraries", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private MaterialCardView card;
        private View libraryBottomDivider;
        private TextView libraryCreator;
        private TextView libraryDescription;
        private View libraryDescriptionDivider;
        private TextView libraryLicense;
        private TextView libraryName;
        private TextView libraryVersion;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.card = (MaterialCardView) itemView;
            View viewFindViewById = itemView.findViewById(R.id.libraryName);
            if (viewFindViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.libraryName = (TextView) viewFindViewById;
            View viewFindViewById2 = itemView.findViewById(R.id.libraryCreator);
            if (viewFindViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.libraryCreator = (TextView) viewFindViewById2;
            View viewFindViewById3 = itemView.findViewById(R.id.libraryDescriptionDivider);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "itemView.findViewById(R.…ibraryDescriptionDivider)");
            this.libraryDescriptionDivider = viewFindViewById3;
            View viewFindViewById4 = itemView.findViewById(R.id.libraryDescription);
            if (viewFindViewById4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.libraryDescription = (TextView) viewFindViewById4;
            View viewFindViewById5 = itemView.findViewById(R.id.libraryBottomDivider);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "itemView.findViewById(R.id.libraryBottomDivider)");
            this.libraryBottomDivider = viewFindViewById5;
            View viewFindViewById6 = itemView.findViewById(R.id.libraryVersion);
            if (viewFindViewById6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.libraryVersion = (TextView) viewFindViewById6;
            View viewFindViewById7 = itemView.findViewById(R.id.libraryLicense);
            if (viewFindViewById7 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            this.libraryLicense = (TextView) viewFindViewById7;
            final Context ctx = itemView.getContext();
            Intrinsics.checkExpressionValueIsNotNull(ctx, "ctx");
            UIUtilsKt.resolveStyledValue$default(ctx, null, 0, 0, new Function1<TypedArray, Unit>() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.ViewHolder.1
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
                    MaterialCardView card = ViewHolder.this.getCard();
                    int i = R.styleable.AboutLibraries_aboutLibrariesWindowBackground;
                    Context ctx2 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx2, "ctx");
                    int i2 = R.attr.aboutLibrariesWindowBackground;
                    Context ctx3 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx3, "ctx");
                    card.setCardBackgroundColor(it.getColor(i, UIUtilsKt.getThemeColor(ctx2, i2, UIUtilsKt.getSupportColor(ctx3, R.color.about_libraries_card))));
                    ViewHolder.this.getLibraryName().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesOpenSourceTitle));
                    ViewHolder.this.getLibraryCreator().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesOpenSourceText));
                    View libraryDescriptionDivider = ViewHolder.this.getLibraryDescriptionDivider();
                    int i3 = R.styleable.AboutLibraries_aboutLibrariesOpenSourceDivider;
                    Context ctx4 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx4, "ctx");
                    int i4 = R.attr.aboutLibrariesOpenSourceDivider;
                    Context ctx5 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx5, "ctx");
                    libraryDescriptionDivider.setBackgroundColor(it.getColor(i3, UIUtilsKt.getThemeColor(ctx4, i4, UIUtilsKt.getSupportColor(ctx5, R.color.about_libraries_dividerLight_openSource))));
                    ViewHolder.this.getLibraryDescription().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesOpenSourceText));
                    View libraryBottomDivider = ViewHolder.this.getLibraryBottomDivider();
                    int i5 = R.styleable.AboutLibraries_aboutLibrariesOpenSourceDivider;
                    Context ctx6 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx6, "ctx");
                    int i6 = R.attr.aboutLibrariesOpenSourceDivider;
                    Context ctx7 = ctx;
                    Intrinsics.checkExpressionValueIsNotNull(ctx7, "ctx");
                    libraryBottomDivider.setBackgroundColor(it.getColor(i5, UIUtilsKt.getThemeColor(ctx6, i6, UIUtilsKt.getSupportColor(ctx7, R.color.about_libraries_dividerLight_openSource))));
                    ViewHolder.this.getLibraryVersion().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesOpenSourceText));
                    ViewHolder.this.getLibraryLicense().setTextColor(it.getColorStateList(R.styleable.AboutLibraries_aboutLibrariesOpenSourceText));
                }
            }, 7, null);
        }

        /* JADX INFO: renamed from: getCard$aboutlibraries, reason: from getter */
        public final MaterialCardView getCard() {
            return this.card;
        }

        public final void setCard$aboutlibraries(MaterialCardView materialCardView) {
            Intrinsics.checkParameterIsNotNull(materialCardView, "<set-?>");
            this.card = materialCardView;
        }

        /* JADX INFO: renamed from: getLibraryName$aboutlibraries, reason: from getter */
        public final TextView getLibraryName() {
            return this.libraryName;
        }

        public final void setLibraryName$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.libraryName = textView;
        }

        /* JADX INFO: renamed from: getLibraryCreator$aboutlibraries, reason: from getter */
        public final TextView getLibraryCreator() {
            return this.libraryCreator;
        }

        public final void setLibraryCreator$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.libraryCreator = textView;
        }

        /* JADX INFO: renamed from: getLibraryDescriptionDivider$aboutlibraries, reason: from getter */
        public final View getLibraryDescriptionDivider() {
            return this.libraryDescriptionDivider;
        }

        public final void setLibraryDescriptionDivider$aboutlibraries(View view) {
            Intrinsics.checkParameterIsNotNull(view, "<set-?>");
            this.libraryDescriptionDivider = view;
        }

        /* JADX INFO: renamed from: getLibraryDescription$aboutlibraries, reason: from getter */
        public final TextView getLibraryDescription() {
            return this.libraryDescription;
        }

        public final void setLibraryDescription$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.libraryDescription = textView;
        }

        /* JADX INFO: renamed from: getLibraryBottomDivider$aboutlibraries, reason: from getter */
        public final View getLibraryBottomDivider() {
            return this.libraryBottomDivider;
        }

        public final void setLibraryBottomDivider$aboutlibraries(View view) {
            Intrinsics.checkParameterIsNotNull(view, "<set-?>");
            this.libraryBottomDivider = view;
        }

        /* JADX INFO: renamed from: getLibraryVersion$aboutlibraries, reason: from getter */
        public final TextView getLibraryVersion() {
            return this.libraryVersion;
        }

        public final void setLibraryVersion$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.libraryVersion = textView;
        }

        /* JADX INFO: renamed from: getLibraryLicense$aboutlibraries, reason: from getter */
        public final TextView getLibraryLicense() {
            return this.libraryLicense;
        }

        public final void setLibraryLicense$aboutlibraries(TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.libraryLicense = textView;
        }
    }
}
