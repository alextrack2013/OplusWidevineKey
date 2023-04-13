.class public Lorg/a/a/aq;
.super Lorg/a/a/c;


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/a/a/c;-><init>([BI)V

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 4

    iget-object v0, p0, Lorg/a/a/aq;->a:[B

    iget v1, p0, Lorg/a/a/aq;->b:I

    invoke-static {v0, v1}, Lorg/a/a/aq;->a([BI)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {p0}, Lorg/a/a/aq;->e()I

    move-result p0

    int-to-byte p0, p0

    const/4 v3, 0x0

    aput-byte p0, v1, v3

    array-length p0, v1

    sub-int/2addr p0, v2

    invoke-static {v0, v3, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0, v1}, Lorg/a/a/r;->a(I[B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/aq;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/aq;->a:[B

    array-length p0, p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
