.class public abstract Lorg/a/a/p;
.super Lorg/a/a/t;

# interfaces
.implements Lorg/a/a/q;


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "string cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iput-object p1, p0, Lorg/a/a/p;->a:[B

    return-void
.end method


# virtual methods
.method abstract a(Lorg/a/a/r;)V
.end method

.method a(Lorg/a/a/t;)Z
    .locals 1

    instance-of v0, p1, Lorg/a/a/p;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/a/a/p;

    iget-object p0, p0, Lorg/a/a/p;->a:[B

    iget-object p1, p1, Lorg/a/a/p;->a:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/a/a/p;->a:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lorg/a/a/p;->a:[B

    return-object p0
.end method

.method public e()Lorg/a/a/t;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/p;->h()Lorg/a/a/t;

    move-result-object p0

    return-object p0
.end method

.method f()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/az;

    iget-object p0, p0, Lorg/a/a/p;->a:[B

    invoke-direct {v0, p0}, Lorg/a/a/az;-><init>([B)V

    return-object v0
.end method

.method g()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/az;

    iget-object p0, p0, Lorg/a/a/p;->a:[B

    invoke-direct {v0, p0}, Lorg/a/a/az;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/p;->d()[B

    move-result-object p0

    invoke-static {p0}, Lorg/a/b/a;->a([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/a/a/p;->a:[B

    invoke-static {p0}, Lorg/a/b/a/c;->b([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/a/b/d;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
