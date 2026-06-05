.class public abstract Lkotlin/script/templates/standard/ScriptTemplateWithArgs;
.super Ljava/lang/Object;
.source "templates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005R\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/script/templates/standard/ScriptTemplateWithArgs;",
        "",
        "args",
        "",
        "",
        "([Ljava/lang/String;)V",
        "getArgs",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "kotlin-script-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/templates/standard/ScriptTemplateWithArgs;->args:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getArgs()[Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lkotlin/script/templates/standard/ScriptTemplateWithArgs;->args:[Ljava/lang/String;

    return-object v0
.end method
