.class public Lorg/a/a/k;
.super Ljava/io/FilterInputStream;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/a/a/bz;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/a/a/k;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/a/a/k;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lorg/a/a/k;->a:I

    iput-boolean p3, p0, Lorg/a/a/k;->b:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/a/a/k;->c:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/a/a/k;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/a/a/k;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static a(Ljava/io/InputStream;I)I
    .locals 2

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    if-nez v1, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found inside tag value."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    and-int/lit8 p0, v0, 0x7f

    or-int/2addr p1, p0

    :cond_3
    return p1
.end method

.method static a(ILorg/a/a/bs;[[B)Lorg/a/a/t;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " encountered"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lorg/a/a/bk;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/bk;-><init>([B)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/a/a/au;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/au;-><init>([B)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/a/a/bm;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/bm;-><init>([B)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/a/a/av;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/av;-><init>([B)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/a/a/j;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/j;-><init>([B)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/a/a/ab;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/ab;-><init>([B)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/a/a/aw;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/aw;-><init>([B)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/a/a/bl;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/bl;-><init>([B)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/a/a/bh;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/bh;-><init>([B)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/a/a/bc;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/bc;-><init>([B)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/a/a/ay;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/ay;-><init>([B)V

    return-object p0

    :pswitch_b
    invoke-static {p1, p2}, Lorg/a/a/k;->a(Lorg/a/a/bs;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/a/a/o;->a([B)Lorg/a/a/o;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/a/a/ax;->a:Lorg/a/a/ax;

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/a/a/az;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/az;-><init>([B)V

    return-object p0

    :pswitch_e
    invoke-virtual {p1}, Lorg/a/a/bs;->a()I

    move-result p0

    invoke-static {p0, p1}, Lorg/a/a/c;->a(ILjava/io/InputStream;)Lorg/a/a/c;

    move-result-object p0

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/a/a/l;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/a/a/l;-><init>([BZ)V

    return-object p0

    :pswitch_10
    invoke-static {p1, p2}, Lorg/a/a/k;->a(Lorg/a/a/bs;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/a/a/d;->a([B)Lorg/a/a/d;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/a/a/ap;

    invoke-static {p1}, Lorg/a/a/k;->b(Lorg/a/a/bs;)[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/ap;-><init>([C)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/a/a/bj;

    invoke-virtual {p1}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/bj;-><init>([B)V

    return-object p0

    :cond_2
    invoke-static {p1, p2}, Lorg/a/a/k;->a(Lorg/a/a/bs;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/a/a/h;->a([B)Lorg/a/a/h;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lorg/a/a/bs;[[B)[B
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/bs;->a()I

    move-result v0

    invoke-virtual {p0}, Lorg/a/a/bs;->a()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_0
    invoke-static {p0, v1}, Lorg/a/b/b/a;->a(Ljava/io/InputStream;[B)I

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/a/a/bs;->b()[B

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/io/InputStream;I)I
    .locals 4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/16 v1, 0x7f

    if-le v0, v1, :cond_7

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DER length more than 4 bytes: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_3

    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - negative length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-lt v2, p1, :cond_6

    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - out of bounds length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v0, v2

    :cond_7
    return v0
.end method

.method private static b(Lorg/a/a/bs;)[C
    .locals 6

    invoke-virtual {p0}, Lorg/a/a/bs;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lorg/a/a/bs;->read()I

    move-result v3

    if-gez v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/bs;->read()I

    move-result v4

    if-gez v4, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v5

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method a()I
    .locals 0

    iget p0, p0, Lorg/a/a/k;->a:I

    return p0
.end method

.method a(Lorg/a/a/bs;)Lorg/a/a/g;
    .locals 0

    new-instance p0, Lorg/a/a/k;

    invoke-direct {p0, p1}, Lorg/a/a/k;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/a/a/k;->c()Lorg/a/a/g;

    move-result-object p0

    return-object p0
.end method

.method protected a(III)Lorg/a/a/t;
    .locals 3

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lorg/a/a/bs;

    invoke-direct {v2, p0, p3}, Lorg/a/a/bs;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1

    new-instance p0, Lorg/a/a/ao;

    invoke-virtual {v2}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/a/a/ao;-><init>(ZI[B)V

    return-object p0

    :cond_1
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    new-instance p0, Lorg/a/a/y;

    invoke-direct {p0, v2}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lorg/a/a/y;->a(ZI)Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_7

    const/4 p1, 0x4

    if-eq p2, p1, :cond_5

    const/16 p1, 0x8

    if-eq p2, p1, :cond_4

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown tag "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, v2}, Lorg/a/a/k;->a(Lorg/a/a/bs;)Lorg/a/a/g;

    move-result-object p0

    invoke-static {p0}, Lorg/a/a/at;->b(Lorg/a/a/g;)Lorg/a/a/w;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-boolean p1, p0, Lorg/a/a/k;->b:Z

    if-eqz p1, :cond_3

    new-instance p0, Lorg/a/a/bw;

    invoke-virtual {v2}, Lorg/a/a/bs;->b()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/bw;-><init>([B)V

    return-object p0

    :cond_3
    invoke-virtual {p0, v2}, Lorg/a/a/k;->a(Lorg/a/a/bs;)Lorg/a/a/g;

    move-result-object p0

    invoke-static {p0}, Lorg/a/a/at;->a(Lorg/a/a/g;)Lorg/a/a/u;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Lorg/a/a/ar;

    invoke-virtual {p0, v2}, Lorg/a/a/k;->a(Lorg/a/a/bs;)Lorg/a/a/g;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/a/a/ar;-><init>(Lorg/a/a/g;)V

    return-object p1

    :cond_5
    invoke-virtual {p0, v2}, Lorg/a/a/k;->a(Lorg/a/a/bs;)Lorg/a/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lorg/a/a/g;->a()I

    move-result p1

    new-array p1, p1, [Lorg/a/a/p;

    :goto_1
    array-length p2, p1

    if-eq v1, p2, :cond_6

    invoke-virtual {p0, v1}, Lorg/a/a/g;->a(I)Lorg/a/a/f;

    move-result-object p2

    check-cast p2, Lorg/a/a/p;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/a/a/af;

    invoke-direct {p0, p1}, Lorg/a/a/af;-><init>([Lorg/a/a/p;)V

    return-object p0

    :cond_7
    iget-object p0, p0, Lorg/a/a/k;->c:[[B

    invoke-static {p2, v2, p0}, Lorg/a/a/k;->a(ILorg/a/a/bs;[[B)Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Lorg/a/a/k;->a:I

    invoke-static {p0, v0}, Lorg/a/a/k;->b(Ljava/io/InputStream;I)I

    move-result p0

    return p0
.end method

.method c()Lorg/a/a/g;
    .locals 2

    new-instance v0, Lorg/a/a/g;

    invoke-direct {v0}, Lorg/a/a/g;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/k;->d()Lorg/a/a/t;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/a/a/g;->a(Lorg/a/a/f;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()Lorg/a/a/t;
    .locals 5

    invoke-virtual {p0}, Lorg/a/a/k;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-nez v0, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string v0, "unexpected end-of-contents marker"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0, v0}, Lorg/a/a/k;->a(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/k;->b()I

    move-result v4

    if-gez v4, :cond_8

    if-nez v2, :cond_3

    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v2, Lorg/a/a/bu;

    iget v4, p0, Lorg/a/a/k;->a:I

    invoke-direct {v2, p0, v4}, Lorg/a/a/bu;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Lorg/a/a/y;

    iget p0, p0, Lorg/a/a/k;->a:I

    invoke-direct {v4, v2, p0}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p0, v0, 0x40

    if-eqz p0, :cond_4

    new-instance p0, Lorg/a/a/ad;

    invoke-direct {p0, v1, v4}, Lorg/a/a/ad;-><init>(ILorg/a/a/y;)V

    invoke-virtual {p0}, Lorg/a/a/ad;->e()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_4
    and-int/lit16 p0, v0, 0x80

    if-eqz p0, :cond_5

    new-instance p0, Lorg/a/a/am;

    invoke-direct {p0, v3, v1, v4}, Lorg/a/a/am;-><init>(ZILorg/a/a/y;)V

    invoke-virtual {p0}, Lorg/a/a/am;->e()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x4

    if-eq v1, p0, :cond_7

    const/16 p0, 0x8

    if-eq v1, p0, :cond_6

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown BER object encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lorg/a/a/ak;

    invoke-direct {p0, v4}, Lorg/a/a/ak;-><init>(Lorg/a/a/y;)V

    invoke-virtual {p0}, Lorg/a/a/ak;->e()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/a/a/ai;

    invoke-direct {p0, v4}, Lorg/a/a/ai;-><init>(Lorg/a/a/y;)V

    invoke-virtual {p0}, Lorg/a/a/ai;->e()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Lorg/a/a/as;

    invoke-direct {p0, v4}, Lorg/a/a/as;-><init>(Lorg/a/a/y;)V

    invoke-virtual {p0}, Lorg/a/a/as;->e()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Lorg/a/a/ag;

    invoke-direct {p0, v4}, Lorg/a/a/ag;-><init>(Lorg/a/a/y;)V

    invoke-virtual {p0}, Lorg/a/a/ag;->e()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_8
    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Lorg/a/a/k;->a(III)Lorg/a/a/t;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/a/a/i;

    const-string v1, "corrupted stream detected"

    invoke-direct {v0, v1, p0}, Lorg/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
