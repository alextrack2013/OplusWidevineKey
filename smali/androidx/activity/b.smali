.class public Landroidx/activity/b;
.super Landroidx/core/app/e;
.source "ComponentActivity.java"

# interfaces
.implements Landroidx/activity/d;
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/x;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/k;

.field private final b:Landroidx/savedstate/b;

.field private c:Landroidx/lifecycle/w;

.field private final d:Landroidx/activity/OnBackPressedDispatcher;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 89
    invoke-direct {p0}, Landroidx/core/app/e;-><init>()V

    .line 65
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/activity/b;->a:Landroidx/lifecycle/k;

    .line 67
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    .line 73
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/b$1;

    invoke-direct {v1, p0}, Landroidx/activity/b$1;-><init>(Landroidx/activity/b;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    .line 90
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 99
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/f;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/b;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/f;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/b;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 126
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/f;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Landroidx/activity/b;)V
    .locals 0

    .line 53
    invoke-super {p0}, Landroidx/core/app/e;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Landroidx/lifecycle/f;
    .locals 0

    .line 246
    iget-object p0, p0, Landroidx/activity/b;->a:Landroidx/lifecycle/k;

    return-object p0
.end method

.method public c()Landroidx/lifecycle/w;
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroidx/activity/b;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 266
    :cond_0
    iget-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/w;

    if-nez v0, :cond_2

    .line 268
    invoke-virtual {p0}, Landroidx/activity/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/b$a;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, v0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/w;

    iput-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/w;

    .line 273
    :cond_1
    iget-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/w;

    if-nez v0, :cond_2

    .line 274
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    iput-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/w;

    .line 277
    :cond_2
    iget-object p0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/w;

    return-object p0
.end method

.method public final d()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0

    .line 325
    iget-object p0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    return-object p0
.end method

.method public final e()Landroidx/savedstate/a;
    .locals 0

    .line 331
    iget-object p0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    invoke-virtual {p0}, Landroidx/savedstate/b;->a()Landroidx/savedstate/a;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 314
    iget-object p0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroidx/core/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 156
    invoke-static {p0}, Landroidx/lifecycle/s;->a(Landroid/app/Activity;)V

    .line 157
    iget p1, p0, Landroidx/activity/b;->e:I

    if-eqz p1, :cond_0

    .line 158
    iget p1, p0, Landroidx/activity/b;->e:I

    invoke-virtual {p0, p1}, Landroidx/activity/b;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroidx/activity/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 183
    iget-object v1, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/w;

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroidx/activity/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/b$a;

    if-eqz p0, :cond_0

    .line 190
    iget-object v1, p0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/w;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 198
    :cond_1
    new-instance p0, Landroidx/activity/b$a;

    invoke-direct {p0}, Landroidx/activity/b$a;-><init>()V

    .line 199
    iput-object v0, p0, Landroidx/activity/b$a;->a:Ljava/lang/Object;

    .line 200
    iput-object v1, p0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/w;

    return-object p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 165
    invoke-virtual {p0}, Landroidx/activity/b;->b()Landroidx/lifecycle/f;

    move-result-object v0

    .line 166
    instance-of v1, v0, Landroidx/lifecycle/k;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$b;->c:Landroidx/lifecycle/f$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->b(Landroidx/lifecycle/f$b;)V

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    iget-object p0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/b;

    invoke-virtual {p0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    return-void
.end method
