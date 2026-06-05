package de.mrapp.android.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import de.mrapp.android.util.BitmapUtil;
import de.mrapp.android.util.ViewUtil;
import de.mrapp.util.Condition;
import de.mrapp.util.datastructure.ListenerList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class Chip extends FrameLayout {
    private boolean closable;
    private ImageButton closeButton;
    private int color;
    private ImageView imageView;
    private ListenerList<CloseListener> listeners;
    private TextView textView;

    public interface CloseListener {
        void onChipClosed(Chip chip);
    }

    private void initialize(AttributeSet attributeSet) {
        this.listeners = new ListenerList<>();
        inflateLayout();
        ViewUtil.setBackground(this, ContextCompat.getDrawable(getContext(), R.drawable.chip_background));
        obtainStyledAttributes(attributeSet);
    }

    private void inflateLayout() {
        View viewInflate = View.inflate(getContext(), R.layout.chip, null);
        this.imageView = (ImageView) viewInflate.findViewById(android.R.id.icon);
        this.textView = (TextView) viewInflate.findViewById(android.R.id.text1);
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(android.R.id.closeButton);
        this.closeButton = imageButton;
        imageButton.setOnClickListener(createCloseButtonListener());
        addView(viewInflate, -2, getResources().getDimensionPixelSize(R.dimen.chip_height));
    }

    private View.OnClickListener createCloseButtonListener() {
        return new View.OnClickListener() { // from class: de.mrapp.android.view.Chip.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Chip.this.notifyOnChipClosed();
            }
        };
    }

    private void obtainStyledAttributes(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.Chip);
        try {
            obtainText(typedArrayObtainStyledAttributes);
            obtainTextColor(typedArrayObtainStyledAttributes);
            obtainColor(typedArrayObtainStyledAttributes);
            obtainIcon(typedArrayObtainStyledAttributes);
            obtainClosable(typedArrayObtainStyledAttributes);
            obtainCloseIcon(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainText(TypedArray typedArray) {
        setText(typedArray.getText(R.styleable.Chip_android_text));
    }

    private void obtainTextColor(TypedArray typedArray) {
        setTextColor(typedArray.getColor(R.styleable.Chip_android_textColor, ContextCompat.getColor(getContext(), R.color.chip_text_color_light)));
    }

    private void obtainColor(TypedArray typedArray) {
        setColor(typedArray.getColor(R.styleable.Chip_android_color, ContextCompat.getColor(getContext(), R.color.chip_color_light)));
    }

    private void obtainIcon(TypedArray typedArray) {
        setIcon(typedArray.getDrawable(R.styleable.Chip_android_icon));
    }

    private void obtainClosable(TypedArray typedArray) {
        setClosable(typedArray.getBoolean(R.styleable.Chip_closable, false));
    }

    private void obtainCloseIcon(TypedArray typedArray) {
        Drawable drawable = typedArray.getDrawable(R.styleable.Chip_closeButtonIcon);
        if (drawable != null) {
            setCloseButtonIcon(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOnChipClosed() {
        Iterator<CloseListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onChipClosed(this);
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(attributeSet);
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet);
    }

    public Chip(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize(attributeSet);
    }

    public final void addCloseListener(CloseListener closeListener) {
        Condition.INSTANCE.ensureNotNull(closeListener, "The listener may not be null");
        this.listeners.add(closeListener);
    }

    public final void removeCloseListener(CloseListener closeListener) {
        Condition.INSTANCE.ensureNotNull(closeListener, "The listener may not be null");
        this.listeners.remove(closeListener);
    }

    public final CharSequence getText() {
        return this.textView.getText();
    }

    public final void setText(int i) {
        setText(getContext().getText(i));
    }

    public final void setText(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public final void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public final void setTextColorResource(int i) {
        setTextColor(ContextCompat.getColor(getContext(), i));
    }

    public final int getTextColor() {
        return this.textView.getCurrentTextColor();
    }

    public final void setColor(int i) {
        this.color = i;
        getBackground().setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    public final void setColorResource(int i) {
        setColor(ContextCompat.getColor(getContext(), i));
    }

    public final int getColor() {
        return this.color;
    }

    public final void setIcon(Drawable drawable) {
        setIcon(drawable != null ? BitmapUtil.drawableToBitmap(drawable) : null);
    }

    public final void setIcon(Bitmap bitmap) {
        if (bitmap != null) {
            this.imageView.setImageBitmap(BitmapUtil.clipCircle(bitmap, getResources().getDimensionPixelSize(R.dimen.chip_height)));
            this.imageView.setVisibility(0);
            TextView textView = this.textView;
            textView.setPadding(0, textView.getPaddingTop(), this.textView.getPaddingRight(), this.textView.getPaddingBottom());
            return;
        }
        this.imageView.setImageBitmap(null);
        this.imageView.setVisibility(8);
        this.textView.setPadding(getResources().getDimensionPixelSize(R.dimen.chip_horizontal_padding), this.textView.getPaddingTop(), this.textView.getPaddingRight(), this.textView.getPaddingBottom());
    }

    public final Drawable getIcon() {
        return this.imageView.getDrawable();
    }

    public final boolean isClosable() {
        return this.closable;
    }

    public final void setClosable(boolean z) {
        this.closable = z;
        if (z) {
            this.closeButton.setVisibility(0);
            TextView textView = this.textView;
            textView.setPadding(textView.getPaddingLeft(), this.textView.getPaddingTop(), 0, this.textView.getPaddingBottom());
        } else {
            this.closeButton.setVisibility(8);
            TextView textView2 = this.textView;
            textView2.setPadding(textView2.getPaddingLeft(), this.textView.getPaddingTop(), getResources().getDimensionPixelSize(R.dimen.chip_horizontal_padding), this.textView.getPaddingBottom());
        }
    }

    public final Drawable getCloseButtonIcon() {
        if (this.closable) {
            return this.closeButton.getDrawable();
        }
        return null;
    }

    public final void setCloseButtonIcon(Drawable drawable) {
        Condition.INSTANCE.ensureNotNull(drawable, "The icon may not be null");
        this.closeButton.setImageDrawable(drawable);
    }

    public final void setCloseButtonIcon(Bitmap bitmap) {
        Condition.INSTANCE.ensureNotNull(bitmap, "The icon may not be null");
        this.closeButton.setImageBitmap(bitmap);
    }
}
