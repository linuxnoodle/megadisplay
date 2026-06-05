package de.mrapp.android.dialog.decorator;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.widget.ImageViewCompat;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.animation.BackgroundAnimation;
import de.mrapp.android.dialog.animation.CircleTransitionAnimation;
import de.mrapp.android.dialog.animation.CrossFadeTransitionAnimation;
import de.mrapp.android.dialog.animation.DrawableAnimation;
import de.mrapp.android.dialog.animation.ScaleTransitionAnimation;
import de.mrapp.android.dialog.drawable.AbstractTransitionDrawable;
import de.mrapp.android.dialog.drawable.CircleTransitionDrawable;
import de.mrapp.android.dialog.drawable.CrossFadeTransitionDrawable;
import de.mrapp.android.dialog.drawable.ScaleTransitionDrawable;
import de.mrapp.android.dialog.model.MaterialDialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.util.Condition;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderDialogDecorator extends AbstractDialogDecorator<MaterialDialog> implements de.mrapp.android.dialog.model.HeaderDialogDecorator {
    private static final String HEADER_BACKGROUND_BITMAP_EXTRA = "HeaderDialogDecorator::headerBackgroundBitmap";
    private static final String HEADER_BACKGROUND_COLOR_EXTRA = "HeaderDialogDecorator::headerBackgroundColor";
    private static final String HEADER_BACKGROUND_ID_EXTRA = "HeaderDialogDecorator::headerBackgroundId";
    private static final String HEADER_DIVIDER_COLOR_EXTRA = "HeaderDialogDecorator::headerDividerColor";
    private static final String HEADER_HEIGHT_EXTRA = "HeaderDialogDecorator::headerHeight";
    private static final String HEADER_ICON_BITMAP_EXTRA = "HeaderDialogDecorator::headerIconBitmap";
    private static final String HEADER_ICON_ID_EXTRA = "HeaderDialogDecorator::headerIconId";
    private static final String HEADER_ICON_TINT_LIST_EXTRA = "HeaderDialogDecorator::headerIconTintList";
    private static final String HEADER_ICON_TINT_MODE_EXTRA = "HeaderDialogDecorator::headerIconTintMode";
    private static final String SHOW_HEADER_DIVIDER_EXTRA = "HeaderDialogDecorator::showHeaderDivider";
    private static final String SHOW_HEADER_EXTRA = "HeaderDialogDecorator::showHeader";
    private View customHeaderView;
    private int customHeaderViewId;
    private ViewGroup header;
    private Drawable headerBackground;
    private Bitmap headerBackgroundBitmap;
    private int headerBackgroundColor;
    private int headerBackgroundId;
    private ImageView headerBackgroundImageView;
    private ViewGroup headerContentContainer;
    private View headerDivider;
    private int headerDividerColor;
    private int headerHeight;
    private Drawable headerIcon;
    private Bitmap headerIconBitmap;
    private int headerIconId;
    private ImageView headerIconImageView;
    private ColorStateList headerIconTintList;
    private PorterDuff.Mode headerIconTintMode;
    private boolean showHeader;
    private boolean showHeaderDivider;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    private View inflateHeader() {
        if (getRootView() == null) {
            return null;
        }
        if (this.header == null) {
            ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.material_dialog_header, (ViewGroup) getRootView(), false);
            this.header = viewGroup;
            this.headerBackgroundImageView = (ImageView) viewGroup.findViewById(R.id.header_background_image_view);
            this.headerContentContainer = (ViewGroup) this.header.findViewById(R.id.header_content_container);
            this.headerDivider = this.header.findViewById(R.id.header_divider);
        }
        this.headerContentContainer.removeAllViews();
        View view = this.customHeaderView;
        if (view != null) {
            this.headerContentContainer.addView(view);
        } else if (this.customHeaderViewId != -1) {
            this.headerContentContainer.addView(LayoutInflater.from(getContext()).inflate(this.customHeaderViewId, this.headerContentContainer, false));
        } else {
            this.headerContentContainer.addView(LayoutInflater.from(getContext()).inflate(R.layout.header_icon_image_view, this.headerContentContainer, false));
        }
        View viewFindViewById = this.headerContentContainer.findViewById(android.R.id.icon);
        this.headerIconImageView = viewFindViewById instanceof ImageView ? (ImageView) viewFindViewById : null;
        return this.header;
    }

    private void adaptHeaderView() {
        if (this.header != null) {
            inflateHeader();
            adaptHeaderIcon(null);
        }
    }

    private void adaptHeaderVisibility() {
        ViewGroup viewGroup = this.header;
        if (viewGroup != null) {
            if (this.showHeader) {
                viewGroup.setVisibility(0);
                notifyOnAreaShown(ScrollableArea.Area.HEADER);
            } else {
                viewGroup.setVisibility(8);
                notifyOnAreaHidden(ScrollableArea.Area.HEADER);
            }
        }
    }

    private void adaptHeaderHeight() {
        ViewGroup viewGroup = this.header;
        if (viewGroup != null) {
            viewGroup.getLayoutParams().height = this.headerHeight;
        }
    }

    private void adaptHeaderBackground(BackgroundAnimation backgroundAnimation) {
        Drawable drawable;
        ImageView imageView = this.headerBackgroundImageView;
        if (imageView != null) {
            Drawable drawable2 = this.headerBackground;
            Drawable drawable3 = drawable2;
            drawable3 = drawable2;
            if (backgroundAnimation != null && drawable2 != null) {
                Drawable drawable4 = imageView.getDrawable();
                drawable3 = drawable2;
                if (drawable4 != null) {
                    if (drawable4 instanceof AbstractTransitionDrawable) {
                        drawable4 = ((AbstractTransitionDrawable) drawable4).getDrawable(1);
                    }
                    if (backgroundAnimation instanceof CircleTransitionAnimation) {
                        CircleTransitionAnimation circleTransitionAnimation = (CircleTransitionAnimation) backgroundAnimation;
                        CircleTransitionDrawable circleTransitionDrawable = new CircleTransitionDrawable(new Drawable[]{drawable4, drawable2});
                        circleTransitionDrawable.setRadius(circleTransitionAnimation.getRadius());
                        circleTransitionDrawable.setListener(circleTransitionAnimation.getListener());
                        if (circleTransitionAnimation.getX() != null) {
                            circleTransitionDrawable.setX(circleTransitionAnimation.getX().intValue());
                        }
                        if (circleTransitionAnimation.getY() != null) {
                            circleTransitionDrawable.setY(circleTransitionAnimation.getY().intValue());
                        }
                        circleTransitionDrawable.startTransition(circleTransitionAnimation.getDuration());
                        drawable = circleTransitionDrawable;
                    } else if (backgroundAnimation instanceof CrossFadeTransitionAnimation) {
                        CrossFadeTransitionDrawable crossFadeTransitionDrawable = new CrossFadeTransitionDrawable(new Drawable[]{drawable4, drawable2});
                        crossFadeTransitionDrawable.setListener(backgroundAnimation.getListener());
                        crossFadeTransitionDrawable.startTransition(backgroundAnimation.getDuration());
                        drawable = crossFadeTransitionDrawable;
                    } else {
                        throw new RuntimeException("Unknown type of animation: " + backgroundAnimation.getClass().getSimpleName());
                    }
                    drawable3 = drawable;
                }
            }
            this.headerBackgroundImageView.setImageDrawable(drawable3);
        }
    }

    private void adaptHeaderIcon(DrawableAnimation drawableAnimation) {
        Drawable drawable;
        ImageView imageView = this.headerIconImageView;
        if (imageView != null) {
            ImageViewCompat.setImageTintList(imageView, this.headerIconTintList);
            ImageViewCompat.setImageTintMode(this.headerIconImageView, this.headerIconTintMode);
            Drawable drawable2 = this.headerIcon;
            Drawable drawable3 = drawable2;
            drawable3 = drawable2;
            if (drawableAnimation != null && drawable2 != null) {
                Drawable drawable4 = this.headerIconImageView.getDrawable();
                drawable3 = drawable2;
                if (drawable4 != null) {
                    if (drawable4 instanceof AbstractTransitionDrawable) {
                        drawable4 = ((AbstractTransitionDrawable) drawable4).getDrawable(1);
                    }
                    if (drawableAnimation instanceof ScaleTransitionAnimation) {
                        ScaleTransitionDrawable scaleTransitionDrawable = new ScaleTransitionDrawable(new Drawable[]{drawable4, drawable2});
                        scaleTransitionDrawable.setListener(drawableAnimation.getListener());
                        scaleTransitionDrawable.startTransition(drawableAnimation.getDuration());
                        drawable = scaleTransitionDrawable;
                    } else if (drawableAnimation instanceof CircleTransitionAnimation) {
                        CircleTransitionAnimation circleTransitionAnimation = (CircleTransitionAnimation) drawableAnimation;
                        CircleTransitionDrawable circleTransitionDrawable = new CircleTransitionDrawable(new Drawable[]{drawable4, drawable2});
                        circleTransitionDrawable.setRadius(circleTransitionAnimation.getRadius());
                        circleTransitionDrawable.setListener(circleTransitionAnimation.getListener());
                        if (circleTransitionAnimation.getX() != null) {
                            circleTransitionDrawable.setX(circleTransitionAnimation.getX().intValue());
                        }
                        if (circleTransitionAnimation.getY() != null) {
                            circleTransitionDrawable.setY(circleTransitionAnimation.getY().intValue());
                        }
                        circleTransitionDrawable.startTransition(circleTransitionAnimation.getDuration());
                        drawable = circleTransitionDrawable;
                    } else if (drawableAnimation instanceof CrossFadeTransitionAnimation) {
                        CrossFadeTransitionDrawable crossFadeTransitionDrawable = new CrossFadeTransitionDrawable(new Drawable[]{drawable4, drawable2});
                        crossFadeTransitionDrawable.setCrossFade(true);
                        crossFadeTransitionDrawable.setListener(drawableAnimation.getListener());
                        crossFadeTransitionDrawable.startTransition(drawableAnimation.getDuration());
                        drawable = crossFadeTransitionDrawable;
                    } else {
                        throw new RuntimeException("Unknown type of animation: " + drawableAnimation.getClass().getSimpleName());
                    }
                    drawable3 = drawable;
                }
            }
            this.headerIconImageView.setImageDrawable(drawable3);
        }
    }

    private void adaptHeaderDividerColor() {
        View view = this.headerDivider;
        if (view != null) {
            view.setBackgroundColor(this.headerDividerColor);
        }
    }

    private void adaptHeaderDividerVisibility() {
        View view = this.headerDivider;
        if (view != null) {
            view.setVisibility(this.showHeaderDivider ? 0 : 8);
        }
    }

    public HeaderDialogDecorator(MaterialDialog materialDialog) {
        super(materialDialog);
        this.customHeaderViewId = -1;
        this.headerBackgroundId = -1;
        this.headerBackgroundColor = -1;
        this.headerIconId = -1;
        this.headerIconTintMode = PorterDuff.Mode.SRC_ATOP;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final boolean isHeaderShown() {
        return this.showHeader;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void showHeader(boolean z) {
        this.showHeader = z;
        ((MaterialDialog) getDialog()).setFitsSystemWindows(((MaterialDialog) getDialog()).isFitsSystemWindowsLeft(), !z, ((MaterialDialog) getDialog()).isFitsSystemWindowsRight(), ((MaterialDialog) getDialog()).isFitsSystemWindowsBottom());
        adaptHeaderVisibility();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setCustomHeader(View view) {
        this.customHeaderView = view;
        this.customHeaderViewId = -1;
        adaptHeaderView();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final boolean isCustomHeaderUsed() {
        return (this.customHeaderView == null && this.customHeaderViewId == -1) ? false : true;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setCustomHeader(int i) {
        this.customHeaderView = null;
        this.customHeaderViewId = i;
        adaptHeaderView();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final int getHeaderHeight() {
        return this.headerHeight;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderHeight(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The height must be at least 0");
        this.headerHeight = i;
        adaptHeaderHeight();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final Drawable getHeaderBackground() {
        return this.headerBackground;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(Bitmap bitmap) {
        setHeaderBackground(bitmap, (BackgroundAnimation) null);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(Bitmap bitmap, BackgroundAnimation backgroundAnimation) {
        this.headerBackgroundBitmap = bitmap;
        this.headerBackgroundId = -1;
        this.headerBackgroundColor = -1;
        this.headerBackground = new BitmapDrawable(getContext().getResources(), bitmap);
        adaptHeaderBackground(backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(int i) {
        setHeaderBackground(i, (BackgroundAnimation) null);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackground(int i, BackgroundAnimation backgroundAnimation) {
        this.headerBackgroundBitmap = null;
        this.headerBackgroundId = i;
        this.headerBackgroundColor = -1;
        this.headerBackground = ContextCompat.getDrawable(getContext(), i);
        adaptHeaderBackground(backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderBackgroundColor(int i) {
        setHeaderBackgroundColor(i, null);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public void setHeaderBackgroundColor(int i, BackgroundAnimation backgroundAnimation) {
        this.headerBackgroundBitmap = null;
        this.headerBackgroundId = -1;
        this.headerBackgroundColor = i;
        this.headerBackground = new ColorDrawable(i);
        adaptHeaderBackground(backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final Drawable getHeaderIcon() {
        return this.headerIcon;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(Bitmap bitmap) {
        setHeaderIcon(bitmap, (DrawableAnimation) null);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(Bitmap bitmap, DrawableAnimation drawableAnimation) {
        this.headerIconBitmap = bitmap;
        this.headerIconId = -1;
        this.headerIcon = new BitmapDrawable(getContext().getResources(), bitmap);
        adaptHeaderIcon(drawableAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(int i) {
        setHeaderIcon(i, (DrawableAnimation) null);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIcon(int i, DrawableAnimation drawableAnimation) {
        this.headerIconBitmap = null;
        this.headerIconId = i;
        this.headerIcon = AppCompatResources.getDrawable(getContext(), i);
        adaptHeaderIcon(drawableAnimation);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final ColorStateList getHeaderIconTintList() {
        return this.headerIconTintList;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIconTint(int i) {
        setHeaderIconTintList(ColorStateList.valueOf(i));
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIconTintList(ColorStateList colorStateList) {
        this.headerIconTintList = colorStateList;
        adaptHeaderIcon(null);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final PorterDuff.Mode getHeaderIconTintMode() {
        return this.headerIconTintMode;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderIconTintMode(PorterDuff.Mode mode) {
        this.headerIconTintMode = mode;
        adaptHeaderIcon(null);
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final int getHeaderDividerColor() {
        return this.headerDividerColor;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void setHeaderDividerColor(int i) {
        this.headerDividerColor = i;
        adaptHeaderDividerColor();
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final boolean isHeaderDividerShown() {
        return this.showHeaderDivider;
    }

    @Override // de.mrapp.android.dialog.model.HeaderDialogDecorator
    public final void showHeaderDivider(boolean z) {
        this.showHeaderDivider = z;
        adaptHeaderDividerVisibility();
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(SHOW_HEADER_EXTRA, isHeaderShown());
        bundle.putInt(HEADER_HEIGHT_EXTRA, getHeaderHeight());
        bundle.putBoolean(SHOW_HEADER_DIVIDER_EXTRA, isHeaderDividerShown());
        bundle.putInt(HEADER_DIVIDER_COLOR_EXTRA, getHeaderDividerColor());
        bundle.putParcelable(HEADER_ICON_TINT_LIST_EXTRA, getHeaderIconTintList());
        bundle.putSerializable(HEADER_ICON_TINT_MODE_EXTRA, getHeaderIconTintMode());
        Bitmap bitmap = this.headerBackgroundBitmap;
        if (bitmap != null) {
            bundle.putParcelable(HEADER_BACKGROUND_BITMAP_EXTRA, bitmap);
        } else {
            int i = this.headerBackgroundId;
            if (i != -1) {
                bundle.putInt(HEADER_BACKGROUND_ID_EXTRA, i);
            } else {
                int i2 = this.headerBackgroundColor;
                if (i2 != -1) {
                    bundle.putInt(HEADER_BACKGROUND_COLOR_EXTRA, i2);
                }
            }
        }
        Bitmap bitmap2 = this.headerIconBitmap;
        if (bitmap2 != null) {
            bundle.putParcelable(HEADER_ICON_BITMAP_EXTRA, bitmap2);
            return;
        }
        int i3 = this.headerIconId;
        if (i3 != -1) {
            bundle.putInt(HEADER_ICON_ID_EXTRA, i3);
        }
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
        showHeader(bundle.getBoolean(SHOW_HEADER_EXTRA));
        setHeaderHeight(bundle.getInt(HEADER_HEIGHT_EXTRA));
        showHeaderDivider(bundle.getBoolean(SHOW_HEADER_DIVIDER_EXTRA));
        setHeaderDividerColor(bundle.getInt(HEADER_DIVIDER_COLOR_EXTRA));
        setHeaderIconTintList((ColorStateList) bundle.getParcelable(HEADER_ICON_TINT_LIST_EXTRA));
        PorterDuff.Mode mode = (PorterDuff.Mode) bundle.getSerializable(HEADER_ICON_TINT_MODE_EXTRA);
        if (mode != null) {
            setHeaderIconTintMode(mode);
        }
        String str = HEADER_BACKGROUND_BITMAP_EXTRA;
        if (bundle.containsKey(str)) {
            setHeaderBackground((Bitmap) bundle.getParcelable(str));
        } else {
            String str2 = HEADER_BACKGROUND_ID_EXTRA;
            if (bundle.containsKey(str2)) {
                setHeaderBackground(bundle.getInt(str2));
            } else {
                String str3 = HEADER_BACKGROUND_COLOR_EXTRA;
                if (bundle.containsKey(str3)) {
                    setHeaderBackgroundColor(bundle.getInt(str3));
                }
            }
        }
        String str4 = HEADER_ICON_BITMAP_EXTRA;
        if (bundle.containsKey(str4)) {
            setHeaderIcon((Bitmap) bundle.getParcelable(str4));
            return;
        }
        String str5 = HEADER_ICON_ID_EXTRA;
        if (bundle.containsKey(str5)) {
            setHeaderIcon(bundle.getInt(str5));
        }
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        View viewInflateHeader = inflateHeader();
        if (viewInflateHeader != null) {
            adaptHeaderVisibility();
            adaptHeaderBackground(null);
            adaptHeaderDividerColor();
            adaptHeaderDividerVisibility();
            adaptHeaderIcon(null);
            adaptHeaderHeight();
            HashMap map2 = new HashMap();
            map2.put(new DialogRootView.AreaViewType(ScrollableArea.Area.HEADER), viewInflateHeader);
            return map2;
        }
        return Collections.emptyMap();
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
        ViewGroup viewGroup = this.headerContentContainer;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.headerContentContainer = null;
        }
        this.header = null;
        this.headerBackgroundImageView = null;
        this.headerIconImageView = null;
        this.headerDivider = null;
    }
}
