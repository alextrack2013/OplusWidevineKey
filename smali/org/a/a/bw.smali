.class Lorg/a/a/bw;
.super Lorg/a/a/u;


# instance fields
.field private b:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/u;-><init>()V

    iput-object p1, p0, Lorg/a/a/bw;->b:[B

    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, Lorg/a/a/bv;

    iget-object v1, p0, Lorg/a/a/bw;->b:[B

    invoke-direct {v0, v1}, Lorg/a/a/bv;-><init>([B)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/a/a/bw;->a:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/bw;->b:[B

    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)Lorg/a/a/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/a/a/bw;->j()V

    :cond_0
    invoke-super {p0, p1}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lorg/a/a/r;)V
    .locals 1

    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    iget-object p0, p0, Lorg/a/a/bw;->b:[B

    invoke-virtual {p1, v0, p0}, Lorg/a/a/r;->a(I[B)V

    return-void

    :cond_0
    invoke-super {p0}, Lorg/a/a/u;->g()Lorg/a/a/t;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/a/a/t;->a(Lorg/a/a/r;)V

    return-void
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/bw;->b:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/a/a/u;->g()Lorg/a/a/t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/a/a/t;->c()I

    move-result p0

    return p0
.end method

.method public declared-synchronized d()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/a/a/u;->d()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/a/a/bv;

    iget-object v1, p0, Lorg/a/a/bw;->b:[B

    invoke-direct {v0, v1}, Lorg/a/a/bv;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/a/a/bw;->j()V

    :cond_0
    invoke-super {p0}, Lorg/a/a/u;->e()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()Lorg/a/a/t;
    .locals 1

    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/a/a/bw;->j()V

    :cond_0
    invoke-super {p0}, Lorg/a/a/u;->f()Lorg/a/a/t;

    move-result-object p0

    return-object p0
.end method

.method g()Lorg/a/a/t;
    .locals 1

    iget-object v0, p0, Lorg/a/a/bw;->b:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/a/a/bw;->j()V

    :cond_0
    invoke-super {p0}, Lorg/a/a/u;->g()Lorg/a/a/t;

    move-result-object p0

    return-object p0
.end method
