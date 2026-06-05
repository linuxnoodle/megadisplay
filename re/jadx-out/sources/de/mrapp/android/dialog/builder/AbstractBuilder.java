package de.mrapp.android.dialog.builder;

import android.content.Context;
import de.mrapp.android.dialog.builder.AbstractBuilder;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractBuilder<Type, BuilderType extends AbstractBuilder<Type, ?>> {
    private Context context;
    private Type product;

    protected abstract Type onCreateProduct();

    /* JADX WARN: Multi-variable type inference failed */
    protected final BuilderType self() {
        return this;
    }

    protected final Type getProduct() {
        if (this.product == null) {
            this.product = onCreateProduct();
        }
        return this.product;
    }

    protected final void setContext(Context context) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        this.context = context;
    }

    public AbstractBuilder(Context context) {
        setContext(context);
    }

    public final Context getContext() {
        return this.context;
    }

    public final Type create() {
        return getProduct();
    }
}
