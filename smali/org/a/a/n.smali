.class public abstract Lorg/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lorg/a/a/bb;

    invoke-direct {v0, p1}, Lorg/a/a/bb;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/a/a/bb;->a(Lorg/a/a/f;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lorg/a/a/bo;

    invoke-direct {v0, p1}, Lorg/a/a/bo;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/a/a/bo;->a(Lorg/a/a/f;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/a/a/n;->i()[B

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/a/a/f;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/a/a/f;

    invoke-virtual {p0}, Lorg/a/a/n;->h()Lorg/a/a/t;

    move-result-object p0

    invoke-interface {p1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a/t;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract h()Lorg/a/a/t;
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/n;->h()Lorg/a/a/t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/a/a/t;->hashCode()I

    move-result p0

    return p0
.end method

.method public i()[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/a/a/r;

    invoke-direct {v1, v0}, Lorg/a/a/r;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lorg/a/a/r;->a(Lorg/a/a/f;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
