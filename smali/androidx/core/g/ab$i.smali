.class Landroidx/core/g/ab$i;
.super Landroidx/core/g/ab$h;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private c:Landroidx/core/graphics/b;

.field private d:Landroidx/core/graphics/b;

.field private e:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V
    .locals 0

    .line 794
    invoke-direct {p0, p1, p2}, Landroidx/core/g/ab$h;-><init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/g/ab$i;->c:Landroidx/core/graphics/b;

    .line 790
    iput-object p1, p0, Landroidx/core/g/ab$i;->d:Landroidx/core/graphics/b;

    .line 791
    iput-object p1, p0, Landroidx/core/g/ab$i;->e:Landroidx/core/graphics/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/g/ab;Landroidx/core/g/ab$i;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1, p2}, Landroidx/core/g/ab$h;-><init>(Landroidx/core/g/ab;Landroidx/core/g/ab$h;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/g/ab$i;->c:Landroidx/core/graphics/b;

    .line 790
    iput-object p1, p0, Landroidx/core/g/ab$i;->d:Landroidx/core/graphics/b;

    .line 791
    iput-object p1, p0, Landroidx/core/g/ab$i;->e:Landroidx/core/graphics/b;

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/g/ab;
    .locals 0

    .line 832
    iget-object p0, p0, Landroidx/core/g/ab$i;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/g/ab;->a(Landroid/view/WindowInsets;)Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method
