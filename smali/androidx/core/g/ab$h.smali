.class Landroidx/core/g/ab$h;
.super Landroidx/core/g/ab$g;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V
    .locals 0

    .line 752
    invoke-direct {p0, p1, p2}, Landroidx/core/g/ab$g;-><init>(Landroidx/core/g/ab;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/g/ab;Landroidx/core/g/ab$h;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1, p2}, Landroidx/core/g/ab$g;-><init>(Landroidx/core/g/ab;Landroidx/core/g/ab$g;)V

    return-void
.end method


# virtual methods
.method e()Landroidx/core/g/c;
    .locals 0

    .line 762
    iget-object p0, p0, Landroidx/core/g/ab$h;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/g/c;->a(Ljava/lang/Object;)Landroidx/core/g/c;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 774
    :cond_0
    instance-of v0, p1, Landroidx/core/g/ab$h;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 775
    :cond_1
    check-cast p1, Landroidx/core/g/ab$h;

    .line 777
    iget-object p0, p0, Landroidx/core/g/ab$h;->b:Landroid/view/WindowInsets;

    iget-object p1, p1, Landroidx/core/g/ab$h;->b:Landroid/view/WindowInsets;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method f()Landroidx/core/g/ab;
    .locals 0

    .line 768
    iget-object p0, p0, Landroidx/core/g/ab$h;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/g/ab;->a(Landroid/view/WindowInsets;)Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 782
    iget-object p0, p0, Landroidx/core/g/ab$h;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->hashCode()I

    move-result p0

    return p0
.end method
