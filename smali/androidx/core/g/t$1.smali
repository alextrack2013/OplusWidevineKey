.class Landroidx/core/g/t$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/g/t;->a(Landroid/view/View;Landroidx/core/g/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/g/q;


# direct methods
.method constructor <init>(Landroidx/core/g/q;)V
    .locals 0

    .line 2469
    iput-object p1, p0, Landroidx/core/g/t$1;->a:Landroidx/core/g/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 2473
    invoke-static {p2}, Landroidx/core/g/ab;->a(Landroid/view/WindowInsets;)Landroidx/core/g/ab;

    move-result-object p2

    .line 2474
    iget-object p0, p0, Landroidx/core/g/t$1;->a:Landroidx/core/g/q;

    invoke-interface {p0, p1, p2}, Landroidx/core/g/q;->a(Landroid/view/View;Landroidx/core/g/ab;)Landroidx/core/g/ab;

    move-result-object p0

    .line 2475
    invoke-virtual {p0}, Landroidx/core/g/ab;->i()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
