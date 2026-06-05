package de.mrapp.android.dialog.decorator;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import de.mrapp.android.dialog.animation.CircleRevealAnimation;
import de.mrapp.android.dialog.animation.DialogAnimation;
import de.mrapp.android.dialog.animation.FadeAnimation;
import de.mrapp.android.dialog.animation.RectangleRevealAnimation;
import de.mrapp.android.dialog.model.HeaderDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AnimateableDialogDecorator extends AbstractDialogDecorator<HeaderDialog> implements de.mrapp.android.dialog.model.AnimateableDialogDecorator {
    private DialogAnimation cancelAnimation;
    private DialogAnimation dismissAnimation;
    private boolean hidden;
    private DialogAnimation showAnimation;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    private ViewPropertyAnimator createAnimator(View view, FadeAnimation fadeAnimation, Animator.AnimatorListener animatorListener, boolean z) {
        if (fadeAnimation.getAlpha() == null) {
            return null;
        }
        ViewPropertyAnimator listener = view.animate().setInterpolator(fadeAnimation.getInterpolator()).setDuration(getDuration(view, fadeAnimation)).setStartDelay(fadeAnimation.getStartDelay()).setListener(animatorListener);
        if (z) {
            view.setAlpha(fadeAnimation.getAlpha().floatValue());
            listener.alpha(1.0f);
        } else {
            view.setAlpha(1.0f);
            listener.alpha(fadeAnimation.getAlpha().floatValue());
        }
        return listener;
    }

    private ViewPropertyAnimator createAnimator(View view, RectangleRevealAnimation rectangleRevealAnimation, Animator.AnimatorListener animatorListener) {
        if (rectangleRevealAnimation.getX() == null && rectangleRevealAnimation.getY() == null && rectangleRevealAnimation.getWidth() == null && rectangleRevealAnimation.getHeight() == null && rectangleRevealAnimation.getAlpha() == null) {
            return null;
        }
        return view.animate().setInterpolator(rectangleRevealAnimation.getInterpolator()).setDuration(getDuration(view, rectangleRevealAnimation)).setStartDelay(rectangleRevealAnimation.getStartDelay()).setListener(animatorListener);
    }

    private void configureShowAnimator(View view, RectangleRevealAnimation rectangleRevealAnimation, ViewPropertyAnimator viewPropertyAnimator) {
        int windowInsetLeft = ((HeaderDialog) getDialog()).getWindowInsetLeft() + ((HeaderDialog) getDialog()).getWindowInsetRight();
        int windowInsetTop = ((HeaderDialog) getDialog()).getWindowInsetTop() + ((HeaderDialog) getDialog()).getWindowInsetBottom();
        float fIntValue = rectangleRevealAnimation.getX() != null ? (rectangleRevealAnimation.getX().intValue() - view.getLeft()) - windowInsetLeft : 0.0f;
        float fIntValue2 = rectangleRevealAnimation.getY() != null ? (rectangleRevealAnimation.getY().intValue() - view.getTop()) - windowInsetTop : 0.0f;
        if (rectangleRevealAnimation.getWidth() != null) {
            fIntValue -= (r5 - rectangleRevealAnimation.getWidth().intValue()) / 2.0f;
            view.setScaleX(rectangleRevealAnimation.getWidth().intValue() / (view.getWidth() - windowInsetLeft));
            viewPropertyAnimator.scaleX(1.0f);
        }
        if (rectangleRevealAnimation.getHeight() != null) {
            fIntValue2 -= (r0 - rectangleRevealAnimation.getHeight().intValue()) / 2.0f;
            view.setScaleY(rectangleRevealAnimation.getHeight().intValue() / (view.getHeight() - windowInsetTop));
            viewPropertyAnimator.scaleY(1.0f);
        }
        if (rectangleRevealAnimation.getAlpha() != null) {
            view.setAlpha(rectangleRevealAnimation.getAlpha().floatValue());
            viewPropertyAnimator.alpha(1.0f);
        }
        if (fIntValue != 0.0f) {
            view.setTranslationX(fIntValue);
            viewPropertyAnimator.translationX(0.0f);
        }
        if (fIntValue2 != 0.0f) {
            view.setTranslationY(fIntValue2);
            viewPropertyAnimator.translationY(0.0f);
        }
    }

    private void configureHideAnimator(View view, RectangleRevealAnimation rectangleRevealAnimation, ViewPropertyAnimator viewPropertyAnimator) {
        int windowInsetLeft = ((HeaderDialog) getDialog()).getWindowInsetLeft() + ((HeaderDialog) getDialog()).getWindowInsetRight();
        int windowInsetTop = ((HeaderDialog) getDialog()).getWindowInsetTop() + ((HeaderDialog) getDialog()).getWindowInsetBottom();
        float fIntValue = rectangleRevealAnimation.getX() != null ? (rectangleRevealAnimation.getX().intValue() - view.getLeft()) - windowInsetLeft : 0.0f;
        float fIntValue2 = rectangleRevealAnimation.getY() != null ? (rectangleRevealAnimation.getY().intValue() - view.getTop()) - windowInsetTop : 0.0f;
        if (rectangleRevealAnimation.getWidth() != null) {
            fIntValue -= (r5 - rectangleRevealAnimation.getWidth().intValue()) / 2.0f;
            viewPropertyAnimator.scaleX(rectangleRevealAnimation.getWidth().intValue() / (view.getWidth() - windowInsetLeft));
        }
        if (rectangleRevealAnimation.getHeight() != null) {
            fIntValue2 -= (r8 - rectangleRevealAnimation.getHeight().intValue()) / 2.0f;
            viewPropertyAnimator.scaleY(rectangleRevealAnimation.getHeight().intValue() / (view.getHeight() - windowInsetTop));
        }
        if (rectangleRevealAnimation.getAlpha() != null) {
            viewPropertyAnimator.alpha(rectangleRevealAnimation.getAlpha().floatValue());
        }
        if (fIntValue != 0.0f) {
            viewPropertyAnimator.translationX(fIntValue);
        }
        if (fIntValue2 != 0.0f) {
            viewPropertyAnimator.translationY(fIntValue2);
        }
    }

    private Animator createAnimator(View view, View view2, CircleRevealAnimation circleRevealAnimation, Animator.AnimatorListener animatorListener, boolean z) {
        long duration = getDuration(view, circleRevealAnimation);
        float fSqrt = (float) Math.sqrt(Math.pow(Math.max(Math.abs(view2.getLeft() - circleRevealAnimation.getX()), Math.abs(view2.getRight() - circleRevealAnimation.getX())), 2.0d) + Math.pow(Math.max(Math.abs(view2.getTop() - circleRevealAnimation.getY()), Math.abs(view2.getBottom() - circleRevealAnimation.getY())), 2.0d));
        int x = circleRevealAnimation.getX();
        int y = circleRevealAnimation.getY();
        float radius = z ? circleRevealAnimation.getRadius() : fSqrt;
        if (!z) {
            fSqrt = circleRevealAnimation.getRadius();
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, x, y, radius, fSqrt);
        animatorCreateCircularReveal.setInterpolator(circleRevealAnimation.getInterpolator());
        animatorCreateCircularReveal.setStartDelay(circleRevealAnimation.getStartDelay());
        animatorCreateCircularReveal.setDuration(duration);
        if (animatorListener != null) {
            animatorCreateCircularReveal.addListener(animatorListener);
        }
        if (circleRevealAnimation.getAlpha() == null) {
            return animatorCreateCircularReveal;
        }
        float[] fArr = new float[2];
        fArr[0] = z ? circleRevealAnimation.getAlpha().floatValue() : 1.0f;
        fArr[1] = z ? 1.0f : circleRevealAnimation.getAlpha().floatValue();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", fArr);
        objectAnimatorOfFloat.setInterpolator(circleRevealAnimation.getInterpolator());
        objectAnimatorOfFloat.setStartDelay(circleRevealAnimation.getStartDelay());
        objectAnimatorOfFloat.setDuration(duration);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animatorCreateCircularReveal, objectAnimatorOfFloat);
        return animatorSet;
    }

    private long getDuration(View view, DialogAnimation dialogAnimation) {
        double dCurrentTimeMillis;
        if (view.getAnimation() != null) {
            dCurrentTimeMillis = (System.currentTimeMillis() - view.getAnimation().getStartTime()) / view.getAnimation().getDuration();
            view.getAnimation().cancel();
        } else {
            dCurrentTimeMillis = 1.0d;
        }
        return Math.round(dialogAnimation.getDuration() * dCurrentTimeMillis);
    }

    private Animator.AnimatorListener createHideAnimationListener(final View view, final Animator.AnimatorListener animatorListener) {
        return new Animator.AnimatorListener() { // from class: de.mrapp.android.dialog.decorator.AnimateableDialogDecorator.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationStart(animator);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationEnd(animator);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationCancel(animator);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                Animator.AnimatorListener animatorListener2 = animatorListener;
                if (animatorListener2 != null) {
                    animatorListener2.onAnimationRepeat(animator);
                }
            }
        };
    }

    public AnimateableDialogDecorator(HeaderDialog headerDialog) {
        super(headerDialog);
    }

    public final boolean showAnimated(DialogAnimation dialogAnimation, Animator.AnimatorListener animatorListener) {
        this.hidden = false;
        if (dialogAnimation != null) {
            Window window = getWindow();
            View rootView = getRootView();
            if (rootView != null && window != null) {
                if (((HeaderDialog) getDialog()).isFullscreen()) {
                    rootView = window.getDecorView();
                }
                View view = rootView;
                if (dialogAnimation instanceof FadeAnimation) {
                    ViewPropertyAnimator viewPropertyAnimatorCreateAnimator = createAnimator(view, (FadeAnimation) dialogAnimation, animatorListener, true);
                    if (viewPropertyAnimatorCreateAnimator != null) {
                        viewPropertyAnimatorCreateAnimator.start();
                        return true;
                    }
                } else if (dialogAnimation instanceof RectangleRevealAnimation) {
                    RectangleRevealAnimation rectangleRevealAnimation = (RectangleRevealAnimation) dialogAnimation;
                    ViewPropertyAnimator viewPropertyAnimatorCreateAnimator2 = createAnimator(view, rectangleRevealAnimation, animatorListener);
                    if (viewPropertyAnimatorCreateAnimator2 != null) {
                        configureShowAnimator(view, rectangleRevealAnimation, viewPropertyAnimatorCreateAnimator2);
                        viewPropertyAnimatorCreateAnimator2.start();
                        return true;
                    }
                } else if (dialogAnimation instanceof CircleRevealAnimation) {
                    Animator animatorCreateAnimator = createAnimator(window.getDecorView(), view, (CircleRevealAnimation) dialogAnimation, animatorListener, true);
                    if (animatorCreateAnimator != null) {
                        animatorCreateAnimator.start();
                        return true;
                    }
                } else {
                    throw new RuntimeException("Unknown type of animation: " + dialogAnimation.getClass().getSimpleName());
                }
            }
        }
        return false;
    }

    public final boolean hideAnimated(DialogAnimation dialogAnimation, Animator.AnimatorListener animatorListener) {
        if (!this.hidden) {
            this.hidden = true;
            if (dialogAnimation != null) {
                View rootView = getRootView();
                Window window = getWindow();
                if (rootView != null && window != null) {
                    if (((HeaderDialog) getDialog()).isFullscreen()) {
                        rootView = window.getDecorView();
                    }
                    View view = rootView;
                    if (dialogAnimation instanceof FadeAnimation) {
                        ViewPropertyAnimator viewPropertyAnimatorCreateAnimator = createAnimator(view, (FadeAnimation) dialogAnimation, animatorListener, false);
                        if (viewPropertyAnimatorCreateAnimator != null) {
                            viewPropertyAnimatorCreateAnimator.start();
                            return true;
                        }
                    } else if (dialogAnimation instanceof RectangleRevealAnimation) {
                        RectangleRevealAnimation rectangleRevealAnimation = (RectangleRevealAnimation) dialogAnimation;
                        ViewPropertyAnimator viewPropertyAnimatorCreateAnimator2 = createAnimator(view, rectangleRevealAnimation, createHideAnimationListener(view, animatorListener));
                        if (viewPropertyAnimatorCreateAnimator2 != null) {
                            configureHideAnimator(view, rectangleRevealAnimation, viewPropertyAnimatorCreateAnimator2);
                            viewPropertyAnimatorCreateAnimator2.start();
                            return true;
                        }
                    } else if (dialogAnimation instanceof CircleRevealAnimation) {
                        Animator animatorCreateAnimator = createAnimator(window.getDecorView(), view, (CircleRevealAnimation) dialogAnimation, animatorListener, false);
                        if (animatorCreateAnimator != null) {
                            animatorCreateAnimator.start();
                            return true;
                        }
                    } else {
                        throw new RuntimeException("Unknown type of animation: " + dialogAnimation.getClass().getSimpleName());
                    }
                }
            }
        }
        return false;
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final DialogAnimation getShowAnimation() {
        return this.showAnimation;
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final void setShowAnimation(DialogAnimation dialogAnimation) {
        this.showAnimation = dialogAnimation;
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final DialogAnimation getDismissAnimation() {
        return this.dismissAnimation;
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final void setDismissAnimation(DialogAnimation dialogAnimation) {
        this.dismissAnimation = dialogAnimation;
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final DialogAnimation getCancelAnimation() {
        return this.cancelAnimation;
    }

    @Override // de.mrapp.android.dialog.model.AnimateableDialogDecorator
    public final void setCancelAnimation(DialogAnimation dialogAnimation) {
        this.cancelAnimation = dialogAnimation;
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        return Collections.emptyMap();
    }
}
