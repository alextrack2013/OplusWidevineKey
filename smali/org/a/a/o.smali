.class public Lorg/a/a/o;
.super Lorg/a/a/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/o$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/a/a/o$a;",
            "Lorg/a/a/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/a/a/o;->c:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>([B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lorg/a/a/t;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x1

    move v11, v3

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v12, v1

    if-eq v3, v12, :cond_8

    aget-byte v12, v1, v3

    and-int/lit16 v12, v12, 0xff

    const-wide v13, 0xffffffffffff80L

    cmp-long v13, v8, v13

    const/16 v4, 0x32

    const-wide/16 v5, 0x50

    if-gtz v13, :cond_4

    and-int/lit8 v7, v12, 0x7f

    int-to-long v14, v7

    add-long/2addr v8, v14

    and-int/lit16 v7, v12, 0x80

    if-nez v7, :cond_3

    if-eqz v11, :cond_2

    const-wide/16 v11, 0x28

    cmp-long v7, v8, v11

    if-gez v7, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    cmp-long v7, v8, v5

    if-gez v7, :cond_1

    const/16 v4, 0x31

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long/2addr v8, v11

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long/2addr v8, v5

    :goto_1
    const/16 v4, 0x2e

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x2e

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x0

    goto :goto_4

    :cond_3
    const/4 v4, 0x7

    shl-long v4, v8, v4

    move-wide v8, v4

    goto :goto_4

    :cond_4
    if-nez v10, :cond_5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    :cond_5
    and-int/lit8 v7, v12, 0x7f

    int-to-long v13, v7

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    and-int/lit16 v10, v12, 0x80

    if-nez v10, :cond_7

    if-eqz v11, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v4, 0x2e

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/16 v4, 0x2e

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v4, 0x7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    move-object v10, v4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/a/a/o;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lorg/a/b/a;->b([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/a/a/o;->b:[B

    return-void
.end method

.method static a([B)Lorg/a/a/o;
    .locals 2

    new-instance v0, Lorg/a/a/o$a;

    invoke-direct {v0, p0}, Lorg/a/a/o$a;-><init>([B)V

    sget-object v1, Lorg/a/a/o;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/o;

    if-nez v0, :cond_0

    new-instance v0, Lorg/a/a/o;

    invoke-direct {v0, p0}, Lorg/a/a/o;-><init>([B)V

    :cond_0
    return-object v0
.end method

.method private a(Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    new-instance v0, Lorg/a/a/by;

    iget-object v1, p0, Lorg/a/a/o;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/a/a/by;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/a/a/by;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    invoke-virtual {v0}, Lorg/a/a/by;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-gt v3, v4, :cond_0

    int-to-long v5, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v5, v1

    invoke-direct {p0, p1, v5, v6}, Lorg/a/a/o;->a(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/a/a/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    :goto_0
    invoke-virtual {v0}, Lorg/a/a/by;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/a/a/by;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lorg/a/a/o;->a(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lorg/a/a/o;->a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/io/ByteArrayOutputStream;J)V
    .locals 5

    const/16 p0, 0x9

    new-array v0, p0, [B

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    :goto_0
    const-wide/16 v3, 0x80

    cmp-long v1, p2, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x7

    shr-long/2addr p2, v1

    add-int/lit8 v2, v2, -0x1

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v2

    invoke-virtual {p1, v0, v2, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 5

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x6

    const/4 v0, 0x7

    div-int/2addr p0, v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    new-array v2, p0, [B

    add-int/lit8 p0, p0, -0x1

    move-object v3, p2

    move p2, p0

    :goto_0
    if-ltz p2, :cond_1

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, p2

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    aget-byte p2, v2, p0

    and-int/lit8 p2, p2, 0x7f

    int-to-byte p2, p2

    aput-byte p2, v2, p0

    array-length p0, v2

    invoke-virtual {p1, v2, v1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method private declared-synchronized d()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/a/o;->b:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lorg/a/a/o;->a(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/o;->b:[B

    :cond_0
    iget-object v0, p0, Lorg/a/a/o;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/o;->d()[B

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    array-length v0, p0

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(I)V

    invoke-virtual {p1, p0}, Lorg/a/a/r;->a([B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method a(Lorg/a/a/t;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/a/a/o;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lorg/a/a/o;->a:Ljava/lang/String;

    check-cast p1, Lorg/a/a/o;

    iget-object p1, p1, Lorg/a/a/o;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/a/a/o;->a:Ljava/lang/String;

    return-object p0
.end method

.method c()I
    .locals 1

    invoke-direct {p0}, Lorg/a/a/o;->d()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/o;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/o;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
