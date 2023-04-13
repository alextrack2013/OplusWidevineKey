.class Landroidx/core/g/t$c;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/view/View;Landroidx/core/g/ab;Landroid/graphics/Rect;)Landroidx/core/g/ab;
    .locals 1

    .line 4430
    invoke-virtual {p1}, Landroidx/core/g/ab;->i()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4433
    invoke-virtual {p0, v0, p2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object p0

    .line 4432
    invoke-static {p0}, Landroidx/core/g/ab;->a(Landroid/view/WindowInsets;)Landroidx/core/g/ab;

    move-result-object p0

    return-object p0

    .line 4435
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-object p1
.end method
