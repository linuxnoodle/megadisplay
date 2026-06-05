.class public final Lcom/mikepenz/aboutlibraries/LibsCompat;
.super Ljava/lang/Object;
.source "LibsCompat.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/LibsCompat;",
        "",
        "()V",
        "fragment",
        "Lcom/mikepenz/aboutlibraries/ui/LibsFragment;",
        "libsBuilder",
        "Lcom/mikepenz/aboutlibraries/LibsBuilder;",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/mikepenz/aboutlibraries/LibsCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/mikepenz/aboutlibraries/LibsCompat;

    invoke-direct {v0}, Lcom/mikepenz/aboutlibraries/LibsCompat;-><init>()V

    sput-object v0, Lcom/mikepenz/aboutlibraries/LibsCompat;->INSTANCE:Lcom/mikepenz/aboutlibraries/LibsCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fragment(Lcom/mikepenz/aboutlibraries/LibsBuilder;)Lcom/mikepenz/aboutlibraries/ui/LibsFragment;
    .locals 2

    const-string v0, "libsBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string v1, "data"

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 26
    new-instance p1, Lcom/mikepenz/aboutlibraries/ui/LibsFragment;

    invoke-direct {p1}, Lcom/mikepenz/aboutlibraries/ui/LibsFragment;-><init>()V

    .line 27
    invoke-virtual {p1, v0}, Lcom/mikepenz/aboutlibraries/ui/LibsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
