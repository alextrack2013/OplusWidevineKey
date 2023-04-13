.class public Lorg/a/a/al;
.super Lorg/a/a/z;


# direct methods
.method public constructor <init>(ZILorg/a/a/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/z;-><init>(ZILorg/a/a/f;)V

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 2

    iget v0, p0, Lorg/a/a/al;->a:I

    const/16 v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lorg/a/a/r;->a(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    iget-boolean v0, p0, Lorg/a/a/al;->b:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/a/a/al;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    instance-of v0, v0, Lorg/a/a/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    instance-of v0, v0, Lorg/a/a/af;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    check-cast p0, Lorg/a/a/af;

    invoke-virtual {p0}, Lorg/a/a/af;->j()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    check-cast p0, Lorg/a/a/p;

    new-instance v0, Lorg/a/a/af;

    invoke-virtual {p0}, Lorg/a/a/p;->d()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/a/af;-><init>([B)V

    invoke-virtual {v0}, Lorg/a/a/af;->j()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    instance-of v0, v0, Lorg/a/a/u;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    check-cast p0, Lorg/a/a/u;

    invoke-virtual {p0}, Lorg/a/a/u;->d()Ljava/util/Enumeration;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    instance-of v0, v0, Lorg/a/a/w;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    check-cast p0, Lorg/a/a/w;

    invoke-virtual {p0}, Lorg/a/a/w;->b()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/f;

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(Lorg/a/a/f;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/a/a/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/a/a/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    invoke-virtual {p1, p0}, Lorg/a/a/r;->a(Lorg/a/a/f;)V

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    return-void
.end method

.method a()Z
    .locals 2

    iget-boolean v0, p0, Lorg/a/a/al;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/a/a/al;->c:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    invoke-interface {p0}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/a/a/t;->f()Lorg/a/a/t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/a/a/t;->a()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method c()I
    .locals 2

    iget-boolean v0, p0, Lorg/a/a/al;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/a/a/al;->d:Lorg/a/a/f;

    invoke-interface {v0}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/t;->c()I

    move-result v0

    iget-boolean v1, p0, Lorg/a/a/al;->c:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lorg/a/a/al;->a:I

    invoke-static {p0}, Lorg/a/a/bz;->b(I)I

    move-result p0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lorg/a/a/al;->a:I

    invoke-static {p0}, Lorg/a/a/bz;->b(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    iget p0, p0, Lorg/a/a/al;->a:I

    invoke-static {p0}, Lorg/a/a/bz;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
