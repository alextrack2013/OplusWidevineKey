.class Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/j;


# instance fields
.field private a:Landroidx/lifecycle/k;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/fragment/app/x;->a:Landroidx/lifecycle/k;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/fragment/app/x;->a:Landroidx/lifecycle/k;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/x;->a:Landroidx/lifecycle/k;

    :cond_0
    return-void
.end method

.method a(Landroidx/lifecycle/f$a;)V
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/fragment/app/x;->a:Landroidx/lifecycle/k;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public b()Landroidx/lifecycle/f;
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/x;->a()V

    .line 47
    iget-object p0, p0, Landroidx/fragment/app/x;->a:Landroidx/lifecycle/k;

    return-object p0
.end method

.method c()Z
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/fragment/app/x;->a:Landroidx/lifecycle/k;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
