package de.mrapp.android.dialog.adapter;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.util.ThemeUtil;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ArrayRecyclerViewAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final int[] iconResourceIds;
    private ColorStateList itemColor;
    private ColorStateList itemTintList;
    private PorterDuff.Mode itemTintMode = PorterDuff.Mode.SRC_ATOP;
    private Typeface itemTypeface;
    private final CharSequence[] items;
    private final int layoutResourceId;

    public static class ViewHolder extends RecyclerView.ViewHolder {
        private final ImageView imageView;
        private final TextView textView;

        public ViewHolder(View view) {
            super(view);
            View viewFindViewById = view.findViewById(R.id.text1);
            this.textView = viewFindViewById instanceof TextView ? (TextView) viewFindViewById : view instanceof TextView ? (TextView) view : null;
            View viewFindViewById2 = view.findViewById(R.id.icon);
            this.imageView = viewFindViewById2 instanceof ImageView ? (ImageView) viewFindViewById2 : null;
        }
    }

    private void adaptPadding(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        Resources resources = view.getContext().getResources();
        view.setPadding(resources.getDimensionPixelSize(de.mrapp.android.dialog.R.dimen.dialog_left_padding), view.getPaddingTop(), resources.getDimensionPixelSize(de.mrapp.android.dialog.R.dimen.dialog_right_padding), view.getPaddingBottom());
    }

    private void adaptText(ViewHolder viewHolder, int i) {
        TextView textView = viewHolder.textView;
        if (textView != null) {
            textView.setText(this.items[i]);
            if (getItemColor() != null) {
                textView.setTextColor(getItemColor());
            }
            if (getItemTypeface() != null) {
                textView.setTypeface(getItemTypeface());
            }
        }
    }

    private void adaptIcon(ViewHolder viewHolder, int i) {
        if (this.iconResourceIds != null) {
            ImageView imageView = viewHolder.imageView;
            if (imageView == null) {
                TextView textView = viewHolder.textView;
                if (textView != null) {
                    Context context = textView.getContext();
                    textView.setCompoundDrawablePadding(ThemeUtil.getDimensionPixelSize(context, R.attr.listPreferredItemPaddingLeft));
                    textView.setCompoundDrawablesWithIntrinsicBounds(getIcon(context, i), (Drawable) null, (Drawable) null, (Drawable) null);
                    return;
                }
                return;
            }
            imageView.setImageDrawable(getIcon(imageView.getContext(), i));
        }
    }

    private Drawable getIcon(Context context, int i) {
        Drawable drawable = ActivityCompat.getDrawable(context, this.iconResourceIds[i]);
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, this.itemTintList);
            DrawableCompat.setTintMode(drawable, this.itemTintMode);
        }
        return drawable;
    }

    public ArrayRecyclerViewAdapter(int i, CharSequence[] charSequenceArr, int[] iArr) {
        Condition.INSTANCE.ensureNotNull(charSequenceArr, "The array may not be null");
        Condition.INSTANCE.ensureTrue(iArr == null || charSequenceArr.length == iArr.length, "Invalid number of icon resource ids given");
        this.layoutResourceId = i;
        this.items = charSequenceArr;
        this.iconResourceIds = iArr;
        this.itemColor = null;
        this.itemTypeface = null;
    }

    public final ColorStateList getItemColor() {
        return this.itemColor;
    }

    public final void setItemColor(ColorStateList colorStateList) {
        this.itemColor = colorStateList;
        notifyDataSetChanged();
    }

    public final Typeface getItemTypeface() {
        return this.itemTypeface;
    }

    public void setItemTypeface(Typeface typeface) {
        Condition.INSTANCE.ensureNotNull(typeface, "The typeface may not be null");
        this.itemTypeface = typeface;
        notifyDataSetChanged();
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.itemTintList = colorStateList;
        notifyDataSetChanged();
    }

    public void setItemIconTintMode(PorterDuff.Mode mode) {
        Condition.INSTANCE.ensureNotNull(mode, "The tint mode may not be null");
        this.itemTintMode = mode;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: getItemCount */
    public final int getGlobalSize() {
        return this.items.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(this.layoutResourceId, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        adaptPadding(viewHolder);
        adaptText(viewHolder, i);
        adaptIcon(viewHolder, i);
    }
}
