.class public Lorg/a/b/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lorg/a/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/b/a/d;

    invoke-direct {v0}, Lorg/a/b/a/d;-><init>()V

    sput-object v0, Lorg/a/b/a/c;->a:Lorg/a/b/a/a;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/a/b/a/c;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/a/b/a/c;->b([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/a/b/d;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/a/b/a/c;->b([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([BII)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lorg/a/b/a/c;->a:Lorg/a/b/a/a;

    invoke-interface {v1, p0, p1, p2, v0}, Lorg/a/b/a/a;->a([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/a/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception encoding Hex string: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/a/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
