.class Lorg/a/a/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private a:Lorg/a/a/k;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/a/a/k;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/a/a/k;-><init>([BZ)V

    iput-object v0, p0, Lorg/a/a/bv;->a:Lorg/a/a/k;

    invoke-direct {p0}, Lorg/a/a/bv;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/a/a/bv;->b:Ljava/lang/Object;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lorg/a/a/bv;->a:Lorg/a/a/k;

    invoke-virtual {p0}, Lorg/a/a/k;->d()Lorg/a/a/t;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/a/a/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed DER construction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/a/a/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    iget-object p0, p0, Lorg/a/a/bv;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/a/a/bv;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/a/a/bv;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/bv;->b:Ljava/lang/Object;

    return-object v0
.end method
