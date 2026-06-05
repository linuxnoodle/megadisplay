.class public Lcom/greenbulb/sonarpen/SonarPenUtilities;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/greenbulb/sonarpen/SonarPenUtilities$f;
    }
.end annotation


# static fields
.field private static final e0:I


# instance fields
.field private A:I

.field private B:Z

.field private C:F

.field private D:F

.field private E:F

.field public final ERROR_NO_AUDIO_MANGER:I

.field public final ERROR_NO_PERMISSION:I

.field private F:D

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:I

.field private M:F

.field private N:F

.field public final NOT_RUNNING:I

.field public final NO_ERROR:I

.field private O:F

.field private P:F

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Lcom/greenbulb/sonarpen/a/a;

.field private V:Z

.field public final VERSION_NO:Ljava/lang/String;

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Ljava/lang/Thread;

.field private a:Landroid/content/Context;

.field private a0:Z

.field private b:[B

.field private b0:I

.field private c:Landroid/media/AudioTrack;

.field private c0:Z

.field public final checkFeq:F

.field private d:Landroid/media/AudioRecord;

.field private d0:Lcom/greenbulb/sonarpen/SonarPenUtilities$f;

.field private e:Z

.field private f:I

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Landroid/media/session/MediaSession;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/16 v1, 0x5be

    const v2, 0xac44

    const/16 v3, 0xc

    invoke-static {v2, v3, v0, v1}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(IIII)I

    move-result v0

    sput v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->NOT_RUNNING:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->NO_ERROR:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->ERROR_NO_PERMISSION:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->ERROR_NO_AUDIO_MANGER:I

    const v3, 0x460ca000    # 9000.0f

    iput v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->checkFeq:F

    const-string v3, "1.0 (2019042901)"

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->VERSION_NO:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    sget v4, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e0:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b:[B

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e:Z

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->j:Z

    const v5, 0x43ca8000    # 405.0f

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m:F

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->o:I

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    const v5, 0x4479c000    # 999.0f

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->F:D

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->G:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->I:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->J:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->M:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->N:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->O:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->P:F

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Q:I

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->S:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->T:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->V:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->W:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->X:Z

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Y:Z

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Z:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b0:I

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c0:Z

    new-instance v0, Lcom/greenbulb/sonarpen/SonarPenUtilities$f;

    invoke-direct {v0, p0, v3}, Lcom/greenbulb/sonarpen/SonarPenUtilities$f;-><init>(Lcom/greenbulb/sonarpen/SonarPenUtilities;Lcom/greenbulb/sonarpen/SonarPenUtilities$a;)V

    iput-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d0:Lcom/greenbulb/sonarpen/SonarPenUtilities$f;

    iput-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    new-instance p1, Lcom/greenbulb/sonarpen/a/a;

    invoke-direct {p1}, Lcom/greenbulb/sonarpen/a/a;-><init>()V

    iput-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->U:Lcom/greenbulb/sonarpen/a/a;

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c0:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->NOT_RUNNING:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->NO_ERROR:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->ERROR_NO_PERMISSION:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->ERROR_NO_AUDIO_MANGER:I

    const v3, 0x460ca000    # 9000.0f

    iput v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->checkFeq:F

    const-string v3, "1.0 (2019042901)"

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->VERSION_NO:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    sget v4, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e0:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b:[B

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e:Z

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->j:Z

    const v5, 0x43ca8000    # 405.0f

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m:F

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->o:I

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    const v5, 0x4479c000    # 999.0f

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->F:D

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->G:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->I:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->J:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->M:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->N:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->O:F

    iput v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->P:F

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Q:I

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->S:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->T:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->V:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->W:Z

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->X:Z

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Y:Z

    iput-object v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Z:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b0:I

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c0:Z

    new-instance v0, Lcom/greenbulb/sonarpen/SonarPenUtilities$f;

    invoke-direct {v0, p0, v3}, Lcom/greenbulb/sonarpen/SonarPenUtilities$f;-><init>(Lcom/greenbulb/sonarpen/SonarPenUtilities;Lcom/greenbulb/sonarpen/SonarPenUtilities$a;)V

    iput-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d0:Lcom/greenbulb/sonarpen/SonarPenUtilities$f;

    iput-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    new-instance p1, Lcom/greenbulb/sonarpen/a/a;

    invoke-direct {p1}, Lcom/greenbulb/sonarpen/a/a;-><init>()V

    iput-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->U:Lcom/greenbulb/sonarpen/a/a;

    iput-boolean p2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Y:Z

    return-void
.end method

.method static synthetic a(Lcom/greenbulb/sonarpen/SonarPenUtilities;F)F
    .locals 0

    iput p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    return p1
.end method

.method private a([S)F
    .locals 6

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-short v4, p1, v3

    mul-int v4, v4, v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private static a(IIII)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p0

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/greenbulb/sonarpen/SonarPenUtilities;I)I
    .locals 0

    iput p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    return p1
.end method

.method static synthetic a(Lcom/greenbulb/sonarpen/SonarPenUtilities;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    iput-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic a(Lcom/greenbulb/sonarpen/SonarPenUtilities;)Lcom/greenbulb/sonarpen/SonarPenCallBack;
    .locals 0

    iget-object p0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

    return-object p0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iput-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->F:D

    return-void
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/greenbulb/sonarpen/SonarPenCallBack;->onSonarPenStatusChange(I)V

    :cond_0
    iput p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    return-void
.end method

.method private a(Z)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iput-object v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    :cond_1
    const v1, 0x15888

    new-array v4, v1, [S

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    int-to-double v7, v6

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v7, v7, v9

    const-wide v9, 0x401399999999999aL    # 4.9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    const-wide v9, 0x40dfffc000000000L    # 32767.0

    mul-double v7, v7, v9

    double-to-int v7, v7

    int-to-short v7, v7

    if-eqz p1, :cond_2

    aput-short v5, v4, v6

    add-int/lit8 v8, v6, 0x1

    aput-short v7, v4, v8

    goto :goto_1

    :cond_2
    aput-short v7, v4, v6

    add-int/lit8 v7, v6, 0x1

    aput-short v5, v4, v7

    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const/4 v8, 0x1

    if-lt v6, v7, :cond_4

    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    const v7, 0xac44

    invoke-virtual {v6, v7}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v11

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v10

    iget-object v2, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    new-instance v6, Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v14

    const v12, 0x2b110

    const/4 v13, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v6, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/media/AudioTrack;

    const v20, 0x2b110

    const/16 v21, 0x0

    const/16 v16, 0x3

    const v17, 0xac44

    const/16 v18, 0xc

    const/16 v19, 0x2

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v2, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    :goto_2
    iget-object v2, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iput-object v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    return-void

    :cond_5
    iget-object v2, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v2, v4, v5, v1}, Landroid/media/AudioTrack;->write([SII)I

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eq v1, v8, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    const/16 v2, 0x5622

    const/4 v3, -0x1

    invoke-virtual {v1, v5, v2, v3}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method static synthetic a(Lcom/greenbulb/sonarpen/SonarPenUtilities;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/greenbulb/sonarpen/SonarPenUtilities;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic b(Lcom/greenbulb/sonarpen/SonarPenUtilities;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    return-void
.end method

.method private b()Z
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    const/4 v2, 0x1

    const/16 v3, 0x17

    const/4 v4, 0x3

    const/16 v5, 0x1000

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_0

    new-instance v1, Landroid/media/AudioRecord;

    const/4 v11, 0x2

    const v12, 0xac44

    const/4 v8, 0x1

    const v9, 0xac44

    const/4 v10, 0x3

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    new-array v1, v5, [B

    iput-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b:[B

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/media/AudioRecord;

    sget v3, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e0:I

    const/16 v10, 0xc

    const/4 v11, 0x2

    const/4 v8, 0x1

    const v9, 0xac44

    move-object v7, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    new-array v1, v3, [B

    iput-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b:[B

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v4, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    iget-object v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b:[B

    array-length v4, v3

    invoke-virtual {v1, v3, v6, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_3

    return v6

    :cond_3
    new-array v3, v1, [B

    iget-object v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b:[B

    invoke-static {v4, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->U:Lcom/greenbulb/sonarpen/a/a;

    invoke-virtual {v1, v3}, Lcom/greenbulb/sonarpen/a/a;->b([B)V

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->U:Lcom/greenbulb/sonarpen/a/a;

    invoke-virtual {v1}, Lcom/greenbulb/sonarpen/a/a;->a()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->U:Lcom/greenbulb/sonarpen/a/a;

    invoke-virtual {v1}, Lcom/greenbulb/sonarpen/a/a;->e()D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->I:F

    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->U:Lcom/greenbulb/sonarpen/a/a;

    invoke-virtual {v1}, Lcom/greenbulb/sonarpen/a/a;->d()D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->J:F

    return v2

    :cond_4
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-nez v1, :cond_6

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_5

    new-instance v1, Landroid/media/AudioRecord;

    const/4 v11, 0x2

    const v12, 0xac44

    const/4 v8, 0x1

    const v9, 0xac44

    const/4 v10, 0x3

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/media/AudioRecord;

    sget v18, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e0:I

    const/4 v14, 0x1

    const v15, 0xac44

    const/16 v16, 0xc

    const/16 v17, 0x2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Landroid/media/AudioRecord;-><init>(IIIII)V

    :goto_2
    iput-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    :goto_3
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v4, :cond_6

    :try_start_2
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    nop

    :cond_6
    :goto_4
    iget-object v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-eqz v1, :cond_8

    new-array v3, v5, [S

    invoke-virtual {v1, v3, v6, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    if-lez v1, :cond_7

    invoke-direct {v0, v3}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a([S)F

    move-result v1

    iput v1, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    :cond_7
    return v2

    :cond_8
    return v6
.end method

.method static synthetic b(Lcom/greenbulb/sonarpen/SonarPenUtilities;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/greenbulb/sonarpen/SonarPenUtilities;I)I
    .locals 0

    iput p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    return p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/greenbulb/sonarpen/SonarPenUtilities;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/greenbulb/sonarpen/SonarPenUtilities;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    return p1
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/greenbulb/sonarpen/SonarPenUtilities;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    return p0
.end method

.method private e()V
    .locals 5

    const-string v0, "maxAmp"

    const-string v1, "minAmp"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/SonarPen/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v4, "manual.setting"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/greenbulb/sonarpen/SonarPenUtilities;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    return p0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->V:Z

    if-eqz v3, :cond_0

    mul-int/lit8 v2, v2, 0x50

    div-int/lit8 v2, v2, 0x64

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-ge v3, v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/greenbulb/sonarpen/SonarPenUtilities;)V
    .locals 0

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m()V

    return-void
.end method

.method private g()V
    .locals 0

    return-void
.end method

.method static synthetic g(Lcom/greenbulb/sonarpen/SonarPenUtilities;)V
    .locals 0

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q()V

    return-void
.end method

.method private h()V
    .locals 0

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p()V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k()V

    return-void
.end method

.method private i()V
    .locals 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/SonarPen"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v2, "manual.setting"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "minAmp"

    :try_start_2
    iget v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "maxAmp"

    :try_start_3
    iget v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->T:Z

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->T:Z

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->o:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private l()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ".+_cheets|cheets_.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private m()V
    .locals 20

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->S:Z

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->S:Z

    const/4 v2, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b()Z

    move-result v3

    if-eqz v3, :cond_2b

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d()Z

    move-result v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_15

    iget-boolean v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    if-nez v4, :cond_15

    iget-boolean v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c0:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    iget-boolean v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    if-nez v4, :cond_1

    iput-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    iget-object v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/greenbulb/sonarpen/SonarPenUtilities$a;

    invoke-direct {v11, v1}, Lcom/greenbulb/sonarpen/SonarPenUtilities$a;-><init>(Lcom/greenbulb/sonarpen/SonarPenUtilities;)V

    invoke-virtual {v4, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iput-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    :cond_1
    :goto_0
    iget-boolean v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    if-nez v4, :cond_2d

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2d

    iput-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->W:Z

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    if-ge v4, v7, :cond_2

    add-int/2addr v4, v0

    iput v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    :cond_2
    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_3

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    :cond_3
    iget-wide v11, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->F:D

    float-to-double v13, v3

    cmpl-double v4, v11, v13

    if-nez v4, :cond_4

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Q:I

    add-int/2addr v4, v0

    iput v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Q:I

    const/16 v0, 0xa

    if-le v4, v0, :cond_5

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    iput-object v8, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    goto :goto_1

    :cond_4
    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Q:I

    :cond_5
    :goto_1
    iget-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_13

    iget-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->j:Z

    if-eqz v0, :cond_13

    iget-wide v11, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->F:D

    sub-double v15, v13, v11

    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    float-to-double v7, v0

    const-wide v17, 0x3fc999999999999aL    # 0.2

    mul-double v7, v7, v17

    const/4 v2, 0x3

    cmpl-double v19, v15, v7

    if-lez v19, :cond_6

    cmpl-float v7, v3, v0

    if-lez v7, :cond_6

    cmpl-double v7, v11, v5

    if-eqz v7, :cond_6

    iget v7, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    if-ne v7, v2, :cond_7

    :cond_6
    iget v7, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    cmpl-float v8, v3, v7

    if-ltz v8, :cond_11

    cmpl-float v7, v7, v10

    if-lez v7, :cond_11

    iget v7, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    if-ne v7, v2, :cond_11

    :cond_7
    sub-double v7, v13, v11

    float-to-double v9, v0

    mul-double v9, v9, v17

    cmpl-double v4, v7, v9

    if-lez v4, :cond_9

    cmpl-double v4, v11, v5

    if-eqz v4, :cond_9

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    if-eq v4, v2, :cond_9

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_8

    cmpl-float v4, v4, v3

    if-lez v4, :cond_9

    :cond_8
    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    :cond_9
    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_a

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_b

    :cond_a
    sub-double v4, v13, v11

    float-to-double v6, v0

    mul-double v6, v6, v17

    cmpl-double v0, v4, v6

    if-lez v0, :cond_12

    :cond_b
    invoke-direct {v1, v2}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->G:F

    iget-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    const v2, 0x3c343958    # 0.011f

    if-eqz v0, :cond_d

    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_c

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v3, v0

    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    iget v5, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v3, v0

    goto :goto_3

    :cond_c
    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    sub-float/2addr v3, v0

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    sub-float/2addr v4, v0

    div-float/2addr v3, v4

    goto :goto_3

    :cond_d
    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-nez v5, :cond_e

    goto :goto_4

    :cond_e
    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v3, v0

    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v4, v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    iget v5, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    goto :goto_2

    :goto_3
    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    goto :goto_5

    :cond_f
    :goto_4
    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    :goto_5
    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_10

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    goto :goto_6

    :cond_10
    cmpg-float v0, v0, v2

    if-gez v0, :cond_12

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    goto :goto_6

    :cond_11
    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    invoke-direct {v1, v4}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    :cond_12
    :goto_6
    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_14

    const/16 v0, 0x64

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    goto :goto_7

    :cond_13
    invoke-direct {v1, v4}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    const/4 v0, -0x1

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    :cond_14
    :goto_7
    iput-wide v13, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->F:D

    goto/16 :goto_f

    :cond_15
    iget-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    if-eqz v2, :cond_2c

    iget v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    if-eqz v2, :cond_29

    const/4 v3, -0x2

    if-eq v2, v7, :cond_26

    const/16 v4, 0x28

    if-eq v2, v4, :cond_24

    const/16 v9, 0x3c

    if-eq v2, v9, :cond_22

    const/16 v3, 0x50

    const v10, 0x460c9800    # 8998.0f

    if-eq v2, v3, :cond_1a

    if-ge v2, v7, :cond_16

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->J:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2a

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    add-int/2addr v3, v0

    :goto_8
    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    goto/16 :goto_e

    :cond_16
    const v5, 0x460ca800    # 9002.0f

    if-ge v2, v4, :cond_17

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->I:F

    cmpl-float v4, v3, v10

    if-ltz v4, :cond_2a

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2a

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    add-int/2addr v3, v0

    goto :goto_8

    :cond_17
    if-ge v2, v9, :cond_19

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->I:F

    cmpg-float v4, v3, v10

    if-ltz v4, :cond_18

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2a

    :cond_18
    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    add-int/2addr v3, v0

    goto :goto_8

    :cond_19
    if-ge v2, v3, :cond_2c

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->I:F

    cmpl-float v4, v3, v10

    if-ltz v4, :cond_2a

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2a

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    add-int/2addr v3, v0

    goto :goto_8

    :cond_1a
    iget v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->O:F

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->I:F

    cmpl-float v4, v3, v10

    if-ltz v4, :cond_1b

    float-to-double v3, v3

    const-wide v9, 0x40c194feb851eb85L    # 9001.99

    cmpg-double v7, v3, v9

    if-lez v7, :cond_1c

    :cond_1b
    iget-boolean v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->X:Z

    if-eqz v3, :cond_25

    :cond_1c
    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->M:F

    div-float v4, v2, v3

    iget v7, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->N:F

    div-float/2addr v7, v3

    iget v9, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->P:F

    div-float/2addr v9, v3

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v10

    if-lez v11, :cond_1d

    cmpl-float v12, v4, v9

    if-lez v12, :cond_1d

    div-float v12, v4, v7

    cmpl-float v13, v12, v10

    if-lez v13, :cond_1d

    cmpg-float v10, v12, v3

    if-ltz v10, :cond_1e

    :cond_1d
    iget-boolean v10, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->X:Z

    if-eqz v10, :cond_25

    :cond_1e
    const/high16 v10, 0x444d0000    # 820.0f

    cmpl-float v2, v2, v10

    if-lez v2, :cond_1f

    iput-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->V:Z

    goto :goto_9

    :cond_1f
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->V:Z

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f()V

    iget-object v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    iput-object v8, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    :cond_20
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    iput-boolean v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    if-lez v11, :cond_21

    cmpl-float v0, v4, v9

    if-lez v0, :cond_21

    div-float/2addr v4, v7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-lez v0, :cond_21

    cmpg-float v0, v4, v3

    if-gez v0, :cond_21

    const/4 v0, 0x6

    invoke-direct {v1, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    goto :goto_a

    :cond_21
    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    :goto_a
    iget v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->O:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v0, v0, v2

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m:F

    const/4 v0, 0x0

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    iput-wide v5, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->F:D

    goto/16 :goto_f

    :cond_22
    iget v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->M:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    invoke-direct {v1, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(Z)V

    iget-object v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    if-nez v4, :cond_23

    invoke-direct {v1, v3}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    iget-object v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :goto_b
    iput-object v8, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    goto :goto_d

    :cond_23
    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    :goto_c
    iget v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    goto :goto_e

    :cond_24
    iget v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->N:F

    iget-object v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    iget-object v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    iget v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    goto :goto_f

    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a()V

    goto :goto_f

    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f()V

    iget v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iget v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->P:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    const/4 v2, 0x0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    invoke-direct {v1, v2}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(Z)V

    iget-object v4, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    if-nez v4, :cond_28

    invoke-direct {v1, v3}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    iget-object v0, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    goto :goto_b

    :cond_27
    :goto_d
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n:Z

    goto :goto_f

    :cond_28
    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    goto :goto_c

    :cond_29
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->V:Z

    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f()V

    invoke-direct {v1, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    const/4 v3, 0x0

    iput v3, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->K:F

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->L:I

    goto :goto_c

    :cond_2a
    :goto_e
    add-int/2addr v2, v0

    iput v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    goto :goto_f

    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2c
    :goto_f
    const/4 v2, 0x0

    :cond_2d
    iput-boolean v2, v1, Lcom/greenbulb/sonarpen/SonarPenUtilities;->S:Z

    :cond_2e
    return-void
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f()V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c()V

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    :cond_1
    return-void
.end method

.method private o()I
    .locals 13

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->j()V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    invoke-direct {p0, v2}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    invoke-direct {p0, v2}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    return v3

    :cond_1
    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    const/4 v2, 0x3

    if-nez v1, :cond_2

    new-instance v1, Landroid/media/session/MediaSession;

    iget-object v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    const-string v5, "SONICPEN"

    invoke-direct {v1, v4, v5}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    new-instance v4, Lcom/greenbulb/sonarpen/SonarPenUtilities$b;

    invoke-direct {v4, p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities$b;-><init>(Lcom/greenbulb/sonarpen/SonarPenUtilities;)V

    invoke-virtual {v1, v4}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const-wide/16 v4, 0x206

    invoke-virtual {v1, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v6

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const/4 v7, 0x3

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v1

    iget-object v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    invoke-virtual {v4, v1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    :cond_2
    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setActive(Z)V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e()V

    iput-boolean v3, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e:Z

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    invoke-direct {p0, v3}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->o:I

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->o:I

    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/greenbulb/sonarpen/SonarPenUtilities$c;

    invoke-direct {v2, p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities$c;-><init>(Lcom/greenbulb/sonarpen/SonarPenUtilities;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Z:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    return v0
.end method

.method private p()V
    .locals 1

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d:Landroid/media/AudioRecord;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->E:F

    return-void
.end method

.method private r()V
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->T:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->T:Z

    :cond_0
    return-void
.end method

.method private s()Z
    .locals 9

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_3

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    invoke-static {v6}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v6

    if-ne v6, v2, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    :cond_4
    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    return v4
.end method


# virtual methods
.method public IsButtonUseSoundWaveDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c0:Z

    return v0
.end method

.method public addSonarPenCallback(Lcom/greenbulb/sonarpen/SonarPenCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

    return-void
.end method

.method public addSonarPenToView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d0:Lcom/greenbulb/sonarpen/SonarPenUtilities$f;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/greenbulb/sonarpen/SonarPenUtilities$f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d0:Lcom/greenbulb/sonarpen/SonarPenUtilities$f;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/greenbulb/sonarpen/SonarPenUtilities$f;->a(I)V

    new-instance v0, Lcom/greenbulb/sonarpen/SonarPenUtilities$d;

    invoke-direct {v0, p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities$d;-><init>(Lcom/greenbulb/sonarpen/SonarPenUtilities;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/greenbulb/sonarpen/SonarPenUtilities$e;

    invoke-direct {v0, p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities$e;-><init>(Lcom/greenbulb/sonarpen/SonarPenUtilities;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public audioPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b0:I

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    :cond_1
    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    return v0
.end method

.method public audioResume()Z
    .locals 2

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->n()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f()V

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->b0:I

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackHeadPosition(I)I

    iget-object v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    :cond_2
    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    return v0
.end method

.method public clearManualSetting()V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/SonarPen"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v3, "manual.setting"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iput-boolean v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    return-void
.end method

.method public getCurrReading()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "maxValue"

    :try_start_0
    iget v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "maxManualValue"

    :try_start_1
    iget v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "currentValue"

    :try_start_2
    iget v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->G:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0
.end method

.method public getCurrentAmp()F
    .locals 1

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    return v0
.end method

.method public getCurrentPressure()D
    .locals 2

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getCurrentReadingValue(Lcom/greenbulb/sonarpen/SonarPenReadings;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->getCurrentReadingValue(Lcom/greenbulb/sonarpen/SonarPenReadings;Z)V

    return-void
.end method

.method public getCurrentReadingValue(Lcom/greenbulb/sonarpen/SonarPenReadings;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m()V

    :cond_0
    iget p2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    iput p2, p1, Lcom/greenbulb/sonarpen/SonarPenReadings;->minValue:F

    iget p2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    iput p2, p1, Lcom/greenbulb/sonarpen/SonarPenReadings;->maxValue:F

    iget p2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->H:F

    iput p2, p1, Lcom/greenbulb/sonarpen/SonarPenReadings;->currentValue:F

    return-void
.end method

.method public getIsAudioPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    return v0
.end method

.method public getManualMaxValue()F
    .locals 1

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    return v0
.end method

.method public getManualMinValue()F
    .locals 1

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    return v0
.end method

.method public getSonicPenButtonPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    return v0
.end method

.method public getSystemPenId()I
    .locals 1

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    return v0
.end method

.method public getUseTouchSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    return v0
.end method

.method public isSonarPenOnScreen()Z
    .locals 3

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isSonicPenButton(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p:Lcom/greenbulb/sonarpen/SonarPenCallBack;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/greenbulb/sonarpen/SonarPenCallBack;->onSonarPenButtonPressed()V

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public isUsingManualCalibrate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    return v0
.end method

.method public markSettingValue()Z
    .locals 3

    iget v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->l:F

    iget v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k:F

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr v2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->D:F

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->C:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->B:Z

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i()V

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    const-string v0, "state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->u:Z

    if-eq p1, p2, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setByPassDetectionAsDefault(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Y:Z

    return-void
.end method

.method public setUseSoundWaveDetectButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->c0:Z

    return-void
.end method

.method public setUseTouchSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    return-void
.end method

.method public start()I
    .locals 1

    iget-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Y:Z

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->X:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->o()I

    move-result v0

    return v0
.end method

.method public startWithByPass()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->X:Z

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->o()I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->e:Z

    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Z:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->Z:Ljava/lang/Thread;

    :cond_0
    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q()V

    iget-object v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->y:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->k()V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->p()V

    invoke-direct {p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r()V

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a0:Z

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->i:Z

    iput-boolean v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->z:I

    return-void
.end method

.method public translateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    const v7, 0x4479c000    # 999.0f

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v2, v3, :cond_7

    if-eqz v2, :cond_7

    if-ne v2, v8, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    if-ne v2, v11, :cond_27

    :cond_1
    iget-boolean v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, v11, :cond_3

    :goto_0
    iput v9, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    iput v9, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    iput v7, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    iput-boolean v10, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->j:Z

    :cond_3
    iget v2, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v2, v9, :cond_6

    if-eq v4, v9, :cond_6

    invoke-direct {v0, v8}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->a(I)V

    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    :goto_1
    if-ge v10, v6, :cond_5

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    :try_start_0
    invoke-virtual {v1, v10, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    iput v5, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    iput v8, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    :cond_4
    aput-object v2, v7, v10

    aput-object v3, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    move-wide v1, v2

    move-wide v3, v4

    move v5, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    :cond_6
    return-object v1

    :cond_7
    :goto_3
    iput-boolean v11, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->j:Z

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    if-eqz v3, :cond_11

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    if-nez v3, :cond_11

    if-le v6, v11, :cond_11

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v3

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v12

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    iget v14, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    if-ne v13, v14, :cond_8

    move v13, v3

    move v14, v12

    goto :goto_4

    :cond_8
    const/high16 v13, -0x40800000    # -1.0f

    const/high16 v14, -0x40800000    # -1.0f

    :goto_4
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_5
    if-ge v15, v6, :cond_d

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v18

    cmpl-float v18, v18, v3

    if-eqz v18, :cond_a

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    if-ne v5, v4, :cond_9

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    move v13, v4

    :cond_9
    const/16 v16, 0x1

    :cond_a
    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_c

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    if-ne v4, v5, :cond_b

    invoke-virtual {v1, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    move v14, v4

    :cond_b
    const/16 v17, 0x1

    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_d
    if-eqz v16, :cond_f

    iget v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_e

    iput v13, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    :cond_e
    iput-boolean v11, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    goto :goto_6

    :cond_f
    if-eqz v17, :cond_11

    iget v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_10

    iput v14, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    :cond_10
    iput-boolean v11, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    iput-boolean v10, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    :cond_11
    :goto_6
    if-eq v2, v8, :cond_19

    iget v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v3, v9, :cond_12

    iput-boolean v10, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->W:Z

    :cond_12
    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    if-eqz v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    iget-boolean v7, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-eqz v7, :cond_13

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_14

    iput v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    goto :goto_7

    :cond_13
    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    cmpg-float v4, v5, v4

    if-gez v4, :cond_14

    iput v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    goto :goto_7

    :cond_14
    const/4 v3, -0x1

    :goto_7
    if-eq v3, v9, :cond_15

    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    cmpg-float v7, v4, v5

    if-ltz v7, :cond_17

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    cmpg-double v7, v4, v12

    if-ltz v7, :cond_17

    :cond_15
    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v4, v9, :cond_18

    goto :goto_8

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    :cond_17
    :goto_8
    iput v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    iput v10, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    :cond_18
    iget v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v3, v9, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/greenbulb/sonarpen/SonarPenUtilities;->m()V

    goto/16 :goto_e

    :cond_19
    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->W:Z

    if-eqz v3, :cond_26

    iget v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    if-gt v3, v11, :cond_26

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    if-eqz v3, :cond_26

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    if-eqz v3, :cond_26

    if-le v6, v11, :cond_26

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    iget-boolean v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-nez v5, :cond_1a

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    :cond_1a
    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-eq v5, v9, :cond_1d

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v6, :cond_1d

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget v12, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v7, v12, :cond_1c

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-nez v3, :cond_1b

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    :cond_1b
    move v3, v12

    goto :goto_a

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_1d
    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-ge v5, v6, :cond_22

    iget-boolean v7, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-eqz v7, :cond_1e

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v7

    cmpl-float v7, v4, v7

    if-gtz v7, :cond_1f

    :cond_1e
    iget-boolean v7, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-nez v7, :cond_21

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_21

    :cond_1f
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-boolean v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-eqz v4, :cond_20

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    goto :goto_c

    :cond_20
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    :cond_21
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_22
    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_25

    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_24

    iget v4, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v4, v9, :cond_23

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    if-eq v5, v3, :cond_23

    goto :goto_d

    :cond_23
    if-eq v3, v4, :cond_27

    iput v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    goto :goto_e

    :cond_24
    :goto_d
    iput v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    goto :goto_e

    :cond_25
    iput v9, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    goto :goto_e

    :cond_26
    iget v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-ne v3, v4, :cond_27

    iget v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_27

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    if-eqz v3, :cond_27

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    if-eqz v3, :cond_27

    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-eqz v3, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v3

    iput v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->s:F

    :cond_27
    :goto_e
    iget-boolean v3, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->h:Z

    if-nez v3, :cond_28

    return-object v1

    :cond_28
    new-array v7, v6, [Landroid/view/MotionEvent$PointerProperties;

    new-array v12, v6, [Landroid/view/MotionEvent$PointerCoords;

    :goto_f
    if-ge v10, v6, :cond_31

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v1, v10, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget v13, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->A:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2f

    iget-boolean v13, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->j:Z

    if-eqz v13, :cond_2f

    if-ne v5, v11, :cond_2f

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    if-eq v5, v9, :cond_2f

    iget v13, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    if-ne v13, v9, :cond_2a

    iget v13, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    const/4 v15, 0x4

    if-ge v13, v15, :cond_2b

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    if-ne v5, v13, :cond_2b

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    if-gt v5, v11, :cond_29

    if-eq v2, v8, :cond_2b

    :cond_29
    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->r:I

    iput v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    goto :goto_10

    :cond_2a
    const/4 v15, 0x4

    :cond_2b
    :goto_10
    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->q:I

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    if-ne v5, v13, :cond_2e

    iget-boolean v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->R:Z

    if-eqz v5, :cond_2d

    iget-boolean v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->x:Z

    if-eqz v5, :cond_2d

    iget-boolean v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->w:Z

    if-eqz v5, :cond_2c

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_2d

    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v5

    iput v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    goto :goto_11

    :cond_2c
    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    iget v13, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    cmpl-float v5, v5, v13

    if-lez v5, :cond_2d

    iput v13, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->t:F

    :cond_2d
    :goto_11
    iput v8, v3, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->g:F

    const v13, 0x3c343958    # 0.011f

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_12

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-ne v10, v5, :cond_30

    iget v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/greenbulb/sonarpen/SonarPenUtilities;->v:I

    goto :goto_12

    :cond_2f
    const/4 v15, 0x4

    :cond_30
    :goto_12
    aput-object v3, v7, v10

    aput-object v4, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f

    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    move-wide v1, v2

    move-wide v3, v4

    move v5, v8

    move-object v8, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method
