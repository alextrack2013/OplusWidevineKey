.class public abstract Lorg/a/a/c;
.super Lorg/a/a/t;


# static fields
.field private static final c:[C


# instance fields
.field protected final a:[B

.field protected final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/a/a/c;->c:[C

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

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "zero length data with non-zero pad bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x7

    if-gt p2, v0, :cond_3

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/a/b/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/c;->a:[B

    iput p2, p0, Lorg/a/a/c;->b:I

    return-void

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILjava/io/InputStream;)Lorg/a/a/c;
    .locals 3

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "truncated BIT STRING detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    sub-int/2addr p0, v0

    new-array p0, p0, [B

    array-length v2, p0

    if-eqz v2, :cond_2

    invoke-static {p1, p0}, Lorg/a/b/b/a;->a(Ljava/io/InputStream;[B)I

    move-result p1

    array-length v2, p0

    if-eq p1, v2, :cond_1

    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF encountered in middle of BIT STRING"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez v1, :cond_2

    const/16 p1, 0x8

    if-ge v1, p1, :cond_2

    array-length p1, p0

    sub-int/2addr p1, v0

    aget-byte p1, p0, p1

    array-length v2, p0

    sub-int/2addr v2, v0

    aget-byte v0, p0, v2

    const/16 v2, 0xff

    shl-int/2addr v2, v1

    and-int/2addr v0, v2

    int-to-byte v0, v0

    if-eq p1, v0, :cond_2

    new-instance p1, Lorg/a/a/bn;

    invoke-direct {p1, p0, v1}, Lorg/a/a/bn;-><init>([BI)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/a/a/aq;

    invoke-direct {p1, p0, v1}, Lorg/a/a/aq;-><init>([BI)V

    return-object p1
.end method

.method protected static a([BI)[B
    .locals 3

    invoke-static {p0}, Lorg/a/b/a;->b([B)[B

    move-result-object v0

    if-lez p1, :cond_0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    aget-byte v1, v0, p0

    const/16 v2, 0xff

    shl-int p1, v2, p1

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method abstract a(Lorg/a/a/r;)V
.end method

.method protected a(Lorg/a/a/t;)Z
    .locals 3

    instance-of v0, p1, Lorg/a/a/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/a/a/c;

    iget v0, p0, Lorg/a/a/c;->b:I

    iget v2, p1, Lorg/a/a/c;->b:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/a/a/c;->d()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/a/a/c;->d()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
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

    sget-object v2, Lorg/a/a/c;->c:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/a/a/c;->c:[C

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
    move-exception p0

    new-instance v0, Lorg/a/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error encoding BitString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/a/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lorg/a/a/c;->a:[B

    iget p0, p0, Lorg/a/a/c;->b:I

    invoke-static {v0, p0}, Lorg/a/a/c;->a([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lorg/a/a/c;->b:I

    return p0
.end method

.method f()Lorg/a/a/t;
    .locals 2

    new-instance v0, Lorg/a/a/aq;

    iget-object v1, p0, Lorg/a/a/c;->a:[B

    iget p0, p0, Lorg/a/a/c;->b:I

    invoke-direct {v0, v1, p0}, Lorg/a/a/aq;-><init>([BI)V

    return-object v0
.end method

.method g()Lorg/a/a/t;
    .locals 2

    new-instance v0, Lorg/a/a/bn;

    iget-object v1, p0, Lorg/a/a/c;->a:[B

    iget p0, p0, Lorg/a/a/c;->b:I

    invoke-direct {v0, v1, p0}, Lorg/a/a/bn;-><init>([BI)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/a/a/c;->b:I

    invoke-virtual {p0}, Lorg/a/a/c;->d()[B

    move-result-object p0

    invoke-static {p0}, Lorg/a/b/a;->a([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/c;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
