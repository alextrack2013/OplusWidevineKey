.class Landroidx/appcompat/app/f$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/core/g/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->y()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 938
    iput-object p1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/g/ab;)Landroidx/core/g/ab;
    .locals 3

    .line 942
    invoke-virtual {p2}, Landroidx/core/g/ab;->b()I

    move-result v0

    .line 943
    iget-object p0, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/f;->a(Landroidx/core/g/ab;Landroid/graphics/Rect;)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 947
    invoke-virtual {p2}, Landroidx/core/g/ab;->a()I

    move-result v0

    .line 949
    invoke-virtual {p2}, Landroidx/core/g/ab;->c()I

    move-result v1

    .line 950
    invoke-virtual {p2}, Landroidx/core/g/ab;->d()I

    move-result v2

    .line 946
    invoke-virtual {p2, v0, p0, v1, v2}, Landroidx/core/g/ab;->a(IIII)Landroidx/core/g/ab;

    move-result-object p2

    .line 954
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/g/t;->a(Landroid/view/View;Landroidx/core/g/ab;)Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method
