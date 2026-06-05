.class public abstract Lde/mrapp/android/dialog/decorator/AbstractDecorator;
.super Ljava/lang/Object;
.source "AbstractDecorator.java"

# interfaces
.implements Lde/mrapp/android/dialog/model/DialogDecorator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogType::",
        "Lde/mrapp/android/dialog/model/Dialog;",
        "ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lde/mrapp/android/dialog/model/DialogDecorator;"
    }
.end annotation


# instance fields
.field private final areaListeners:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/dialog/listener/AreaListener;",
            ">;"
        }
    .end annotation
.end field

.field private final dialog:Lde/mrapp/android/dialog/model/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDialogType;"
        }
    .end annotation
.end field

.field private dialogRootView:Lde/mrapp/android/dialog/view/DialogRootView;

.field private view:Landroid/view/View;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lde/mrapp/android/dialog/model/Dialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDialogType;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The dialog may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->dialog:Lde/mrapp/android/dialog/model/Dialog;

    .line 109
    new-instance p1, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {p1}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->areaListeners:Lde/mrapp/util/datastructure/ListenerList;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->window:Landroid/view/Window;

    .line 111
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->view:Landroid/view/View;

    .line 112
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->dialogRootView:Lde/mrapp/android/dialog/view/DialogRootView;

    return-void
.end method


# virtual methods
.method public final addAreaListener(Lde/mrapp/android/dialog/listener/AreaListener;)V
    .locals 2

    .line 167
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->areaListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final attach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;TParamType;)",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The window may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The view may not be null"

    invoke-virtual {v0, p2, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->window:Landroid/view/Window;

    .line 143
    iput-object p2, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->view:Landroid/view/View;

    .line 144
    sget v0, Lde/mrapp/android/dialog/R$id;->dialog_root_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/mrapp/android/dialog/view/DialogRootView;

    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->dialogRootView:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 145
    invoke-virtual {p0, p1, p2, p3, p4}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final detach()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->window:Landroid/view/Window;

    .line 154
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->view:Landroid/view/View;

    .line 155
    iput-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->dialogRootView:Lde/mrapp/android/dialog/view/DialogRootView;

    .line 156
    invoke-virtual {p0}, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->onDetach()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 258
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->dialog:Lde/mrapp/android/dialog/model/Dialog;

    invoke-interface {v0}, Lde/mrapp/android/dialog/model/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final getDialog()Lde/mrapp/android/dialog/model/Dialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDialogType;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->dialog:Lde/mrapp/android/dialog/model/Dialog;

    return-object v0
.end method

.method protected final getRootView()Lde/mrapp/android/dialog/view/DialogRootView;
    .locals 1

    .line 253
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->dialogRootView:Lde/mrapp/android/dialog/view/DialogRootView;

    return-object v0
.end method

.method protected final getView()Landroid/view/View;
    .locals 1

    .line 242
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->view:Landroid/view/View;

    return-object v0
.end method

.method protected final getWindow()Landroid/view/Window;
    .locals 1

    .line 231
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->window:Landroid/view/Window;

    return-object v0
.end method

.method protected final notifyOnAreaHidden(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->areaListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/listener/AreaListener;

    .line 208
    invoke-interface {v1, p1}, Lde/mrapp/android/dialog/listener/AreaListener;->onAreaHidden(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyOnAreaShown(Lde/mrapp/android/dialog/ScrollableArea$Area;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->areaListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/dialog/listener/AreaListener;

    .line 194
    invoke-interface {v1, p1}, Lde/mrapp/android/dialog/listener/AreaListener;->onAreaShown(Lde/mrapp/android/dialog/ScrollableArea$Area;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract onAttach(Landroid/view/Window;Landroid/view/View;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;TParamType;)",
            "Ljava/util/Map<",
            "Lde/mrapp/android/dialog/view/DialogRootView$ViewType;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract onDetach()V
.end method

.method public final removeAreaListener(Lde/mrapp/android/dialog/listener/AreaListener;)V
    .locals 2

    .line 180
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The listener may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lde/mrapp/android/dialog/decorator/AbstractDecorator;->areaListeners:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
