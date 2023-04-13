.class final Landroidx/fragment/app/e$2;
.super Ljava/lang/Object;
.source "FragmentAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

.field final synthetic b:Landroidx/fragment/app/c;

.field final synthetic c:Landroidx/fragment/app/u$a;

.field final synthetic d:Landroidx/core/c/a;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroidx/fragment/app/c;Landroidx/fragment/app/u$a;Landroidx/core/c/a;)V
    .locals 0

    .line 160
    iput-object p1, p0, Landroidx/fragment/app/e$2;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/e$2;->b:Landroidx/fragment/app/c;

    iput-object p3, p0, Landroidx/fragment/app/e$2;->c:Landroidx/fragment/app/u$a;

    iput-object p4, p0, Landroidx/fragment/app/e$2;->d:Landroidx/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 170
    iget-object p1, p0, Landroidx/fragment/app/e$2;->a:Landroid/view/ViewGroup;

    new-instance v0, Landroidx/fragment/app/e$2$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/e$2$1;-><init>(Landroidx/fragment/app/e$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
