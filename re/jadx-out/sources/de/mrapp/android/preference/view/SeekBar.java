package de.mrapp.android.preference.view;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatSeekBar;
import de.mrapp.android.preference.R;
import de.mrapp.android.util.ThemeUtil;

/* JADX INFO: loaded from: classes2.dex */
public class SeekBar extends AppCompatSeekBar {
    private int seekBarColor;
    private Drawable thumb;

    private void applyTheme() {
        setSeekBarColor(ThemeUtil.getColor(getContext(), R.attr.colorAccent));
    }

    public SeekBar(Context context) {
        super(context);
        applyTheme();
    }

    public SeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        applyTheme();
    }

    public SeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        applyTheme();
    }

    public final int getSeekBarColor() {
        return this.seekBarColor;
    }

    public final void setSeekBarColor(int i) {
        this.seekBarColor = i;
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN);
        getProgressDrawable().setColorFilter(porterDuffColorFilter);
        getThumbDrawable().setColorFilter(porterDuffColorFilter);
    }

    public final Drawable getThumbDrawable() {
        return this.thumb;
    }

    @Override // android.widget.AbsSeekBar
    public final void setThumb(Drawable drawable) {
        super.setThumb(drawable);
        this.thumb = drawable;
    }
}
