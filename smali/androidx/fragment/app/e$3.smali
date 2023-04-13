.class final Landroidx/fragment/app/e$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/e;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/e$a;Landroidx/fragment/app/u$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/c;

.field final synthetic d:Landroidx/fragment/app/u$a;

.field final synthetic e:Landroidx/core/c/a;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c;Landroidx/fragment/app/u$a;Landroidx/core/c/a;)V
    .locals 0

    .line 189
    iput-object p1, p0, Landroidx/fragment/app/e$3;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/e$3;->b:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/e$3;->c:Landroidx/fragment/app/c;

    iput-object p4, p0, Landroidx/fragment/app/e$3;->d:Landroidx/fragment/app/u$a;

    iput-object p5, p0, Landroidx/fragment/app/e$3;->e:Landroidx/core/c/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 192
    iget-object p1, p0, Landroidx/fragment/app/e$3;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/e$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 195
    iget-object p1, p0, Landroidx/fragment/app/e$3;->c:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->ad()Landroid/animation/Animator;

    move-result-object p1

    .line 196
    iget-object v0, p0, Landroidx/fragment/app/e$3;->c:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->a(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Landroidx/fragment/app/e$3;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/e$3;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 198
    iget-object p1, p0, Landroidx/fragment/app/e$3;->d:Landroidx/fragment/app/u$a;

    iget-object v0, p0, Landroidx/fragment/app/e$3;->c:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/e$3;->e:Landroidx/core/c/a;

    invoke-interface {p1, v0, p0}, Landroidx/fragment/app/u$a;->b(Landroidx/fragment/app/c;Landroidx/core/c/a;)V

    :cond_0
    return-void
.end method
