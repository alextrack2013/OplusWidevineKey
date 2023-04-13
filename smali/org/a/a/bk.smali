.class public Lorg/a/a/bk;
.super Lorg/a/a/t;


# static fields
.field private static final a:[C


# instance fields
.field private final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/a/a/bk;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    invoke-static {p1}, Lorg/a/b/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/bk;->b:[B

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/bk;->d()[B

    move-result-object p0

    const/16 v0, 0x1c

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

    instance-of v0, p1, Lorg/a/a/bk;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/a/a/bk;->b:[B

    check-cast p1, Lorg/a/a/bk;

    iget-object p1, p1, Lorg/a/a/bk;->b:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lorg/a/a/r;

    invoke-direct {v2, v1}, Lorg/a/a/r;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v2, p0}, Lorg/a/a/r;->a(Lorg/a/a/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    sget-object v2, Lorg/a/a/bk;->a:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/a/a/bk;->a:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Lorg/a/a/s;

    const-string v0, "internal error encoding BitString"

    invoke-direct {p0, v0}, Lorg/a/a/s;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/bk;->b:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/bk;->b:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lorg/a/a/bk;->b:[B

    invoke-static {p0}, Lorg/a/b/a;->b([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/bk;->b:[B

    invoke-static {p0}, Lorg/a/b/a;->a([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/bk;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
