.class public Lorg/a/a/ac;
.super Lorg/a/a/a;


# direct methods
.method public constructor <init>(ILorg/a/a/g;)V
    .locals 1

    invoke-static {p2}, Lorg/a/a/ac;->a(Lorg/a/a/g;)[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/a/a/a;-><init>(ZI[B)V

    return-void
.end method

.method private static a(Lorg/a/a/g;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/g;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/a/a/g;->a(I)Lorg/a/a/f;

    move-result-object v2

    check-cast v2, Lorg/a/a/n;

    const-string v3, "BER"

    invoke-virtual {v2, v3}, Lorg/a/a/n;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/a/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/a/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 2

    iget-boolean v0, p0, Lorg/a/a/ac;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lorg/a/a/ac;->b:I

    invoke-virtual {p1, v0, v1}, Lorg/a/a/r;->a(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    iget-object p0, p0, Lorg/a/a/ac;->c:[B

    invoke-virtual {p1, p0}, Lorg/a/a/r;->a([B)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    return-void
.end method
