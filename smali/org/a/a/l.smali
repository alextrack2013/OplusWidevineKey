.class public Lorg/a/a/l;
.super Lorg/a/a/t;


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>([BZ)V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    const-string v0, "org.bouncycastle.asn1.allow_unsafe_integer"

    invoke-static {v0}, Lorg/a/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/a/a/l;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/a/b/a;->b([B)[B

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/a/a/l;->a:[B

    return-void
.end method

.method static a([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    aget-byte v0, p0, v1

    if-nez v0, :cond_0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    iget-object p0, p0, Lorg/a/a/l;->a:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lorg/a/a/r;->a(I[B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method a(Lorg/a/a/t;)Z
    .locals 1

    instance-of v0, p1, Lorg/a/a/l;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/a/a/l;

    iget-object p0, p0, Lorg/a/a/l;->a:[B

    iget-object p1, p1, Lorg/a/a/l;->a:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/a/a/l;->a:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/l;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/l;->a:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/a/a/l;->a:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/a/a/l;->a:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/l;->b()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
