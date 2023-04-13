.class public Lorg/a/a/bd;
.super Lorg/a/a/u;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/u;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/bd;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/a/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/u;-><init>(Lorg/a/a/g;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/a/a/bd;->b:I

    return-void
.end method

.method private j()I
    .locals 3

    iget v0, p0, Lorg/a/a/bd;->b:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/a/a/bd;->d()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/f;

    invoke-interface {v2}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lorg/a/a/t;->f()Lorg/a/a/t;

    move-result-object v2

    invoke-virtual {v2}, Lorg/a/a/t;->c()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/a/a/bd;->b:I

    :cond_1
    iget p0, p0, Lorg/a/a/bd;->b:I

    return p0
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 3

    invoke-virtual {p1}, Lorg/a/a/r;->a()Lorg/a/a/r;

    move-result-object v0

    invoke-direct {p0}, Lorg/a/a/bd;->j()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Lorg/a/a/r;->b(I)V

    invoke-virtual {p1, v1}, Lorg/a/a/r;->a(I)V

    invoke-virtual {p0}, Lorg/a/a/bd;->d()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/a/a/f;

    invoke-virtual {v0, p1}, Lorg/a/a/r;->a(Lorg/a/a/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c()I
    .locals 1

    invoke-direct {p0}, Lorg/a/a/bd;->j()I

    move-result p0

    invoke-static {p0}, Lorg/a/a/bz;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method
