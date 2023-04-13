.class public Lorg/a/a/bo;
.super Lorg/a/a/r;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/r;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/f;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/a/a/f;->h()Lorg/a/a/t;

    move-result-object p1

    invoke-virtual {p1}, Lorg/a/a/t;->g()Lorg/a/a/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/a/a/t;->a(Lorg/a/a/r;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "null object detected"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
