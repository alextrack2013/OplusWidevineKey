.class public abstract Lorg/a/a/t;
.super Lorg/a/a/n;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Lorg/a/a/r;)V
.end method

.method abstract a()Z
.end method

.method abstract a(Lorg/a/a/t;)Z
.end method

.method abstract c()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/a/a/f;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/a/a/f;

    invoke-interface {p1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/a/a/t;->a(Lorg/a/a/t;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method f()Lorg/a/a/t;
    .locals 0

    return-object p0
.end method

.method g()Lorg/a/a/t;
    .locals 0

    return-object p0
.end method

.method public h()Lorg/a/a/t;
    .locals 0

    return-object p0
.end method

.method public abstract hashCode()I
.end method
