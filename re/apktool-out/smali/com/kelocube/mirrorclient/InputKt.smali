.class public final Lcom/kelocube/mirrorclient/InputKt;
.super Ljava/lang/Object;
.source "Input.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\u001a\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "FLAG_BUTTON",
        "",
        "FLAG_CONTACT",
        "FLAG_HOVER",
        "MS_TICK_TIME",
        "",
        "NS_MIN_REPEAT_TIME",
        "SPEN_ACTION_CANCEL",
        "SPEN_ACTION_DOWN",
        "SPEN_ACTION_MOVE",
        "SPEN_ACTION_UP",
        "translateSamsungAction",
        "action",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FLAG_BUTTON:I = 0x4

.field private static final FLAG_CONTACT:I = 0x1

.field private static final FLAG_HOVER:I = 0x2

.field private static final MS_TICK_TIME:J = 0x32L

.field private static final NS_MIN_REPEAT_TIME:J = 0x2faf080L

.field private static final SPEN_ACTION_CANCEL:I = 0xd6

.field private static final SPEN_ACTION_DOWN:I = 0xd3

.field private static final SPEN_ACTION_MOVE:I = 0xd5

.field private static final SPEN_ACTION_UP:I = 0xd4


# direct methods
.method public static final synthetic access$translateSamsungAction(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kelocube/mirrorclient/InputKt;->translateSamsungAction(I)I

    move-result p0

    return p0
.end method

.method private static final translateSamsungAction(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
