.class final Landroidx/fragment/app/u$5;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c;

.field final synthetic b:Landroidx/fragment/app/c;

.field final synthetic c:Z

.field final synthetic d:Landroidx/b/a;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroidx/fragment/app/w;

.field final synthetic g:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c;ZLandroidx/b/a;Landroid/view/View;Landroidx/fragment/app/w;Landroid/graphics/Rect;)V
    .locals 0

    .line 680
    iput-object p1, p0, Landroidx/fragment/app/u$5;->a:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/u$5;->b:Landroidx/fragment/app/c;

    iput-boolean p3, p0, Landroidx/fragment/app/u$5;->c:Z

    iput-object p4, p0, Landroidx/fragment/app/u$5;->d:Landroidx/b/a;

    iput-object p5, p0, Landroidx/fragment/app/u$5;->e:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/u$5;->f:Landroidx/fragment/app/w;

    iput-object p7, p0, Landroidx/fragment/app/u$5;->g:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 683
    iget-object v0, p0, Landroidx/fragment/app/u$5;->a:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/u$5;->b:Landroidx/fragment/app/c;

    iget-boolean v2, p0, Landroidx/fragment/app/u$5;->c:Z

    iget-object v3, p0, Landroidx/fragment/app/u$5;->d:Landroidx/b/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/c;ZLandroidx/b/a;Z)V

    .line 685
    iget-object v0, p0, Landroidx/fragment/app/u$5;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Landroidx/fragment/app/u$5;->f:Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/u$5;->e:Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/u$5;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/w;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
