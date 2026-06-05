.class Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;
.super Ljava/lang/Object;
.source "AbstractDataBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/util/multithreading/AbstractDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "KeyType:",
        "Ljava/lang/Object;",
        "ViewType:",
        "Ljava/lang/Object;",
        "ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKeyType;"
        }
    .end annotation
.end field

.field private final params:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParamType;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final startTime:J

.field private final view:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewType;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewType;TKeyType;[TParamType;)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->startTime:J

    .line 190
    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->view:Ljava/lang/Object;

    .line 191
    iput-object p2, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->key:Ljava/lang/Object;

    .line 192
    iput-object p3, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->params:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->result:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;
    .locals 0

    .line 146
    iget-object p0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->key:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)[Ljava/lang/Object;
    .locals 0

    .line 146
    iget-object p0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->params:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;
    .locals 0

    .line 146
    iget-object p0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->result:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    iput-object p1, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)Ljava/lang/Object;
    .locals 0

    .line 146
    iget-object p0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;)J
    .locals 2

    .line 146
    iget-wide v0, p0, Lde/mrapp/android/util/multithreading/AbstractDataBinder$Task;->startTime:J

    return-wide v0
.end method
