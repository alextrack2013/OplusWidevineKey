.class Landroidx/fragment/app/Fragment$2;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroidx/lifecycle/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->ah()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;)V
    .locals 0

    .line 496
    iput-object p1, p0, Landroidx/fragment/app/Fragment$2;->a:Landroidx/fragment/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$a;)V
    .locals 0

    .line 500
    sget-object p1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    if-ne p2, p1, :cond_0

    .line 501
    iget-object p1, p0, Landroidx/fragment/app/Fragment$2;->a:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 502
    iget-object p0, p0, Landroidx/fragment/app/Fragment$2;->a:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
