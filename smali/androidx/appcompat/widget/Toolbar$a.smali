.class Landroidx/appcompat/widget/Toolbar$a;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/g;

.field b:Landroidx/appcompat/view/menu/i;

.field final synthetic c:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 2445
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .line 2451
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_0

    .line 2452
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->d(Landroidx/appcompat/view/menu/i;)Z

    .line 2454
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 2465
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-eqz p1, :cond_2

    .line 2468
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2469
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 2471
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2472
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2481
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->a:Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar$a;->b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z

    :cond_2
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 2

    .line 2506
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 2507
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2508
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    if-eq p1, v0, :cond_1

    .line 2509
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2510
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2512
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2514
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    .line 2515
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    .line 2516
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2517
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    if-eq p1, v0, :cond_3

    .line 2518
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2519
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2521
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->j()Landroidx/appcompat/widget/Toolbar$b;

    move-result-object p1

    const v0, 0x800003

    .line 2522
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget v1, v1, Landroidx/appcompat/widget/Toolbar;->c:I

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    iput v0, p1, Landroidx/appcompat/widget/Toolbar$b;->a:I

    const/4 v0, 0x2

    .line 2523
    iput v0, p1, Landroidx/appcompat/widget/Toolbar$b;->b:I

    .line 2524
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2525
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2528
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->k()V

    .line 2529
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    const/4 p1, 0x1

    .line 2530
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/i;->e(Z)V

    .line 2532
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p2, p2, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    instance-of p2, p2, Landroidx/appcompat/view/c;

    if-eqz p2, :cond_4

    .line 2533
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/view/c;

    invoke-interface {p0}, Landroidx/appcompat/view/c;->a()V

    :cond_4
    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .line 2543
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    instance-of p1, p1, Landroidx/appcompat/view/c;

    if-eqz p1, :cond_0

    .line 2544
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    check-cast p1, Landroidx/appcompat/view/c;

    invoke-interface {p1}, Landroidx/appcompat/view/c;->b()V

    .line 2547
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2548
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2549
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/Toolbar;->b:Landroid/view/View;

    .line 2551
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->l()V

    .line 2552
    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar$a;->b:Landroidx/appcompat/view/menu/i;

    .line 2553
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$a;->c:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->requestLayout()V

    const/4 p0, 0x0

    .line 2554
    invoke-virtual {p2, p0}, Landroidx/appcompat/view/menu/i;->e(Z)V

    const/4 p0, 0x1

    return p0
.end method
