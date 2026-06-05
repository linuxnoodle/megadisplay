package de.mrapp.android.util.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import de.mrapp.android.util.R;
import de.mrapp.util.Condition;

/* JADX INFO: loaded from: classes2.dex */
public class SquareImageView extends AppCompatImageView {
    private Edge scaledEdge;

    public enum Edge {
        HORIZONTAL(0),
        VERTICAL(1);

        private final int value;

        Edge(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }

        public static Edge fromValue(int i) {
            for (Edge edge : values()) {
                if (edge.getValue() == i) {
                    return edge;
                }
            }
            throw new IllegalArgumentException("Invalid enum value: " + i);
        }
    }

    private void initialize(AttributeSet attributeSet, int i) {
        obtainStyledAttributes(attributeSet, i);
    }

    private void obtainStyledAttributes(AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SquareImageView, 0, i);
        try {
            obtainScaledEdge(typedArrayObtainStyledAttributes);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void obtainScaledEdge(TypedArray typedArray) {
        setScaledEdge(Edge.fromValue(typedArray.getInt(R.styleable.SquareImageView_scaledEdge, Edge.VERTICAL.getValue())));
    }

    public SquareImageView(Context context) {
        this(context, null);
    }

    public SquareImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SquareImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(attributeSet, i);
    }

    public Edge getScaledEdge() {
        return this.scaledEdge;
    }

    public final void setScaledEdge(Edge edge) {
        Condition.INSTANCE.ensureNotNull(edge, "The edge may not be null");
        this.scaledEdge = edge;
        requestLayout();
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getScaledEdge() == Edge.VERTICAL) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
        } else {
            setMeasuredDimension(getMeasuredHeight(), getMeasuredHeight());
        }
    }
}
