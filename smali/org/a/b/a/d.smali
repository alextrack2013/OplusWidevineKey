.class public Lorg/a/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/b/a/a;


# instance fields
.field protected final a:[B

.field protected final b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/a/b/a/d;->a:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/a/b/a/d;->b:[B

    invoke-virtual {p0}, Lorg/a/b/a/d;->a()V

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method


# virtual methods
.method public a([BIILjava/io/OutputStream;)I
    .locals 4

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/a/b/a/d;->a:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lorg/a/b/a/d;->a:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method protected a()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/a/b/a/d;->b:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/a/b/a/d;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/a/b/a/d;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/a/b/a/d;->b:[B

    iget-object v2, p0, Lorg/a/b/a/d;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/a/b/a/d;->b:[B

    const/16 v1, 0x41

    iget-object v2, p0, Lorg/a/b/a/d;->b:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/a/b/a/d;->b:[B

    const/16 v1, 0x42

    iget-object v2, p0, Lorg/a/b/a/d;->b:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/a/b/a/d;->b:[B

    const/16 v1, 0x43

    iget-object v2, p0, Lorg/a/b/a/d;->b:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/a/b/a/d;->b:[B

    const/16 v1, 0x44

    iget-object v2, p0, Lorg/a/b/a/d;->b:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/a/b/a/d;->b:[B

    const/16 v1, 0x45

    iget-object v2, p0, Lorg/a/b/a/d;->b:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/a/b/a/d;->b:[B

    const/16 v1, 0x46

    iget-object p0, p0, Lorg/a/b/a/d;->b:[B

    const/16 v2, 0x66

    aget-byte p0, p0, v2

    aput-byte p0, v0, v1

    return-void
.end method
