.class public abstract Lorg/a/a/w;
.super Lorg/a/a/t;

# interfaces
.implements Lorg/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/a/a/t;",
        "Lorg/a/b/b<",
        "Lorg/a/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/w;->b:Z

    return-void
.end method

.method protected constructor <init>(Lorg/a/a/g;Z)V
    .locals 3

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/w;->b:Z

    :goto_0
    invoke-virtual {p1}, Lorg/a/a/g;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/a/a/g;->a(I)Lorg/a/a/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/a/a/w;->j()V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/Enumeration;)Lorg/a/a/f;
    .locals 0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/f;

    if-nez p0, :cond_0

    sget-object p0, Lorg/a/a/ax;->a:Lorg/a/a/ax;

    :cond_0
    return-object p0
.end method

.method private a([B[B)Z
    .locals 5

    array-length p0, p1

    array-length v0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eq v1, p0, :cond_2

    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    if-eq v3, v4, :cond_1

    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    aget-byte p1, p2, v1

    and-int/lit16 p1, p1, 0xff

    if-ge p0, p1, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length p1, p1

    if-ne p0, p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method private a(Lorg/a/a/f;)[B
    .locals 0

    :try_start_0
    invoke-interface {p1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p0

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lorg/a/a/t;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot encode object added to SET"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)Lorg/a/a/f;
    .locals 0

    iget-object p0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/f;

    return-object p0
.end method

.method abstract a(Lorg/a/a/r;)V
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method a(Lorg/a/a/t;)Z
    .locals 4

    instance-of v0, p1, Lorg/a/a/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/a/a/w;

    invoke-virtual {p0}, Lorg/a/a/w;->d()I

    move-result v0

    invoke-virtual {p1}, Lorg/a/a/w;->d()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/a/a/w;->b()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/w;->b()Ljava/util/Enumeration;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lorg/a/a/w;->a(Ljava/util/Enumeration;)Lorg/a/a/f;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/a/a/w;->a(Ljava/util/Enumeration;)Lorg/a/a/f;

    move-result-object v3

    invoke-interface {v2}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v2

    invoke-interface {v3}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lorg/a/a/t;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public b()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public e()[Lorg/a/a/f;
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/w;->d()I

    move-result v0

    new-array v0, v0, [Lorg/a/a/f;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/w;->d()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/a/a/w;->a(I)Lorg/a/a/f;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method f()Lorg/a/a/t;
    .locals 3

    iget-boolean v0, p0, Lorg/a/a/w;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/a/a/bf;

    invoke-direct {v0}, Lorg/a/a/bf;-><init>()V

    iget-object p0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    iput-object p0, v0, Lorg/a/a/w;->a:Ljava/util/Vector;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/a/a/bf;

    invoke-direct {p0}, Lorg/a/a/bf;-><init>()V

    iput-object v0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Lorg/a/a/w;->j()V

    return-object p0
.end method

.method g()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/bq;

    invoke-direct {v0}, Lorg/a/a/bq;-><init>()V

    iget-object p0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    iput-object p0, v0, Lorg/a/a/w;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/w;->b()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/w;->d()I

    move-result v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/a/a/w;->a(Ljava/util/Enumeration;)Lorg/a/a/f;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/a/a/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/a/b/a$a;

    invoke-virtual {p0}, Lorg/a/a/w;->e()[Lorg/a/a/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/b/a$a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method protected j()V
    .locals 9

    iget-boolean v0, p0, Lorg/a/a/w;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/w;->b:Z

    iget-object v1, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    iget-object v1, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    move v2, v1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a/f;

    invoke-direct {p0, v1}, Lorg/a/a/w;->a(Lorg/a/a/f;)[B

    move-result-object v1

    move v4, v3

    move v5, v4

    :goto_1
    if-eq v3, v2, :cond_1

    iget-object v6, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/a/a/f;

    invoke-direct {p0, v6}, Lorg/a/a/w;->a(Lorg/a/a/f;)[B

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lorg/a/a/w;->a([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v1, v6

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    iget-object v6, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v5, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {v5, v4, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v5, v0

    move v4, v3

    :goto_2
    move v3, v7

    goto :goto_1

    :cond_1
    move v2, v4

    move v1, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/a/a/w;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
