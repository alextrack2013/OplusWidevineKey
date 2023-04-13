.class public Lorg/a/a/bl;
.super Lorg/a/a/t;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    invoke-static {p1}, Lorg/a/b/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/bl;->a:[B

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    iget-object p0, p0, Lorg/a/a/bl;->a:[B

    const/16 v0, 0x15

    invoke-virtual {p1, v0, p0}, Lorg/a/a/r;->a(I[B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method a(Lorg/a/a/t;)Z
    .locals 1

    instance-of v0, p1, Lorg/a/a/bl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/a/a/bl;

    iget-object p0, p0, Lorg/a/a/bl;->a:[B

    iget-object p1, p1, Lorg/a/a/bl;->a:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    return p0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/bl;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/bl;->a:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/bl;->a:[B

    invoke-static {p0}, Lorg/a/b/a;->a([B)I

    move-result p0

    return p0
.end method
