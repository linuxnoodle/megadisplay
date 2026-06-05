.class public final synthetic Lcom/kelocube/mirrorclient/ui/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/kelocube/mirrorclient/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kelocube/mirrorclient/ui/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/kelocube/mirrorclient/ui/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/kelocube/mirrorclient/ui/MainActivity;

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    invoke-static {v0, p1}, Lcom/kelocube/mirrorclient/ui/MainActivity;->$r8$lambda$ljZ3JhVogOLFxg6QlTwrxFKHICg(Lcom/kelocube/mirrorclient/ui/MainActivity;Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method
