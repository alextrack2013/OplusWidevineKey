.class public Lorg/a/a/be;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/v;


# instance fields
.field private a:Lorg/a/a/y;


# direct methods
.method constructor <init>(Lorg/a/a/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/be;->a:Lorg/a/a/y;

    return-void
.end method


# virtual methods
.method public e()Lorg/a/a/t;
    .locals 1

    new-instance v0, Lorg/a/a/bd;

    iget-object p0, p0, Lorg/a/a/be;->a:Lorg/a/a/y;

    invoke-virtual {p0}, Lorg/a/a/y;->b()Lorg/a/a/g;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/a/bd;-><init>(Lorg/a/a/g;)V

    return-object v0
.end method

.method public h()Lorg/a/a/t;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/be;->e()Lorg/a/a/t;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
