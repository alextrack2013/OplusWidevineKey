.class Lorg/a/a/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/a/b/a;->a([B)I

    move-result v0

    iput v0, p0, Lorg/a/a/o$a;->a:I

    iput-object p1, p0, Lorg/a/a/o$a;->b:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/a/a/o$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/a/a/o$a;->b:[B

    check-cast p1, Lorg/a/a/o$a;

    iget-object p1, p1, Lorg/a/a/o$a;->b:[B

    invoke-static {p0, p1}, Lorg/a/b/a;->a([B[B)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/a/a/o$a;->a:I

    return p0
.end method
