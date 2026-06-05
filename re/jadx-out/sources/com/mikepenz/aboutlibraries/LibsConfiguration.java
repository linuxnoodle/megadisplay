package com.mikepenz.aboutlibraries;

import android.view.View;
import android.view.animation.LayoutAnimationController;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.ui.item.HeaderItem;
import com.mikepenz.aboutlibraries.ui.item.LibraryItem;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LibsConfiguration.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 22\u00020\u0001:\u00072345678B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010/\u001a\u00020$J\u0006\u00100\u001a\u00020$J\u0006\u00101\u001a\u00020$R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R(\u0010!\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0018\u00010\"X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00069"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration;", "", "()V", "itemAnimator", "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;", "getItemAnimator", "()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;", "setItemAnimator", "(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V", "layoutAnimationController", "Landroid/view/animation/LayoutAnimationController;", "getLayoutAnimationController", "()Landroid/view/animation/LayoutAnimationController;", "setLayoutAnimationController", "(Landroid/view/animation/LayoutAnimationController;)V", "libTaskCallback", "Lcom/mikepenz/aboutlibraries/LibTaskCallback;", "getLibTaskCallback", "()Lcom/mikepenz/aboutlibraries/LibTaskCallback;", "setLibTaskCallback", "(Lcom/mikepenz/aboutlibraries/LibTaskCallback;)V", "libsRecyclerViewListener", "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;", "getLibsRecyclerViewListener", "()Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;", "setLibsRecyclerViewListener", "(Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;", "getListener", "()Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;", "setListener", "(Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;)V", "postTextAction", "Lkotlin/Function1;", "Landroid/widget/TextView;", "", "getPostTextAction", "()Lkotlin/jvm/functions/Function1;", "setPostTextAction", "(Lkotlin/jvm/functions/Function1;)V", "uiListener", "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;", "getUiListener", "()Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;", "setUiListener", "(Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;)V", "removeLibsRecyclerViewListener", "removeListener", "removeUiListener", "Companion", "Holder", "LibsListener", "LibsListenerImpl", "LibsRecyclerViewListener", "LibsRecyclerViewListenerImpl", "LibsUIListener", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public final class LibsConfiguration {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy instance$delegate = LazyKt.lazy(new Function0<LibsConfiguration>() { // from class: com.mikepenz.aboutlibraries.LibsConfiguration$Companion$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final LibsConfiguration invoke() {
            return LibsConfiguration.Holder.INSTANCE.getINSTANCE();
        }
    });
    private RecyclerView.ItemAnimator itemAnimator;
    private LayoutAnimationController layoutAnimationController;
    private LibTaskCallback libTaskCallback;
    private LibsRecyclerViewListener libsRecyclerViewListener;
    private LibsListener listener;
    private Function1<? super TextView, Unit> postTextAction;
    private LibsUIListener uiListener;

    /* JADX INFO: compiled from: LibsConfiguration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH&¨\u0006\u0013"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;", "", "onExtraClicked", "", "v", "Landroid/view/View;", "specialButton", "Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;", "onIconClicked", "", "onIconLongClicked", "onLibraryAuthorClicked", "library", "Lcom/mikepenz/aboutlibraries/entity/Library;", "onLibraryAuthorLongClicked", "onLibraryBottomClicked", "onLibraryBottomLongClicked", "onLibraryContentClicked", "onLibraryContentLongClicked", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public interface LibsListener {
        boolean onExtraClicked(View v, Libs.SpecialButton specialButton);

        void onIconClicked(View v);

        boolean onIconLongClicked(View v);

        boolean onLibraryAuthorClicked(View v, Library library);

        boolean onLibraryAuthorLongClicked(View v, Library library);

        boolean onLibraryBottomClicked(View v, Library library);

        boolean onLibraryBottomLongClicked(View v, Library library);

        boolean onLibraryContentClicked(View v, Library library);

        boolean onLibraryContentLongClicked(View v, Library library);
    }

    /* JADX INFO: compiled from: LibsConfiguration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016¨\u0006\u0014"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListenerImpl;", "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsListener;", "()V", "onExtraClicked", "", "v", "Landroid/view/View;", "specialButton", "Lcom/mikepenz/aboutlibraries/Libs$SpecialButton;", "onIconClicked", "", "onIconLongClicked", "onLibraryAuthorClicked", "library", "Lcom/mikepenz/aboutlibraries/entity/Library;", "onLibraryAuthorLongClicked", "onLibraryBottomClicked", "onLibraryBottomLongClicked", "onLibraryContentClicked", "onLibraryContentLongClicked", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public static abstract class LibsListenerImpl implements LibsListener {
        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onExtraClicked(View v, Libs.SpecialButton specialButton) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(specialButton, "specialButton");
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public void onIconClicked(View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onIconLongClicked(View v) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            return true;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryAuthorClicked(View v, Library library) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(library, "library");
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryAuthorLongClicked(View v, Library library) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(library, "library");
            return true;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryBottomClicked(View v, Library library) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(library, "library");
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryBottomLongClicked(View v, Library library) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(library, "library");
            return true;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryContentClicked(View v, Library library) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(library, "library");
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryContentLongClicked(View v, Library library) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            Intrinsics.checkParameterIsNotNull(library, "library");
            return true;
        }
    }

    /* JADX INFO: compiled from: LibsConfiguration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;", "", "onBindViewHolder", "", "headerViewHolder", "Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;", "viewHolder", "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public interface LibsRecyclerViewListener {
        void onBindViewHolder(HeaderItem.ViewHolder headerViewHolder);

        void onBindViewHolder(LibraryItem.ViewHolder viewHolder);
    }

    /* JADX INFO: compiled from: LibsConfiguration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListenerImpl;", "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;", "()V", "onBindViewHolder", "", "headerViewHolder", "Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;", "holder", "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public static abstract class LibsRecyclerViewListenerImpl implements LibsRecyclerViewListener {
        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsRecyclerViewListener
        public void onBindViewHolder(HeaderItem.ViewHolder headerViewHolder) {
            Intrinsics.checkParameterIsNotNull(headerViewHolder, "headerViewHolder");
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsRecyclerViewListener
        public void onBindViewHolder(LibraryItem.ViewHolder holder) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
        }
    }

    /* JADX INFO: compiled from: LibsConfiguration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener;", "", "postOnCreateView", "Landroid/view/View;", "view", "preOnCreateView", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public interface LibsUIListener {
        View postOnCreateView(View view);

        View preOnCreateView(View view);
    }

    private LibsConfiguration() {
    }

    public /* synthetic */ LibsConfiguration(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final LibsListener getListener() {
        return this.listener;
    }

    public final void setListener(LibsListener libsListener) {
        this.listener = libsListener;
    }

    public final LibsUIListener getUiListener() {
        return this.uiListener;
    }

    public final void setUiListener(LibsUIListener libsUIListener) {
        this.uiListener = libsUIListener;
    }

    public final LibsRecyclerViewListener getLibsRecyclerViewListener() {
        return this.libsRecyclerViewListener;
    }

    public final void setLibsRecyclerViewListener(LibsRecyclerViewListener libsRecyclerViewListener) {
        this.libsRecyclerViewListener = libsRecyclerViewListener;
    }

    public final LayoutAnimationController getLayoutAnimationController() {
        return this.layoutAnimationController;
    }

    public final void setLayoutAnimationController(LayoutAnimationController layoutAnimationController) {
        this.layoutAnimationController = layoutAnimationController;
    }

    public final RecyclerView.ItemAnimator getItemAnimator() {
        return this.itemAnimator;
    }

    public final void setItemAnimator(RecyclerView.ItemAnimator itemAnimator) {
        this.itemAnimator = itemAnimator;
    }

    public final LibTaskCallback getLibTaskCallback() {
        return this.libTaskCallback;
    }

    public final void setLibTaskCallback(LibTaskCallback libTaskCallback) {
        this.libTaskCallback = libTaskCallback;
    }

    public final Function1<TextView, Unit> getPostTextAction() {
        return this.postTextAction;
    }

    public final void setPostTextAction(Function1<? super TextView, Unit> function1) {
        this.postTextAction = function1;
    }

    public final void removeListener() {
        this.listener = null;
    }

    public final void removeUiListener() {
        this.uiListener = null;
    }

    public final void removeLibsRecyclerViewListener() {
        this.libsRecyclerViewListener = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: LibsConfiguration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;", "", "()V", "INSTANCE", "Lcom/mikepenz/aboutlibraries/LibsConfiguration;", "getINSTANCE", "()Lcom/mikepenz/aboutlibraries/LibsConfiguration;", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    static final class Holder {
        public static final Holder INSTANCE = new Holder();
        private static final LibsConfiguration INSTANCE = new LibsConfiguration(null);

        private Holder() {
        }

        public final LibsConfiguration getINSTANCE() {
            return INSTANCE;
        }
    }

    /* JADX INFO: compiled from: LibsConfiguration.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibsConfiguration$Companion;", "", "()V", "instance", "Lcom/mikepenz/aboutlibraries/LibsConfiguration;", "getInstance", "()Lcom/mikepenz/aboutlibraries/LibsConfiguration;", "instance$delegate", "Lkotlin/Lazy;", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        public final LibsConfiguration getInstance() {
            Lazy lazy = LibsConfiguration.instance$delegate;
            Companion companion = LibsConfiguration.INSTANCE;
            return (LibsConfiguration) lazy.getValue();
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
