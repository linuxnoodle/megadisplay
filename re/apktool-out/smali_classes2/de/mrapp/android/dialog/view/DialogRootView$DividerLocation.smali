.class public final enum Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;
.super Ljava/lang/Enum;
.source "DialogRootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/mrapp/android/dialog/view/DialogRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DividerLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

.field public static final enum BOTTOM:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

.field public static final enum TOP:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 219
    new-instance v0, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->TOP:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    .line 224
    new-instance v1, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->BOTTOM:Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    const/4 v3, 0x2

    .line 214
    new-array v3, v3, [Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->$VALUES:[Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;
    .locals 1

    .line 214
    const-class v0, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;
    .locals 1

    .line 214
    sget-object v0, Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->$VALUES:[Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    invoke-virtual {v0}, [Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/dialog/view/DialogRootView$DividerLocation;

    return-object v0
.end method
