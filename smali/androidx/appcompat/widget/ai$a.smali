.class Landroidx/appcompat/widget/ai$a;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ai;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ai;)V
    .locals 0

    .line 316
    iput-object p1, p0, Landroidx/appcompat/widget/ai$a;->a:Landroidx/appcompat/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 321
    iget-object p0, p0, Landroidx/appcompat/widget/ai$a;->a:Landroidx/appcompat/widget/ai;

    iget-object p0, p0, Landroidx/appcompat/widget/ai;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 323
    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method
