.class final Landroidx/fragment/app/e$1;
.super Ljava/lang/Object;
.source "FragmentAnim.java"

# interfaces
.implements Landroidx/core/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/e;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/e$a;Landroidx/fragment/app/u$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;)V
    .locals 0

    .line 144
    iput-object p1, p0, Landroidx/fragment/app/e$1;->a:Landroidx/fragment/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 147
    iget-object v0, p0, Landroidx/fragment/app/e$1;->a:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->ac()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroidx/fragment/app/e$1;->a:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->ac()Landroid/view/View;

    move-result-object v0

    .line 149
    iget-object v2, p0, Landroidx/fragment/app/e$1;->a:Landroidx/fragment/app/c;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/c;->a(Landroid/view/View;)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 152
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/e$1;->a:Landroidx/fragment/app/c;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/c;->a(Landroid/animation/Animator;)V

    return-void
.end method
