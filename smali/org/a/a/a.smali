.class public abstract Lorg/a/a/a;
.super Lorg/a/a/t;


# instance fields
.field protected final a:Z

.field protected final b:I

.field protected final c:[B


# direct methods
.method constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    iput-boolean p1, p0, Lorg/a/a/a;->a:Z

    iput p2, p0, Lorg/a/a/a;->b:I

    invoke-static {p3}, Lorg/a/b/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/a;->c:[B

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 2

    iget-boolean v0, p0, Lorg/a/a/a;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lorg/a/a/a;->b:I

    iget-object p0, p0, Lorg/a/a/a;->c:[B

    invoke-virtual {p1, v0, v1, p0}, Lorg/a/a/r;->a(II[B)V

    return-void
.end method

.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lorg/a/a/a;->a:Z

    return p0
.end method

.method a(Lorg/a/a/t;)Z
    .locals 3

    instance-of v0, p1, Lorg/a/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/a/a/a;

    iget-boolean v0, p0, Lorg/a/a/a;->a:Z

    iget-boolean v2, p1, Lorg/a/a/a;->a:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/a/a/a;->b:I

    iget v2, p1, Lorg/a/a/a;->b:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lorg/a/a/a;->c:[B

    iget-object p1, p1, Lorg/a/a/a;->c:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lorg/a/a/a;->b:I

    return p0
.end method

.method c()I
    .locals 2

    iget v0, p0, Lorg/a/a/a;->b:I

    invoke-static {v0}, Lorg/a/a/bz;->b(I)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/a;->c:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/a/a/bz;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/a/a/a;->c:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/a/a/a;->a:Z

    iget v1, p0, Lorg/a/a/a;->b:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lorg/a/a/a;->c:[B

    invoke-static {p0}, Lorg/a/b/a;->a([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
