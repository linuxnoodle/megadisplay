package com.kelocube.mirrorclient;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NoVideoHint.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0002\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\nH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/kelocube/mirrorclient/NoVideoHint;", "", "layout", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "anim", "Landroid/view/animation/AlphaAnimation;", "handler", "Landroid/os/Handler;", "haveVideo", "", "Ljava/lang/Boolean;", "onTimeout", "Ljava/lang/Runnable;", "view", "Landroid/view/View;", "", "setHaveVideo", "showHint", "show", "app_release"}, k = 1, mv = {1, 9, 0}, xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NoVideoHint {
    private final AlphaAnimation anim;
    private final Handler handler;
    private Boolean haveVideo;
    private final ViewGroup layout;
    private final Runnable onTimeout;
    private View view;

    public NoVideoHint(ViewGroup layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        this.layout = layout;
        this.handler = new Handler();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(TransportListenerKt.MS_DELAY_USB_CONNECT);
        alphaAnimation.setFillAfter(true);
        this.anim = alphaAnimation;
        this.onTimeout = new Runnable() { // from class: com.kelocube.mirrorclient.NoVideoHint$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NoVideoHint.onTimeout$lambda$1(this.f$0);
            }
        };
        setHaveVideo(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTimeout$lambda$1(NoVideoHint this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showHint(true);
    }

    private final void showHint(boolean show) {
        if (show) {
            if (this.view == null) {
                View viewInflate = LayoutInflater.from(this.layout.getContext()).inflate(R.layout.layout_no_video, this.layout, false);
                this.view = viewInflate;
                this.layout.addView(viewInflate);
            }
            View view = this.view;
            if (view != null) {
                view.setVisibility(0);
                view.bringToFront();
                view.startAnimation(this.anim);
                return;
            }
            return;
        }
        View view2 = this.view;
        if (view2 != null) {
            view2.setAnimation(null);
            view2.setVisibility(4);
        }
    }

    public final void layout() {
        View view = this.view;
        if (view != null) {
            view.bringToFront();
        }
    }

    public final void setHaveVideo(boolean haveVideo) {
        if (Intrinsics.areEqual(Boolean.valueOf(haveVideo), this.haveVideo)) {
            return;
        }
        this.haveVideo = Boolean.valueOf(haveVideo);
        if (haveVideo) {
            this.handler.removeCallbacks(this.onTimeout);
            showHint(false);
        } else {
            this.handler.postDelayed(this.onTimeout, TransportListenerKt.MS_DELAY_USB_CONNECT);
        }
    }
}
