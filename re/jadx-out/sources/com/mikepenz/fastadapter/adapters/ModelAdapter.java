package com.mikepenz.fastadapter.adapters;

import androidx.recyclerview.widget.RecyclerView;
import com.mikepenz.fastadapter.AbstractAdapter;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IAdapter;
import com.mikepenz.fastadapter.IAdapterExtension;
import com.mikepenz.fastadapter.IAdapterNotifier;
import com.mikepenz.fastadapter.IExpandable;
import com.mikepenz.fastadapter.IIdDistributor;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.IItemAdapter;
import com.mikepenz.fastadapter.IItemList;
import com.mikepenz.fastadapter.IModelItem;
import com.mikepenz.fastadapter.IParentItem;
import com.mikepenz.fastadapter.ISubItem;
import com.mikepenz.fastadapter.dsl.FastAdapterDsl;
import com.mikepenz.fastadapter.utils.AdapterPredicate;
import com.mikepenz.fastadapter.utils.DefaultItemList;
import com.mikepenz.fastadapter.utils.DefaultItemListImpl;
import com.mikepenz.fastadapter.utils.Triple;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModelAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@FastAdapterDsl
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 m*\u0004\b\u0000\u0010\u0001*\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003j\u0002`\u00052\b\u0012\u0004\u0012\u0002H\u00020\u00062\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0007:\u0001mB,\b\u0016\u0012#\u0010\b\u001a\u001f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0006\u0012\u0004\u0018\u00018\u00010\t¢\u0006\u0002\u0010\rB8\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f\u0012#\u0010\b\u001a\u001f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0006\u0012\u0004\u0018\u00018\u00010\t¢\u0006\u0002\u0010\u0010J-\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0012\u0010@\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000A\"\u00028\u0000H\u0017¢\u0006\u0002\u0010BJ5\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0012\u0010@\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000A\"\u00028\u0000H\u0017¢\u0006\u0002\u0010DJ*\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000:H\u0016J\"\u0010?\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000:H\u0016J*\u0010E\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00010:H\u0016J\"\u0010E\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00010:H\u0016J\u0014\u0010F\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H\u0016J\u0012\u0010G\u001a\u00020H2\b\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0015\u0010K\u001a\u00028\u00012\u0006\u0010C\u001a\u00020\u0019H\u0016¢\u0006\u0002\u0010LJ\u0015\u0010M\u001a\u00020\u00192\u0006\u0010N\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010OJ\u0010\u0010M\u001a\u00020\u00192\u0006\u0010P\u001a\u00020QH\u0016J\u0010\u0010R\u001a\u00020\u00192\u0006\u0010C\u001a\u00020\u0019H\u0016J\u0017\u0010S\u001a\u0004\u0018\u00018\u00012\u0006\u0010T\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010UJ\u001c\u0010S\u001a\b\u0012\u0004\u0012\u00028\u00010:2\f\u00109\u001a\b\u0012\u0004\u0012\u00028\u00000:H\u0016J$\u0010V\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010W\u001a\u00020\u00192\u0006\u0010X\u001a\u00020\u0019H\u0016J0\u0010Y\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00190Z2\f\u0010[\u001a\b\u0012\u0004\u0012\u00028\u00010\\2\u0006\u0010]\u001a\u00020\u0012H\u0016J\b\u0010^\u001a\u00020HH\u0016J\u001c\u0010_\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u0019H\u0016J\u001c\u0010`\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010P\u001a\u00020QH\u0016J$\u0010a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u0010b\u001a\u00020\u0019H\u0016J*\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u0010N\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010dJ\"\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000:H\u0016J+\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010e\u001a\b\u0012\u0004\u0012\u00028\u00000:2\u0006\u0010f\u001a\u00020\u0012H\u0084\u0002J5\u0010c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010e\u001a\b\u0012\u0004\u0012\u00028\u00000:2\u0006\u0010f\u001a\u00020\u00122\b\u0010g\u001a\u0004\u0018\u00010hH\u0096\u0002J)\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010C\u001a\u00020\u00192\u0006\u0010N\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010jJ4\u0010i\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00010:2\u0006\u0010f\u001a\u00020\u00122\b\u0010g\u001a\u0004\u0018\u00010hH\u0016J*\u0010k\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000:2\u0006\u0010l\u001a\u00020\u0012H\u0016R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR4\u0010 \u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010!2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010!8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R \u0010&\u001a\b\u0012\u0004\u0012\u00028\u00010'X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R7\u0010\b\u001a\u001f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0006\u0012\u0004\u0018\u00018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010\rR\u001a\u0010/\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0015\"\u0004\b0\u0010\u0017R&\u00101\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000102X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u001a\u00109\u001a\b\u0012\u0004\u0012\u00028\u00000:8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010\u001fR9\u0010<\u001a!\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\tX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010-\"\u0004\b>\u0010\r¨\u0006n"}, d2 = {"Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "Model", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "Lcom/mikepenz/fastadapter/AbstractAdapter;", "Lcom/mikepenz/fastadapter/IItemAdapter;", "interceptor", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "element", "(Lkotlin/jvm/functions/Function1;)V", "itemList", "Lcom/mikepenz/fastadapter/IItemList;", "(Lcom/mikepenz/fastadapter/IItemList;Lkotlin/jvm/functions/Function1;)V", "value", "", "active", "getActive", "()Z", "setActive", "(Z)V", "adapterItemCount", "", "getAdapterItemCount", "()I", "adapterItems", "", "getAdapterItems", "()Ljava/util/List;", "fastAdapter", "Lcom/mikepenz/fastadapter/FastAdapter;", "getFastAdapter", "()Lcom/mikepenz/fastadapter/FastAdapter;", "setFastAdapter", "(Lcom/mikepenz/fastadapter/FastAdapter;)V", "idDistributor", "Lcom/mikepenz/fastadapter/IIdDistributor;", "getIdDistributor", "()Lcom/mikepenz/fastadapter/IIdDistributor;", "setIdDistributor", "(Lcom/mikepenz/fastadapter/IIdDistributor;)V", "getInterceptor", "()Lkotlin/jvm/functions/Function1;", "setInterceptor", "isUseIdDistributor", "setUseIdDistributor", "itemFilter", "Lcom/mikepenz/fastadapter/adapters/ItemFilter;", "getItemFilter", "()Lcom/mikepenz/fastadapter/adapters/ItemFilter;", "setItemFilter", "(Lcom/mikepenz/fastadapter/adapters/ItemFilter;)V", "getItemList", "()Lcom/mikepenz/fastadapter/IItemList;", "models", "", "getModels", "reverseInterceptor", "getReverseInterceptor", "setReverseInterceptor", "add", "items", "", "([Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "position", "(I[Ljava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "addInternal", "clear", "filter", "", "constraint", "", "getAdapterItem", "(I)Lcom/mikepenz/fastadapter/IItem;", "getAdapterPosition", "item", "(Lcom/mikepenz/fastadapter/IItem;)I", "identifier", "", "getGlobalPosition", "intercept", "model", "(Ljava/lang/Object;)Lcom/mikepenz/fastadapter/IItem;", "move", "fromPosition", "toPosition", "recursive", "Lcom/mikepenz/fastadapter/utils/Triple;", "predicate", "Lcom/mikepenz/fastadapter/utils/AdapterPredicate;", "stopOnMatch", "remapMappedTypes", "remove", "removeByIdentifier", "removeRange", "itemCount", "set", "(ILjava/lang/Object;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "list", "resetFilter", "adapterNotifier", "Lcom/mikepenz/fastadapter/IAdapterNotifier;", "setInternal", "(ILcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "setNewList", "retainFilter", "Companion", "fastadapter"}, k = 1, mv = {1, 1, 16})
public class ModelAdapter<Model, Item extends IItem<? extends RecyclerView.ViewHolder>> extends AbstractAdapter<Item> implements IItemAdapter<Model, Item> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private boolean active;
    private IIdDistributor<Item> idDistributor;
    private Function1<? super Model, ? extends Item> interceptor;
    private boolean isUseIdDistributor;
    private ItemFilter<Model, Item> itemFilter;
    private final IItemList<Item> itemList;
    private Function1<? super Item, ? extends Model> reverseInterceptor;

    @JvmStatic
    public static final <Model, Item extends IItem<? extends RecyclerView.ViewHolder>> ModelAdapter<Model, Item> models(Function1<? super Model, ? extends Item> function1) {
        return INSTANCE.models(function1);
    }

    public final IItemList<Item> getItemList() {
        return this.itemList;
    }

    public final Function1<Model, Item> getInterceptor() {
        return this.interceptor;
    }

    public final void setInterceptor(Function1<? super Model, ? extends Item> function1) {
        Intrinsics.checkParameterIsNotNull(function1, "<set-?>");
        this.interceptor = function1;
    }

    public ModelAdapter(IItemList<Item> itemList, Function1<? super Model, ? extends Item> interceptor) {
        Intrinsics.checkParameterIsNotNull(itemList, "itemList");
        Intrinsics.checkParameterIsNotNull(interceptor, "interceptor");
        this.itemList = itemList;
        this.interceptor = interceptor;
        this.active = true;
        IIdDistributor<Item> iIdDistributor = (IIdDistributor<Item>) IIdDistributor.DEFAULT;
        if (iIdDistributor == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.mikepenz.fastadapter.IIdDistributor<Item>");
        }
        this.idDistributor = iIdDistributor;
        this.isUseIdDistributor = true;
        this.itemFilter = new ItemFilter<>(this);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ModelAdapter(Function1<? super Model, ? extends Item> interceptor) {
        this(new DefaultItemListImpl(null, 1, 0 == true ? 1 : 0), interceptor);
        Intrinsics.checkParameterIsNotNull(interceptor, "interceptor");
    }

    @Override // com.mikepenz.fastadapter.AbstractAdapter, com.mikepenz.fastadapter.IAdapter
    public FastAdapter<Item> getFastAdapter() {
        return super.getFastAdapter();
    }

    @Override // com.mikepenz.fastadapter.AbstractAdapter, com.mikepenz.fastadapter.IAdapter
    public void setFastAdapter(FastAdapter<Item> fastAdapter) {
        IItemList<Item> iItemList = this.itemList;
        if (iItemList instanceof DefaultItemList) {
            if (iItemList == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.mikepenz.fastadapter.utils.DefaultItemList<Item>");
            }
            ((DefaultItemList) iItemList).setFastAdapter(fastAdapter);
        }
        super.setFastAdapter(fastAdapter);
    }

    public final boolean getActive() {
        return this.active;
    }

    public final void setActive(boolean z) {
        this.active = z;
        this.itemList.setActive(z);
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.notifyAdapterDataSetChanged();
        }
    }

    public Function1<Item, Model> getReverseInterceptor() {
        return this.reverseInterceptor;
    }

    public void setReverseInterceptor(Function1<? super Item, ? extends Model> function1) {
        this.reverseInterceptor = function1;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public IIdDistributor<Item> getIdDistributor() {
        return this.idDistributor;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public void setIdDistributor(IIdDistributor<Item> iIdDistributor) {
        Intrinsics.checkParameterIsNotNull(iIdDistributor, "<set-?>");
        this.idDistributor = iIdDistributor;
    }

    /* JADX INFO: renamed from: isUseIdDistributor, reason: from getter */
    public final boolean getIsUseIdDistributor() {
        return this.isUseIdDistributor;
    }

    public final void setUseIdDistributor(boolean z) {
        this.isUseIdDistributor = z;
    }

    public ItemFilter<Model, Item> getItemFilter() {
        return this.itemFilter;
    }

    public void setItemFilter(ItemFilter<Model, Item> itemFilter) {
        Intrinsics.checkParameterIsNotNull(itemFilter, "<set-?>");
        this.itemFilter = itemFilter;
    }

    public List<Model> getModels() {
        Model modelInvoke;
        ArrayList arrayList = new ArrayList(this.itemList.size());
        for (Item item : this.itemList.getItems()) {
            if (item instanceof IModelItem) {
                Object model = ((IModelItem) item).getModel();
                if (!(model instanceof Object)) {
                    model = null;
                }
                if (model != null) {
                    arrayList.add(model);
                }
            } else if (getReverseInterceptor() != null) {
                Function1<Item, Model> reverseInterceptor = getReverseInterceptor();
                if (reverseInterceptor != null && (modelInvoke = reverseInterceptor.invoke(item)) != null) {
                    arrayList.add(modelInvoke);
                }
            } else {
                throw new RuntimeException("to get the list of models, the item either needs to implement `IModelItem` or you have to provide a `reverseInterceptor`");
            }
        }
        return arrayList;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getAdapterItemCount() {
        if (this.active) {
            return this.itemList.size();
        }
        return 0;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public List<Item> getAdapterItems() {
        return this.itemList.getItems();
    }

    public Item intercept(Model model) {
        return this.interceptor.invoke(model);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<Item> intercept(List<? extends Model> models) {
        Intrinsics.checkParameterIsNotNull(models, "models");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = models.iterator();
        while (it.hasNext()) {
            IItem iItemIntercept = intercept(it.next());
            if (iItemIntercept != null) {
                arrayList.add(iItemIntercept);
            }
        }
        return arrayList;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public void filter(CharSequence constraint) {
        getItemFilter().filter(constraint);
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getAdapterPosition(Item item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        return getAdapterPosition(item.getIdentifier());
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getAdapterPosition(long identifier) {
        return this.itemList.getAdapterPosition(identifier);
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getGlobalPosition(int position) {
        FastAdapter<Item> fastAdapter = getFastAdapter();
        return position + (fastAdapter != null ? fastAdapter.getPreItemCountByOrder(getOrder()) : 0);
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public Item getAdapterItem(int position) {
        Item item = (Item) this.itemList.get(position);
        if (item != null) {
            return item;
        }
        throw new RuntimeException("A normal ModelAdapter does not allow null items.");
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> set(List<? extends Model> items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        return set((List) items, true);
    }

    protected final ModelAdapter<Model, Item> set(List<? extends Model> list, boolean resetFilter) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        return setInternal(intercept((List) list), resetFilter, null);
    }

    public ModelAdapter<Model, Item> set(List<? extends Model> list, boolean resetFilter, IAdapterNotifier adapterNotifier) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        return setInternal(intercept((List) list), resetFilter, adapterNotifier);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ModelAdapter<Model, Item> setInternal(List<? extends Item> items, boolean resetFilter, IAdapterNotifier adapterNotifier) {
        Collection<IAdapterExtension<Item>> extensions;
        Intrinsics.checkParameterIsNotNull(items, "items");
        if (this.isUseIdDistributor) {
            getIdDistributor().checkIds(items);
        }
        if (resetFilter && getItemFilter().getConstraint() != null) {
            getItemFilter().resetFilter();
        }
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null && (extensions = fastAdapter.getExtensions()) != null) {
            Iterator<T> it = extensions.iterator();
            while (it.hasNext()) {
                ((IAdapterExtension) it.next()).set(items, resetFilter);
            }
        }
        FastAdapter<Item> fastAdapter2 = getFastAdapter();
        this.itemList.set(items, fastAdapter2 != null ? fastAdapter2.getPreItemCountByOrder(getOrder()) : 0, adapterNotifier);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> setNewList(List<? extends Model> items, boolean retainFilter) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        List<Item> listIntercept = intercept((List) items);
        if (this.isUseIdDistributor) {
            getIdDistributor().checkIds(listIntercept);
        }
        CharSequence constraint = null;
        if (getItemFilter().getConstraint() != null) {
            constraint = getItemFilter().getConstraint();
            getItemFilter().resetFilter();
        }
        boolean z = constraint != null && retainFilter;
        if (retainFilter && constraint != null) {
            getItemFilter().filterItems(constraint);
        }
        this.itemList.setNewList(listIntercept, !z);
        return this;
    }

    public void remapMappedTypes() {
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            fastAdapter.clearTypeInstance();
        }
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    @SafeVarargs
    public ModelAdapter<Model, Item> add(Model... items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        return add((List) CollectionsKt.listOf(Arrays.copyOf(items, items.length)));
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> add(List<? extends Model> items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        return addInternal((List) intercept((List) items));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> addInternal(List<? extends Item> items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        if (this.isUseIdDistributor) {
            getIdDistributor().checkIds(items);
        }
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            this.itemList.addAll(items, fastAdapter.getPreItemCountByOrder(getOrder()));
        } else {
            this.itemList.addAll(items, 0);
        }
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    @SafeVarargs
    public ModelAdapter<Model, Item> add(int position, Model... items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        return add(position, (List) CollectionsKt.listOf(Arrays.copyOf(items, items.length)));
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> add(int position, List<? extends Model> items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        return addInternal(position, (List) intercept((List) items));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> addInternal(int position, List<? extends Item> items) {
        Intrinsics.checkParameterIsNotNull(items, "items");
        if (this.isUseIdDistributor) {
            getIdDistributor().checkIds(items);
        }
        if (!items.isEmpty()) {
            IItemList<Item> iItemList = this.itemList;
            FastAdapter<Item> fastAdapter = getFastAdapter();
            iItemList.addAll(position, items, fastAdapter != null ? fastAdapter.getPreItemCountByOrder(getOrder()) : 0);
        }
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> set(int position, Model item) {
        IItem iItemIntercept = intercept(item);
        return iItemIntercept != null ? setInternal(position, iItemIntercept) : this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> setInternal(int position, Item item) {
        Intrinsics.checkParameterIsNotNull(item, "item");
        if (this.isUseIdDistributor) {
            getIdDistributor().checkId(item);
        }
        IItemList<Item> iItemList = this.itemList;
        FastAdapter<Item> fastAdapter = getFastAdapter();
        iItemList.set(position, item, fastAdapter != null ? fastAdapter.getPreItemCount(position) : 0);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> move(int fromPosition, int toPosition) {
        IItemList<Item> iItemList = this.itemList;
        FastAdapter<Item> fastAdapter = getFastAdapter();
        iItemList.move(fromPosition, toPosition, fastAdapter != null ? fastAdapter.getPreItemCount(fromPosition) : 0);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> remove(int position) {
        IItemList<Item> iItemList = this.itemList;
        FastAdapter<Item> fastAdapter = getFastAdapter();
        iItemList.remove(position, fastAdapter != null ? fastAdapter.getPreItemCount(position) : 0);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> removeRange(int position, int itemCount) {
        IItemList<Item> iItemList = this.itemList;
        FastAdapter<Item> fastAdapter = getFastAdapter();
        iItemList.removeRange(position, itemCount, fastAdapter != null ? fastAdapter.getPreItemCount(position) : 0);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> clear() {
        IItemList<Item> iItemList = this.itemList;
        FastAdapter<Item> fastAdapter = getFastAdapter();
        iItemList.clear(fastAdapter != null ? fastAdapter.getPreItemCountByOrder(getOrder()) : 0);
        return this;
    }

    public ModelAdapter<Model, Item> removeByIdentifier(final long identifier) {
        recursive((AdapterPredicate) new AdapterPredicate<Item>() { // from class: com.mikepenz.fastadapter.adapters.ModelAdapter.removeByIdentifier.1
            @Override // com.mikepenz.fastadapter.utils.AdapterPredicate
            public boolean apply(IAdapter<Item> lastParentAdapter, int lastParentPosition, Item item, int position) {
                IParentItem<?> parent;
                List<ISubItem<?>> subItems;
                Intrinsics.checkParameterIsNotNull(lastParentAdapter, "lastParentAdapter");
                Intrinsics.checkParameterIsNotNull(item, "item");
                if (identifier != item.getIdentifier()) {
                    return false;
                }
                IExpandable iExpandable = (IExpandable) (!(item instanceof IExpandable) ? null : item);
                if (iExpandable != null && (parent = iExpandable.getParent()) != null && (subItems = parent.getSubItems()) != null) {
                    subItems.remove(item);
                }
                if (position == -1) {
                    return false;
                }
                ModelAdapter.this.remove(position);
                return false;
            }
        }, false);
        return this;
    }

    public Triple<Boolean, Item, Integer> recursive(AdapterPredicate<Item> predicate, boolean stopOnMatch) {
        IAdapter<Item> adapter;
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        FastAdapter<Item> fastAdapter = getFastAdapter();
        if (fastAdapter != null) {
            int preItemCountByOrder = fastAdapter.getPreItemCountByOrder(getOrder());
            int adapterItemCount = getAdapterItemCount();
            for (int i = 0; i < adapterItemCount; i++) {
                int i2 = i + preItemCountByOrder;
                FastAdapter.RelativeInfo<Item> relativeInfo = fastAdapter.getRelativeInfo(i2);
                IItem item = relativeInfo.getItem();
                if (item != null) {
                    IAdapter<Item> adapter2 = relativeInfo.getAdapter();
                    if (adapter2 != null && predicate.apply(adapter2, i2, item, i2) && stopOnMatch) {
                        return new Triple<>(true, item, Integer.valueOf(i2));
                    }
                    if (!(item instanceof IExpandable)) {
                        item = null;
                    }
                    IExpandable<?> iExpandable = (IExpandable) item;
                    if (iExpandable != null && (adapter = relativeInfo.getAdapter()) != null) {
                        Triple<Boolean, Item, Integer> tripleRecursiveSub = FastAdapter.INSTANCE.recursiveSub(adapter, i2, iExpandable, predicate, stopOnMatch);
                        if (tripleRecursiveSub.getFirst().booleanValue() && stopOnMatch) {
                            return tripleRecursiveSub;
                        }
                    }
                }
            }
        }
        return new Triple<>(false, null, null);
    }

    /* JADX INFO: compiled from: ModelAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JU\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0004\b\u0002\u0010\u0005\"\u0014\b\u0003\u0010\u0006*\u000e\u0012\u0006\b\u0001\u0012\u00020\b0\u0007j\u0002`\t2#\u0010\n\u001a\u001f\u0012\u0013\u0012\u0011H\u0005¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u000bH\u0007¨\u0006\u000f"}, d2 = {"Lcom/mikepenz/fastadapter/adapters/ModelAdapter$Companion;", "", "()V", "models", "Lcom/mikepenz/fastadapter/adapters/ModelAdapter;", "Model", "Item", "Lcom/mikepenz/fastadapter/IItem;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/mikepenz/fastadapter/GenericItem;", "interceptor", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "element", "fastadapter"}, k = 1, mv = {1, 1, 16})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final <Model, Item extends IItem<? extends RecyclerView.ViewHolder>> ModelAdapter<Model, Item> models(Function1<? super Model, ? extends Item> interceptor) {
            Intrinsics.checkParameterIsNotNull(interceptor, "interceptor");
            return new ModelAdapter<>(interceptor);
        }
    }
}
