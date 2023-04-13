.class public Lorg/a/a/af;
.super Lorg/a/a/p;


# instance fields
.field private b:[Lorg/a/a/p;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/p;-><init>([B)V

    return-void
.end method

.method public constructor <init>([Lorg/a/a/p;)V
    .locals 1

    invoke-static {p1}, Lorg/a/a/af;->a([Lorg/a/a/p;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/p;-><init>([B)V

    iput-object p1, p0, Lorg/a/a/af;->b:[Lorg/a/a/p;

    return-void
.end method

.method private static a([Lorg/a/a/p;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    :try_start_0
    aget-object v2, p0, v1

    check-cast v2, Lorg/a/a/az;

    invoke-virtual {v2}, Lorg/a/a/az;->d()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception converting octets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " found in input should only contain DEROctetString"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/a/a/af;)[Lorg/a/a/p;
    .locals 0

    iget-object p0, p0, Lorg/a/a/af;->b:[Lorg/a/a/p;

    return-object p0
.end method

.method private k()Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/a/a/af;->a:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit16 v3, v2, 0x3e8

    iget-object v4, p0, Lorg/a/a/af;->a:[B

    array-length v4, v4

    if-le v3, v4, :cond_0

    iget-object v4, p0, Lorg/a/a/af;->a:[B

    array-length v4, v4

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    sub-int/2addr v4, v2

    new-array v4, v4, [B

    iget-object v5, p0, Lorg/a/a/af;->a:[B

    array-length v6, v4

    invoke-static {v5, v2, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lorg/a/a/az;

    invoke-direct {v2, v4}, Lorg/a/a/az;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lorg/a/a/r;)V
    .locals 1

    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    invoke-virtual {p0}, Lorg/a/a/af;->j()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/f;

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(Lorg/a/a/f;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method c()I
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/af;->j()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a/f;

    invoke-interface {v1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/t;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lorg/a/a/af;->a:[B

    return-object p0
.end method

.method public j()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/a/a/af;->b:[Lorg/a/a/p;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/a/a/af;->k()Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/a/a/af$1;

    invoke-direct {v0, p0}, Lorg/a/a/af$1;-><init>(Lorg/a/a/af;)V

    return-object v0
.end method
