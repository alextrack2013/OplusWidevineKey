.class public abstract Landroidx/activity/c;
.super Ljava/lang/Object;
.source "OnBackPressedCallback.java"


# instance fields
.field private a:Z

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/activity/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/activity/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    iput-boolean p1, p0, Landroidx/activity/c;->a:Z

    return-void
.end method


# virtual methods
.method a(Landroidx/activity/a;)V
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/activity/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Landroidx/activity/c;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Landroidx/activity/c;->a:Z

    return p0
.end method

.method public final b()V
    .locals 1

    .line 91
    iget-object p0, p0, Landroidx/activity/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/a;

    .line 92
    invoke-interface {v0}, Landroidx/activity/a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Landroidx/activity/a;)V
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/activity/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract c()V
.end method
