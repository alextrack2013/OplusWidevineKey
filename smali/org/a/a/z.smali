.class public abstract Lorg/a/a/z;
.super Lorg/a/a/t;

# interfaces
.implements Lorg/a/a/aa;


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Lorg/a/a/f;


# direct methods
.method public constructor <init>(ZILorg/a/a/f;)V
    .locals 2

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/z;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/z;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    instance-of v1, p3, Lorg/a/a/e;

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lorg/a/a/z;->c:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/a/a/z;->c:Z

    :goto_0
    iput p2, p0, Lorg/a/a/z;->a:I

    iget-boolean p1, p0, Lorg/a/a/z;->c:Z

    if-eqz p1, :cond_1

    :goto_1
    iput-object p3, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    return-void

    :cond_1
    invoke-interface {p3}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p1

    instance-of p1, p1, Lorg/a/a/w;

    goto :goto_1

    return-void
.end method


# virtual methods
.method abstract a(Lorg/a/a/r;)V
.end method

.method a(Lorg/a/a/t;)Z
    .locals 3

    instance-of v0, p1, Lorg/a/a/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/a/a/z;

    iget v0, p0, Lorg/a/a/z;->a:I

    iget v2, p1, Lorg/a/a/z;->a:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/a/a/z;->b:Z

    iget-boolean v2, p1, Lorg/a/a/z;->b:Z

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/a/a/z;->c:Z

    iget-boolean v2, p1, Lorg/a/a/z;->c:Z

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    if-nez v0, :cond_2

    iget-object p0, p1, Lorg/a/a/z;->d:Lorg/a/a/f;

    if-eqz p0, :cond_3

    return v1

    :cond_2
    iget-object p0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    invoke-interface {p0}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p0

    iget-object p1, p1, Lorg/a/a/z;->d:Lorg/a/a/f;

    invoke-interface {p1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a/t;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lorg/a/a/z;->a:I

    return p0
.end method

.method public d()Lorg/a/a/t;
    .locals 1

    iget-object v0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    invoke-interface {p0}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Lorg/a/a/t;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/z;->h()Lorg/a/a/t;

    move-result-object p0

    return-object p0
.end method

.method f()Lorg/a/a/t;
    .locals 3

    new-instance v0, Lorg/a/a/bi;

    iget-boolean v1, p0, Lorg/a/a/z;->c:Z

    iget v2, p0, Lorg/a/a/z;->a:I

    iget-object p0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    invoke-direct {v0, v1, v2, p0}, Lorg/a/a/bi;-><init>(ZILorg/a/a/f;)V

    return-object v0
.end method

.method g()Lorg/a/a/t;
    .locals 3

    new-instance v0, Lorg/a/a/br;

    iget-boolean v1, p0, Lorg/a/a/z;->c:Z

    iget v2, p0, Lorg/a/a/z;->a:I

    iget-object p0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    invoke-direct {v0, v1, v2, p0}, Lorg/a/a/br;-><init>(ZILorg/a/a/f;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/a/a/z;->a:I

    iget-object v1, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/a/a/z;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/a/a/z;->d:Lorg/a/a/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
