.class Lorg/a/a/r$a;
.super Lorg/a/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/a/a/r;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/a/a/r;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/a/a/r$a;->a:Lorg/a/a/r;

    invoke-direct {p0, p2}, Lorg/a/a/r;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/a/a/r$a;->b:Z

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/a/a/r$a;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/a/a/r$a;->b:Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/a/a/r;->b(I)V

    return-void
.end method
