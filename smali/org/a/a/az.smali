.class public Lorg/a/a/az;
.super Lorg/a/a/p;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/p;-><init>([B)V

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    iget-object p0, p0, Lorg/a/a/az;->a:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lorg/a/a/r;->a(I[B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/az;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/a/a/az;->a:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method
