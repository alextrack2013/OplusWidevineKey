.class public Lorg/a/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/q;


# instance fields
.field private a:Lorg/a/a/y;


# direct methods
.method constructor <init>(Lorg/a/a/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/ag;->a:Lorg/a/a/y;

    return-void
.end method


# virtual methods
.method public b()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/a/a/an;

    iget-object p0, p0, Lorg/a/a/ag;->a:Lorg/a/a/y;

    invoke-direct {v0, p0}, Lorg/a/a/an;-><init>(Lorg/a/a/y;)V

    return-object v0
.end method

.method public e()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/af;

    invoke-virtual {p0}, Lorg/a/a/ag;->b()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lorg/a/b/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/a/af;-><init>([B)V

    return-object v0
.end method

.method public h()Lorg/a/a/t;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/ag;->e()Lorg/a/a/t;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/a/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException converting stream to byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/a/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
