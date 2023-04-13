.class public abstract Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/m$d;,
        Landroidx/fragment/app/m$c;,
        Landroidx/fragment/app/m$a;,
        Landroidx/fragment/app/m$b;
    }
.end annotation


# static fields
.field private static f:Z = false


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/m$d;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroidx/fragment/app/p;

.field private F:Ljava/lang/Runnable;

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Landroidx/fragment/app/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/j<",
            "*>;"
        }
    .end annotation
.end field

.field d:Landroidx/fragment/app/f;

.field e:Landroidx/fragment/app/c;

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/m$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private final i:Landroidx/fragment/app/s;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroidx/fragment/app/k;

.field private l:Landroidx/activity/OnBackPressedDispatcher;

.field private final m:Landroidx/activity/c;

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/fragment/app/c;",
            "Ljava/util/HashSet<",
            "Landroidx/core/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Landroidx/fragment/app/u$a;

.field private final r:Landroidx/fragment/app/l;

.field private s:Landroidx/fragment/app/c;

.field private t:Landroidx/fragment/app/i;

.field private u:Landroidx/fragment/app/i;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Landroidx/fragment/app/s;

    invoke-direct {v0}, Landroidx/fragment/app/s;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    .line 343
    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0, p0}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->k:Landroidx/fragment/app/k;

    .line 346
    new-instance v0, Landroidx/fragment/app/m$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/m$1;-><init>(Landroidx/fragment/app/m;Z)V

    iput-object v0, p0, Landroidx/fragment/app/m;->m:Landroidx/activity/c;

    .line 354
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 359
    new-instance v0, Landroidx/fragment/app/m$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$2;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->q:Landroidx/fragment/app/u$a;

    .line 374
    new-instance v0, Landroidx/fragment/app/l;

    invoke-direct {v0, p0}, Landroidx/fragment/app/l;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->r:Landroidx/fragment/app/l;

    const/4 v0, -0x1

    .line 377
    iput v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Landroidx/fragment/app/m;->t:Landroidx/fragment/app/i;

    .line 385
    new-instance v0, Landroidx/fragment/app/m$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$3;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->u:Landroidx/fragment/app/i;

    .line 410
    new-instance v0, Landroidx/fragment/app/m$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m$4;-><init>(Landroidx/fragment/app/m;)V

    iput-object v0, p0, Landroidx/fragment/app/m;->F:Ljava/lang/Runnable;

    return-void
.end method

.method private A()V
    .locals 3

    .line 498
    iget-object v0, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 500
    iget-object p0, p0, Landroidx/fragment/app/m;->m:Landroidx/activity/c;

    invoke-virtual {p0, v2}, Landroidx/activity/c;->a(Z)V

    .line 501
    monitor-exit v0

    return-void

    .line 503
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v0, p0, Landroidx/fragment/app/m;->m:Landroidx/activity/c;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->d()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    .line 508
    invoke-virtual {p0, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 507
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/c;->a(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 503
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private B()V
    .locals 2

    .line 1515
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    if-eqz v1, :cond_0

    .line 1517
    invoke-virtual {p0, v1}, Landroidx/fragment/app/m;->e(Landroidx/fragment/app/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private C()V
    .locals 1

    .line 1688
    invoke-virtual {p0}, Landroidx/fragment/app/m;->g()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1689
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private D()V
    .locals 1

    const/4 v0, 0x0

    .line 1832
    iput-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    .line 1833
    iget-object v0, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1834
    iget-object p0, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private E()V
    .locals 2

    .line 2234
    iget-object v0, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2235
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2236
    iget-object v0, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/m$d;

    invoke-virtual {v0}, Landroidx/fragment/app/m$d;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private F()V
    .locals 3

    .line 2246
    iget-object v0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2247
    iget-object v0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    .line 2248
    invoke-direct {p0, v1}, Landroidx/fragment/app/m;->q(Landroidx/fragment/app/c;)V

    .line 2249
    invoke-virtual {v1}, Landroidx/fragment/app/c;->ae()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    .line 2283
    iget-boolean v0, p0, Landroidx/fragment/app/m;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2284
    iput-boolean v0, p0, Landroidx/fragment/app/m;->z:Z

    .line 2285
    invoke-direct {p0}, Landroidx/fragment/app/m;->B()V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 2

    .line 2290
    iget-object v0, p0, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2291
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2292
    iget-object v1, p0, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$b;

    invoke-interface {v1}, Landroidx/fragment/app/m$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/c;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_5

    .line 2057
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 2058
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2059
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 2060
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_4

    .line 2062
    iget-object v4, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 2063
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    .line 2065
    :cond_1
    new-instance v4, Landroidx/fragment/app/m$d;

    invoke-direct {v4, v2, v3}, Landroidx/fragment/app/m$d;-><init>(Landroidx/fragment/app/a;Z)V

    .line 2067
    iget-object v6, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/c$c;)V

    if-eqz v3, :cond_2

    .line 2072
    invoke-virtual {v2}, Landroidx/fragment/app/a;->c()V

    goto :goto_2

    .line 2074
    :cond_2
    invoke-virtual {v2, v5}, Landroidx/fragment/app/a;->a(Z)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    .line 2080
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2081
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2085
    :cond_3
    invoke-direct {p0, p5}, Landroidx/fragment/app/m;->b(Landroidx/b/b;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method static a(Landroid/view/View;)Landroidx/fragment/app/c;
    .locals 1

    .line 825
    sget v0, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 826
    instance-of v0, p0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 827
    check-cast p0, Landroidx/fragment/app/c;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroidx/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/c;",
            ">;)V"
        }
    .end annotation

    .line 2029
    invoke-virtual {p1}, Landroidx/b/b;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 2031
    invoke-virtual {p1, v0}, Landroidx/b/b;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    .line 2032
    iget-boolean v2, v1, Landroidx/fragment/app/c;->k:Z

    if-nez v2, :cond_0

    .line 2033
    invoke-virtual {v1}, Landroidx/fragment/app/c;->t()Landroid/view/View;

    move-result-object v2

    .line 2034
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v1, Landroidx/fragment/app/c;->M:F

    const/4 v1, 0x0

    .line 2035
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/fragment/app/r;)V
    .locals 4

    .line 1546
    invoke-virtual {p1}, Landroidx/fragment/app/r;->a()Landroidx/fragment/app/c;

    move-result-object v0

    .line 1547
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    iget-object v2, v0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 1551
    invoke-static {v1}, Landroidx/fragment/app/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed fragment from active set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/s;->b(Landroidx/fragment/app/r;)V

    .line 1556
    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->d(Landroidx/fragment/app/c;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    .line 1869
    iget-object v3, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m$d;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 1870
    iget-boolean v5, v3, Landroidx/fragment/app/m$d;->a:Z

    if-nez v5, :cond_1

    .line 1871
    iget-object v5, v3, Landroidx/fragment/app/m$d;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_1

    if-eqz p2, :cond_1

    .line 1872
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1873
    iget-object v4, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    .line 1876
    invoke-virtual {v3}, Landroidx/fragment/app/m$d;->e()V

    goto :goto_2

    .line 1880
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/m$d;->c()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    iget-object v5, v3, Landroidx/fragment/app/m$d;->b:Landroidx/fragment/app/a;

    .line 1881
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1882
    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_3

    .line 1886
    iget-boolean v5, v3, Landroidx/fragment/app/m$d;->a:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Landroidx/fragment/app/m$d;->b:Landroidx/fragment/app/a;

    .line 1887
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3

    if-eqz p2, :cond_3

    .line 1889
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1891
    invoke-virtual {v3}, Landroidx/fragment/app/m$d;->e()V

    goto :goto_2

    .line 1893
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/m$d;->d()V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 1965
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v12, v0, Landroidx/fragment/app/a;->s:Z

    .line 1967
    iget-object v0, v7, Landroidx/fragment/app/m;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Landroidx/fragment/app/m;->C:Ljava/util/ArrayList;

    goto :goto_0

    .line 1970
    :cond_0
    iget-object v0, v7, Landroidx/fragment/app/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1972
    :goto_0
    iget-object v0, v7, Landroidx/fragment/app/m;->C:Ljava/util/ArrayList;

    iget-object v1, v7, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1973
    invoke-virtual {v7}, Landroidx/fragment/app/m;->v()Landroidx/fragment/app/c;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v13, v1

    move v0, v10

    :goto_1
    const/4 v14, 0x1

    if-ge v0, v11, :cond_4

    .line 1975
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 1976
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1978
    iget-object v4, v7, Landroidx/fragment/app/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Landroidx/fragment/app/c;)Landroidx/fragment/app/c;

    move-result-object v2

    goto :goto_2

    .line 1980
    :cond_1
    iget-object v4, v7, Landroidx/fragment/app/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/a;->b(Ljava/util/ArrayList;Landroidx/fragment/app/c;)Landroidx/fragment/app/c;

    move-result-object v2

    :goto_2
    if-nez v13, :cond_3

    .line 1982
    iget-boolean v3, v3, Landroidx/fragment/app/a;->j:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move v13, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v13, v14

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1984
    :cond_4
    iget-object v0, v7, Landroidx/fragment/app/m;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v12, :cond_5

    const/4 v5, 0x0

    .line 1987
    iget-object v6, v7, Landroidx/fragment/app/m;->q:Landroidx/fragment/app/u$a;

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    invoke-static/range {v0 .. v6}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/m;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/u$a;)V

    .line 1990
    :cond_5
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/m;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v12, :cond_6

    .line 1994
    new-instance v6, Landroidx/b/b;

    invoke-direct {v6}, Landroidx/b/b;-><init>()V

    .line 1995
    invoke-direct {v7, v6}, Landroidx/fragment/app/m;->b(Landroidx/b/b;)V

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v6

    .line 1996
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I

    move-result v0

    .line 1998
    invoke-direct {v7, v6}, Landroidx/fragment/app/m;->a(Landroidx/b/b;)V

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v11

    :goto_5
    if-eq v4, v10, :cond_7

    if-eqz v12, :cond_7

    const/4 v5, 0x1

    .line 2003
    iget-object v6, v7, Landroidx/fragment/app/m;->q:Landroidx/fragment/app/u$a;

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    invoke-static/range {v0 .. v6}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/m;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/u$a;)V

    .line 2005
    iget v0, v7, Landroidx/fragment/app/m;->b:I

    invoke-virtual {v7, v0, v14}, Landroidx/fragment/app/m;->a(IZ)V

    :cond_7
    :goto_6
    if-ge v10, v11, :cond_9

    .line 2009
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2010
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2011
    iget v1, v0, Landroidx/fragment/app/a;->c:I

    if-ltz v1, :cond_8

    const/4 v1, -0x1

    .line 2012
    iput v1, v0, Landroidx/fragment/app/a;->c:I

    .line 2014
    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/a;->a()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    if-eqz v13, :cond_a

    .line 2017
    invoke-direct {v7}, Landroidx/fragment/app/m;->H()V

    :cond_a
    return-void
.end method

.method static a(I)Z
    .locals 1

    .line 93
    sget-boolean v0, Landroidx/fragment/app/m;->f:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->a(Z)Z

    const/4 v0, 0x1

    .line 642
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->d(Z)V

    .line 644
    iget-object v1, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 647
    iget-object v1, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->n()Landroidx/fragment/app/m;

    move-result-object v1

    .line 648
    invoke-virtual {v1}, Landroidx/fragment/app/m;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 654
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 656
    iput-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    .line 658
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/m;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-direct {p0}, Landroidx/fragment/app/m;->D()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/m;->D()V

    .line 661
    throw p1

    .line 664
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/m;->A()V

    .line 665
    invoke-direct {p0}, Landroidx/fragment/app/m;->G()V

    .line 666
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->b()V

    return p1
.end method

.method private b(Landroidx/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/c;",
            ">;)V"
        }
    .end annotation

    .line 2215
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2219
    :cond_0
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2220
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c;

    .line 2221
    iget v3, v2, Landroidx/fragment/app/c;->b:I

    if-ge v3, v0, :cond_1

    .line 2222
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    .line 2223
    iget-object v3, v2, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/c;->y:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/c;->K:Z

    if-eqz v3, :cond_1

    .line 2224
    invoke-virtual {p1, v2}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1915
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1919
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1920
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1924
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_5

    .line 1929
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->s:Z

    if-nez v3, :cond_4

    if-eq v2, v1, :cond_2

    .line 1933
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 1938
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1940
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1941
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->s:Z

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1945
    :cond_3
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v0, :cond_6

    .line 1951
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_6
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    .line 2157
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 2158
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 2160
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->a(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2164
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(Z)V

    goto :goto_2

    .line 2166
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(I)V

    .line 2167
    invoke-virtual {v0}, Landroidx/fragment/app/a;->c()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2267
    iget-object v0, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2268
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2269
    monitor-exit v0

    return v2

    .line 2272
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2274
    iget-object v4, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/m$c;

    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/m$c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2276
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2277
    iget-object p1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->k()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Landroidx/fragment/app/m;->F:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2278
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static d(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method private d(Z)V
    .locals 2

    .line 1775
    iget-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    if-eqz v0, :cond_0

    .line 1776
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1779
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    if-nez v0, :cond_2

    .line 1780
    iget-boolean p0, p0, Landroidx/fragment/app/m;->y:Z

    if-eqz p0, :cond_1

    .line 1781
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1783
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1787
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->k()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 1788
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez p1, :cond_4

    .line 1792
    invoke-direct {p0}, Landroidx/fragment/app/m;->C()V

    .line 1795
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    if-nez p1, :cond_5

    .line 1796
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    .line 1797
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    :cond_5
    const/4 p1, 0x1

    .line 1799
    iput-boolean p1, p0, Landroidx/fragment/app/m;->h:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1801
    :try_start_0
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/m;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    iput-boolean p1, p0, Landroidx/fragment/app/m;->h:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/m;->h:Z

    .line 1804
    throw v0
.end method

.method private e(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2615
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    .line 2616
    iget-object v2, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/s;->a(I)V

    .line 2617
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/m;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2619
    iput-boolean v1, p0, Landroidx/fragment/app/m;->h:Z

    .line 2621
    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->a(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2619
    iput-boolean v1, p0, Landroidx/fragment/app/m;->h:Z

    .line 2620
    throw p1
.end method

.method private p(Landroidx/fragment/app/c;)Landroidx/fragment/app/p;
    .locals 0

    .line 894
    iget-object p0, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/c;)Landroidx/fragment/app/p;

    move-result-object p0

    return-object p0
.end method

.method private q(Landroidx/fragment/app/c;)V
    .locals 3

    .line 1317
    iget-object v0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1319
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/c/a;

    .line 1320
    invoke-virtual {v2}, Landroidx/core/c/a;->b()V

    goto :goto_0

    .line 1322
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1323
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->r(Landroidx/fragment/app/c;)V

    .line 1324
    iget-object p0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private r(Landroidx/fragment/app/c;)V
    .locals 2

    .line 1342
    invoke-virtual {p1}, Landroidx/fragment/app/c;->V()V

    .line 1343
    iget-object p0, p0, Landroidx/fragment/app/m;->r:Landroidx/fragment/app/l;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/l;->e(Landroidx/fragment/app/c;Z)V

    const/4 p0, 0x0

    .line 1344
    iput-object p0, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    .line 1345
    iput-object p0, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    .line 1348
    iput-object p0, p1, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    .line 1349
    iget-object v1, p1, Landroidx/fragment/app/c;->S:Landroidx/lifecycle/o;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/o;->a(Ljava/lang/Object;)V

    .line 1350
    iput-boolean v0, p1, Landroidx/fragment/app/c;->n:Z

    return-void
.end method

.method private s(Landroidx/fragment/app/c;)V
    .locals 7

    .line 1368
    iget-object v0, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1369
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    .line 1370
    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    iget-boolean v4, p1, Landroidx/fragment/app/c;->y:Z

    xor-int/2addr v4, v1

    .line 1369
    invoke-static {v0, v3, p1, v4}, Landroidx/fragment/app/e;->a(Landroid/content/Context;Landroidx/fragment/app/f;Landroidx/fragment/app/c;Z)Landroidx/fragment/app/e$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1371
    iget-object v3, v0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 1372
    iget-object v3, v0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1373
    iget-boolean v3, p1, Landroidx/fragment/app/c;->y:Z

    if-eqz v3, :cond_1

    .line 1374
    invoke-virtual {p1}, Landroidx/fragment/app/c;->ag()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1375
    invoke-virtual {p1, v2}, Landroidx/fragment/app/c;->g(Z)V

    goto :goto_0

    .line 1377
    :cond_0
    iget-object v3, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    .line 1378
    iget-object v4, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    .line 1379
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1382
    iget-object v5, v0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/m$5;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/m$5;-><init>(Landroidx/fragment/app/m;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1394
    :cond_1
    iget-object v3, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    :goto_0
    iget-object v0, v0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 1399
    iget-object v3, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/e$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1400
    iget-object v0, v0, Landroidx/fragment/app/e$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1402
    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/c;->y:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/c;->ag()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1405
    :goto_1
    iget-object v3, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    invoke-virtual {p1}, Landroidx/fragment/app/c;->ag()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1407
    invoke-virtual {p1, v2}, Landroidx/fragment/app/c;->g(Z)V

    .line 1411
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/c;->k:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->w(Landroidx/fragment/app/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1412
    iput-boolean v1, p0, Landroidx/fragment/app/m;->v:Z

    .line 1414
    :cond_6
    iput-boolean v2, p1, Landroidx/fragment/app/c;->L:Z

    .line 1415
    iget-boolean p0, p1, Landroidx/fragment/app/c;->y:Z

    invoke-virtual {p1, p0}, Landroidx/fragment/app/c;->a(Z)V

    return-void
.end method

.method private t(Landroidx/fragment/app/c;)V
    .locals 1

    .line 2179
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->u(Landroidx/fragment/app/c;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2181
    sget v0, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2182
    sget v0, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 2184
    :cond_0
    sget v0, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/c;

    .line 2185
    invoke-virtual {p1}, Landroidx/fragment/app/c;->Y()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(I)V

    :cond_1
    return-void
.end method

.method private u(Landroidx/fragment/app/c;)Landroid/view/ViewGroup;
    .locals 2

    .line 2191
    iget v0, p1, Landroidx/fragment/app/c;->w:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 2198
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2199
    iget-object p0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    iget p1, p1, Landroidx/fragment/app/c;->w:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/f;->a(I)Landroid/view/View;

    move-result-object p0

    .line 2201
    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 2202
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_1
    return-object v1
.end method

.method private v(Landroidx/fragment/app/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2755
    iget-object v0, p1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2756
    invoke-virtual {p1}, Landroidx/fragment/app/c;->R()V

    :cond_0
    return-void
.end method

.method private w(Landroidx/fragment/app/c;)Z
    .locals 0

    .line 2875
    iget-boolean p0, p1, Landroidx/fragment/app/c;->C:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Landroidx/fragment/app/c;->D:Z

    if-nez p0, :cond_1

    :cond_0
    iget-object p0, p1, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->y()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 0

    .line 1675
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->a(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method

.method public a()Landroidx/fragment/app/t;
    .locals 1

    .line 464
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/m;)V

    return-object v0
.end method

.method a(IZ)V
    .locals 1

    .line 1483
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1484
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 1487
    iget p2, p0, Landroidx/fragment/app/m;->b:I

    if-ne p1, p2, :cond_1

    return-void

    .line 1491
    :cond_1
    iput p1, p0, Landroidx/fragment/app/m;->b:I

    .line 1494
    iget-object p1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/c;

    .line 1495
    invoke-virtual {p0, p2}, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/c;)V

    goto :goto_0

    .line 1500
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/c;

    if-eqz p2, :cond_3

    .line 1501
    iget-boolean v0, p2, Landroidx/fragment/app/c;->K:Z

    if-nez v0, :cond_3

    .line 1502
    invoke-virtual {p0, p2}, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 1506
    :cond_4
    invoke-direct {p0}, Landroidx/fragment/app/m;->B()V

    .line 1508
    iget-boolean p1, p0, Landroidx/fragment/app/m;->v:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/fragment/app/m;->b:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 1509
    iget-object p1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->g()V

    const/4 p1, 0x0

    .line 1510
    iput-boolean p1, p0, Landroidx/fragment/app/m;->v:Z

    :cond_5
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2641
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 2643
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->a(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Landroid/os/Parcelable;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 2433
    :cond_0
    check-cast p1, Landroidx/fragment/app/o;

    .line 2434
    iget-object v0, p1, Landroidx/fragment/app/o;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 2438
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2439
    iget-object v0, p1, Landroidx/fragment/app/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/q;

    if-eqz v1, :cond_2

    .line 2442
    iget-object v3, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    iget-object v4, v1, Landroidx/fragment/app/q;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2444
    invoke-static {v2}, Landroidx/fragment/app/m;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    .line 2445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSaveState: re-attaching retained "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_3
    new-instance v4, Landroidx/fragment/app/r;

    iget-object v5, p0, Landroidx/fragment/app/m;->r:Landroidx/fragment/app/l;

    invoke-direct {v4, v5, v3, v1}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/l;Landroidx/fragment/app/c;Landroidx/fragment/app/q;)V

    goto :goto_1

    .line 2451
    :cond_4
    new-instance v4, Landroidx/fragment/app/r;

    iget-object v3, p0, Landroidx/fragment/app/m;->r:Landroidx/fragment/app/l;

    iget-object v5, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    .line 2452
    invoke-virtual {v5}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/m;->w()Landroidx/fragment/app/i;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6, v1}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/l;Ljava/lang/ClassLoader;Landroidx/fragment/app/i;Landroidx/fragment/app/q;)V

    .line 2454
    :goto_1
    invoke-virtual {v4}, Landroidx/fragment/app/r;->a()Landroidx/fragment/app/c;

    move-result-object v1

    .line 2455
    iput-object p0, v1, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    .line 2456
    invoke-static {v2}, Landroidx/fragment/app/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "FragmentManager"

    .line 2457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreSaveState: active ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/fragment/app/r;->a(Ljava/lang/ClassLoader;)V

    .line 2460
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/r;)V

    .line 2464
    iget v1, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {v4, v1}, Landroidx/fragment/app/r;->a(I)V

    goto/16 :goto_0

    .line 2470
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    .line 2471
    iget-object v3, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    iget-object v4, v1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/s;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2472
    invoke-static {v2}, Landroidx/fragment/app/m;->a(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "FragmentManager"

    .line 2473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding retained Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " that was not found in the set of active Fragments "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroidx/fragment/app/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v3, 0x1

    .line 2479
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    .line 2480
    iput-boolean v3, v1, Landroidx/fragment/app/c;->l:Z

    const/4 v3, -0x1

    .line 2481
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    goto :goto_2

    .line 2486
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    iget-object v1, p1, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Ljava/util/List;)V

    .line 2489
    iget-object v0, p1, Landroidx/fragment/app/o;->c:[Landroidx/fragment/app/b;

    if-eqz v0, :cond_b

    .line 2490
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/fragment/app/o;->c:[Landroidx/fragment/app/b;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    .line 2491
    :goto_3
    iget-object v3, p1, Landroidx/fragment/app/o;->c:[Landroidx/fragment/app/b;

    array-length v3, v3

    if-ge v1, v3, :cond_c

    .line 2492
    iget-object v3, p1, Landroidx/fragment/app/o;->c:[Landroidx/fragment/app/b;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/m;)Landroidx/fragment/app/a;

    move-result-object v3

    .line 2493
    invoke-static {v2}, Landroidx/fragment/app/m;->a(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "FragmentManager"

    .line 2494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAllState: back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    new-instance v4, Landroidx/core/f/b;

    const-string v5, "FragmentManager"

    invoke-direct {v4, v5}, Landroidx/core/f/b;-><init>(Ljava/lang/String;)V

    .line 2497
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v4, "  "

    .line 2498
    invoke-virtual {v3, v4, v5, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2499
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 2501
    :cond_a
    iget-object v4, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    .line 2504
    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    .line 2506
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/m;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v1, p1, Landroidx/fragment/app/o;->d:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2508
    iget-object v0, p1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2509
    iget-object p1, p1, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    .line 2510
    iget-object p1, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->v(Landroidx/fragment/app/c;)V

    :cond_d
    return-void
.end method

.method a(Landroidx/fragment/app/a;)V
    .locals 1

    .line 2298
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    .line 2301
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroidx/fragment/app/a;ZZZ)V
    .locals 8

    if-eqz p2, :cond_0

    .line 2110
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->a(Z)V

    goto :goto_0

    .line 2112
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/a;->c()V

    .line 2114
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2116
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2117
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 2119
    iget-object v6, p0, Landroidx/fragment/app/m;->q:Landroidx/fragment/app/u$a;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/m;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/u$a;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2123
    iget p2, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {p0, p2, v7}, Landroidx/fragment/app/m;->a(IZ)V

    .line 2126
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/c;

    if-eqz p2, :cond_3

    .line 2130
    iget-object p3, p2, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p3, :cond_3

    iget-boolean p3, p2, Landroidx/fragment/app/c;->K:Z

    if-eqz p3, :cond_3

    iget p3, p2, Landroidx/fragment/app/c;->w:I

    .line 2131
    invoke-virtual {p1, p3}, Landroidx/fragment/app/a;->b(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2132
    iget p3, p2, Landroidx/fragment/app/c;->M:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    .line 2133
    iget-object p3, p2, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget v1, p2, Landroidx/fragment/app/c;->M:F

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    .line 2136
    iput v0, p2, Landroidx/fragment/app/c;->M:F

    goto :goto_1

    :cond_5
    const/high16 p3, -0x40800000    # -1.0f

    .line 2138
    iput p3, p2, Landroidx/fragment/app/c;->M:F

    const/4 p3, 0x0

    .line 2139
    iput-boolean p3, p2, Landroidx/fragment/app/c;->K:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method a(Landroidx/fragment/app/c;I)V
    .locals 9

    .line 1118
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    iget-object v1, p1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->c(Ljava/lang/String;)Landroidx/fragment/app/r;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1124
    new-instance v0, Landroidx/fragment/app/r;

    iget-object v2, p0, Landroidx/fragment/app/m;->r:Landroidx/fragment/app/l;

    invoke-direct {v0, v2, p1}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/l;Landroidx/fragment/app/c;)V

    .line 1126
    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(I)V

    .line 1128
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/r;->b()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1129
    iget v2, p1, Landroidx/fragment/app/c;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-gt v2, p2, :cond_d

    .line 1131
    iget v2, p1, Landroidx/fragment/app/c;->b:I

    if-ge v2, p2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1135
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->q(Landroidx/fragment/app/c;)V

    .line 1137
    :cond_1
    iget v2, p1, Landroidx/fragment/app/c;->b:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-le p2, v5, :cond_8

    .line 1140
    invoke-static {v6}, Landroidx/fragment/app/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveto ATTACHED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_2
    iget-object v2, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    if-eqz v2, :cond_5

    .line 1145
    iget-object v2, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    iget-object v7, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    iget-object v7, v7, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/fragment/app/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1146
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " declared target fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that does not belong to this FragmentManager!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1150
    :cond_3
    iget-object v2, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    iget v2, v2, Landroidx/fragment/app/c;->b:I

    if-ge v2, v1, :cond_4

    .line 1151
    iget-object v2, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    .line 1153
    :cond_4
    iget-object v2, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    iput-object v2, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    .line 1154
    iput-object v4, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    .line 1156
    :cond_5
    iget-object v2, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1157
    iget-object v2, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1159
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " declared target fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that does not belong to this FragmentManager!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1163
    :cond_6
    iget v4, v2, Landroidx/fragment/app/c;->b:I

    if-ge v4, v1, :cond_7

    .line 1164
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    .line 1168
    :cond_7
    iget-object v2, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    iget-object v4, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    invoke-virtual {v0, v2, p0, v4}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/j;Landroidx/fragment/app/m;Landroidx/fragment/app/c;)V

    :cond_8
    :pswitch_1
    if-lez p2, :cond_9

    .line 1173
    invoke-virtual {v0}, Landroidx/fragment/app/r;->d()V

    :cond_9
    :pswitch_2
    if-le p2, v5, :cond_a

    .line 1181
    invoke-virtual {v0}, Landroidx/fragment/app/r;->c()V

    :cond_a
    if-le p2, v1, :cond_b

    .line 1185
    iget-object p0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/f;)V

    .line 1186
    invoke-virtual {v0}, Landroidx/fragment/app/r;->e()V

    .line 1187
    invoke-virtual {v0}, Landroidx/fragment/app/r;->f()V

    :cond_b
    :pswitch_3
    if-le p2, v3, :cond_c

    .line 1192
    invoke-virtual {v0}, Landroidx/fragment/app/r;->g()V

    :cond_c
    :pswitch_4
    if-le p2, v6, :cond_1d

    .line 1197
    invoke-virtual {v0}, Landroidx/fragment/app/r;->h()V

    goto/16 :goto_4

    .line 1200
    :cond_d
    iget v2, p1, Landroidx/fragment/app/c;->b:I

    if-le v2, p2, :cond_1d

    .line 1201
    iget v2, p1, Landroidx/fragment/app/c;->b:I

    const/4 v7, 0x0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_5
    const/4 v2, 0x4

    if-ge p2, v2, :cond_e

    .line 1204
    invoke-virtual {v0}, Landroidx/fragment/app/r;->i()V

    :cond_e
    :pswitch_6
    if-ge p2, v6, :cond_f

    .line 1209
    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()V

    :cond_f
    :pswitch_7
    if-ge p2, v3, :cond_16

    .line 1214
    invoke-static {v6}, Landroidx/fragment/app/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "FragmentManager"

    .line 1215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_10
    iget-object v2, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v2, :cond_11

    .line 1220
    iget-object v2, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/c;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p1, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    if-nez v2, :cond_11

    .line 1221
    invoke-virtual {v0}, Landroidx/fragment/app/r;->l()V

    .line 1225
    :cond_11
    iget-object v2, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v2, :cond_14

    iget-object v2, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    .line 1227
    iget-object v2, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1228
    iget-object v2, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1230
    invoke-virtual {p1}, Landroidx/fragment/app/c;->q()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1231
    iget v2, p0, Landroidx/fragment/app/m;->b:I

    const/4 v3, 0x0

    if-le v2, v5, :cond_12

    iget-boolean v2, p0, Landroidx/fragment/app/m;->y:Z

    if-nez v2, :cond_12

    iget-object v2, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    .line 1232
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    iget v2, p1, Landroidx/fragment/app/c;->M:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    .line 1234
    iget-object v2, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v2}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    invoke-static {v2, v4, p1, v7}, Landroidx/fragment/app/e;->a(Landroid/content/Context;Landroidx/fragment/app/f;Landroidx/fragment/app/c;Z)Landroidx/fragment/app/e$a;

    move-result-object v4

    .line 1237
    :cond_12
    iput v3, p1, Landroidx/fragment/app/c;->M:F

    .line 1241
    iget-object v2, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    .line 1242
    iget-object v3, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v4, :cond_13

    .line 1244
    invoke-virtual {p1, p2}, Landroidx/fragment/app/c;->c(I)V

    .line 1245
    iget-object v5, p0, Landroidx/fragment/app/m;->q:Landroidx/fragment/app/u$a;

    invoke-static {p1, v4, v5}, Landroidx/fragment/app/e;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/e$a;Landroidx/fragment/app/u$a;)V

    .line 1248
    :cond_13
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1254
    iget-object v3, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_14

    return-void

    .line 1261
    :cond_14
    iget-object v2, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1262
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->r(Landroidx/fragment/app/c;)V

    goto :goto_0

    .line 1264
    :cond_15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/c;->c(I)V

    :cond_16
    :goto_0
    :pswitch_8
    if-ge p2, v1, :cond_1c

    .line 1270
    iget-boolean v2, p1, Landroidx/fragment/app/c;->l:Z

    if-eqz v2, :cond_17

    invoke-virtual {p1}, Landroidx/fragment/app/c;->a()Z

    move-result v2

    if-nez v2, :cond_17

    move v7, v1

    :cond_17
    if-nez v7, :cond_19

    .line 1271
    iget-object v2, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/c;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_1

    .line 1274
    :cond_18
    iget-object v2, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    if-eqz v2, :cond_1a

    .line 1275
    iget-object v2, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1276
    invoke-virtual {v2}, Landroidx/fragment/app/c;->r()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1280
    iput-object v2, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    goto :goto_2

    .line 1272
    :cond_19
    :goto_1
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/r;)V

    .line 1284
    :cond_1a
    :goto_2
    iget-object v2, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1291
    invoke-virtual {p1, p2}, Landroidx/fragment/app/c;->c(I)V

    move p2, v1

    goto :goto_3

    .line 1294
    :cond_1b
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    iget-object v2, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/j;Landroidx/fragment/app/p;)V

    :cond_1c
    :goto_3
    :pswitch_9
    if-gez p2, :cond_1d

    .line 1300
    iget-object p0, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/r;->a(Landroidx/fragment/app/p;)V

    .line 1305
    :cond_1d
    :goto_4
    iget p0, p1, Landroidx/fragment/app/c;->b:I

    if-eq p0, p2, :cond_1f

    .line 1306
    invoke-static {v6}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "FragmentManager"

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_1e
    iput p2, p1, Landroidx/fragment/app/c;->b:I

    :cond_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method a(Landroidx/fragment/app/c;Landroidx/core/c/a;)V
    .locals 2

    .line 710
    iget-object v0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroidx/fragment/app/c;Landroidx/lifecycle/f$b;)V
    .locals 2

    .line 2784
    iget-object v0, p1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2789
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/c;->P:Landroidx/lifecycle/f$b;

    return-void

    .line 2786
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method a(Landroidx/fragment/app/c;Z)V
    .locals 0

    .line 1333
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->u(Landroidx/fragment/app/c;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1335
    instance-of p1, p0, Landroidx/fragment/app/g;

    if-eqz p1, :cond_0

    .line 1336
    check-cast p0, Landroidx/fragment/app/g;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/g;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method a(Landroidx/fragment/app/j;Landroidx/fragment/app/f;Landroidx/fragment/app/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j<",
            "*>;",
            "Landroidx/fragment/app/f;",
            "Landroidx/fragment/app/c;",
            ")V"
        }
    .end annotation

    .line 2521
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2522
    :cond_0
    iput-object p1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    .line 2523
    iput-object p2, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    .line 2524
    iput-object p3, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    .line 2525
    iget-object p2, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    if-eqz p2, :cond_1

    .line 2529
    invoke-direct {p0}, Landroidx/fragment/app/m;->A()V

    .line 2532
    :cond_1
    instance-of p2, p1, Landroidx/activity/d;

    if-eqz p2, :cond_3

    .line 2533
    move-object p2, p1

    check-cast p2, Landroidx/activity/d;

    .line 2534
    invoke-interface {p2}, Landroidx/activity/d;->d()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/m;->l:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_2

    move-object p2, p3

    .line 2536
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/m;->l:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Landroidx/fragment/app/m;->m:Landroidx/activity/c;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/j;Landroidx/activity/c;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 2541
    iget-object p1, p3, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    invoke-direct {p1, p3}, Landroidx/fragment/app/m;->p(Landroidx/fragment/app/c;)Landroidx/fragment/app/p;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    goto :goto_0

    .line 2542
    :cond_4
    instance-of p2, p1, Landroidx/lifecycle/x;

    if-eqz p2, :cond_5

    .line 2543
    check-cast p1, Landroidx/lifecycle/x;

    invoke-interface {p1}, Landroidx/lifecycle/x;->c()Landroidx/lifecycle/w;

    move-result-object p1

    .line 2544
    invoke-static {p1}, Landroidx/fragment/app/p;->a(Landroidx/lifecycle/w;)Landroidx/fragment/app/p;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    goto :goto_0

    .line 2546
    :cond_5
    new-instance p1, Landroidx/fragment/app/p;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/p;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    :goto_0
    return-void
.end method

.method a(Landroidx/fragment/app/m$c;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1808
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/m;->y:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1812
    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/m;->d(Z)V

    .line 1813
    iget-object p2, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/m$c;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1814
    iput-boolean p1, p0, Landroidx/fragment/app/m;->h:Z

    .line 1816
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/m;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    invoke-direct {p0}, Landroidx/fragment/app/m;->D()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/m;->D()V

    .line 1819
    throw p1

    .line 1822
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/m;->A()V

    .line 1823
    invoke-direct {p0}, Landroidx/fragment/app/m;->G()V

    .line 1824
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/s;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1023
    iget-object p2, p0, Landroidx/fragment/app/m;->j:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 1024
    iget-object p2, p0, Landroidx/fragment/app/m;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 1026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1028
    iget-object v2, p0, Landroidx/fragment/app/m;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/c;

    .line 1029
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 1030
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 1032
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v2}, Landroidx/fragment/app/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 1039
    iget-object p2, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 1041
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_1

    .line 1043
    iget-object v2, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 1044
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 1045
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 1047
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1054
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/m;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    iget-object p2, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    monitor-enter p2

    .line 1058
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1060
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge p4, v0, :cond_2

    .line 1062
    iget-object v1, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m$c;

    .line 1063
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 1064
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 1066
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 1070
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 1073
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 1075
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    iget-object p2, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 1078
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget-object p2, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1080
    iget-object p2, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    if-eqz p2, :cond_3

    .line 1081
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 1082
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget-object p2, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1085
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 1086
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget p2, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 1088
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-boolean p2, p0, Landroidx/fragment/app/m;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 1090
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-boolean p2, p0, Landroidx/fragment/app/m;->x:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 1092
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-boolean p2, p0, Landroidx/fragment/app/m;->y:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1094
    iget-boolean p2, p0, Landroidx/fragment/app/m;->v:Z

    if-eqz p2, :cond_4

    .line 1095
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 1096
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    iget-boolean p0, p0, Landroidx/fragment/app/m;->v:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 1070
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method a(Landroid/view/Menu;)Z
    .locals 3

    .line 2689
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2693
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_1

    .line 2695
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->c(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 2657
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2662
    iget-object v3, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v3}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/c;

    if-eqz v5, :cond_1

    .line 2664
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/c;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_2

    .line 2667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2669
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    .line 2674
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/m;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 2675
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/m;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 2676
    iget-object p1, p0, Landroidx/fragment/app/m;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/c;

    if-eqz v0, :cond_4

    .line 2677
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 2678
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/c;->C()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2683
    :cond_6
    iput-object v0, p0, Landroidx/fragment/app/m;->j:Ljava/util/ArrayList;

    return v4
.end method

.method a(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2704
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2707
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_1

    .line 2709
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->c(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method a(Landroidx/fragment/app/c;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 522
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    .line 524
    invoke-virtual {v1}, Landroidx/fragment/app/m;->v()Landroidx/fragment/app/c;

    move-result-object v2

    .line 528
    invoke-virtual {p1, v2}, Landroidx/fragment/app/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    .line 529
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2307
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    .line 2311
    iget-object p3, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-gez p3, :cond_1

    return v1

    .line 2315
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2316
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    move v2, p3

    goto :goto_4

    .line 2322
    :cond_4
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_7

    .line 2324
    iget-object v3, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    if-eqz p3, :cond_5

    .line 2325
    invoke-virtual {v3}, Landroidx/fragment/app/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    .line 2328
    iget v3, v3, Landroidx/fragment/app/a;->c:I

    if-ne p4, v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v2, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v0

    if-eqz p5, :cond_b

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_b

    .line 2340
    iget-object p5, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_9

    .line 2341
    invoke-virtual {p5}, Landroidx/fragment/app/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    if-ltz p4, :cond_b

    iget p5, p5, Landroidx/fragment/app/a;->c:I

    if-ne p4, p5, :cond_b

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2350
    :cond_b
    :goto_4
    iget-object p3, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_c

    return v1

    .line 2353
    :cond_c
    iget-object p3, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_5
    if-le p3, v2, :cond_d

    .line 2354
    iget-object p4, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2355
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v0
.end method

.method a(Z)Z
    .locals 3

    .line 1841
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->d(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1844
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/m;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    iput-boolean p1, p0, Landroidx/fragment/app/m;->h:Z

    .line 1847
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/m;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/m;->B:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/m;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1849
    invoke-direct {p0}, Landroidx/fragment/app/m;->D()V

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/m;->D()V

    .line 1850
    throw p1

    .line 1854
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/m;->A()V

    .line 1855
    invoke-direct {p0}, Landroidx/fragment/app/m;->G()V

    .line 1856
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->b()V

    return v0
.end method

.method b(Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 0

    .line 1679
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->d(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method

.method b(Landroidx/fragment/app/c;)Landroidx/lifecycle/w;
    .locals 0

    .line 889
    iget-object p0, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p;->e(Landroidx/fragment/app/c;)Landroidx/lifecycle/w;

    move-result-object p0

    return-object p0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 538
    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->a(Z)Z

    .line 539
    iget-object v0, p0, Landroidx/fragment/app/m;->m:Landroidx/activity/c;

    invoke-virtual {v0}, Landroidx/activity/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/m;->c()Z

    goto :goto_0

    .line 549
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/m;->l:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    return-void
.end method

.method b(Landroid/view/Menu;)V
    .locals 2

    .line 2732
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2735
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_1

    .line 2737
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->d(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method b(Landroidx/fragment/app/c;Landroidx/core/c/a;)V
    .locals 1

    .line 724
    iget-object v0, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 726
    iget-object p2, p0, Landroidx/fragment/app/m;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget p2, p1, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 730
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->r(Landroidx/fragment/app/c;)V

    .line 731
    invoke-virtual {p1}, Landroidx/fragment/app/c;->ae()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 1

    .line 2625
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 2627
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->e(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method b(I)Z
    .locals 0

    .line 1114
    iget p0, p0, Landroidx/fragment/app/m;->b:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method b(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2718
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2721
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_1

    .line 2723
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->d(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method public c(I)Landroidx/fragment/app/c;
    .locals 0

    .line 1662
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->b(I)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method

.method c(Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 0

    .line 1684
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->e(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method

.method c(Landroidx/fragment/app/c;)V
    .locals 2

    .line 898
    invoke-virtual {p0}, Landroidx/fragment/app/m;->g()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 899
    invoke-static {v1}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    const-string p1, "Ignoring addRetainedFragment as the state is already saved"

    .line 900
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 904
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 905
    invoke-static {v1}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "FragmentManager"

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating retained Fragments: Added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method c(Z)V
    .locals 1

    .line 2633
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 2635
    invoke-virtual {v0, p1}, Landroidx/fragment/app/c;->f(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 569
    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/m;->a(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public d()I
    .locals 1

    .line 674
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d(Landroidx/fragment/app/c;)V
    .locals 2

    .line 911
    invoke-virtual {p0}, Landroidx/fragment/app/m;->g()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 912
    invoke-static {v1}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    .line 913
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 917
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/m;->E:Landroidx/fragment/app/p;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 918
    invoke-static {v1}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "FragmentManager"

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating retained Fragments: Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/c;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method e(Landroidx/fragment/app/c;)V
    .locals 1

    .line 1102
    iget-boolean v0, p1, Landroidx/fragment/app/c;->G:Z

    if-eqz v0, :cond_1

    .line 1103
    iget-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1105
    iput-boolean p1, p0, Landroidx/fragment/app/m;->z:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1108
    iput-boolean v0, p1, Landroidx/fragment/app/c;->G:Z

    .line 1109
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    :cond_1
    return-void
.end method

.method f(Landroidx/fragment/app/c;)V
    .locals 1

    .line 1354
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    return-void
.end method

.method public f()Z
    .locals 0

    .line 981
    iget-boolean p0, p0, Landroidx/fragment/app/m;->y:Z

    return p0
.end method

.method g(Landroidx/fragment/app/c;)V
    .locals 3

    .line 1425
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    iget-object v1, p1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 1426
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 1427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1432
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->f(Landroidx/fragment/app/c;)V

    .line 1434
    iget-object v0, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1436
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/s;->c(Landroidx/fragment/app/c;)Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1438
    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    .line 1440
    iget-object v1, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    .line 1441
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1442
    iget-object v2, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 1444
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1445
    iget-object v2, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1448
    :cond_2
    iget-boolean v0, p1, Landroidx/fragment/app/c;->K:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1450
    iget v0, p1, Landroidx/fragment/app/c;->M:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1451
    iget-object v0, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget v2, p1, Landroidx/fragment/app/c;->M:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1453
    :cond_3
    iput v1, p1, Landroidx/fragment/app/c;->M:F

    const/4 v0, 0x0

    .line 1454
    iput-boolean v0, p1, Landroidx/fragment/app/c;->K:Z

    .line 1456
    iget-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    .line 1457
    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    const/4 v2, 0x1

    .line 1456
    invoke-static {v0, v1, p1, v2}, Landroidx/fragment/app/e;->a(Landroid/content/Context;Landroidx/fragment/app/f;Landroidx/fragment/app/c;Z)Landroidx/fragment/app/e$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1459
    iget-object v1, v0, Landroidx/fragment/app/e$a;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4

    .line 1460
    iget-object v1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/e$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1462
    :cond_4
    iget-object v1, v0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1463
    iget-object v0, v0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1468
    :cond_5
    :goto_0
    iget-boolean v0, p1, Landroidx/fragment/app/c;->L:Z

    if-eqz v0, :cond_6

    .line 1469
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->s(Landroidx/fragment/app/c;)V

    :cond_6
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1709
    iget-boolean v0, p0, Landroidx/fragment/app/m;->w:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/m;->x:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method h()V
    .locals 5

    .line 1752
    iget-object v0, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1753
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/m;->D:Ljava/util/ArrayList;

    .line 1754
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1755
    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1757
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->k()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/m;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1758
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->k()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/m;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1759
    invoke-direct {p0}, Landroidx/fragment/app/m;->A()V

    .line 1761
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method h(Landroidx/fragment/app/c;)V
    .locals 2

    .line 1523
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    iget-object v1, p1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1527
    :cond_0
    new-instance v0, Landroidx/fragment/app/r;

    iget-object v1, p0, Landroidx/fragment/app/m;->r:Landroidx/fragment/app/l;

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/l;Landroidx/fragment/app/c;)V

    .line 1530
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Ljava/lang/ClassLoader;)V

    .line 1531
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/r;)V

    .line 1532
    iget-boolean v1, p1, Landroidx/fragment/app/c;->B:Z

    if-eqz v1, :cond_2

    .line 1533
    iget-boolean v1, p1, Landroidx/fragment/app/c;->A:Z

    if-eqz v1, :cond_1

    .line 1534
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->c(Landroidx/fragment/app/c;)V

    goto :goto_0

    .line 1536
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->d(Landroidx/fragment/app/c;)V

    :goto_0
    const/4 v1, 0x0

    .line 1538
    iput-boolean v1, p1, Landroidx/fragment/app/c;->B:Z

    .line 1541
    :cond_2
    iget p0, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {v0, p0}, Landroidx/fragment/app/r;->a(I)V

    const/4 p0, 0x2

    .line 1542
    invoke-static {p0}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added fragment to active set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method i()Landroid/os/Parcelable;
    .locals 9

    .line 2377
    invoke-direct {p0}, Landroidx/fragment/app/m;->E()V

    .line 2378
    invoke-direct {p0}, Landroidx/fragment/app/m;->F()V

    const/4 v0, 0x1

    .line 2379
    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->a(Z)Z

    .line 2381
    iput-boolean v0, p0, Landroidx/fragment/app/m;->w:Z

    .line 2384
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 2386
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    .line 2387
    invoke-static {v3}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    const-string v0, "saveAllState: no fragments!"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    .line 2392
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1}, Landroidx/fragment/app/s;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 2396
    iget-object v4, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 2397
    iget-object v4, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2399
    new-array v2, v4, [Landroidx/fragment/app/b;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 2401
    new-instance v6, Landroidx/fragment/app/b;

    iget-object v7, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    invoke-direct {v6, v7}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v6, v2, v5

    .line 2402
    invoke-static {v3}, Landroidx/fragment/app/m;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "FragmentManager"

    .line 2403
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    .line 2404
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2403
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2410
    :cond_3
    new-instance v3, Landroidx/fragment/app/o;

    invoke-direct {v3}, Landroidx/fragment/app/o;-><init>()V

    .line 2411
    iput-object v0, v3, Landroidx/fragment/app/o;->a:Ljava/util/ArrayList;

    .line 2412
    iput-object v1, v3, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 2413
    iput-object v2, v3, Landroidx/fragment/app/o;->c:[Landroidx/fragment/app/b;

    .line 2414
    iget-object v0, p0, Landroidx/fragment/app/m;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v3, Landroidx/fragment/app/o;->d:I

    .line 2415
    iget-object v0, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    if-eqz v0, :cond_4

    .line 2416
    iget-object p0, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    iput-object p0, v3, Landroidx/fragment/app/o;->e:Ljava/lang/String;

    :cond_4
    return-object v3
.end method

.method i(Landroidx/fragment/app/c;)V
    .locals 3

    const/4 v0, 0x2

    .line 1560
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->h(Landroidx/fragment/app/c;)V

    .line 1562
    iget-boolean v0, p1, Landroidx/fragment/app/c;->z:Z

    if-nez v0, :cond_2

    .line 1563
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/c;)V

    const/4 v0, 0x0

    .line 1564
    iput-boolean v0, p1, Landroidx/fragment/app/c;->l:Z

    .line 1565
    iget-object v1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1566
    iput-boolean v0, p1, Landroidx/fragment/app/c;->L:Z

    .line 1568
    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->w(Landroidx/fragment/app/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1569
    iput-boolean p1, p0, Landroidx/fragment/app/m;->v:Z

    :cond_2
    return-void
.end method

.method j()Landroidx/fragment/app/c;
    .locals 0

    .line 2516
    iget-object p0, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    return-object p0
.end method

.method j(Landroidx/fragment/app/c;)V
    .locals 3

    const/4 v0, 0x2

    .line 1575
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 1576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/c;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/c;->a()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1579
    iget-boolean v2, p1, Landroidx/fragment/app/c;->z:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1580
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/s;->b(Landroidx/fragment/app/c;)V

    .line 1581
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->w(Landroidx/fragment/app/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    iput-boolean v1, p0, Landroidx/fragment/app/m;->v:Z

    .line 1584
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/c;->l:Z

    .line 1585
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->t(Landroidx/fragment/app/c;)V

    :cond_3
    return-void
.end method

.method k()V
    .locals 1

    const/4 v0, 0x0

    .line 2551
    iput-boolean v0, p0, Landroidx/fragment/app/m;->w:Z

    .line 2552
    iput-boolean v0, p0, Landroidx/fragment/app/m;->x:Z

    .line 2553
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 2555
    invoke-virtual {v0}, Landroidx/fragment/app/c;->Q()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method k(Landroidx/fragment/app/c;)V
    .locals 3

    const/4 v0, 0x2

    .line 1596
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1598
    iput-boolean v0, p1, Landroidx/fragment/app/c;->y:Z

    .line 1601
    iget-boolean v1, p1, Landroidx/fragment/app/c;->L:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/c;->L:Z

    .line 1602
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->t(Landroidx/fragment/app/c;)V

    :cond_1
    return-void
.end method

.method l()V
    .locals 1

    const/4 v0, 0x0

    .line 2561
    iput-boolean v0, p0, Landroidx/fragment/app/m;->w:Z

    .line 2562
    iput-boolean v0, p0, Landroidx/fragment/app/m;->x:Z

    const/4 v0, 0x1

    .line 2563
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    return-void
.end method

.method l(Landroidx/fragment/app/c;)V
    .locals 2

    const/4 p0, 0x2

    .line 1613
    invoke-static {p0}, Landroidx/fragment/app/m;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_0
    iget-boolean p0, p1, Landroidx/fragment/app/c;->y:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1615
    iput-boolean p0, p1, Landroidx/fragment/app/c;->y:Z

    .line 1618
    iget-boolean p0, p1, Landroidx/fragment/app/c;->L:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Landroidx/fragment/app/c;->L:Z

    :cond_1
    return-void
.end method

.method m()V
    .locals 1

    const/4 v0, 0x0

    .line 2567
    iput-boolean v0, p0, Landroidx/fragment/app/m;->w:Z

    .line 2568
    iput-boolean v0, p0, Landroidx/fragment/app/m;->x:Z

    const/4 v0, 0x2

    .line 2569
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    return-void
.end method

.method m(Landroidx/fragment/app/c;)V
    .locals 4

    const/4 v0, 0x2

    .line 1623
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/c;->z:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1625
    iput-boolean v1, p1, Landroidx/fragment/app/c;->z:Z

    .line 1626
    iget-boolean v2, p1, Landroidx/fragment/app/c;->k:Z

    if-eqz v2, :cond_3

    .line 1628
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/s;->b(Landroidx/fragment/app/c;)V

    .line 1630
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->w(Landroidx/fragment/app/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1631
    iput-boolean v1, p0, Landroidx/fragment/app/m;->v:Z

    .line 1633
    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->t(Landroidx/fragment/app/c;)V

    :cond_3
    return-void
.end method

.method n()V
    .locals 1

    const/4 v0, 0x0

    .line 2573
    iput-boolean v0, p0, Landroidx/fragment/app/m;->w:Z

    .line 2574
    iput-boolean v0, p0, Landroidx/fragment/app/m;->x:Z

    const/4 v0, 0x3

    .line 2575
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    return-void
.end method

.method n(Landroidx/fragment/app/c;)V
    .locals 4

    const/4 v0, 0x2

    .line 1639
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/c;->z:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 1641
    iput-boolean v1, p1, Landroidx/fragment/app/c;->z:Z

    .line 1642
    iget-boolean v1, p1, Landroidx/fragment/app/c;->k:Z

    if-nez v1, :cond_2

    .line 1643
    iget-object v1, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/c;)V

    .line 1644
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->w(Landroidx/fragment/app/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1646
    iput-boolean p1, p0, Landroidx/fragment/app/m;->v:Z

    :cond_2
    return-void
.end method

.method o()V
    .locals 1

    const/4 v0, 0x0

    .line 2579
    iput-boolean v0, p0, Landroidx/fragment/app/m;->w:Z

    .line 2580
    iput-boolean v0, p0, Landroidx/fragment/app/m;->x:Z

    const/4 v0, 0x4

    .line 2581
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    return-void
.end method

.method o(Landroidx/fragment/app/c;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2743
    iget-object v0, p1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-eq v0, p0, :cond_1

    .line 2745
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2748
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    .line 2749
    iput-object p1, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    .line 2750
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->v(Landroidx/fragment/app/c;)V

    .line 2751
    iget-object p1, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    invoke-direct {p0, p1}, Landroidx/fragment/app/m;->v(Landroidx/fragment/app/c;)V

    return-void
.end method

.method p()V
    .locals 1

    const/4 v0, 0x3

    .line 2585
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    return-void
.end method

.method q()V
    .locals 1

    const/4 v0, 0x1

    .line 2589
    iput-boolean v0, p0, Landroidx/fragment/app/m;->x:Z

    const/4 v0, 0x2

    .line 2590
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    return-void
.end method

.method r()V
    .locals 1

    const/4 v0, 0x1

    .line 2594
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    return-void
.end method

.method s()V
    .locals 2

    const/4 v0, 0x1

    .line 2598
    iput-boolean v0, p0, Landroidx/fragment/app/m;->y:Z

    .line 2599
    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->a(Z)Z

    .line 2600
    invoke-direct {p0}, Landroidx/fragment/app/m;->F()V

    const/4 v0, -0x1

    .line 2601
    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->e(I)V

    const/4 v0, 0x0

    .line 2602
    iput-object v0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    .line 2603
    iput-object v0, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    .line 2604
    iput-object v0, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    .line 2605
    iget-object v1, p0, Landroidx/fragment/app/m;->l:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 2608
    iget-object v1, p0, Landroidx/fragment/app/m;->m:Landroidx/activity/c;

    invoke-virtual {v1}, Landroidx/activity/c;->b()V

    .line 2609
    iput-object v0, p0, Landroidx/fragment/app/m;->l:Landroidx/activity/OnBackPressedDispatcher;

    :cond_0
    return-void
.end method

.method t()V
    .locals 1

    .line 2649
    iget-object p0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/fragment/app/s;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 2651
    invoke-virtual {v0}, Landroidx/fragment/app/c;->S()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-object v1, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 993
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 994
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget-object p0, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 996
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 998
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 999
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget-object p0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 1002
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}}"

    .line 1004
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method u()V
    .locals 1

    .line 2761
    invoke-direct {p0}, Landroidx/fragment/app/m;->A()V

    .line 2763
    iget-object v0, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    invoke-direct {p0, v0}, Landroidx/fragment/app/m;->v(Landroidx/fragment/app/c;)V

    return-void
.end method

.method public v()Landroidx/fragment/app/c;
    .locals 0

    .line 2780
    iget-object p0, p0, Landroidx/fragment/app/m;->e:Landroidx/fragment/app/c;

    return-object p0
.end method

.method public w()Landroidx/fragment/app/i;
    .locals 1

    .line 2817
    iget-object v0, p0, Landroidx/fragment/app/m;->t:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 2818
    iget-object p0, p0, Landroidx/fragment/app/m;->t:Landroidx/fragment/app/i;

    return-object p0

    .line 2820
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    if-eqz v0, :cond_1

    .line 2825
    iget-object p0, p0, Landroidx/fragment/app/m;->s:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->w()Landroidx/fragment/app/i;

    move-result-object p0

    return-object p0

    .line 2827
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/m;->u:Landroidx/fragment/app/i;

    return-object p0
.end method

.method x()Landroidx/fragment/app/l;
    .locals 0

    .line 2832
    iget-object p0, p0, Landroidx/fragment/app/m;->r:Landroidx/fragment/app/l;

    return-object p0
.end method

.method y()Z
    .locals 4

    .line 2863
    iget-object v0, p0, Landroidx/fragment/app/m;->i:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c;

    if-eqz v3, :cond_1

    .line 2865
    invoke-direct {p0, v3}, Landroidx/fragment/app/m;->w(Landroidx/fragment/app/c;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method z()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    .line 2897
    iget-object p0, p0, Landroidx/fragment/app/m;->k:Landroidx/fragment/app/k;

    return-object p0
.end method
