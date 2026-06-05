.class public abstract Lde/mrapp/android/dialog/builder/AbstractBuilder;
.super Ljava/lang/Object;
.source "AbstractBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        "BuilderType:",
        "Lde/mrapp/android/dialog/builder/AbstractBuilder<",
        "TType;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private product:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lde/mrapp/android/dialog/builder/AbstractBuilder;->setContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractBuilder;->getProduct()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 107
    iget-object v0, p0, Lde/mrapp/android/dialog/builder/AbstractBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getProduct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lde/mrapp/android/dialog/builder/AbstractBuilder;->product:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lde/mrapp/android/dialog/builder/AbstractBuilder;->onCreateProduct()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lde/mrapp/android/dialog/builder/AbstractBuilder;->product:Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/dialog/builder/AbstractBuilder;->product:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract onCreateProduct()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation
.end method

.method protected final self()Lde/mrapp/android/dialog/builder/AbstractBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    return-object p0
.end method

.method protected final setContext(Landroid/content/Context;)V
    .locals 2

    .line 75
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lde/mrapp/android/dialog/builder/AbstractBuilder;->context:Landroid/content/Context;

    return-void
.end method
