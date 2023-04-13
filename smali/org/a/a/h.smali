.class public Lorg/a/a/h;
.super Lorg/a/a/t;


# static fields
.field private static b:[Lorg/a/a/h;


# instance fields
.field private final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/a/a/h;

    sput-object v0, Lorg/a/a/h;->b:[Lorg/a/a/h;

    return-void
.end method

.method public constructor <init>([B)V
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

    const-string p1, "malformed enumerated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, Lorg/a/b/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/h;->a:[B

    return-void
.end method

.method static a([B)Lorg/a/a/h;
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/a/a/h;

    invoke-direct {v0, p0}, Lorg/a/a/h;-><init>([B)V

    return-object v0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ENUMERATED has zero length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/a/a/h;->b:[Lorg/a/a/h;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    new-instance v0, Lorg/a/a/h;

    invoke-static {p0}, Lorg/a/b/a;->b([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/a/h;-><init>([B)V

    return-object v0

    :cond_2
    sget-object v1, Lorg/a/a/h;->b:[Lorg/a/a/h;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    sget-object v1, Lorg/a/a/h;->b:[Lorg/a/a/h;

    new-instance v2, Lorg/a/a/h;

    invoke-static {p0}, Lorg/a/b/a;->b([B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/a/a/h;-><init>([B)V

    aput-object v2, v1, v0

    move-object v1, v2

    :cond_3
    return-object v1
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    iget-object p0, p0, Lorg/a/a/h;->a:[B

    const/16 v0, 0xa

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

    instance-of v0, p1, Lorg/a/a/h;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/a/a/h;

    iget-object p0, p0, Lorg/a/a/h;->a:[B

    iget-object p1, p1, Lorg/a/a/h;->a:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/a/a/h;->a:[B

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/h;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/h;->a:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/h;->a:[B

    invoke-static {p0}, Lorg/a/b/a;->a([B)I

    move-result p0

    return p0
.end method
