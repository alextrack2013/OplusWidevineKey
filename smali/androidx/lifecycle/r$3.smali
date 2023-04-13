.class Landroidx/lifecycle/r$3;
.super Landroidx/lifecycle/b;
.source "ProcessLifecycleOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/r;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/r;


# direct methods
.method constructor <init>(Landroidx/lifecycle/r;)V
    .locals 0

    .line 161
    iput-object p1, p0, Landroidx/lifecycle/r$3;->this$0:Landroidx/lifecycle/r;

    invoke-direct {p0}, Landroidx/lifecycle/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 189
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    .line 190
    invoke-static {p1}, Landroidx/lifecycle/s;->b(Landroid/app/Activity;)Landroidx/lifecycle/s;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/r$3;->this$0:Landroidx/lifecycle/r;

    iget-object p0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/s$a;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/s;->a(Landroidx/lifecycle/s$a;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 196
    iget-object p0, p0, Landroidx/lifecycle/r$3;->this$0:Landroidx/lifecycle/r;

    invoke-virtual {p0}, Landroidx/lifecycle/r;->d()V

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 171
    new-instance p2, Landroidx/lifecycle/r$3$1;

    invoke-direct {p2, p0}, Landroidx/lifecycle/r$3$1;-><init>(Landroidx/lifecycle/r$3;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 201
    iget-object p0, p0, Landroidx/lifecycle/r$3;->this$0:Landroidx/lifecycle/r;

    invoke-virtual {p0}, Landroidx/lifecycle/r;->e()V

    return-void
.end method
