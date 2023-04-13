.class public abstract Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Landroidx/lifecycle/u;->b:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .locals 1

    .line 187
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    check-cast p0, Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/Map;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object p0, p0, Landroidx/lifecycle/u;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final d()V
    .locals 3

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Landroidx/lifecycle/u;->b:Z

    .line 131
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroidx/lifecycle/u;->a:Ljava/util/Map;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/u;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroidx/lifecycle/u;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 139
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/lifecycle/u;->a()V

    return-void
.end method
