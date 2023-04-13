.class public Landroidx/lifecycle/r;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/j;


# static fields
.field private static final i:Landroidx/lifecycle/r;


# instance fields
.field a:Landroidx/lifecycle/s$a;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/os/Handler;

.field private final g:Landroidx/lifecycle/k;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    sput-object v0, Landroidx/lifecycle/r;->i:Landroidx/lifecycle/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroidx/lifecycle/r;->b:I

    .line 58
    iput v0, p0, Landroidx/lifecycle/r;->c:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    .line 61
    iput-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    .line 64
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    .line 66
    new-instance v0, Landroidx/lifecycle/r$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r$1;-><init>(Landroidx/lifecycle/r;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->h:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Landroidx/lifecycle/r$2;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r$2;-><init>(Landroidx/lifecycle/r;)V

    iput-object v0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/s$a;

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .line 105
    sget-object v0, Landroidx/lifecycle/r;->i:Landroidx/lifecycle/r;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/r;->b(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 109
    iget v0, p0, Landroidx/lifecycle/r;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/r;->b:I

    .line 110
    iget v0, p0, Landroidx/lifecycle/r;->b:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    :cond_0
    return-void
.end method

.method public b()Landroidx/lifecycle/f;
    .locals 0

    .line 209
    iget-object p0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    return-object p0
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/r;->f:Landroid/os/Handler;

    .line 159
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 161
    new-instance v0, Landroidx/lifecycle/r$3;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r$3;-><init>(Landroidx/lifecycle/r;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method c()V
    .locals 2

    .line 117
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/r;->c:I

    .line 118
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    if-ne v0, v1, :cond_1

    .line 119
    iget-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/r;->f:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/lifecycle/r;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method d()V
    .locals 3

    .line 129
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/r;->c:I

    .line 130
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Landroidx/lifecycle/r;->f:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/lifecycle/r;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method e()V
    .locals 1

    .line 136
    iget v0, p0, Landroidx/lifecycle/r;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/r;->b:I

    .line 137
    invoke-virtual {p0}, Landroidx/lifecycle/r;->g()V

    return-void
.end method

.method f()V
    .locals 1

    .line 141
    iget v0, p0, Landroidx/lifecycle/r;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    .line 143
    iget-object p0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    return-void
.end method

.method g()V
    .locals 2

    .line 148
    iget v0, p0, Landroidx/lifecycle/r;->b:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/r;->d:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/lifecycle/r;->g:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Landroidx/lifecycle/r;->e:Z

    :cond_0
    return-void
.end method
