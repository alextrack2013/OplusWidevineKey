.class public Lorg/a/a/ar;
.super Lorg/a/a/t;


# instance fields
.field private a:Lorg/a/a/o;

.field private b:Lorg/a/a/l;

.field private c:Lorg/a/a/t;

.field private d:I

.field private e:Lorg/a/a/t;


# direct methods
.method public constructor <init>(Lorg/a/a/g;)V
    .locals 4

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/a/a/ar;->a(Lorg/a/a/g;I)Lorg/a/a/t;

    move-result-object v1

    instance-of v2, v1, Lorg/a/a/o;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/a/a/o;

    iput-object v1, p0, Lorg/a/a/ar;->a:Lorg/a/a/o;

    invoke-direct {p0, p1, v3}, Lorg/a/a/ar;->a(Lorg/a/a/g;I)Lorg/a/a/t;

    move-result-object v1

    move v0, v3

    :cond_0
    instance-of v2, v1, Lorg/a/a/l;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/a/a/l;

    iput-object v1, p0, Lorg/a/a/ar;->b:Lorg/a/a/l;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/a/a/ar;->a(Lorg/a/a/g;I)Lorg/a/a/t;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/a/a/z;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/a/a/ar;->c:Lorg/a/a/t;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/a/a/ar;->a(Lorg/a/a/g;I)Lorg/a/a/t;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/a/a/g;->a()I

    move-result p1

    add-int/2addr v0, v3

    if-eq p1, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input vector too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    instance-of p1, v1, Lorg/a/a/z;

    if-nez p1, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    check-cast v1, Lorg/a/a/z;

    invoke-virtual {v1}, Lorg/a/a/z;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/a/a/ar;->a(I)V

    invoke-virtual {v1}, Lorg/a/a/z;->d()Lorg/a/a/t;

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/ar;->e:Lorg/a/a/t;

    return-void
.end method

.method private a(Lorg/a/a/g;I)Lorg/a/a/t;
    .locals 0

    invoke-virtual {p1}, Lorg/a/a/g;->a()I

    move-result p0

    if-gt p0, p2, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input vector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/a/a/g;->a(I)Lorg/a/a/f;

    move-result-object p0

    invoke-interface {p0}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/a/a/ar;->d:I

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid encoding value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/a/a/ar;->a:Lorg/a/a/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/a/a/ar;->a:Lorg/a/a/o;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/a/a/o;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lorg/a/a/ar;->b:Lorg/a/a/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/ar;->b:Lorg/a/a/l;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/a/a/l;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lorg/a/a/ar;->c:Lorg/a/a/t;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/a/a/ar;->c:Lorg/a/a/t;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/a/a/t;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Lorg/a/a/bi;

    const/4 v2, 0x1

    iget v3, p0, Lorg/a/a/ar;->d:I

    iget-object p0, p0, Lorg/a/a/ar;->e:Lorg/a/a/t;

    invoke-direct {v1, v2, v3, p0}, Lorg/a/a/bi;-><init>(ZILorg/a/a/f;)V

    const-string p0, "DER"

    invoke-virtual {v1, p0}, Lorg/a/a/bi;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 p0, 0x20

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p0, v1, v0}, Lorg/a/a/r;->a(II[B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method a(Lorg/a/a/t;)Z
    .locals 3

    instance-of v0, p1, Lorg/a/a/ar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    check-cast p1, Lorg/a/a/ar;

    iget-object v0, p0, Lorg/a/a/ar;->a:Lorg/a/a/o;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/a/a/ar;->a:Lorg/a/a/o;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/a/a/ar;->a:Lorg/a/a/o;

    iget-object v2, p0, Lorg/a/a/ar;->a:Lorg/a/a/o;

    invoke-virtual {v0, v2}, Lorg/a/a/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/a/a/ar;->b:Lorg/a/a/l;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/a/a/ar;->b:Lorg/a/a/l;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/a/a/ar;->b:Lorg/a/a/l;

    iget-object v2, p0, Lorg/a/a/ar;->b:Lorg/a/a/l;

    invoke-virtual {v0, v2}, Lorg/a/a/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lorg/a/a/ar;->c:Lorg/a/a/t;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/a/a/ar;->c:Lorg/a/a/t;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/a/a/ar;->c:Lorg/a/a/t;

    iget-object v2, p0, Lorg/a/a/ar;->c:Lorg/a/a/t;

    invoke-virtual {v0, v2}, Lorg/a/a/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-object p0, p0, Lorg/a/a/ar;->e:Lorg/a/a/t;

    iget-object p1, p1, Lorg/a/a/ar;->e:Lorg/a/a/t;

    invoke-virtual {p0, p1}, Lorg/a/a/t;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method c()I
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/ar;->i()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/a/a/ar;->a:Lorg/a/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/ar;->a:Lorg/a/a/o;

    invoke-virtual {v0}, Lorg/a/a/o;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/a/a/ar;->b:Lorg/a/a/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/ar;->b:Lorg/a/a/l;

    invoke-virtual {v1}, Lorg/a/a/l;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lorg/a/a/ar;->c:Lorg/a/a/t;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/a/a/ar;->c:Lorg/a/a/t;

    invoke-virtual {v1}, Lorg/a/a/t;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object p0, p0, Lorg/a/a/ar;->e:Lorg/a/a/t;

    invoke-virtual {p0}, Lorg/a/a/t;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
