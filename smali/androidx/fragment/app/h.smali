.class public Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final a:Landroidx/fragment/app/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    return-void
.end method

.method public static a(Landroidx/fragment/app/j;)Landroidx/fragment/app/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j<",
            "*>;)",
            "Landroidx/fragment/app/h;"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/fragment/app/h;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/j;

    invoke-direct {v0, p0}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/j;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 134
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->z()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    .line 135
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 0

    .line 92
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method

.method public a()Landroidx/fragment/app/m;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    return-object p0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 363
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    instance-of v0, v0, Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    .line 192
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroid/os/Parcelable;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/c;)V
    .locals 2

    .line 116
    iget-object v0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    invoke-virtual {v0, v1, p0, p1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/j;Landroidx/fragment/app/f;Landroidx/fragment/app/c;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 341
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 0

    .line 399
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 0

    .line 387
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/m;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    .line 412
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 0

    .line 142
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->k()V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    .line 436
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 352
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->c(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    .line 425
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 0

    .line 152
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 0

    .line 236
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 247
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->m()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 258
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->n()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 269
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 280
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->p()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 291
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->q()V

    return-void
.end method

.method public j()V
    .locals 0

    .line 330
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->s()V

    return-void
.end method

.method public k()V
    .locals 0

    .line 375
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->t()V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 447
    iget-object p0, p0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->a(Z)Z

    move-result p0

    return p0
.end method
