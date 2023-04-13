.class Landroidx/fragment/app/d$a;
.super Landroidx/fragment/app/j;
.source "FragmentActivity.java"

# interfaces
.implements Landroidx/activity/d;
.implements Landroidx/lifecycle/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/j<",
        "Landroidx/fragment/app/d;",
        ">;",
        "Landroidx/activity/d;",
        "Landroidx/lifecycle/x;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/d;)V
    .locals 0

    .line 870
    iput-object p1, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    .line 871
    invoke-direct {p0, p1}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/d;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 0

    .line 976
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a()Z
    .locals 0

    .line 981
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 982
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroidx/fragment/app/c;)Z
    .locals 0

    .line 904
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public b()Landroidx/lifecycle/f;
    .locals 0

    .line 881
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    iget-object p0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    return-object p0
.end method

.method public b(Landroidx/fragment/app/c;)V
    .locals 0

    .line 970
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/c;)V

    return-void
.end method

.method public c()Landroidx/lifecycle/w;
    .locals 0

    .line 887
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->c()Landroidx/lifecycle/w;

    move-result-object p0

    return-object p0
.end method

.method public d()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0

    .line 893
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->d()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public e()Landroid/view/LayoutInflater;
    .locals 1

    .line 910
    iget-object v0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public f()Landroidx/fragment/app/d;
    .locals 0

    .line 915
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    return-object p0
.end method

.method public g()V
    .locals 0

    .line 920
    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->g()V

    return-void
.end method

.method public synthetic h()Ljava/lang/Object;
    .locals 0

    .line 867
    invoke-virtual {p0}, Landroidx/fragment/app/d$a;->f()Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method
