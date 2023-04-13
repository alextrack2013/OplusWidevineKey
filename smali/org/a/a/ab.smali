.class public Lorg/a/a/ab;
.super Lorg/a/a/t;


# instance fields
.field private a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    iput-object p1, p0, Lorg/a/a/ab;->a:[B

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 3

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    iget-object v0, p0, Lorg/a/a/ab;->a:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(I)V

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lorg/a/a/ab;->a:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/a/a/r;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method a(Lorg/a/a/t;)Z
    .locals 1

    instance-of v0, p1, Lorg/a/a/ab;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/a/a/ab;->a:[B

    check-cast p1, Lorg/a/a/ab;

    iget-object p1, p1, Lorg/a/a/ab;->a:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    return p0
.end method

.method c()I
    .locals 1

    iget-object p0, p0, Lorg/a/a/ab;->a:[B

    array-length p0, p0

    invoke-static {p0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/ab;->a:[B

    invoke-static {p0}, Lorg/a/b/a;->a([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/a/a/ab;->a:[B

    invoke-static {p0}, Lorg/a/b/d;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
