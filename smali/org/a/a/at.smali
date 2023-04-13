.class Lorg/a/a/at;
.super Ljava/lang/Object;


# static fields
.field static final a:Lorg/a/a/u;

.field static final b:Lorg/a/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/bd;

    invoke-direct {v0}, Lorg/a/a/bd;-><init>()V

    sput-object v0, Lorg/a/a/at;->a:Lorg/a/a/u;

    new-instance v0, Lorg/a/a/bf;

    invoke-direct {v0}, Lorg/a/a/bf;-><init>()V

    sput-object v0, Lorg/a/a/at;->b:Lorg/a/a/w;

    return-void
.end method

.method static a(Lorg/a/a/g;)Lorg/a/a/u;
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/g;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/a/a/at;->a:Lorg/a/a/u;

    return-object p0

    :cond_0
    new-instance v0, Lorg/a/a/bp;

    invoke-direct {v0, p0}, Lorg/a/a/bp;-><init>(Lorg/a/a/g;)V

    move-object p0, v0

    return-object p0
.end method

.method static b(Lorg/a/a/g;)Lorg/a/a/w;
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/g;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/a/a/at;->b:Lorg/a/a/w;

    return-object p0

    :cond_0
    new-instance v0, Lorg/a/a/bq;

    invoke-direct {v0, p0}, Lorg/a/a/bq;-><init>(Lorg/a/a/g;)V

    move-object p0, v0

    return-object p0
.end method
