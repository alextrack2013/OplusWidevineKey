.class final Landroidx/fragment/app/u$1;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/u;->a(Landroidx/fragment/app/m;ILandroidx/fragment/app/u$b;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/u$a;

.field final synthetic b:Landroidx/fragment/app/c;

.field final synthetic c:Landroidx/core/c/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/u$a;Landroidx/fragment/app/c;Landroidx/core/c/a;)V
    .locals 0

    .line 276
    iput-object p1, p0, Landroidx/fragment/app/u$1;->a:Landroidx/fragment/app/u$a;

    iput-object p2, p0, Landroidx/fragment/app/u$1;->b:Landroidx/fragment/app/c;

    iput-object p3, p0, Landroidx/fragment/app/u$1;->c:Landroidx/core/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 279
    iget-object v0, p0, Landroidx/fragment/app/u$1;->a:Landroidx/fragment/app/u$a;

    iget-object v1, p0, Landroidx/fragment/app/u$1;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/u$1;->c:Landroidx/core/c/a;

    invoke-interface {v0, v1, p0}, Landroidx/fragment/app/u$a;->b(Landroidx/fragment/app/c;Landroidx/core/c/a;)V

    return-void
.end method
