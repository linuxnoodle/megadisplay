package de.mrapp.android.dialog.view;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class Divider extends View {
    private boolean visibleByDefault;

    private void initialize() {
        this.visibleByDefault = false;
        setTag(true);
    }

    private Animator.AnimatorListener createVisibilityAnimationListener(final boolean z) {
        return new AnimatorListenerAdapter() { // from class: de.mrapp.android.dialog.view.Divider.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                if (z) {
                    Divider.super.setVisibility(0);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (z) {
                    return;
                }
                Divider.super.setVisibility(4);
            }
        };
    }

    public Divider(Context context) {
        this(context, null);
    }

    public Divider(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize();
    }

    public Divider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize();
    }

    public Divider(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initialize();
    }

    public final boolean isVisibleByDefault() {
        return this.visibleByDefault;
    }

    public final void setVisibleByDefault(boolean z) {
        this.visibleByDefault = z;
    }

    public final void setVisibility(int i, boolean z) {
        boolean z2 = i == 0;
        Boolean bool = (Boolean) getTag();
        setTag(Boolean.valueOf(z2));
        if (z) {
            if (bool == null || bool.booleanValue() != z2) {
                if (getAnimation() != null) {
                    getAnimation().cancel();
                }
                animate().alpha(z2 ? 1.0f : 0.0f).setDuration(getResources().getInteger(R.integer.config_mediumAnimTime)).setListener(createVisibilityAnimationListener(z2)).start();
                return;
            }
            return;
        }
        super.setVisibility(z2 ? 0 : 4);
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        setVisibility(i, false);
    }
}
