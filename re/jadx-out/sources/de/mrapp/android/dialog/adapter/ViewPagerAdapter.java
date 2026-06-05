package de.mrapp.android.dialog.adapter;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import de.mrapp.android.dialog.datastructure.ViewPagerItem;
import de.mrapp.util.Condition;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ViewPagerAdapter extends FragmentPagerAdapter {
    private final Context context;
    private final List<ViewPagerItem> items;

    public ViewPagerAdapter(Context context, FragmentManager fragmentManager, List<ViewPagerItem> list) {
        super(fragmentManager);
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(fragmentManager, "The fragment manager may not be null");
        Condition.INSTANCE.ensureNotNull(list, "The list may not be null");
        this.context = context;
        this.items = list;
    }

    public final void addItem(CharSequence charSequence, Class<? extends Fragment> cls, Bundle bundle) {
        Condition.INSTANCE.ensureNotNull(cls, "The fragment class may not be null");
        this.items.add(new ViewPagerItem(charSequence, cls, bundle));
        notifyDataSetChanged();
    }

    public final void removeItem(int i) {
        this.items.remove(i);
        notifyDataSetChanged();
    }

    public final void clear() {
        this.items.clear();
        notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public final Fragment getItem(int i) {
        ViewPagerItem viewPagerItem = this.items.get(i);
        Class<? extends Fragment> fragmentClass = viewPagerItem.getFragmentClass();
        return Fragment.instantiate(this.context, fragmentClass.getName(), viewPagerItem.getArguments());
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return this.items.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final CharSequence getPageTitle(int i) {
        return this.items.get(i).getTitle();
    }
}
