.class public final Landroidx/savedstate/b;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.java"


# instance fields
.field private final a:Landroidx/savedstate/c;

.field private final b:Landroidx/savedstate/a;


# direct methods
.method private constructor <init>(Landroidx/savedstate/c;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;

    .line 38
    new-instance p1, Landroidx/savedstate/a;

    invoke-direct {p1}, Landroidx/savedstate/a;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    return-void
.end method

.method public static a(Landroidx/savedstate/c;)Landroidx/savedstate/b;
    .locals 1

    .line 84
    new-instance v0, Landroidx/savedstate/b;

    invoke-direct {v0, p0}, Landroidx/savedstate/b;-><init>(Landroidx/savedstate/c;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/savedstate/a;
    .locals 0

    .line 46
    iget-object p0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    iget-object v0, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;

    invoke-interface {v0}, Landroidx/savedstate/c;->b()Landroidx/lifecycle/f;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/lifecycle/f;->a()Landroidx/lifecycle/f$b;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/f$b;->b:Landroidx/lifecycle/f$b;

    if-eq v1, v2, :cond_0

    .line 58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_0
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Landroidx/savedstate/b;->a:Landroidx/savedstate/c;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/c;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/f;->a(Landroidx/lifecycle/i;)V

    .line 62
    iget-object p0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    invoke-virtual {p0, v0, p1}, Landroidx/savedstate/a;->a(Landroidx/lifecycle/f;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/savedstate/b;->b:Landroidx/savedstate/a;

    invoke-virtual {p0, p1}, Landroidx/savedstate/a;->a(Landroid/os/Bundle;)V

    return-void
.end method
