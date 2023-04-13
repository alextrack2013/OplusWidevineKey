.class public Lorg/a/a/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I

.field private final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/a/a/bz;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    iput p2, p0, Lorg/a/a/y;->b:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/a/a/y;->c:[[B

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/a/a/bu;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    check-cast p0, Lorg/a/a/bu;

    invoke-virtual {p0, p1}, Lorg/a/a/bu;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lorg/a/a/f;
    .locals 6

    iget-object v0, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/a/a/y;->a(Z)V

    iget-object v2, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lorg/a/a/k;->a(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v1, v4

    :cond_1
    iget-object v3, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    iget v5, p0, Lorg/a/a/y;->b:I

    invoke-static {v3, v5}, Lorg/a/a/k;->b(Ljava/io/InputStream;I)I

    move-result v3

    if-gez v3, :cond_5

    if-nez v1, :cond_2

    new-instance p0, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Lorg/a/a/bu;

    iget-object v3, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    iget v5, p0, Lorg/a/a/y;->b:I

    invoke-direct {v1, v3, v5}, Lorg/a/a/bu;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/a/a/y;

    iget p0, p0, Lorg/a/a/y;->b:I

    invoke-direct {v3, v1, p0}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p0, v0, 0x40

    if-eqz p0, :cond_3

    new-instance p0, Lorg/a/a/ad;

    invoke-direct {p0, v2, v3}, Lorg/a/a/ad;-><init>(ILorg/a/a/y;)V

    return-object p0

    :cond_3
    and-int/lit16 p0, v0, 0x80

    if-eqz p0, :cond_4

    new-instance p0, Lorg/a/a/am;

    invoke-direct {p0, v4, v2, v3}, Lorg/a/a/am;-><init>(ZILorg/a/a/y;)V

    return-object p0

    :cond_4
    invoke-virtual {v3, v2}, Lorg/a/a/y;->a(I)Lorg/a/a/f;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v4, Lorg/a/a/bs;

    iget-object v5, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    invoke-direct {v4, v5, v3}, Lorg/a/a/bs;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_6

    new-instance p0, Lorg/a/a/ao;

    invoke-virtual {v4}, Lorg/a/a/bs;->b()[B

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lorg/a/a/ao;-><init>(ZI[B)V

    return-object p0

    :cond_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    new-instance p0, Lorg/a/a/am;

    new-instance v0, Lorg/a/a/y;

    invoke-direct {v0, v4}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, v2, v0}, Lorg/a/a/am;-><init>(ZILorg/a/a/y;)V

    return-object p0

    :cond_7
    const/4 v0, 0x4

    if-eqz v1, :cond_a

    if-eq v2, v0, :cond_9

    const/16 p0, 0x8

    if-eq v2, p0, :cond_8

    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lorg/a/a/bg;

    new-instance v0, Lorg/a/a/y;

    invoke-direct {v0, v4}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/a/a/bg;-><init>(Lorg/a/a/y;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/a/a/be;

    new-instance v0, Lorg/a/a/y;

    invoke-direct {v0, v4}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/a/a/be;-><init>(Lorg/a/a/y;)V

    return-object p0

    :cond_8
    new-instance p0, Lorg/a/a/as;

    new-instance v0, Lorg/a/a/y;

    invoke-direct {v0, v4}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/a/a/as;-><init>(Lorg/a/a/y;)V

    return-object p0

    :cond_9
    new-instance p0, Lorg/a/a/ag;

    new-instance v0, Lorg/a/a/y;

    invoke-direct {v0, v4}, Lorg/a/a/y;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/a/a/ag;-><init>(Lorg/a/a/y;)V

    return-object p0

    :cond_a
    if-eq v2, v0, :cond_b

    :try_start_0
    iget-object p0, p0, Lorg/a/a/y;->c:[[B

    invoke-static {v2, v4, p0}, Lorg/a/a/k;->a(ILorg/a/a/bs;[[B)Lorg/a/a/t;

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

    :cond_b
    new-instance p0, Lorg/a/a/ba;

    invoke-direct {p0, v4}, Lorg/a/a/ba;-><init>(Lorg/a/a/bs;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(I)Lorg/a/a/f;
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lorg/a/a/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown BER object encountered: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/a/a/i;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Lorg/a/a/ak;

    invoke-direct {p1, p0}, Lorg/a/a/ak;-><init>(Lorg/a/a/y;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/a/a/ai;

    invoke-direct {p1, p0}, Lorg/a/a/ai;-><init>(Lorg/a/a/y;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/a/a/as;

    invoke-direct {p1, p0}, Lorg/a/a/as;-><init>(Lorg/a/a/y;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/a/a/ag;

    invoke-direct {p1, p0}, Lorg/a/a/ag;-><init>(Lorg/a/a/y;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(ZI)Lorg/a/a/t;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    check-cast p0, Lorg/a/a/bs;

    new-instance p1, Lorg/a/a/bi;

    new-instance v1, Lorg/a/a/az;

    invoke-virtual {p0}, Lorg/a/a/bs;->b()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/a/a/az;-><init>([B)V

    invoke-direct {p1, v0, p2, v1}, Lorg/a/a/bi;-><init>(ZILorg/a/a/f;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/y;->b()Lorg/a/a/g;

    move-result-object p1

    iget-object p0, p0, Lorg/a/a/y;->a:Ljava/io/InputStream;

    instance-of p0, p0, Lorg/a/a/bu;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lorg/a/a/g;->a()I

    move-result p0

    if-ne p0, v1, :cond_1

    new-instance p0, Lorg/a/a/al;

    invoke-virtual {p1, v0}, Lorg/a/a/g;->a(I)Lorg/a/a/f;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lorg/a/a/al;-><init>(ZILorg/a/a/f;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/a/a/al;

    invoke-static {p1}, Lorg/a/a/ae;->a(Lorg/a/a/g;)Lorg/a/a/ah;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/a/a/al;-><init>(ZILorg/a/a/f;)V

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lorg/a/a/g;->a()I

    move-result p0

    if-ne p0, v1, :cond_3

    new-instance p0, Lorg/a/a/bi;

    invoke-virtual {p1, v0}, Lorg/a/a/g;->a(I)Lorg/a/a/f;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lorg/a/a/bi;-><init>(ZILorg/a/a/f;)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/a/a/bi;

    invoke-static {p1}, Lorg/a/a/at;->a(Lorg/a/a/g;)Lorg/a/a/u;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/a/a/bi;-><init>(ZILorg/a/a/f;)V

    return-object p0
.end method

.method b()Lorg/a/a/g;
    .locals 3

    new-instance v0, Lorg/a/a/g;

    invoke-direct {v0}, Lorg/a/a/g;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/y;->a()Lorg/a/a/f;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/a/a/bt;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/a/a/bt;

    invoke-interface {v1}, Lorg/a/a/bt;->e()Lorg/a/a/t;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/a/a/g;->a(Lorg/a/a/f;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object v0
.end method
