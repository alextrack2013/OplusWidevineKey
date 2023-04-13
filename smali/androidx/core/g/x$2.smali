.class Landroidx/core/g/x$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/g/x;->a(Landroidx/core/g/aa;)Landroidx/core/g/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/g/aa;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/g/x;


# direct methods
.method constructor <init>(Landroidx/core/g/x;Landroidx/core/g/aa;Landroid/view/View;)V
    .locals 0

    .line 780
    iput-object p1, p0, Landroidx/core/g/x$2;->c:Landroidx/core/g/x;

    iput-object p2, p0, Landroidx/core/g/x$2;->a:Landroidx/core/g/aa;

    iput-object p3, p0, Landroidx/core/g/x$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 783
    iget-object p1, p0, Landroidx/core/g/x$2;->a:Landroidx/core/g/aa;

    iget-object p0, p0, Landroidx/core/g/x$2;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/g/aa;->a(Landroid/view/View;)V

    return-void
.end method
