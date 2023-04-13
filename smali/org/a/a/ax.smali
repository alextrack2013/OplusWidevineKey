.class public Lorg/a/a/ax;
.super Lorg/a/a/m;


# static fields
.field public static final a:Lorg/a/a/ax;

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/ax;

    invoke-direct {v0}, Lorg/a/a/ax;-><init>()V

    sput-object v0, Lorg/a/a/ax;->a:Lorg/a/a/ax;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/a/a/ax;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lorg/a/a/r;)V
    .locals 1

    sget-object p0, Lorg/a/a/ax;->b:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p0}, Lorg/a/a/r;->a(I[B)V

    return-void
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method c()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
