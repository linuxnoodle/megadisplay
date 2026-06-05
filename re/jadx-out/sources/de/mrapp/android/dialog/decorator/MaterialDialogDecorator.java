package de.mrapp.android.dialog.decorator;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.ImageViewCompat;
import de.mrapp.android.dialog.R;
import de.mrapp.android.dialog.ScrollableArea;
import de.mrapp.android.dialog.animation.BackgroundAnimation;
import de.mrapp.android.dialog.animation.CircleTransitionAnimation;
import de.mrapp.android.dialog.animation.CrossFadeTransitionAnimation;
import de.mrapp.android.dialog.drawable.AbstractTransitionDrawable;
import de.mrapp.android.dialog.drawable.CircleTransitionDrawable;
import de.mrapp.android.dialog.drawable.CrossFadeTransitionDrawable;
import de.mrapp.android.dialog.model.Dialog;
import de.mrapp.android.dialog.view.DialogRootView;
import de.mrapp.android.util.ViewUtil;
import de.mrapp.util.Condition;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialDialogDecorator extends AbstractDialogDecorator<Dialog> implements de.mrapp.android.dialog.model.MaterialDialogDecorator {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String BACKGROUND_BITMAP_EXTRA = "MaterialDialogDecorator::backgroundBitmap";
    private static final String BACKGROUND_COLOR_EXTRA = "MaterialDialogDecorator::backgroundColor";
    private static final String BACKGROUND_ID_EXTRA = "MaterialDialogDecorator::backgroundId";
    private static final String BOTTOM_MARGIN_EXTRA = "MaterialDialogDecorator::bottomMargin";
    private static final String BOTTOM_PADDING_EXTRA = "MaterialDialogDecorator::bottomPadding";
    private static final String BOTTOM_SCROLLABLE_AREA_EXTRA = "MaterialDialogDecorator::bottomScrollableArea";
    private static final String CANCELABLE_EXTRA = "MaterialDialogDecorator::cancelable";
    private static final String CANCEL_ON_TOUCH_OUTSIDE_EXTRA = "MaterialDialogDecorator::cancelOnTouchOutside";
    private static final String DIVIDER_COLOR_EXTRA = "MaterialDialogDecorator::dividerColor";
    private static final String DIVIDER_MARGIN_EXTRA = "MaterialDialogDecorator::dividerMargin";
    private static final String FULLSCREEN_EXTRA = "MaterialDialogDecorator::fullscreen";
    private static final String GRAVITY_EXTRA = "MaterialDialogDecorator::gravity";
    private static final String HEIGHT_EXTRA = "MaterialDialogDecorator::height";
    private static final String ICON_ATTRIBUTE_ID_EXTRA = "MaterialDialogDecorator::iconAttribute";
    private static final String ICON_BITMAP_EXTRA = "MaterialDialogDecorator::iconBitmap";
    private static final String ICON_ID_EXTRA = "MaterialDialogDecorator::iconId";
    private static final String ICON_TINT_LIST_EXTRA = "MaterialDialogDecorator::iconTintList";
    private static final String ICON_TINT_MODE_EXTRA = "MaterialDialogDecorator::iconTintMode";
    private static final String LEFT_MARGIN_EXTRA = "MaterialDialogDecorator::leftMargin";
    private static final String LEFT_PADDING_EXTRA = "MaterialDialogDecorator::leftPadding";
    private static final String MAX_HEIGHT_EXTRA = "MaterialDialogDecorator::maxHeight";
    private static final String MAX_WIDTH_EXTRA = "MaterialDialogDecorator::maxWidth";
    private static final String MESSAGE_COLOR_EXTRA = "MaterialDialogDecorator::messageColor";
    private static final String MESSAGE_EXTRA = "MaterialDialogDecorator::message";
    private static final String RIGHT_MARGIN_EXTRA = "MaterialDialogDecorator::rightMargin";
    private static final String RIGHT_PADDING_EXTRA = "MaterialDialogDecorator::rightPadding";
    private static final String SHOW_DIVIDERS_ON_SCROLL_EXTRA = "MaterialDialogDecorator::showDividersOnScroll";
    private static final String TITLE_COLOR_EXTRA = "MaterialDialogDecorator::titleColor";
    private static final String TITLE_EXTRA = "MaterialDialogDecorator::title";
    private static final String TOP_MARGIN_EXTRA = "MaterialDialogDecorator::topMargin";
    private static final String TOP_PADDING_EXTRA = "MaterialDialogDecorator::topPadding";
    private static final String TOP_SCROLLABLE_AREA_EXTRA = "MaterialDialogDecorator::topScrollableArea";
    private static final String WIDTH_EXTRA = "MaterialDialogDecorator::width";
    private static final String WINDOW_BACKGROUND_BITMAP_EXTRA = "MaterialDialogDecorator::windowBackgroundBitmap";
    private static final String WINDOW_BACKGROUND_ID_EXTRA = "MaterialDialogDecorator::windowBackgroundId";
    private Drawable background;
    private Bitmap backgroundBitmap;
    private int backgroundColor;
    private int backgroundId;
    private boolean cancelable;
    private boolean canceledOnTouchOutside;
    private ViewGroup contentContainer;
    private View customMessageView;
    private int customMessageViewId;
    private View customTitleView;
    private int customTitleViewId;
    private View customView;
    private int customViewId;
    private int dividerColor;
    private int dividerMargin;
    private boolean[] fitsSystemWindows;
    private boolean fullscreen;
    private int gravity;
    private int height;
    private Drawable icon;
    private int iconAttributeId;
    private Bitmap iconBitmap;
    private int iconId;
    private ImageView iconImageView;
    private ColorStateList iconTintList;
    private PorterDuff.Mode iconTintMode;
    private int[] margin;
    private int maxHeight;
    private int maxWidth;
    private CharSequence message;
    private int messageColor;
    private ViewGroup messageContainer;
    private TextView messageTextView;
    private Typeface messageTypeface;
    private int[] padding;
    private ScrollableArea scrollableArea;
    private boolean showDividersOnScroll;
    private Rect systemWindowInsets;
    private CharSequence title;
    private int titleColor;
    private ViewGroup titleContainer;
    private TextView titleTextView;
    private Typeface titleTypeface;
    private int width;
    private Drawable windowBackground;
    private Bitmap windowBackgroundBitmap;
    private int windowBackgroundId;
    private Rect windowInsets;

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected /* bridge */ /* synthetic */ Map onAttach(Window window, View view, Map map, Void r4) {
        return onAttach2(window, view, (Map<DialogRootView.ViewType, View>) map, r4);
    }

    private OnApplyWindowInsetsListener createWindowInsetsListener() {
        return new OnApplyWindowInsetsListener() { // from class: de.mrapp.android.dialog.decorator.MaterialDialogDecorator.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                MaterialDialogDecorator.this.systemWindowInsets = windowInsetsCompat.hasSystemWindowInsets() ? new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()) : null;
                MaterialDialogDecorator.this.adaptLayoutParams();
                return windowInsetsCompat;
            }
        };
    }

    private RelativeLayout.LayoutParams createLayoutParams() {
        Rect rect;
        Rect rect2;
        Rect rect3;
        Rect rect4;
        Rect rect5 = new Rect();
        getWindow().getDecorView().getWindowVisibleDisplayFrame(rect5);
        int i = 0;
        int i2 = (isFitsSystemWindowsLeft() && isFullscreen() && (rect4 = this.systemWindowInsets) != null) ? rect4.left : 0;
        int i3 = (isFitsSystemWindowsTop() && isFullscreen() && (rect3 = this.systemWindowInsets) != null) ? rect3.top : 0;
        int i4 = (isFitsSystemWindowsRight() && isFullscreen() && (rect2 = this.systemWindowInsets) != null) ? rect2.right : 0;
        if (isFitsSystemWindowsBottom() && isFullscreen() && (rect = this.systemWindowInsets) != null) {
            i = rect.bottom;
        }
        int leftMargin = (getLeftMargin() - getWindowInsetLeft()) + i2;
        int topMargin = (getTopMargin() - getWindowInsetTop()) + i3;
        int rightMargin = (getRightMargin() - getWindowInsetRight()) + i4;
        int bottomMargin = (getBottomMargin() - getWindowInsetBottom()) + i;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getLayoutDimension(getWidth(), leftMargin + rightMargin, rect5.right), getLayoutDimension(getHeight(), topMargin + bottomMargin, rect5.bottom));
        layoutParams.leftMargin = leftMargin;
        layoutParams.topMargin = topMargin;
        layoutParams.rightMargin = rightMargin;
        layoutParams.bottomMargin = bottomMargin;
        if ((getGravity() & 1) == 1) {
            layoutParams.addRule(14, -1);
        }
        if ((getGravity() & 16) == 16) {
            layoutParams.addRule(15, -1);
        }
        if ((getGravity() & 65536) == 65536) {
            layoutParams.addRule(9, -1);
        }
        if ((getGravity() & 256) == 256) {
            layoutParams.addRule(10, -1);
        }
        if ((getGravity() & 1048576) == 1048576) {
            layoutParams.addRule(11, -1);
        }
        if ((getGravity() & 4096) == 4096) {
            layoutParams.addRule(12, -1);
        }
        return layoutParams;
    }

    private int getLayoutDimension(int i, int i2, int i3) {
        if (i == -1) {
            return -1;
        }
        if (i == -2) {
            return -2;
        }
        return Math.min(i, i3 - i2);
    }

    private View inflateTitleView() {
        if (getRootView() == null) {
            return null;
        }
        inflateTitleContainer();
        View view = this.customTitleView;
        if (view != null) {
            this.titleContainer.addView(view);
        } else if (this.customTitleViewId != -1) {
            this.titleContainer.addView(LayoutInflater.from(getContext()).inflate(this.customTitleViewId, this.titleContainer, false));
        } else {
            this.titleContainer.addView(LayoutInflater.from(getContext()).inflate(R.layout.material_dialog_title, this.titleContainer, false));
        }
        View viewFindViewById = this.titleContainer.findViewById(android.R.id.title);
        this.titleTextView = viewFindViewById instanceof TextView ? (TextView) viewFindViewById : null;
        View viewFindViewById2 = this.titleContainer.findViewById(android.R.id.icon);
        this.iconImageView = viewFindViewById2 instanceof ImageView ? (ImageView) viewFindViewById2 : null;
        return this.titleContainer;
    }

    private void inflateTitleContainer() {
        ViewGroup viewGroup = this.titleContainer;
        if (viewGroup == null) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            this.titleContainer = relativeLayout;
            relativeLayout.setId(R.id.title_container);
            this.titleContainer.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            return;
        }
        viewGroup.removeAllViews();
    }

    private View inflateMessageView() {
        if (getRootView() == null) {
            return null;
        }
        inflateMessageContainer();
        View view = this.customMessageView;
        if (view != null) {
            this.messageContainer.addView(view);
        } else if (this.customMessageViewId != -1) {
            this.messageContainer.addView(LayoutInflater.from(getContext()).inflate(this.customMessageViewId, this.messageContainer, false));
        } else {
            this.messageContainer.addView(LayoutInflater.from(getContext()).inflate(R.layout.material_dialog_message, this.messageContainer, false));
        }
        View viewFindViewById = this.messageContainer.findViewById(android.R.id.message);
        this.messageTextView = viewFindViewById instanceof TextView ? (TextView) viewFindViewById : null;
        return this.messageContainer;
    }

    private void inflateMessageContainer() {
        ViewGroup viewGroup = this.messageContainer;
        if (viewGroup == null) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            this.messageContainer = relativeLayout;
            relativeLayout.setId(R.id.message_container);
            this.messageContainer.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            return;
        }
        viewGroup.removeAllViews();
    }

    private View inflateContentView() {
        if (getRootView() == null) {
            return null;
        }
        inflateContentContainer();
        View view = this.customView;
        if (view != null) {
            this.contentContainer.addView(view);
        } else if (this.customViewId != -1) {
            this.contentContainer.addView(LayoutInflater.from(getContext()).inflate(this.customViewId, this.contentContainer, false));
        }
        adaptContentContainerVisibility();
        return this.contentContainer;
    }

    private void inflateContentContainer() {
        ViewGroup viewGroup = this.contentContainer;
        if (viewGroup == null) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            this.contentContainer = relativeLayout;
            relativeLayout.setId(R.id.content_container);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.weight = 1.0f;
            this.contentContainer.setLayoutParams(layoutParams);
            return;
        }
        viewGroup.removeAllViews();
    }

    private void adaptWindowBackgroundAndInset() {
        DialogRootView rootView = getRootView();
        if (rootView != null) {
            rootView.setWindowBackgroundAndInset(this.windowBackground, this.windowInsets);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adaptLayoutParams() {
        DialogRootView rootView = getRootView();
        if (getWindow() == null || rootView == null) {
            return;
        }
        rootView.setLayoutParams(createLayoutParams());
        rootView.setFullscreen(isFullscreen());
        rootView.setMaxWidth(getMaxWidth());
        rootView.setMaxHeight(getMaxHeight());
    }

    private void adaptPadding() {
        DialogRootView rootView = getRootView();
        if (rootView != null) {
            rootView.setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    private void adaptScrollableArea() {
        DialogRootView rootView = getRootView();
        if (rootView != null) {
            rootView.setScrollableArea(this.scrollableArea);
        }
    }

    private void adaptDividerVisibility() {
        DialogRootView rootView = getRootView();
        if (rootView != null) {
            rootView.showDividersOnScroll(this.showDividersOnScroll);
        }
    }

    private void adaptDividerColor() {
        DialogRootView rootView = getRootView();
        if (rootView != null) {
            rootView.setDividerColor(this.dividerColor);
        }
    }

    private void adaptDividerMargin() {
        DialogRootView rootView = getRootView();
        if (rootView != null) {
            rootView.setDividerMargin(this.dividerMargin);
        }
    }

    private void adaptContentView() {
        if (this.contentContainer != null) {
            inflateContentView();
        }
    }

    private void adaptTitleView() {
        if (this.titleContainer != null) {
            inflateTitleView();
            adaptTitle();
            adaptTitleColor();
            adaptTitleTypeface();
            adaptIcon();
        }
    }

    private void adaptMessageView() {
        if (this.messageContainer != null) {
            inflateMessageView();
            adaptMessage();
            adaptMessageColor();
            adaptMessageTypeface();
        }
    }

    private void adaptTitleColor() {
        TextView textView = this.titleTextView;
        if (textView != null) {
            textView.setTextColor(this.titleColor);
        }
    }

    private void adaptTitleTypeface() {
        Typeface typeface;
        TextView textView = this.titleTextView;
        if (textView == null || (typeface = this.titleTypeface) == null) {
            return;
        }
        textView.setTypeface(typeface);
    }

    private void adaptTitle() {
        TextView textView = this.titleTextView;
        if (textView != null) {
            textView.setText(this.title);
        }
        adaptTitleContainerVisibility();
    }

    private void adaptIcon() {
        ImageView imageView = this.iconImageView;
        if (imageView != null) {
            ImageViewCompat.setImageTintList(imageView, this.iconTintList);
            ImageViewCompat.setImageTintMode(this.iconImageView, this.iconTintMode);
            this.iconImageView.setImageDrawable(this.icon);
            this.iconImageView.setVisibility(this.icon != null ? 0 : 8);
        }
        adaptTitleContainerVisibility();
    }

    private void adaptTitleContainerVisibility() {
        if (this.titleContainer != null) {
            if (isCustomTitleUsed() || !TextUtils.isEmpty(this.title) || this.icon != null) {
                this.titleContainer.setVisibility(0);
                notifyOnAreaShown(ScrollableArea.Area.TITLE);
            } else {
                this.titleContainer.setVisibility(8);
                notifyOnAreaHidden(ScrollableArea.Area.TITLE);
            }
        }
    }

    private void adaptMessage() {
        TextView textView = this.messageTextView;
        if (textView != null) {
            textView.setText(this.message);
            this.messageTextView.setVisibility(!TextUtils.isEmpty(this.message) ? 0 : 8);
        }
        adaptMessageContainerVisibility();
    }

    private void adaptMessageColor() {
        TextView textView = this.messageTextView;
        if (textView != null) {
            textView.setTextColor(this.messageColor);
        }
    }

    private void adaptMessageTypeface() {
        Typeface typeface;
        TextView textView = this.messageTextView;
        if (textView == null || (typeface = this.messageTypeface) == null) {
            return;
        }
        textView.setTypeface(typeface);
    }

    private void adaptMessageContainerVisibility() {
        if (this.titleContainer != null) {
            if (isCustomMessageUsed() || !TextUtils.isEmpty(this.message)) {
                this.messageContainer.setVisibility(0);
                notifyOnAreaShown(ScrollableArea.Area.MESSAGE);
            } else {
                this.messageContainer.setVisibility(8);
                notifyOnAreaHidden(ScrollableArea.Area.MESSAGE);
            }
        }
    }

    private void adaptBackground(BackgroundAnimation backgroundAnimation) {
        Drawable drawable;
        if (getRootView() == null || getWindow() == null) {
            return;
        }
        Drawable drawable2 = this.background;
        Drawable drawable3 = drawable2;
        drawable3 = drawable2;
        if (backgroundAnimation != null && drawable2 != null) {
            Drawable background = (isFullscreen() ? getWindow().getDecorView() : getRootView()).getBackground();
            drawable3 = drawable2;
            if (background != null) {
                if (background instanceof AbstractTransitionDrawable) {
                    background = ((AbstractTransitionDrawable) background).getDrawable(1);
                }
                if (backgroundAnimation instanceof CircleTransitionAnimation) {
                    CircleTransitionAnimation circleTransitionAnimation = (CircleTransitionAnimation) backgroundAnimation;
                    CircleTransitionDrawable circleTransitionDrawable = new CircleTransitionDrawable(new Drawable[]{background, drawable2});
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
                    CrossFadeTransitionDrawable crossFadeTransitionDrawable = new CrossFadeTransitionDrawable(new Drawable[]{background, drawable2});
                    crossFadeTransitionDrawable.setListener(backgroundAnimation.getListener());
                    crossFadeTransitionDrawable.startTransition(backgroundAnimation.getDuration());
                    drawable = crossFadeTransitionDrawable;
                } else {
                    throw new RuntimeException("Unknown type of animation: " + backgroundAnimation.getClass().getSimpleName());
                }
                drawable3 = drawable;
            }
        }
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        ViewUtil.setBackground(getRootView(), isFullscreen() ? null : drawable3);
        View decorView = getWindow().getDecorView();
        Drawable drawable4 = drawable3;
        if (!isFullscreen()) {
            drawable4 = null;
        }
        ViewUtil.setBackground(decorView, drawable4);
    }

    private void adaptContentContainerVisibility() {
        if (this.contentContainer != null) {
            if (isCustomViewUsed()) {
                this.contentContainer.setVisibility(0);
                notifyOnAreaShown(ScrollableArea.Area.CONTENT);
            } else {
                this.contentContainer.setVisibility(8);
                notifyOnAreaHidden(ScrollableArea.Area.CONTENT);
            }
        }
    }

    public MaterialDialogDecorator(Dialog dialog) {
        super(dialog);
        this.windowBackgroundId = -1;
        this.gravity = 17;
        this.width = -2;
        this.height = -2;
        this.maxWidth = -1;
        this.maxHeight = -1;
        this.margin = new int[]{0, 0, 0, 0};
        this.padding = new int[]{0, 0, 0, 0};
        this.iconId = -1;
        this.iconAttributeId = -1;
        this.iconTintMode = PorterDuff.Mode.SRC_ATOP;
        this.backgroundId = -1;
        this.backgroundColor = -1;
        this.customViewId = -1;
        this.customTitleViewId = -1;
        this.customMessageViewId = -1;
        this.fitsSystemWindows = new boolean[]{true, true, true, true};
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Drawable getWindowBackground() {
        return this.windowBackground;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setWindowBackground(int i) {
        this.windowBackgroundId = i;
        this.windowBackgroundBitmap = null;
        this.windowBackground = ContextCompat.getDrawable(getContext(), i);
        Rect rect = new Rect();
        this.windowInsets = rect;
        this.windowBackground.getPadding(rect);
        adaptWindowBackgroundAndInset();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setWindowBackground(Bitmap bitmap) {
        this.windowBackgroundId = -1;
        this.windowBackgroundBitmap = bitmap;
        this.windowBackground = bitmap != null ? new BitmapDrawable(bitmap) : null;
        Rect rect = new Rect();
        this.windowInsets = rect;
        Drawable drawable = this.windowBackground;
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        adaptWindowBackgroundAndInset();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetLeft() {
        Rect rect;
        if (isFullscreen() || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.left;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetTop() {
        Rect rect;
        if (isFullscreen() || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.top;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetRight() {
        Rect rect;
        if (isFullscreen() || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.right;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWindowInsetBottom() {
        Rect rect;
        if (isFullscreen() || (rect = this.windowInsets) == null) {
            return 0;
        }
        return rect.bottom;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCanceledOnTouchOutside() {
        return this.canceledOnTouchOutside;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCanceledOnTouchOutside(boolean z) {
        this.canceledOnTouchOutside = z;
        if (z) {
            setCancelable(true);
        }
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCancelable() {
        return this.cancelable;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCancelable(boolean z) {
        this.cancelable = z;
        if (z) {
            return;
        }
        setCanceledOnTouchOutside(false);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFullscreen() {
        return this.fullscreen;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setFullscreen(boolean z) {
        this.fullscreen = z;
        adaptLayoutParams();
        adaptBackground(null);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getGravity() {
        return this.gravity;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setGravity(int i) {
        this.gravity = i;
        adaptLayoutParams();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getWidth() {
        return this.width;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setWidth(int i) {
        if (i != -1 && i != -2) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The width must be at least 1");
        }
        this.width = i;
        adaptLayoutParams();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getHeight() {
        return this.height;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setHeight(int i) {
        if (i != -1 && i != -2) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The height must be at least 1");
        }
        this.height = i;
        adaptLayoutParams();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getMaxWidth() {
        return this.maxWidth;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMaxWidth(int i) {
        if (i != -1) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum width must be at least 1");
        }
        this.maxWidth = i;
        adaptLayoutParams();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getMaxHeight() {
        return this.maxHeight;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMaxHeight(int i) {
        if (i != -1) {
            Condition.INSTANCE.ensureAtLeast(i, 1, "The maximum height must be at least 1");
        }
        this.maxHeight = i;
        adaptLayoutParams();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getLeftMargin() {
        return this.margin[0];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getTopMargin() {
        return this.margin[1];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getRightMargin() {
        return this.margin[2];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getBottomMargin() {
        return this.margin[3];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMargin(int i, int i2, int i3, int i4) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The left margin must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i2, 0, "The top margin must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i3, 0, "The right margin must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i4, 0, "The bottom margin must be at least 0");
        this.margin = new int[]{i, i2, i3, i4};
        adaptLayoutParams();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingLeft() {
        return this.padding[0];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingTop() {
        return this.padding[1];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingRight() {
        return this.padding[2];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getPaddingBottom() {
        return this.padding[3];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setPadding(int i, int i2, int i3, int i4) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The left padding must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i2, 0, "The top padding must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i3, 0, "The right padding must be at least 0");
        Condition.INSTANCE.ensureAtLeast(i4, 0, "The bottom padding must be at least 0");
        this.padding = new int[]{i, i2, i3, i4};
        adaptPadding();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsLeft() {
        return this.fitsSystemWindows[0];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsTop() {
        return this.fitsSystemWindows[1];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsRight() {
        return this.fitsSystemWindows[2];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isFitsSystemWindowsBottom() {
        return this.fitsSystemWindows[3];
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setFitsSystemWindows(boolean z) {
        setFitsSystemWindows(z, z, z, z);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setFitsSystemWindows(boolean z, boolean z2, boolean z3, boolean z4) {
        this.fitsSystemWindows = new boolean[]{z, z2, z3, z4};
        adaptLayoutParams();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final ScrollableArea getScrollableArea() {
        return this.scrollableArea;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setScrollableArea(ScrollableArea.Area area) {
        this.scrollableArea = ScrollableArea.create(area);
        adaptScrollableArea();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setScrollableArea(ScrollableArea.Area area, ScrollableArea.Area area2) {
        this.scrollableArea = ScrollableArea.create(area, area2);
        adaptScrollableArea();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean areDividersShownOnScroll() {
        return this.showDividersOnScroll;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void showDividersOnScroll(boolean z) {
        this.showDividersOnScroll = z;
        adaptDividerVisibility();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getDividerColor() {
        return this.dividerColor;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setDividerColor(int i) {
        this.dividerColor = i;
        adaptDividerColor();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getDividerMargin() {
        return this.dividerMargin;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setDividerMargin(int i) {
        Condition.INSTANCE.ensureAtLeast(i, 0, "The margin must be at least 0");
        this.dividerMargin = i;
        adaptDividerMargin();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Drawable getIcon() {
        return this.icon;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIcon(Bitmap bitmap) {
        this.iconBitmap = bitmap;
        this.iconId = -1;
        this.iconAttributeId = -1;
        this.icon = bitmap != null ? new BitmapDrawable(getContext().getResources(), bitmap) : null;
        adaptIcon();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIcon(int i) {
        this.iconBitmap = null;
        this.iconId = i;
        this.iconAttributeId = -1;
        this.icon = AppCompatResources.getDrawable(getContext(), i);
        adaptIcon();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconAttribute(int i) {
        this.iconBitmap = null;
        this.iconId = -1;
        this.iconAttributeId = i;
        this.icon = getContext().getTheme().obtainStyledAttributes(new int[]{i}).getDrawable(0);
        adaptIcon();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final ColorStateList getIconTintList() {
        return this.iconTintList;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconTint(int i) {
        setIconTintList(ColorStateList.valueOf(i));
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconTintList(ColorStateList colorStateList) {
        this.iconTintList = colorStateList;
        adaptIcon();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final PorterDuff.Mode getIconTintMode() {
        return this.iconTintMode;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setIconTintMode(PorterDuff.Mode mode) {
        Condition.INSTANCE.ensureNotNull(mode, "The icon tint mode may not be null");
        this.iconTintMode = mode;
        adaptIcon();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getTitleColor() {
        return this.titleColor;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitleColor(int i) {
        this.titleColor = i;
        adaptTitleColor();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Typeface getTitleTypeface() {
        return this.titleTypeface;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitleTypeface(Typeface typeface) {
        Condition.INSTANCE.ensureNotNull(typeface, "The typeface may not be null");
        this.titleTypeface = typeface;
        adaptTitleTypeface();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final int getMessageColor() {
        return this.messageColor;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessageColor(int i) {
        this.messageColor = i;
        adaptMessageColor();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Typeface getMessageTypeface() {
        return this.messageTypeface;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessageTypeface(Typeface typeface) {
        Condition.INSTANCE.ensureNotNull(typeface, "The typeface may not be null");
        this.messageTypeface = typeface;
        adaptMessageTypeface();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final Drawable getBackground() {
        return this.background;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(Bitmap bitmap) {
        setBackground(bitmap, (BackgroundAnimation) null);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(Bitmap bitmap, BackgroundAnimation backgroundAnimation) {
        this.backgroundBitmap = bitmap;
        this.backgroundId = -1;
        this.backgroundColor = -1;
        this.background = bitmap != null ? new BitmapDrawable(getContext().getResources(), bitmap) : null;
        adaptBackground(backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(int i) {
        setBackground(i, (BackgroundAnimation) null);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackground(int i, BackgroundAnimation backgroundAnimation) {
        this.backgroundBitmap = null;
        this.backgroundId = i;
        this.backgroundColor = -1;
        this.background = ContextCompat.getDrawable(getContext(), i);
        adaptBackground(backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackgroundColor(int i) {
        setBackgroundColor(i, null);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setBackgroundColor(int i, BackgroundAnimation backgroundAnimation) {
        this.backgroundBitmap = null;
        this.backgroundId = -1;
        this.backgroundColor = i;
        this.background = new ColorDrawable(i);
        adaptBackground(backgroundAnimation);
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCustomTitleUsed() {
        return (this.customTitleView == null && this.customTitleViewId == -1) ? false : true;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomTitle(View view) {
        this.customTitleView = view;
        this.customTitleViewId = -1;
        adaptTitleView();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomTitle(int i) {
        this.customTitleView = null;
        this.customTitleViewId = i;
        adaptTitleView();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCustomMessageUsed() {
        return (this.customMessageView == null && this.customMessageViewId == -1) ? false : true;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomMessage(View view) {
        this.customMessageView = view;
        this.customMessageViewId = -1;
        adaptMessageView();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setCustomMessage(int i) {
        this.customMessageView = null;
        this.customMessageViewId = i;
        adaptMessageView();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final boolean isCustomViewUsed() {
        return (this.customView == null && this.customViewId == -1) ? false : true;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setView(View view) {
        this.customView = view;
        this.customViewId = -1;
        adaptContentView();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setView(int i) {
        this.customView = null;
        this.customViewId = i;
        adaptContentView();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final CharSequence getMessage() {
        return this.message;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessage(CharSequence charSequence) {
        this.message = charSequence;
        adaptMessage();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setMessage(int i) {
        setMessage(getContext().getText(i));
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final CharSequence getTitle() {
        return this.title;
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitle(CharSequence charSequence) {
        this.title = charSequence;
        adaptTitle();
    }

    @Override // de.mrapp.android.dialog.model.MaterialDialogDecorator
    public final void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(CANCELABLE_EXTRA, isCancelable());
        bundle.putBoolean(CANCEL_ON_TOUCH_OUTSIDE_EXTRA, isCanceledOnTouchOutside());
        bundle.putBoolean(FULLSCREEN_EXTRA, isFullscreen());
        bundle.putInt(GRAVITY_EXTRA, getGravity());
        bundle.putInt(WIDTH_EXTRA, getWidth());
        bundle.putInt(HEIGHT_EXTRA, getHeight());
        bundle.putInt(MAX_WIDTH_EXTRA, getMaxWidth());
        bundle.putInt(MAX_HEIGHT_EXTRA, getMaxHeight());
        bundle.putInt(LEFT_MARGIN_EXTRA, getLeftMargin());
        bundle.putInt(TOP_MARGIN_EXTRA, getTopMargin());
        bundle.putInt(RIGHT_MARGIN_EXTRA, getRightMargin());
        bundle.putInt(BOTTOM_MARGIN_EXTRA, getBottomMargin());
        bundle.putInt(LEFT_PADDING_EXTRA, getPaddingLeft());
        bundle.putInt(TOP_PADDING_EXTRA, getPaddingTop());
        bundle.putInt(RIGHT_PADDING_EXTRA, getPaddingRight());
        bundle.putInt(BOTTOM_PADDING_EXTRA, getPaddingBottom());
        bundle.putSerializable(TOP_SCROLLABLE_AREA_EXTRA, this.scrollableArea.getTopScrollableArea());
        bundle.putSerializable(BOTTOM_SCROLLABLE_AREA_EXTRA, this.scrollableArea.getBottomScrollableArea());
        bundle.putBoolean(SHOW_DIVIDERS_ON_SCROLL_EXTRA, areDividersShownOnScroll());
        bundle.putInt(DIVIDER_COLOR_EXTRA, getDividerColor());
        bundle.putInt(DIVIDER_MARGIN_EXTRA, getDividerMargin());
        bundle.putInt(TITLE_COLOR_EXTRA, getTitleColor());
        bundle.putInt(MESSAGE_COLOR_EXTRA, getMessageColor());
        bundle.putCharSequence(TITLE_EXTRA, getTitle());
        bundle.putCharSequence(MESSAGE_EXTRA, getMessage());
        bundle.putParcelable(ICON_TINT_LIST_EXTRA, getIconTintList());
        bundle.putSerializable(ICON_TINT_MODE_EXTRA, getIconTintMode());
        Bitmap bitmap = this.windowBackgroundBitmap;
        if (bitmap != null) {
            bundle.putParcelable(WINDOW_BACKGROUND_BITMAP_EXTRA, bitmap);
        } else {
            int i = this.windowBackgroundId;
            if (i != -1) {
                bundle.putInt(WINDOW_BACKGROUND_ID_EXTRA, i);
            }
        }
        Bitmap bitmap2 = this.iconBitmap;
        if (bitmap2 != null) {
            bundle.putParcelable(ICON_BITMAP_EXTRA, bitmap2);
        } else {
            int i2 = this.iconId;
            if (i2 != -1) {
                bundle.putInt(ICON_ID_EXTRA, i2);
            } else {
                int i3 = this.iconAttributeId;
                if (i3 != -1) {
                    bundle.putInt(ICON_ATTRIBUTE_ID_EXTRA, i3);
                }
            }
        }
        Bitmap bitmap3 = this.backgroundBitmap;
        if (bitmap3 != null) {
            bundle.putParcelable(BACKGROUND_BITMAP_EXTRA, bitmap3);
            return;
        }
        int i4 = this.backgroundId;
        if (i4 != -1) {
            bundle.putInt(BACKGROUND_ID_EXTRA, i4);
            return;
        }
        int i5 = this.backgroundColor;
        if (i5 != -1) {
            bundle.putInt(BACKGROUND_COLOR_EXTRA, i5);
        }
    }

    @Override // de.mrapp.android.dialog.model.DialogDecorator
    public final void onRestoreInstanceState(Bundle bundle) {
        setCancelable(bundle.getBoolean(CANCELABLE_EXTRA));
        setCanceledOnTouchOutside(bundle.getBoolean(CANCEL_ON_TOUCH_OUTSIDE_EXTRA));
        setFullscreen(bundle.getBoolean(FULLSCREEN_EXTRA));
        setGravity(bundle.getInt(GRAVITY_EXTRA));
        setWidth(bundle.getInt(WIDTH_EXTRA));
        setHeight(bundle.getInt(HEIGHT_EXTRA));
        setMaxWidth(bundle.getInt(MAX_WIDTH_EXTRA));
        setMaxHeight(bundle.getInt(MAX_HEIGHT_EXTRA));
        setMargin(bundle.getInt(LEFT_MARGIN_EXTRA), bundle.getInt(TOP_MARGIN_EXTRA), bundle.getInt(RIGHT_MARGIN_EXTRA), bundle.getInt(BOTTOM_MARGIN_EXTRA));
        setPadding(bundle.getInt(LEFT_PADDING_EXTRA), bundle.getInt(TOP_PADDING_EXTRA), bundle.getInt(RIGHT_PADDING_EXTRA), bundle.getInt(BOTTOM_PADDING_EXTRA));
        setScrollableArea((ScrollableArea.Area) bundle.getSerializable(TOP_SCROLLABLE_AREA_EXTRA), (ScrollableArea.Area) bundle.getSerializable(BOTTOM_SCROLLABLE_AREA_EXTRA));
        showDividersOnScroll(bundle.getBoolean(SHOW_DIVIDERS_ON_SCROLL_EXTRA));
        setDividerColor(bundle.getInt(DIVIDER_COLOR_EXTRA));
        setDividerMargin(bundle.getInt(DIVIDER_MARGIN_EXTRA));
        setTitleColor(bundle.getInt(TITLE_COLOR_EXTRA));
        setMessageColor(bundle.getInt(MESSAGE_COLOR_EXTRA));
        setTitle(bundle.getCharSequence(TITLE_EXTRA));
        setMessage(bundle.getCharSequence(MESSAGE_EXTRA));
        setIconTintList((ColorStateList) bundle.getParcelable(ICON_TINT_LIST_EXTRA));
        PorterDuff.Mode mode = (PorterDuff.Mode) bundle.getSerializable(ICON_TINT_MODE_EXTRA);
        if (mode != null) {
            setIconTintMode(mode);
        }
        String str = WINDOW_BACKGROUND_BITMAP_EXTRA;
        if (bundle.containsKey(str)) {
            setWindowBackground((Bitmap) bundle.getParcelable(str));
        } else {
            String str2 = WINDOW_BACKGROUND_ID_EXTRA;
            if (bundle.containsKey(str2)) {
                setWindowBackground(bundle.getInt(str2));
            }
        }
        String str3 = ICON_BITMAP_EXTRA;
        if (bundle.containsKey(str3)) {
            setIcon((Bitmap) bundle.getParcelable(str3));
        } else {
            String str4 = ICON_ID_EXTRA;
            if (bundle.containsKey(str4)) {
                setIcon(bundle.getInt(str4));
            } else {
                String str5 = ICON_ATTRIBUTE_ID_EXTRA;
                if (bundle.containsKey(str5)) {
                    setIconAttribute(bundle.getInt(str5));
                }
            }
        }
        String str6 = BACKGROUND_BITMAP_EXTRA;
        if (bundle.containsKey(str6)) {
            setBackground(bundle.getInt(str6));
            return;
        }
        String str7 = BACKGROUND_ID_EXTRA;
        if (bundle.containsKey(str7)) {
            setBackground(bundle.getInt(str7));
            return;
        }
        String str8 = BACKGROUND_COLOR_EXTRA;
        if (bundle.containsKey(str8)) {
            setBackgroundColor(bundle.getInt(str8));
        }
    }

    /* JADX INFO: renamed from: onAttach, reason: avoid collision after fix types in other method */
    protected final Map<DialogRootView.ViewType, View> onAttach2(Window window, View view, Map<DialogRootView.ViewType, View> map, Void r4) {
        ViewCompat.setOnApplyWindowInsetsListener(view, createWindowInsetsListener());
        View viewInflateTitleView = inflateTitleView();
        View viewInflateMessageView = inflateMessageView();
        View viewInflateContentView = inflateContentView();
        if (viewInflateTitleView != null && viewInflateMessageView != null && viewInflateContentView != null) {
            adaptWindowBackgroundAndInset();
            adaptLayoutParams();
            adaptPadding();
            adaptScrollableArea();
            adaptDividerVisibility();
            adaptTitle();
            adaptTitleColor();
            adaptTitleTypeface();
            adaptIcon();
            adaptMessage();
            adaptMessageColor();
            adaptMessageTypeface();
            adaptBackground(null);
            HashMap map2 = new HashMap();
            map2.put(new DialogRootView.AreaViewType(ScrollableArea.Area.TITLE), this.titleContainer);
            map2.put(new DialogRootView.AreaViewType(ScrollableArea.Area.MESSAGE), this.messageContainer);
            map2.put(new DialogRootView.AreaViewType(ScrollableArea.Area.CONTENT), this.contentContainer);
            return map2;
        }
        return Collections.emptyMap();
    }

    @Override // de.mrapp.android.dialog.decorator.AbstractDecorator
    protected final void onDetach() {
        ViewGroup viewGroup = this.titleContainer;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.titleContainer = null;
        }
        ViewGroup viewGroup2 = this.messageContainer;
        if (viewGroup2 != null) {
            viewGroup2.removeAllViews();
            this.messageContainer = null;
        }
        ViewGroup viewGroup3 = this.contentContainer;
        if (viewGroup3 != null) {
            viewGroup3.removeAllViews();
            this.contentContainer = null;
        }
        this.titleTextView = null;
        this.messageTextView = null;
    }
}
