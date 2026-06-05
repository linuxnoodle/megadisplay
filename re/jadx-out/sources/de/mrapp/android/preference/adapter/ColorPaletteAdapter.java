package de.mrapp.android.preference.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import de.mrapp.android.preference.AbstractColorPickerPreference;
import de.mrapp.android.preference.multithreading.ColorPreviewDataBinder;
import de.mrapp.android.preference.view.ColorPaletteItem;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class ColorPaletteAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final int[] colorPalette;
    private final ColorPreviewDataBinder previewLoader;

    public static class ViewHolder extends RecyclerView.ViewHolder {
        public ViewHolder(ColorPaletteItem colorPaletteItem) {
            super(colorPaletteItem);
        }
    }

    public ColorPaletteAdapter(Context context, int[] iArr, int i, AbstractColorPickerPreference.PreviewShape previewShape, int i2, int i3, Drawable drawable) {
        Condition.INSTANCE.ensureNotNull(context, "The context may not be null");
        Condition.INSTANCE.ensureNotNull(iArr, "The color palette may not be null");
        Condition.INSTANCE.ensureAtLeast(i, 1, "The preview size must be at least 1");
        Condition.INSTANCE.ensureNotNull(previewShape, "The preview shape may not be null");
        Condition.INSTANCE.ensureAtLeast(i2, 0, "The border width must be at least 0");
        this.colorPalette = iArr;
        this.previewLoader = new ColorPreviewDataBinder(context, drawable, previewShape, i, i2, i3);
    }

    public final int indexOf(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = this.colorPalette;
            if (i2 >= iArr.length) {
                return -1;
            }
            if (iArr[i2] == i) {
                return i2;
            }
            i2++;
        }
    }

    public final int getItem(int i) {
        return this.colorPalette[i];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(new ColorPaletteItem(viewGroup.getContext()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        this.previewLoader.load(Integer.valueOf(this.colorPalette[i]), ((ColorPaletteItem) viewHolder.itemView).getColorView(), new Void[0]);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: getItemCount */
    public final int getGlobalSize() {
        return this.colorPalette.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return this.colorPalette[i];
    }
}
