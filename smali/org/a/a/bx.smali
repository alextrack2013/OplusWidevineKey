.class abstract Lorg/a/a/bx;
.super Ljava/io/InputStream;


# instance fields
.field protected final a:Ljava/io/InputStream;

.field private b:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/a/a/bx;->a:Ljava/io/InputStream;

    iput p2, p0, Lorg/a/a/bx;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 0

    iget p0, p0, Lorg/a/a/bx;->b:I

    return p0
.end method

.method protected b(Z)V
    .locals 1

    iget-object v0, p0, Lorg/a/a/bx;->a:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/a/a/bu;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/a/a/bx;->a:Ljava/io/InputStream;

    check-cast p0, Lorg/a/a/bu;

    invoke-virtual {p0, p1}, Lorg/a/a/bu;->a(Z)V

    :cond_0
    return-void
.end method
