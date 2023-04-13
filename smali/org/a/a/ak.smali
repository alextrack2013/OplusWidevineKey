.class public Lorg/a/a/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/x;


# instance fields
.field private a:Lorg/a/a/y;


# direct methods
.method constructor <init>(Lorg/a/a/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/ak;->a:Lorg/a/a/y;

    return-void
.end method


# virtual methods
.method public e()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/aj;

    iget-object p0, p0, Lorg/a/a/ak;->a:Lorg/a/a/y;

    invoke-virtual {p0}, Lorg/a/a/y;->b()Lorg/a/a/g;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/a/aj;-><init>(Lorg/a/a/g;)V

    return-object v0
.end method

.method public h()Lorg/a/a/t;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/ak;->e()Lorg/a/a/t;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/a/a/s;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/a/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
