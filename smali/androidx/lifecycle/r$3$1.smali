.class Landroidx/lifecycle/r$3$1;
.super Landroidx/lifecycle/b;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/r$3;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/r$3;


# direct methods
.method constructor <init>(Landroidx/lifecycle/r$3;)V
    .locals 0

    .line 171
    iput-object p1, p0, Landroidx/lifecycle/r$3$1;->this$1:Landroidx/lifecycle/r$3;

    invoke-direct {p0}, Landroidx/lifecycle/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 179
    iget-object p0, p0, Landroidx/lifecycle/r$3$1;->this$1:Landroidx/lifecycle/r$3;

    iget-object p0, p0, Landroidx/lifecycle/r$3;->this$0:Landroidx/lifecycle/r;

    invoke-virtual {p0}, Landroidx/lifecycle/r;->c()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    .line 174
    iget-object p0, p0, Landroidx/lifecycle/r$3$1;->this$1:Landroidx/lifecycle/r$3;

    iget-object p0, p0, Landroidx/lifecycle/r$3;->this$0:Landroidx/lifecycle/r;

    invoke-virtual {p0}, Landroidx/lifecycle/r;->a()V

    return-void
.end method
