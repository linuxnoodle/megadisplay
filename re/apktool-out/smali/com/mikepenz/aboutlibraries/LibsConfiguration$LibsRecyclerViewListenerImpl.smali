.class public abstract Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListenerImpl;
.super Ljava/lang/Object;
.source "LibsConfiguration.kt"

# interfaces
.implements Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/aboutlibraries/LibsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LibsRecyclerViewListenerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListenerImpl;",
        "Lcom/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener;",
        "()V",
        "onBindViewHolder",
        "",
        "headerViewHolder",
        "Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;",
        "holder",
        "Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;",
        "aboutlibraries"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lcom/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder;)V
    .locals 1

    const-string v0, "headerViewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
