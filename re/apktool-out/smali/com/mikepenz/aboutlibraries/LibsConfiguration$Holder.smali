.class final Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;
.super Ljava/lang/Object;
.source "LibsConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/LibsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/mikepenz/aboutlibraries/LibsConfiguration;",
        "getINSTANCE",
        "()Lcom/mikepenz/aboutlibraries/LibsConfiguration;",
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
.field public static final INSTANCE:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;

.field private static final INSTANCE:Lcom/mikepenz/aboutlibraries/LibsConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 207
    new-instance v0, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;

    invoke-direct {v0}, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;-><init>()V

    sput-object v0, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;->INSTANCE:Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;

    .line 208
    new-instance v0, Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mikepenz/aboutlibraries/LibsConfiguration;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;->INSTANCE:Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/mikepenz/aboutlibraries/LibsConfiguration;
    .locals 1

    .line 208
    sget-object v0, Lcom/mikepenz/aboutlibraries/LibsConfiguration$Holder;->INSTANCE:Lcom/mikepenz/aboutlibraries/LibsConfiguration;

    return-object v0
.end method
