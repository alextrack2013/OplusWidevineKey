.class public Lorg/a/a/bi;
.super Lorg/a/a/z;


# static fields
.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/a/a/bi;->e:[B

    return-void
.end method

.method public constructor <init>(ZILorg/a/a/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/z;-><init>(ZILorg/a/a/f;)V

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 3

    iget-boolean v0, p0, Lorg/a/a/bi;->b:Z

    const/16 v1, 0xa0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/a/a/bi;->d:Lorg/a/a/f;

    invoke-interface {v0}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/t;->f()Lorg/a/a/t;

    move-result-object v0

    iget-boolean v2, p0, Lorg/a/a/bi;->c:Z

    if-eqz v2, :cond_0

    iget p0, p0, Lorg/a/a/bi;->a:I

    invoke-virtual {p1, v1, p0}, Lorg/a/a/r;->a(II)V

    invoke-virtual {v0}, Lorg/a/a/t;->c()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/a/a/r;->a(I)V

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(Lorg/a/a/f;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/a/a/t;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x80

    :goto_0
    iget p0, p0, Lorg/a/a/bi;->a:I

    invoke-virtual {p1, v1, p0}, Lorg/a/a/r;->a(II)V

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(Lorg/a/a/t;)V

    return-void

    :cond_2
    iget p0, p0, Lorg/a/a/bi;->a:I

    sget-object v0, Lorg/a/a/bi;->e:[B

    invoke-virtual {p1, v1, p0, v0}, Lorg/a/a/r;->a(II[B)V

    return-void
.end method

.method a()Z
    .locals 2

    iget-boolean v0, p0, Lorg/a/a/bi;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/a/a/bi;->c:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/a/a/bi;->d:Lorg/a/a/f;

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

    iget-boolean v0, p0, Lorg/a/a/bi;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/a/a/bi;->d:Lorg/a/a/f;

    invoke-interface {v0}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/t;->f()Lorg/a/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/t;->c()I

    move-result v0

    iget-boolean v1, p0, Lorg/a/a/bi;->c:Z

    if-eqz v1, :cond_0

    iget p0, p0, Lorg/a/a/bi;->a:I

    invoke-static {p0}, Lorg/a/a/bz;->b(I)I

    move-result p0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v1

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lorg/a/a/bi;->a:I

    invoke-static {p0}, Lorg/a/a/bz;->b(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    iget p0, p0, Lorg/a/a/bi;->a:I

    invoke-static {p0}, Lorg/a/a/bz;->b(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
