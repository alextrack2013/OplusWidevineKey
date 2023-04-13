.class public Lorg/a/a/d;
.super Lorg/a/a/t;


# static fields
.field public static final a:Lorg/a/a/d;

.field public static final b:Lorg/a/a/d;

.field private static final c:[B

.field private static final d:[B


# instance fields
.field private final e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    sput-object v1, Lorg/a/a/d;->c:[B

    new-array v1, v0, [B

    aput-byte v2, v1, v2

    sput-object v1, Lorg/a/a/d;->d:[B

    new-instance v1, Lorg/a/a/d;

    invoke-direct {v1, v2}, Lorg/a/a/d;-><init>(Z)V

    sput-object v1, Lorg/a/a/d;->a:Lorg/a/a/d;

    new-instance v1, Lorg/a/a/d;

    invoke-direct {v1, v0}, Lorg/a/a/d;-><init>(Z)V

    sput-object v1, Lorg/a/a/d;->b:Lorg/a/a/d;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lorg/a/a/d;->c:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/a/a/d;->d:[B

    :goto_0
    iput-object p1, p0, Lorg/a/a/d;->e:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byte value should have 1 byte in it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    sget-object p1, Lorg/a/a/d;->d:[B

    :goto_0
    iput-object p1, p0, Lorg/a/a/d;->e:[B

    return-void

    :cond_1
    aget-byte v0, p1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    sget-object p1, Lorg/a/a/d;->c:[B

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/a/b/a;->b([B)[B

    move-result-object p1

    goto :goto_0

    return-void
.end method

.method static a([B)Lorg/a/a/d;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    sget-object p0, Lorg/a/a/d;->a:Lorg/a/a/d;

    return-object p0

    :cond_1
    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    sget-object p0, Lorg/a/a/d;->b:Lorg/a/a/d;

    return-object p0

    :cond_2
    new-instance v0, Lorg/a/a/d;

    invoke-direct {v0, p0}, Lorg/a/a/d;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    iget-object p0, p0, Lorg/a/a/d;->e:[B

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lorg/a/a/r;->a(I[B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected a(Lorg/a/a/t;)Z
    .locals 2

    instance-of v0, p1, Lorg/a/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/a/a/d;->e:[B

    aget-byte p0, p0, v1

    check-cast p1, Lorg/a/a/d;

    iget-object p1, p1, Lorg/a/a/d;->e:[B

    aget-byte p1, p1, v1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method c()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object p0, p0, Lorg/a/a/d;->e:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/a/a/d;->e:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    if-eqz p0, :cond_0

    const-string p0, "TRUE"

    return-object p0

    :cond_0
    const-string p0, "FALSE"

    return-object p0
.end method
