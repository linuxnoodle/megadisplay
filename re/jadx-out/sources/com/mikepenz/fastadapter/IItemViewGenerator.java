package com.mikepenz.fastadapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;

/* JADX INFO: compiled from: IItemViewGenerator.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/mikepenz/fastadapter/IItemViewGenerator;", "", "generateView", "Landroid/view/View;", "ctx", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "fastadapter"}, k = 1, mv = {1, 1, 16})
public interface IItemViewGenerator {
    View generateView(Context ctx);

    View generateView(Context ctx, ViewGroup parent);
}
