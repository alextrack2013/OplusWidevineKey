.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroidx/lifecycle/h;


# instance fields
.field private final a:Landroidx/lifecycle/c;

.field private final b:Landroidx/lifecycle/h;


# direct methods
.method constructor <init>(Landroidx/lifecycle/c;Landroidx/lifecycle/h;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    .line 29
    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/h;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$a;)V
    .locals 2

    .line 34
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->a:[I

    invoke-virtual {p2}, Landroidx/lifecycle/f$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ON_ANY must not been send by anybody"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->f(Landroidx/lifecycle/j;)V

    goto :goto_0

    .line 48
    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->e(Landroidx/lifecycle/j;)V

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->d(Landroidx/lifecycle/j;)V

    goto :goto_0

    .line 42
    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->c(Landroidx/lifecycle/j;)V

    goto :goto_0

    .line 39
    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->b(Landroidx/lifecycle/j;)V

    goto :goto_0

    .line 36
    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Landroidx/lifecycle/c;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c;->a(Landroidx/lifecycle/j;)V

    .line 56
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/h;

    if-eqz v0, :cond_0

    .line 57
    iget-object p0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Landroidx/lifecycle/h;

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/h;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$a;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
