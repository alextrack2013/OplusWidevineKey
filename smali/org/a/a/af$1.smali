.class Lorg/a/a/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/a/a/af;->j()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/a/a/af;


# direct methods
.method constructor <init>(Lorg/a/a/af;)V
    .locals 0

    iput-object p1, p0, Lorg/a/a/af$1;->b:Lorg/a/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/a/a/af$1;->a:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget v0, p0, Lorg/a/a/af$1;->a:I

    iget-object p0, p0, Lorg/a/a/af$1;->b:Lorg/a/a/af;

    invoke-static {p0}, Lorg/a/a/af;->a(Lorg/a/a/af;)[Lorg/a/a/p;

    move-result-object p0

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/a/a/af$1;->b:Lorg/a/a/af;

    invoke-static {v0}, Lorg/a/a/af;->a(Lorg/a/a/af;)[Lorg/a/a/p;

    move-result-object v0

    iget v1, p0, Lorg/a/a/af$1;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/a/a/af$1;->a:I

    aget-object p0, v0, v1

    return-object p0
.end method
