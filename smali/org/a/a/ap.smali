.class public Lorg/a/a/ap;
.super Lorg/a/a/t;


# instance fields
.field private final a:[C


# direct methods
.method constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    iput-object p1, p0, Lorg/a/a/ap;->a:[C

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 3

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    iget-object v0, p0, Lorg/a/a/ap;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/a/a/ap;->a:[C

    array-length v1, v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/a/a/ap;->a:[C

    aget-char v1, v1, v0

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lorg/a/a/r;->b(I)V

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lorg/a/a/r;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected a(Lorg/a/a/t;)Z
    .locals 1

    instance-of v0, p1, Lorg/a/a/ap;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/a/a/ap;

    iget-object p0, p0, Lorg/a/a/ap;->a:[C

    iget-object p1, p1, Lorg/a/a/ap;->a:[C

    invoke-static {p0, p1}, Lorg/a/b/a;->a([C[C)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/a/a/ap;->a:[C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/ap;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/ap;->a:[C

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/ap;->a:[C

    invoke-static {p0}, Lorg/a/b/a;->a([C)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/ap;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
