.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/activity/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    .line 78
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method a(Landroidx/activity/c;)Landroidx/activity/a;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$a;

    invoke-direct {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher$a;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/c;)V

    .line 116
    invoke-virtual {p1, v0}, Landroidx/activity/c;->a(Landroidx/activity/a;)V

    return-object v0
.end method

.method public a()V
    .locals 3

    .line 187
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->a:Ljava/util/ArrayDeque;

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/c;

    .line 191
    invoke-virtual {v1}, Landroidx/activity/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v1}, Landroidx/activity/c;->c()V

    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 197
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->b:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public a(Landroidx/lifecycle/j;Landroidx/activity/c;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 148
    invoke-interface {p1}, Landroidx/lifecycle/j;->b()Landroidx/lifecycle/f;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroidx/lifecycle/f;->a()Landroidx/lifecycle/f$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$b;->a:Landroidx/lifecycle/f$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/f;Landroidx/activity/c;)V

    invoke-virtual {p2, v0}, Landroidx/activity/c;->a(Landroidx/activity/a;)V

    return-void
.end method
