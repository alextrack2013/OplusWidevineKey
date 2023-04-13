.class Lorg/a/a/ae;
.super Ljava/lang/Object;


# static fields
.field static final a:Lorg/a/a/ah;

.field static final b:Lorg/a/a/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/ah;

    invoke-direct {v0}, Lorg/a/a/ah;-><init>()V

    sput-object v0, Lorg/a/a/ae;->a:Lorg/a/a/ah;

    new-instance v0, Lorg/a/a/aj;

    invoke-direct {v0}, Lorg/a/a/aj;-><init>()V

    sput-object v0, Lorg/a/a/ae;->b:Lorg/a/a/aj;

    return-void
.end method

.method static a(Lorg/a/a/g;)Lorg/a/a/ah;
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/g;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/a/a/ae;->a:Lorg/a/a/ah;

    return-object p0

    :cond_0
    new-instance v0, Lorg/a/a/ah;

    invoke-direct {v0, p0}, Lorg/a/a/ah;-><init>(Lorg/a/a/g;)V

    move-object p0, v0

    return-object p0
.end method
