.class public Lorg/a/a/aj;
.super Lorg/a/a/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/w;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/a/a/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/a/a/w;-><init>(Lorg/a/a/g;Z)V

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/a/a/r;->b(I)V

    invoke-virtual {p0}, Lorg/a/a/aj;->b()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/f;

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(Lorg/a/a/f;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    invoke-virtual {p1, p0}, Lorg/a/a/r;->b(I)V

    return-void
.end method

.method c()I
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/aj;->b()Ljava/util/Enumeration;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/a/a/f;

    invoke-interface {v1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/t;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
