.class public Landroidx/core/g/ab;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/g/ab$d;,
        Landroidx/core/g/ab$c;,
        Landroidx/core/g/ab$b;,
        Landroidx/core/g/ab$a;,
        Landroidx/core/g/ab$i;,
        Landroidx/core/g/ab$h;,
        Landroidx/core/g/ab$g;,
        Landroidx/core/g/ab$f;,
        Landroidx/core/g/ab$e;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/g/ab;


# instance fields
.field private final b:Landroidx/core/g/ab$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroidx/core/g/ab$a;

    invoke-direct {v0}, Landroidx/core/g/ab$a;-><init>()V

    .line 56
    invoke-virtual {v0}, Landroidx/core/g/ab$a;->a()Landroidx/core/g/ab;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/core/g/ab;->g()Landroidx/core/g/ab;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/core/g/ab;->f()Landroidx/core/g/ab;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/core/g/ab;->e()Landroidx/core/g/ab;

    move-result-object v0

    sput-object v0, Landroidx/core/g/ab;->a:Landroidx/core/g/ab;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Landroidx/core/g/ab$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$i;-><init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 67
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 68
    new-instance v0, Landroidx/core/g/ab$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$h;-><init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Landroidx/core/g/ab$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$g;-><init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 71
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 72
    new-instance v0, Landroidx/core/g/ab$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$f;-><init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Landroidx/core/g/ab$e;

    invoke-direct {p1, p0}, Landroidx/core/g/ab$e;-><init>(Landroidx/core/g/ab;)V

    iput-object p1, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/g/ab;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 86
    iget-object p1, p1, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroidx/core/g/ab$i;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroidx/core/g/ab$i;

    check-cast p1, Landroidx/core/g/ab$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$i;-><init>(Landroidx/core/g/ab;Landroidx/core/g/ab$i;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Landroidx/core/g/ab$h;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Landroidx/core/g/ab$h;

    check-cast p1, Landroidx/core/g/ab$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$h;-><init>(Landroidx/core/g/ab;Landroidx/core/g/ab$h;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Landroidx/core/g/ab$g;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Landroidx/core/g/ab$g;

    check-cast p1, Landroidx/core/g/ab$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$g;-><init>(Landroidx/core/g/ab;Landroidx/core/g/ab$g;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 93
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Landroidx/core/g/ab$f;

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Landroidx/core/g/ab$f;

    check-cast p1, Landroidx/core/g/ab$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/g/ab$f;-><init>(Landroidx/core/g/ab;Landroidx/core/g/ab$f;)V

    iput-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 96
    :cond_3
    new-instance p1, Landroidx/core/g/ab$e;

    invoke-direct {p1, p0}, Landroidx/core/g/ab$e;-><init>(Landroidx/core/g/ab;)V

    iput-object p1, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    goto :goto_0

    .line 100
    :cond_4
    new-instance p1, Landroidx/core/g/ab$e;

    invoke-direct {p1, p0}, Landroidx/core/g/ab$e;-><init>(Landroidx/core/g/ab;)V

    iput-object p1, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/WindowInsets;)Landroidx/core/g/ab;
    .locals 1

    .line 113
    new-instance v0, Landroidx/core/g/ab;

    invoke-static {p0}, Landroidx/core/f/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/g/ab;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method static a(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;
    .locals 5

    .line 837
    iget v0, p0, Landroidx/core/graphics/b;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 838
    iget v2, p0, Landroidx/core/graphics/b;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 839
    iget v3, p0, Landroidx/core/graphics/b;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 840
    iget v4, p0, Landroidx/core/graphics/b;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 844
    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 127
    invoke-virtual {p0}, Landroidx/core/g/ab;->h()Landroidx/core/graphics/b;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/b;->b:I

    return p0
.end method

.method public a(IIII)Landroidx/core/g/ab;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    new-instance v0, Landroidx/core/g/ab$a;

    invoke-direct {v0, p0}, Landroidx/core/g/ab$a;-><init>(Landroidx/core/g/ab;)V

    .line 266
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/g/ab$a;->a(Landroidx/core/graphics/b;)Landroidx/core/g/ab$a;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroidx/core/g/ab$a;->a()Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 141
    invoke-virtual {p0}, Landroidx/core/g/ab;->h()Landroidx/core/graphics/b;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/b;->c:I

    return p0
.end method

.method public b(IIII)Landroidx/core/g/ab;
    .locals 0

    .line 541
    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/g/ab$e;->a(IIII)Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method

.method public c()I
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroidx/core/g/ab;->h()Landroidx/core/graphics/b;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/b;->d:I

    return p0
.end method

.method public d()I
    .locals 0

    .line 169
    invoke-virtual {p0}, Landroidx/core/g/ab;->h()Landroidx/core/graphics/b;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/b;->e:I

    return p0
.end method

.method public e()Landroidx/core/g/ab;
    .locals 0

    .line 244
    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->c()Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 549
    :cond_0
    instance-of v0, p1, Landroidx/core/g/ab;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 552
    :cond_1
    check-cast p1, Landroidx/core/g/ab;

    .line 553
    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    iget-object p1, p1, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    invoke-static {p0, p1}, Landroidx/core/f/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Landroidx/core/g/ab;
    .locals 0

    .line 385
    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->d()Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method

.method public g()Landroidx/core/g/ab;
    .locals 0

    .line 410
    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->f()Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method

.method public h()Landroidx/core/graphics/b;
    .locals 0

    .line 428
    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->g()Landroidx/core/graphics/b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 558
    iget-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    invoke-virtual {p0}, Landroidx/core/g/ab$e;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public i()Landroid/view/WindowInsets;
    .locals 1

    .line 569
    iget-object v0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    instance-of v0, v0, Landroidx/core/g/ab$f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/g/ab;->b:Landroidx/core/g/ab$e;

    check-cast p0, Landroidx/core/g/ab$f;

    iget-object p0, p0, Landroidx/core/g/ab$f;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
