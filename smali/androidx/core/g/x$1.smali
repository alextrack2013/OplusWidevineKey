.class Landroidx/core/g/x$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/g/x;->a(Landroid/view/View;Landroidx/core/g/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/g/y;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/g/x;


# direct methods
.method constructor <init>(Landroidx/core/g/x;Landroidx/core/g/y;Landroid/view/View;)V
    .locals 0

    .line 742
    iput-object p1, p0, Landroidx/core/g/x$1;->c:Landroidx/core/g/x;

    iput-object p2, p0, Landroidx/core/g/x$1;->a:Landroidx/core/g/y;

    iput-object p3, p0, Landroidx/core/g/x$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 745
    iget-object p1, p0, Landroidx/core/g/x$1;->a:Landroidx/core/g/y;

    iget-object p0, p0, Landroidx/core/g/x$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/g/y;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 750
    iget-object p1, p0, Landroidx/core/g/x$1;->a:Landroidx/core/g/y;

    iget-object p0, p0, Landroidx/core/g/x$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/g/y;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 755
    iget-object p1, p0, Landroidx/core/g/x$1;->a:Landroidx/core/g/y;

    iget-object p0, p0, Landroidx/core/g/x$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/g/y;->a(Landroid/view/View;)V

    return-void
.end method
