package com.mikepenz.aboutlibraries;

import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: compiled from: LibTaskCallback.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, d2 = {"Lcom/mikepenz/aboutlibraries/LibTaskCallback;", "Ljava/io/Serializable;", "onLibTaskFinished", "", "itemAdapter", "Lcom/mikepenz/fastadapter/adapters/ItemAdapter;", "onLibTaskStarted", "aboutlibraries"}, k = 1, mv = {1, 1, 16})
public interface LibTaskCallback extends Serializable {
    void onLibTaskFinished(ItemAdapter<?> itemAdapter);

    void onLibTaskStarted();
}
