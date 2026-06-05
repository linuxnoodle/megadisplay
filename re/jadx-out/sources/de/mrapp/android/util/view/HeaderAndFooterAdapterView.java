package de.mrapp.android.util.view;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface HeaderAndFooterAdapterView {
    void addFooterView(View view);

    void addHeaderView(View view);

    View getFooterView(int i);

    int getFooterViewsCount();

    View getHeaderView(int i);

    int getHeaderViewsCount();

    void removeAllFooterViews();

    void removeAllHeaderViews();

    View removeFooterView(int i);

    void removeFooterView(View view);

    View removeHeaderView(int i);

    void removeHeaderView(View view);
}
