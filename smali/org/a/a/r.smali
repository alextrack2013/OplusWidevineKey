.class public Lorg/a/a/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/r$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/r;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method a()Lorg/a/a/r;
    .locals 1

    new-instance v0, Lorg/a/a/bb;

    iget-object p0, p0, Lorg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lorg/a/a/bb;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method a(I)V
    .locals 3

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    :goto_0
    ushr-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v1, v2, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lorg/a/a/r;->b(I)V

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    :goto_1
    if-ltz v2, :cond_2

    shr-int v0, p1, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/a/a/r;->b(I)V

    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    :cond_1
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/a/a/r;->b(I)V

    :cond_2
    return-void
.end method

.method a(II)V
    .locals 3

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_0

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/a/a/r;->b(I)V

    return-void

    :cond_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/a/a/r;->b(I)V

    const/16 p1, 0x80

    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lorg/a/a/r;->b(I)V

    return-void

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_2
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2

    array-length p1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/a/a/r;->a([BII)V

    return-void
.end method

.method a(II[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/a/a/r;->a(II)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lorg/a/a/r;->a(I)V

    invoke-virtual {p0, p3}, Lorg/a/a/r;->a([B)V

    return-void
.end method

.method a(I[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/a/a/r;->b(I)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lorg/a/a/r;->a(I)V

    invoke-virtual {p0, p2}, Lorg/a/a/r;->a([B)V

    return-void
.end method

.method public a(Lorg/a/a/f;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/a/a/t;->a(Lorg/a/a/r;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "null object detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a(Lorg/a/a/t;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/a/a/r$a;

    iget-object v1, p0, Lorg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lorg/a/a/r$a;-><init>(Lorg/a/a/r;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lorg/a/a/t;->a(Lorg/a/a/r;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "null object detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a([B)V
    .locals 0

    iget-object p0, p0, Lorg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method a([BII)V
    .locals 0

    iget-object p0, p0, Lorg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method b()Lorg/a/a/r;
    .locals 1

    new-instance v0, Lorg/a/a/bo;

    iget-object p0, p0, Lorg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-direct {v0, p0}, Lorg/a/a/bo;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method b(I)V
    .locals 0

    iget-object p0, p0, Lorg/a/a/r;->a:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
