package de.mrapp.android.preference.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import de.mrapp.android.preference.R;

/* JADX INFO: loaded from: classes2.dex */
public class ColorPaletteItem extends FrameLayout implements Checkable {
    private boolean checked;
    private ImageView colorView;
    private View selectionView;

    private void initialize() {
        LayoutInflater.from(getContext()).inflate(R.layout.color_palette_item, (ViewGroup) this, true);
        this.colorView = (ImageView) findViewById(R.id.color_view);
        this.selectionView = findViewById(R.id.selection_view);
        adaptSelectionView();
    }

    private void adaptSelectionView() {
        View view = this.selectionView;
        if (view != null) {
            view.setActivated(this.checked);
        }
    }

    public ColorPaletteItem(Context context) {
        this(context, null);
    }

    public ColorPaletteItem(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorPaletteItem(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize();
    }

    public ColorPaletteItem(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize();
    }

    public final ImageView getColorView() {
        return this.colorView;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        this.checked = z;
        adaptSelectionView();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.checked;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }
}
