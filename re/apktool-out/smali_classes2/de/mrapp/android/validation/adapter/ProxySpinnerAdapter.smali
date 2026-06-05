.class public Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;
.super Ljava/lang/Object;
.source "ProxySpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Landroid/widget/ListAdapter;


# instance fields
.field private final adapter:Landroid/widget/SpinnerAdapter;

.field private final context:Landroid/content/Context;

.field private final hint:Ljava/lang/CharSequence;

.field private final hintColor:Landroid/content/res/ColorStateList;

.field private final hintViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SpinnerAdapter;ILjava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The adapter may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->context:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    .line 112
    iput p3, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->hintViewId:I

    .line 113
    iput-object p4, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->hint:Ljava/lang/CharSequence;

    .line 114
    iput-object p5, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->hintColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private inflateHintView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 74
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->hintViewId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->hint:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->hintColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 124
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 140
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 143
    :cond_0
    iget-object p2, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    if-lez p1, :cond_0

    .line 168
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 130
    invoke-direct {p0, p3}, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->inflateHintView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    iget-object p2, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lde/mrapp/android/validation/adapter/ProxySpinnerAdapter;->adapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
