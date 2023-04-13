.class public Lcom/oplus/widevine/b/g;
.super Ljava/lang/Object;
.source "RealmeKeysManager.java"


# static fields
.field private static g:Lcom/oplus/widevine/b/g;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/oplus/widevine/b/i;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/net/ConnectivityManager;

.field private f:Ljava/lang/Class;

.field private h:Ljava/lang/Object;

.field private i:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/widevine/b/g;->h:Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/oplus/widevine/b/g$1;

    invoke-direct {v0, p0}, Lcom/oplus/widevine/b/g$1;-><init>(Lcom/oplus/widevine/b/g;)V

    iput-object v0, p0, Lcom/oplus/widevine/b/g;->i:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 40
    iput-object p1, p0, Lcom/oplus/widevine/b/g;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/oplus/widevine/b/g;->b:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 43
    iput-object p3, p0, Lcom/oplus/widevine/b/g;->f:Ljava/lang/Class;

    goto :goto_0

    .line 45
    :cond_0
    const-class p1, Lcom/oplus/widevine/b/j;

    iput-object p1, p0, Lcom/oplus/widevine/b/g;->f:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)Lcom/oplus/widevine/b/g;
    .locals 2

    .line 29
    sget-object v0, Lcom/oplus/widevine/b/g;->g:Lcom/oplus/widevine/b/g;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/oplus/widevine/b/g;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/oplus/widevine/b/g;->g:Lcom/oplus/widevine/b/g;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/oplus/widevine/b/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/widevine/b/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)V

    sput-object v1, Lcom/oplus/widevine/b/g;->g:Lcom/oplus/widevine/b/g;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lcom/oplus/widevine/b/g;->g:Lcom/oplus/widevine/b/g;

    return-object p0
.end method

.method private a(Landroid/os/Looper;Ljava/lang/Class;)Lcom/oplus/widevine/b/i;
    .locals 1

    .line 64
    const-class v0, Lcom/oplus/widevine/b/d;

    if-ne p2, v0, :cond_0

    .line 65
    new-instance p2, Lcom/oplus/widevine/b/d;

    iget-object v0, p0, Lcom/oplus/widevine/b/g;->a:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/oplus/widevine/b/d;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    goto :goto_0

    .line 66
    :cond_0
    const-class v0, Lcom/oplus/widevine/b/j;

    if-ne p2, v0, :cond_1

    .line 67
    new-instance p2, Lcom/oplus/widevine/b/j;

    iget-object v0, p0, Lcom/oplus/widevine/b/g;->a:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/oplus/widevine/b/j;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    goto :goto_0

    .line 68
    :cond_1
    const-class v0, Lcom/oplus/widevine/b/a;

    if-ne p2, v0, :cond_2

    .line 69
    new-instance p2, Lcom/oplus/widevine/b/a;

    iget-object v0, p0, Lcom/oplus/widevine/b/g;->a:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/oplus/widevine/b/a;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 72
    new-instance p1, Lcom/oplus/widevine/b/h;

    invoke-direct {p1, p0}, Lcom/oplus/widevine/b/h;-><init>(Lcom/oplus/widevine/b/g;)V

    invoke-virtual {p2, p1}, Lcom/oplus/widevine/b/i;->a(Lcom/oplus/widevine/b/i$a;)V

    :cond_3
    return-object p2
.end method

.method static synthetic a(Lcom/oplus/widevine/b/g;)Lcom/oplus/widevine/b/i;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oplus/widevine/b/g;->c:Lcom/oplus/widevine/b/i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/oplus/widevine/b/g;->d:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "oplus_keys_service"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/widevine/b/g;->d:Landroid/os/HandlerThread;

    .line 53
    iget-object v1, p0, Lcom/oplus/widevine/b/g;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 54
    iget-object v1, p0, Lcom/oplus/widevine/b/g;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/widevine/b/g;->f:Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/oplus/widevine/b/g;->a(Landroid/os/Looper;Ljava/lang/Class;)Lcom/oplus/widevine/b/i;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/widevine/b/g;->c:Lcom/oplus/widevine/b/i;

    .line 55
    iget-object v1, p0, Lcom/oplus/widevine/b/g;->c:Lcom/oplus/widevine/b/i;

    invoke-virtual {v1}, Lcom/oplus/widevine/b/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/widevine/b/g;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object p0, p0, Lcom/oplus/widevine/b/g;->c:Lcom/oplus/widevine/b/i;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/i;->sendEmptyMessage(I)Z

    .line 59
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "RealmeKeyManager"

    const-string v1, "mHandler.quit"

    .line 83
    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->c:Lcom/oplus/widevine/b/i;

    if-eqz v0, :cond_1

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->c:Lcom/oplus/widevine/b/i;

    invoke-virtual {v0}, Lcom/oplus/widevine/b/i;->b()V

    .line 89
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->c:Lcom/oplus/widevine/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/widevine/b/i;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "RealmeKeyManager"

    const-string v1, "mWorkTask.quit"

    .line 91
    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 96
    :try_start_2
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v0, "RealmeKeyManager"

    const-string v1, "mWorkThread.quitSafely"

    .line 98
    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/widevine/b/g;->d()V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/oplus/widevine/b/g;->e:Landroid/net/ConnectivityManager;

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->e:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/oplus/widevine/b/g;->i:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 2

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->e:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oplus/widevine/b/g;->e:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/oplus/widevine/b/g;->i:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method
