.class Lorg/a/a/bu;
.super Lorg/a/a/bx;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/a/a/bx;-><init>(Ljava/io/InputStream;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lorg/a/a/bu;->d:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/a/a/bu;->e:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    iput p2, p0, Lorg/a/a/bu;->b:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/a/a/bu;->c:I

    iget p1, p0, Lorg/a/a/bu;->c:I

    if-gez p1, :cond_0

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_0
    invoke-direct {p0}, Lorg/a/a/bu;->b()Z

    return-void
.end method

.method private b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/a/a/bu;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/a/a/bu;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/a/a/bu;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/a/a/bu;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/bu;->d:Z

    invoke-virtual {p0, v0}, Lorg/a/a/bu;->b(Z)V

    :cond_0
    iget-boolean p0, p0, Lorg/a/a/bu;->d:Z

    return p0
.end method


# virtual methods
.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/a/a/bu;->e:Z

    invoke-direct {p0}, Lorg/a/a/bu;->b()Z

    return-void
.end method

.method public read()I
    .locals 3

    invoke-direct {p0}, Lorg/a/a/bu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lorg/a/a/bu;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    iget v1, p0, Lorg/a/a/bu;->b:I

    iget v2, p0, Lorg/a/a/bu;->c:I

    iput v2, p0, Lorg/a/a/bu;->b:I

    iput v0, p0, Lorg/a/a/bu;->c:I

    return v1
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/a/a/bu;->e:Z

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/a/a/bu;->d:Z

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget-object v0, p0, Lorg/a/a/bu;->a:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-gez p3, :cond_2

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_2
    iget v0, p0, Lorg/a/a/bu;->b:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lorg/a/a/bu;->c:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    iget-object p1, p0, Lorg/a/a/bu;->a:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/a/a/bu;->b:I

    iget-object p1, p0, Lorg/a/a/bu;->a:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/a/a/bu;->c:I

    iget p0, p0, Lorg/a/a/bu;->c:I

    if-gez p0, :cond_3

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_3
    add-int/lit8 p3, p3, 0x2

    return p3

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/a/a/bx;->read([BII)I

    move-result p0

    return p0
.end method
