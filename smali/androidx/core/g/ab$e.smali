.class Landroidx/core/g/ab$e;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final a:Landroidx/core/g/ab;


# direct methods
.method constructor <init>(Landroidx/core/g/ab;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Landroidx/core/g/ab$e;->a:Landroidx/core/g/ab;

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/g/ab;
    .locals 0

    .line 637
    sget-object p0, Landroidx/core/g/ab;->a:Landroidx/core/g/ab;

    return-object p0
.end method

.method a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method c()Landroidx/core/g/ab;
    .locals 0

    .line 589
    iget-object p0, p0, Landroidx/core/g/ab$e;->a:Landroidx/core/g/ab;

    return-object p0
.end method

.method d()Landroidx/core/g/ab;
    .locals 0

    .line 594
    iget-object p0, p0, Landroidx/core/g/ab$e;->a:Landroidx/core/g/ab;

    return-object p0
.end method

.method e()Landroidx/core/g/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 644
    :cond_0
    instance-of v1, p1, Landroidx/core/g/ab$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 645
    :cond_1
    check-cast p1, Landroidx/core/g/ab$e;

    .line 646
    invoke-virtual {p0}, Landroidx/core/g/ab$e;->a()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/g/ab$e;->a()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 647
    invoke-virtual {p0}, Landroidx/core/g/ab$e;->b()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/g/ab$e;->b()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 648
    invoke-virtual {p0}, Landroidx/core/g/ab$e;->g()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/g/ab$e;->g()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/f/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    invoke-virtual {p0}, Landroidx/core/g/ab$e;->h()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/g/ab$e;->h()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/f/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    invoke-virtual {p0}, Landroidx/core/g/ab$e;->e()Landroidx/core/g/c;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/core/g/ab$e;->e()Landroidx/core/g/c;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/f/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method f()Landroidx/core/g/ab;
    .locals 0

    .line 604
    iget-object p0, p0, Landroidx/core/g/ab$e;->a:Landroidx/core/g/ab;

    return-object p0
.end method

.method g()Landroidx/core/graphics/b;
    .locals 0

    .line 609
    sget-object p0, Landroidx/core/graphics/b;->a:Landroidx/core/graphics/b;

    return-object p0
.end method

.method h()Landroidx/core/graphics/b;
    .locals 0

    .line 614
    sget-object p0, Landroidx/core/graphics/b;->a:Landroidx/core/graphics/b;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 656
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->g()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 657
    invoke-virtual {p0}, Landroidx/core/g/ab$e;->h()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->e()Landroidx/core/g/c;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 656
    invoke-static {v0}, Landroidx/core/f/c;->a([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
