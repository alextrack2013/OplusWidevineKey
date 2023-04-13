.class public abstract Lorg/a/a/u;
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
.field protected a:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    return-void
.end method

.method protected constructor <init>(Lorg/a/a/g;)V
    .locals 3

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/a/a/g;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/a/a/g;->a(I)Lorg/a/a/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Enumeration;)Lorg/a/a/f;
    .locals 0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/f;

    return-object p0
.end method


# virtual methods
.method public a(I)Lorg/a/a/f;
    .locals 0

    iget-object p0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

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

    instance-of v0, p1, Lorg/a/a/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/a/a/u;

    invoke-virtual {p0}, Lorg/a/a/u;->e()I

    move-result v0

    invoke-virtual {p1}, Lorg/a/a/u;->e()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/a/a/u;->d()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/u;->d()Ljava/util/Enumeration;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lorg/a/a/u;->a(Ljava/util/Enumeration;)Lorg/a/a/f;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/a/a/u;->a(Ljava/util/Enumeration;)Lorg/a/a/f;

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

.method public b()[Lorg/a/a/f;
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/u;->e()I

    move-result v0

    new-array v0, v0, [Lorg/a/a/f;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/u;->e()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method f()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/bd;

    invoke-direct {v0}, Lorg/a/a/bd;-><init>()V

    iget-object p0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    iput-object p0, v0, Lorg/a/a/u;->a:Ljava/util/Vector;

    return-object v0
.end method

.method g()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/bp;

    invoke-direct {v0}, Lorg/a/a/bp;-><init>()V

    iget-object p0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    iput-object p0, v0, Lorg/a/a/u;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/u;->d()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/u;->e()I

    move-result v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/a/a/u;->a(Ljava/util/Enumeration;)Lorg/a/a/f;

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

    invoke-virtual {p0}, Lorg/a/a/u;->b()[Lorg/a/a/f;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/b/a$a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/a/a/u;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
