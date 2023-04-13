.class public Lorg/a/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/aa;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lorg/a/a/y;


# direct methods
.method constructor <init>(ZILorg/a/a/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/a/a/am;->a:Z

    iput p2, p0, Lorg/a/a/am;->b:I

    iput-object p3, p0, Lorg/a/a/am;->c:Lorg/a/a/y;

    return-void
.end method


# virtual methods
.method public e()Lorg/a/a/t;
    .locals 2

    iget-object v0, p0, Lorg/a/a/am;->c:Lorg/a/a/y;

    iget-boolean v1, p0, Lorg/a/a/am;->a:Z

    iget p0, p0, Lorg/a/a/am;->b:I

    invoke-virtual {v0, v1, p0}, Lorg/a/a/y;->a(ZI)Lorg/a/a/t;

    move-result-object p0

    return-object p0
.end method

.method public h()Lorg/a/a/t;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/am;->e()Lorg/a/a/t;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/a/a/s;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/a/a/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method
