.class public Lorg/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/a/a/g;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lorg/a/a/g;->a:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public a(I)Lorg/a/a/f;
    .locals 0

    iget-object p0, p0, Lorg/a/a/g;->a:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/f;

    return-object p0
.end method

.method public a(Lorg/a/a/f;)V
    .locals 0

    iget-object p0, p0, Lorg/a/a/g;->a:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
