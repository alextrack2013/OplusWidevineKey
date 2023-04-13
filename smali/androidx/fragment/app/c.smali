.class public Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/x;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$a;,
        Landroidx/fragment/app/c$c;,
        Landroidx/fragment/app/c$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Landroid/view/ViewGroup;

.field F:Landroid/view/View;

.field G:Z

.field H:Z

.field I:Landroidx/fragment/app/c$a;

.field J:Ljava/lang/Runnable;

.field K:Z

.field L:Z

.field M:F

.field N:Landroid/view/LayoutInflater;

.field O:Z

.field P:Landroidx/lifecycle/f$b;

.field Q:Landroidx/lifecycle/k;

.field R:Landroidx/fragment/app/x;

.field S:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Landroidx/lifecycle/j;",
            ">;"
        }
    .end annotation
.end field

.field T:Landroidx/savedstate/b;

.field private U:Ljava/lang/Boolean;

.field private V:Z

.field private W:I

.field b:I

.field c:Landroid/os/Bundle;

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Boolean;

.field f:Ljava/lang/String;

.field g:Landroid/os/Bundle;

.field h:Landroidx/fragment/app/c;

.field i:Ljava/lang/String;

.field j:I

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Landroidx/fragment/app/m;

.field s:Landroidx/fragment/app/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/j<",
            "*>;"
        }
    .end annotation
.end field

.field t:Landroidx/fragment/app/m;

.field u:Landroidx/fragment/app/c;

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Landroidx/fragment/app/c;->U:Ljava/lang/Boolean;

    .line 169
    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0}, Landroidx/fragment/app/n;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    .line 222
    iput-boolean v0, p0, Landroidx/fragment/app/c;->H:Z

    .line 231
    new-instance v0, Landroidx/fragment/app/c$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$1;-><init>(Landroidx/fragment/app/c;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->J:Ljava/lang/Runnable;

    .line 261
    sget-object v0, Landroidx/lifecycle/f$b;->e:Landroidx/lifecycle/f$b;

    iput-object v0, p0, Landroidx/fragment/app/c;->P:Landroidx/lifecycle/f$b;

    .line 268
    new-instance v0, Landroidx/lifecycle/o;

    invoke-direct {v0}, Landroidx/lifecycle/o;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->S:Landroidx/lifecycle/o;

    .line 476
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/c;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 546
    invoke-static {p0, p1}, Landroidx/fragment/app/i;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 548
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/c;

    if-eqz p2, :cond_0

    .line 550
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 551
    invoke-virtual {p0, p2}, Landroidx/fragment/app/c;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 566
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 563
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 559
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 555
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private ah()V
    .locals 2

    .line 493
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    .line 494
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->T:Landroidx/savedstate/b;

    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/c;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/i;)V

    :cond_0
    return-void
.end method

.method private ai()Landroidx/fragment/app/c$a;
    .locals 1

    .line 2971
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    .line 2972
    new-instance v0, Landroidx/fragment/app/c$a;

    invoke-direct {v0}, Landroidx/fragment/app/c$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    .line 2974
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    return-object p0
.end method


# virtual methods
.method A()V
    .locals 3

    .line 1969
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()V

    .line 1970
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1971
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    .line 1972
    iput-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    .line 1973
    iput-boolean v0, p0, Landroidx/fragment/app/c;->m:Z

    .line 1974
    iput-boolean v0, p0, Landroidx/fragment/app/c;->n:Z

    .line 1975
    iput-boolean v0, p0, Landroidx/fragment/app/c;->o:Z

    .line 1976
    iput v0, p0, Landroidx/fragment/app/c;->q:I

    const/4 v1, 0x0

    .line 1977
    iput-object v1, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    .line 1978
    new-instance v2, Landroidx/fragment/app/n;

    invoke-direct {v2}, Landroidx/fragment/app/n;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    .line 1979
    iput-object v1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    .line 1980
    iput v0, p0, Landroidx/fragment/app/c;->v:I

    .line 1981
    iput v0, p0, Landroidx/fragment/app/c;->w:I

    .line 1982
    iput-object v1, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    .line 1983
    iput-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    .line 1984
    iput-boolean v0, p0, Landroidx/fragment/app/c;->z:Z

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x1

    .line 1994
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public C()V
    .locals 0

    return-void
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    .line 2198
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2201
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public E()Ljava/lang/Object;
    .locals 2

    .line 2237
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2240
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->g:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/c;->D()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->g:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public F()Ljava/lang/Object;
    .locals 1

    .line 2277
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2280
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public G()Ljava/lang/Object;
    .locals 2

    .line 2315
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2318
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->i:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/c;->F()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->i:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public H()Ljava/lang/Object;
    .locals 1

    .line 2348
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2351
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public I()Ljava/lang/Object;
    .locals 2

    .line 2386
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2389
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->k:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2390
    invoke-virtual {p0}, Landroidx/fragment/app/c;->H()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->k:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public J()Z
    .locals 1

    .line 2415
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->m:Ljava/lang/Boolean;

    .line 2416
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public K()Z
    .locals 1

    .line 2440
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->l:Ljava/lang/Boolean;

    .line 2441
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public L()V
    .locals 2

    .line 2531
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2533
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    iget-object v1, v1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->k()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2534
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->k()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/c$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/c$2;-><init>(Landroidx/fragment/app/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2541
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->M()V

    goto :goto_1

    .line 2532
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/c$a;->p:Z

    :goto_1
    return-void
.end method

.method M()V
    .locals 3

    .line 2551
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2554
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/fragment/app/c$a;->p:Z

    .line 2555
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->q:Landroidx/fragment/app/c$c;

    .line 2556
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iput-object v1, p0, Landroidx/fragment/app/c$a;->q:Landroidx/fragment/app/c$c;

    :goto_0
    if-eqz v0, :cond_1

    .line 2559
    invoke-interface {v0}, Landroidx/fragment/app/c$c;->a()V

    :cond_1
    return-void
.end method

.method N()V
    .locals 3

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    iget-object v1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    new-instance v2, Landroidx/fragment/app/c$3;

    invoke-direct {v2, p0}, Landroidx/fragment/app/c$3;-><init>(Landroidx/fragment/app/c;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/j;Landroidx/fragment/app/f;Landroidx/fragment/app/c;)V

    const/4 v0, 0x0

    .line 2670
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    .line 2671
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2672
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->a(Landroid/content/Context;)V

    .line 2673
    iget-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v0, :cond_0

    .line 2674
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onAttach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method O()V
    .locals 3

    .line 2726
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->k()V

    .line 2727
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Z)Z

    const/4 v0, 0x3

    .line 2728
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2729
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2730
    invoke-virtual {p0}, Landroidx/fragment/app/c;->u()V

    .line 2731
    iget-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v0, :cond_0

    .line 2732
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStart()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2735
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    .line 2736
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2737
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 2739
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->n()V

    return-void
.end method

.method P()V
    .locals 3

    .line 2743
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->k()V

    .line 2744
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/m;->a(Z)Z

    const/4 v0, 0x4

    .line 2745
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2746
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2747
    invoke-virtual {p0}, Landroidx/fragment/app/c;->v()V

    .line 2748
    iget-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v0, :cond_0

    .line 2749
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onResume()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2752
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    .line 2753
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2754
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 2756
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()V

    return-void
.end method

.method Q()V
    .locals 0

    .line 2760
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->k()V

    return-void
.end method

.method R()V
    .locals 2

    .line 2764
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;)Z

    move-result v0

    .line 2766
    iget-object v1, p0, Landroidx/fragment/app/c;->U:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/c;->U:Ljava/lang/Boolean;

    .line 2767
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2768
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/c;->U:Ljava/lang/Boolean;

    .line 2769
    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->d(Z)V

    .line 2770
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->u()V

    :cond_1
    return-void
.end method

.method S()V
    .locals 0

    .line 2790
    invoke-virtual {p0}, Landroidx/fragment/app/c;->onLowMemory()V

    .line 2791
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->t()V

    return-void
.end method

.method T()V
    .locals 3

    .line 2872
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->p()V

    .line 2873
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2874
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 2876
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x3

    .line 2877
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2878
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2879
    invoke-virtual {p0}, Landroidx/fragment/app/c;->w()V

    .line 2880
    iget-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v0, :cond_1

    .line 2881
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onPause()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method U()V
    .locals 3

    .line 2887
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->q()V

    .line 2888
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2889
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    .line 2891
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x2

    .line 2892
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2893
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2894
    invoke-virtual {p0}, Landroidx/fragment/app/c;->x()V

    .line 2895
    iget-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v0, :cond_1

    .line 2896
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStop()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method V()V
    .locals 3

    .line 2902
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->r()V

    .line 2903
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2904
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    :cond_0
    const/4 v0, 0x1

    .line 2906
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2907
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2908
    invoke-virtual {p0}, Landroidx/fragment/app/c;->y()V

    .line 2909
    iget-boolean v1, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v1, :cond_1

    .line 2910
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2917
    :cond_1
    invoke-static {p0}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/j;)Landroidx/loader/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/loader/a/a;->a()V

    .line 2918
    iput-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    return-void
.end method

.method W()V
    .locals 3

    .line 2922
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->s()V

    .line 2923
    iget-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    const/4 v0, 0x0

    .line 2924
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    .line 2925
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2926
    iput-boolean v0, p0, Landroidx/fragment/app/c;->O:Z

    .line 2927
    invoke-virtual {p0}, Landroidx/fragment/app/c;->z()V

    .line 2928
    iget-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v0, :cond_0

    .line 2929
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroy()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method X()V
    .locals 3

    const/4 v0, -0x1

    .line 2935
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2936
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2937
    invoke-virtual {p0}, Landroidx/fragment/app/c;->B()V

    const/4 v0, 0x0

    .line 2938
    iput-object v0, p0, Landroidx/fragment/app/c;->N:Landroid/view/LayoutInflater;

    .line 2939
    iget-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    if-nez v0, :cond_0

    .line 2940
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDetach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2947
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2948
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->s()V

    .line 2949
    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0}, Landroidx/fragment/app/n;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    :cond_1
    return-void
.end method

.method Y()I
    .locals 1

    .line 2978
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2981
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget p0, p0, Landroidx/fragment/app/c$a;->d:I

    return p0
.end method

.method Z()I
    .locals 1

    .line 2992
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2995
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget p0, p0, Landroidx/fragment/app/c$a;->e:I

    return p0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1739
    iget p3, p0, Landroidx/fragment/app/c;->W:I

    if-eqz p3, :cond_0

    .line 1740
    iget p0, p0, Landroidx/fragment/app/c;->W:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method a(Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 1

    .line 2648
    iget-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2651
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method

.method a(I)V
    .locals 1

    .line 2985
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2988
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/c$a;->d:I

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 0

    .line 3032
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/c$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1616
    iput-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1575
    iput-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1598
    iput-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    .line 1599
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->i()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1601
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 1602
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 1556
    iput-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    .line 1557
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->i()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1559
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 1560
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 2785
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2786
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 2

    .line 572
    iget-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 574
    iput-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 577
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->i(Landroid/os/Bundle;)V

    .line 578
    iget-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    if-nez p1, :cond_1

    .line 579
    new-instance p1, Landroidx/fragment/app/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1

    .line 582
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 583
    iget-object p0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    sget-object p1, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->a(Landroidx/lifecycle/f$a;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 0

    .line 3028
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/c$a;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method a(Landroidx/fragment/app/c$c;)V
    .locals 2

    .line 2954
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    .line 2955
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->q:Landroidx/fragment/app/c$c;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2958
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->q:Landroidx/fragment/app/c$c;

    if-eqz v0, :cond_1

    .line 2959
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2962
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-boolean v0, v0, Landroidx/fragment/app/c$a;->p:Z

    if-eqz v0, :cond_2

    .line 2963
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iput-object p1, p0, Landroidx/fragment/app/c$a;->q:Landroidx/fragment/app/c$c;

    :cond_2
    if-eqz p1, :cond_3

    .line 2966
    invoke-interface {p1}, Landroidx/fragment/app/c$c;->b()V

    :cond_3
    return-void
.end method

.method public a(Landroidx/fragment/app/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2574
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2575
    iget v0, p0, Landroidx/fragment/app/c;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 2576
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2577
    iget v0, p0, Landroidx/fragment/app/c;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 2578
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/c;->b:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 2580
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 2581
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/c;->q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2582
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 2583
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 2584
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 2585
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2586
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 2587
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 2588
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 2589
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2590
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->A:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 2591
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2592
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-eqz v0, :cond_0

    .line 2593
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2594
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2596
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    .line 2597
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2598
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2600
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    if-eqz v0, :cond_2

    .line 2601
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2602
    iget-object v0, p0, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2604
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2605
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2607
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2608
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2609
    iget-object v0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2611
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2612
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2613
    iget-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2615
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->f()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2617
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 2618
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2619
    iget v0, p0, Landroidx/fragment/app/c;->j:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2621
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/c;->Y()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2622
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/c;->Y()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2624
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2625
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2627
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2628
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2630
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/c;->ac()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2631
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 2632
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {p0}, Landroidx/fragment/app/c;->ac()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2634
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 2635
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {p0}, Landroidx/fragment/app/c;->ae()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2638
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/c;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2639
    invoke-static {p0}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/j;)Landroidx/loader/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2641
    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/m;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method final a()Z
    .locals 0

    .line 588
    iget p0, p0, Landroidx/fragment/app/c;->q:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method aa()Landroidx/core/app/g;
    .locals 1

    .line 3007
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3010
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->n:Landroidx/core/app/g;

    return-object p0
.end method

.method ab()Landroidx/core/app/g;
    .locals 1

    .line 3014
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3017
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->o:Landroidx/core/app/g;

    return-object p0
.end method

.method ac()Landroid/view/View;
    .locals 1

    .line 3021
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3024
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->a:Landroid/view/View;

    return-object p0
.end method

.method ad()Landroid/animation/Animator;
    .locals 1

    .line 3036
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3039
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-object p0, p0, Landroidx/fragment/app/c$a;->b:Landroid/animation/Animator;

    return-object p0
.end method

.method ae()I
    .locals 1

    .line 3043
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3046
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget p0, p0, Landroidx/fragment/app/c$a;->c:I

    return p0
.end method

.method af()Z
    .locals 1

    .line 3054
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3057
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-boolean p0, p0, Landroidx/fragment/app/c$a;->p:Z

    return p0
.end method

.method ag()Z
    .locals 1

    .line 3061
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3064
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iget-boolean p0, p0, Landroidx/fragment/app/c$a;->r:Z

    return p0
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Landroidx/lifecycle/f;
    .locals 0

    .line 286
    iget-object p0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    return-object p0
.end method

.method b(I)V
    .locals 1

    .line 2999
    iget-object v0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 3002
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    .line 3003
    iget-object p0, p0, Landroidx/fragment/app/c;->I:Landroidx/fragment/app/c$a;

    iput p1, p0, Landroidx/fragment/app/c$a;->e:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 654
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 657
    :cond_0
    iput-object p1, p0, Landroidx/fragment/app/c;->g:Landroid/os/Bundle;

    return-void
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 2695
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->k()V

    const/4 v0, 0x1

    .line 2696
    iput-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    .line 2697
    new-instance v0, Landroidx/fragment/app/x;

    invoke-direct {v0}, Landroidx/fragment/app/x;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    .line 2698
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    .line 2699
    iget-object p1, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2701
    iget-object p1, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->a()V

    .line 2703
    iget-object p1, p0, Landroidx/fragment/app/c;->S:Landroidx/lifecycle/o;

    iget-object p0, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/o;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2705
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    invoke-virtual {p1}, Landroidx/fragment/app/x;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2706
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 2709
    iput-object p1, p0, Landroidx/fragment/app/c;->R:Landroidx/fragment/app/x;

    :goto_0
    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 2805
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2806
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2808
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2810
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/m;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1452
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->e(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public c()Landroidx/lifecycle/w;
    .locals 1

    .line 364
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-nez v0, :cond_0

    .line 365
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 367
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/m;->b(Landroidx/fragment/app/c;)Landroidx/lifecycle/w;

    move-result-object p0

    return-object p0
.end method

.method c(I)V
    .locals 0

    .line 3050
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/c$a;->c:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    .line 2817
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2818
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2820
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/view/Menu;)V

    .line 2822
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2828
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_1

    .line 2829
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    .line 2830
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2834
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->a(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1484
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1485
    iput-object p1, p0, Landroidx/fragment/app/c;->N:Landroid/view/LayoutInflater;

    .line 1486
    iget-object p0, p0, Landroidx/fragment/app/c;->N:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    .line 2854
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_1

    .line 2855
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    .line 2856
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->b(Landroid/view/Menu;)V

    .line 2858
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 693
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 696
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->g()Z

    move-result p0

    return p0
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2842
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_1

    .line 2843
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->b(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2846
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public e(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1502
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-nez p1, :cond_0

    .line 1503
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1506
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->e()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1507
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->z()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/core/g/f;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1
.end method

.method public final e()Landroidx/savedstate/a;
    .locals 0

    .line 395
    iget-object p0, p0, Landroidx/fragment/app/c;->T:Landroidx/savedstate/b;

    invoke-virtual {p0}, Landroidx/savedstate/b;->a()Landroidx/savedstate/a;

    move-result-object p0

    return-object p0
.end method

.method e(Z)V
    .locals 0

    .line 2775
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->b(Z)V

    .line 2776
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->b(Z)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 595
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Landroidx/fragment/app/c;
    .locals 1

    .line 767
    iget-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    .line 770
    iget-object p0, p0, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    return-object p0

    .line 771
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    iget-object p0, p0, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1682
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 1683
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->g(Landroid/os/Bundle;)V

    .line 1684
    iget-object p1, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->b(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1685
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()V

    :cond_0
    return-void
.end method

.method f(Z)V
    .locals 0

    .line 2780
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->c(Z)V

    .line 2781
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/m;->c(Z)V

    return-void
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .line 792
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method g(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 1703
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1706
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/m;->a(Landroid/os/Parcelable;)V

    .line 1707
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()V

    :cond_0
    return-void
.end method

.method g(Z)V
    .locals 0

    .line 3068
    invoke-direct {p0}, Landroidx/fragment/app/c;->ai()Landroidx/fragment/app/c$a;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/fragment/app/c$a;->r:Z

    return-void
.end method

.method public final h()Landroid/content/Context;
    .locals 3

    .line 803
    invoke-virtual {p0}, Landroidx/fragment/app/c;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1802
    iput-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 602
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Landroidx/fragment/app/d;
    .locals 1

    .line 819
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->i()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/d;

    :goto_0
    return-object p0
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1819
    iput-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public final j()Landroidx/fragment/app/d;
    .locals 3

    .line 831
    invoke-virtual {p0}, Landroidx/fragment/app/c;->i()Landroidx/fragment/app/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 833
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to an activity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final k()Ljava/lang/Object;
    .locals 1

    .line 846
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->h()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method k(Landroid/os/Bundle;)V
    .locals 2

    .line 2680
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->k()V

    const/4 v0, 0x1

    .line 2681
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v1, 0x0

    .line 2682
    iput-boolean v1, p0, Landroidx/fragment/app/c;->V:Z

    .line 2683
    iget-object v1, p0, Landroidx/fragment/app/c;->T:Landroidx/savedstate/b;

    invoke-virtual {v1, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 2684
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->f(Landroid/os/Bundle;)V

    .line 2685
    iput-boolean v0, p0, Landroidx/fragment/app/c;->O:Z

    .line 2686
    iget-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    if-nez p1, :cond_0

    .line 2687
    new-instance p1, Landroidx/fragment/app/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onCreate()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2690
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    sget-object p1, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public final l()Landroid/content/res/Resources;
    .locals 0

    .line 869
    invoke-virtual {p0}, Landroidx/fragment/app/c;->h()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method l(Landroid/os/Bundle;)V
    .locals 2

    .line 2714
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->k()V

    const/4 v0, 0x2

    .line 2715
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2716
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    .line 2717
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->h(Landroid/os/Bundle;)V

    .line 2718
    iget-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    if-nez p1, :cond_0

    .line 2719
    new-instance p1, Landroidx/fragment/app/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2722
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->m()V

    return-void
.end method

.method public final m()Landroidx/fragment/app/m;
    .locals 3

    .line 943
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    if-nez v0, :cond_0

    .line 945
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not associated with a fragment manager."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method m(Landroid/os/Bundle;)V
    .locals 1

    .line 2863
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->j(Landroid/os/Bundle;)V

    .line 2864
    iget-object v0, p0, Landroidx/fragment/app/c;->T:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    .line 2865
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android:support:fragments"

    .line 2867
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final n()Landroidx/fragment/app/m;
    .locals 3

    .line 979
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    .line 980
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not been attached yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/m;

    return-object p0
.end method

.method public final o()Landroidx/fragment/app/c;
    .locals 0

    .line 991
    iget-object p0, p0, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 1890
    iput-boolean p1, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 2098
    invoke-virtual {p0}, Landroidx/fragment/app/c;->j()Landroidx/fragment/app/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    .line 1934
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public final p()Z
    .locals 0

    .line 1039
    iget-boolean p0, p0, Landroidx/fragment/app/c;->l:Z

    return p0
.end method

.method final q()Z
    .locals 1

    .line 1048
    invoke-virtual {p0}, Landroidx/fragment/app/c;->o()Landroidx/fragment/app/c;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1049
    invoke-virtual {p0}, Landroidx/fragment/app/c;->p()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->q()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r()Z
    .locals 0

    .line 1142
    iget-boolean p0, p0, Landroidx/fragment/app/c;->A:Z

    return p0
.end method

.method public s()Landroid/view/View;
    .locals 0

    .line 1767
    iget-object p0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    return-object p0
.end method

.method public final t()Landroid/view/View;
    .locals 3

    .line 1778
    invoke-virtual {p0}, Landroidx/fragment/app/c;->s()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1780
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 609
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v1, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    iget v1, p0, Landroidx/fragment/app/c;->v:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget v1, p0, Landroidx/fragment/app/c;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget-object p0, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x7d

    .line 625
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    .line 1830
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    .line 1842
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x1

    .line 1916
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    .line 1927
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    .line 1949
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    .line 1959
    iput-boolean v0, p0, Landroidx/fragment/app/c;->V:Z

    return-void
.end method
