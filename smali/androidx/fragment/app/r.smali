.class Landroidx/fragment/app/r;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"


# instance fields
.field private final a:Landroidx/fragment/app/l;

.field private final b:Landroidx/fragment/app/c;

.field private c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/l;Landroidx/fragment/app/c;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/fragment/app/r;->c:I

    .line 57
    iput-object p1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    .line 58
    iput-object p2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/l;Landroidx/fragment/app/c;Landroidx/fragment/app/q;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/fragment/app/r;->c:I

    .line 114
    iput-object p1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    .line 115
    iput-object p2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    .line 116
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    .line 117
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/fragment/app/c;->q:I

    .line 118
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-boolean v0, p1, Landroidx/fragment/app/c;->n:Z

    .line 119
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-boolean v0, p1, Landroidx/fragment/app/c;->k:Z

    .line 120
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object p2, p1, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    .line 122
    iget-object p1, p3, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 123
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p3, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    goto :goto_1

    .line 128
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/l;Ljava/lang/ClassLoader;Landroidx/fragment/app/i;Landroidx/fragment/app/q;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/fragment/app/r;->c:I

    .line 73
    iput-object p1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    .line 74
    iget-object p1, p4, Landroidx/fragment/app/q;->a:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Landroidx/fragment/app/i;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    .line 75
    iget-object p1, p4, Landroidx/fragment/app/q;->j:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p4, Landroidx/fragment/app/q;->j:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 78
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p2, p4, Landroidx/fragment/app/q;->j:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/c;->b(Landroid/os/Bundle;)V

    .line 79
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p2, p4, Landroidx/fragment/app/q;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p2, p4, Landroidx/fragment/app/q;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/c;->m:Z

    .line 81
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/c;->o:Z

    .line 82
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget p2, p4, Landroidx/fragment/app/q;->d:I

    iput p2, p1, Landroidx/fragment/app/c;->v:I

    .line 83
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget p2, p4, Landroidx/fragment/app/q;->e:I

    iput p2, p1, Landroidx/fragment/app/c;->w:I

    .line 84
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p2, p4, Landroidx/fragment/app/q;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p2, p4, Landroidx/fragment/app/q;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/c;->A:Z

    .line 86
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p2, p4, Landroidx/fragment/app/q;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/c;->l:Z

    .line 87
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p2, p4, Landroidx/fragment/app/q;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/c;->z:Z

    .line 88
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p2, p4, Landroidx/fragment/app/q;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/c;->y:Z

    .line 89
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-static {}, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;

    move-result-object p2

    iget p3, p4, Landroidx/fragment/app/q;->l:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/c;->P:Landroidx/lifecycle/f$b;

    .line 90
    iget-object p1, p4, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p2, p4, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    iput-object p2, p1, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    :goto_0
    const/4 p1, 0x2

    .line 98
    invoke-static {p1}, Landroidx/fragment/app/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "FragmentManager"

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private m()Landroid/os/Bundle;
    .locals 4

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/c;->m(Landroid/os/Bundle;)V

    .line 425
    iget-object v1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/l;->d(Landroidx/fragment/app/c;Landroid/os/Bundle;Z)V

    .line 426
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 430
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/r;->l()V

    .line 433
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v1, "android:view_state"

    .line 437
    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 440
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v1, v1, Landroidx/fragment/app/c;->H:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const-string v1, "android:user_visible_hint"

    .line 445
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p0, p0, Landroidx/fragment/app/c;->H:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method a()Landroidx/fragment/app/c;
    .locals 0

    .line 134
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    return-object p0
.end method

.method a(I)V
    .locals 0

    .line 144
    iput p1, p0, Landroidx/fragment/app/r;->c:I

    return-void
.end method

.method a(Landroidx/fragment/app/f;)V
    .locals 4

    .line 280
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v0, v0, Landroidx/fragment/app/c;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 285
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATE_VIEW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 290
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    goto/16 :goto_1

    .line 291
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v1, v1, Landroidx/fragment/app/c;->w:I

    if-eqz v1, :cond_4

    .line 292
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v0, v0, Landroidx/fragment/app/c;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 293
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for a container view with no id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v0, v0, Landroidx/fragment/app/c;->w:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/f;->a(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 297
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p1, p1, Landroidx/fragment/app/c;->o:Z

    if-nez p1, :cond_4

    .line 300
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->l()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v0, v0, Landroidx/fragment/app/c;->w:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "unknown"

    .line 304
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v2, v2, Landroidx/fragment/app/c;->w:I

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object v0, p1, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    .line 310
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/c;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/c;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 312
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 313
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 314
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    sget v2, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v0, :cond_5

    .line 316
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    :cond_5
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p1, p1, Landroidx/fragment/app/c;->y:Z

    if-eqz p1, :cond_6

    .line 319
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_6
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/g/t;->h(Landroid/view/View;)V

    .line 322
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 323
    iget-object p1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v3, v3, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/c;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 327
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p1, Landroidx/fragment/app/c;->K:Z

    :cond_8
    return-void
.end method

.method a(Landroidx/fragment/app/j;Landroidx/fragment/app/m;Landroidx/fragment/app/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j<",
            "*>;",
            "Landroidx/fragment/app/m;",
            "Landroidx/fragment/app/c;",
            ")V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object p1, v0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    .line 249
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object p3, v0, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    .line 250
    iget-object p3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object p2, p3, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    .line 251
    iget-object p2, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object p3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    .line 252
    invoke-virtual {p1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {p2, p3, v0, v1}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/c;Landroid/content/Context;Z)V

    .line 253
    iget-object p2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p2}, Landroidx/fragment/app/c;->N()V

    .line 254
    iget-object p2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p2, p2, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    if-nez p2, :cond_0

    .line 255
    iget-object p2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/c;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p2, p2, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    iget-object p3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/c;)V

    .line 259
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    .line 260
    invoke-virtual {p1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object p1

    .line 259
    invoke-virtual {p2, p0, p1, v1}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/c;Landroid/content/Context;Z)V

    return-void
.end method

.method a(Landroidx/fragment/app/j;Landroidx/fragment/app/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/j<",
            "*>;",
            "Landroidx/fragment/app/p;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 464
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v0, v0, Landroidx/fragment/app/c;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 468
    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p2, v3}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/c;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    if-eqz v3, :cond_8

    .line 471
    instance-of v3, p1, Landroidx/lifecycle/x;

    if-eqz v3, :cond_4

    .line 472
    invoke-virtual {p2}, Landroidx/fragment/app/p;->b()Z

    move-result v2

    goto :goto_3

    .line 473
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_5

    .line 474
    invoke-virtual {p1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 475
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    xor-int/2addr v2, p1

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    if-eqz v2, :cond_7

    .line 480
    :cond_6
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/p;->f(Landroidx/fragment/app/c;)V

    .line 482
    :cond_7
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->W()V

    .line 483
    iget-object p1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/l;->f(Landroidx/fragment/app/c;Z)V

    goto :goto_4

    .line 485
    :cond_8
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput v1, p0, Landroidx/fragment/app/c;->b:I

    :goto_4
    return-void
.end method

.method a(Landroidx/fragment/app/p;)V
    .locals 4

    const/4 v0, 0x3

    .line 490
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ATTACHED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->X()V

    .line 494
    iget-object v1, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/l;->g(Landroidx/fragment/app/c;Z)V

    .line 496
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/fragment/app/c;->b:I

    .line 497
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    .line 498
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object v2, v1, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    .line 499
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object v2, v1, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    .line 500
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v1, v1, Landroidx/fragment/app/c;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    .line 501
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 502
    :cond_2
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "FragmentManager"

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->A()V

    :cond_4
    return-void
.end method

.method a(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 222
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 226
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    .line 228
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    .line 230
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/c;->j:I

    .line 234
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p1, p1, Landroidx/fragment/app/c;->e:Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 235
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Landroidx/fragment/app/c;->H:Z

    .line 236
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/fragment/app/c;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 238
    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Landroidx/fragment/app/c;->H:Z

    .line 241
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean p1, p1, Landroidx/fragment/app/c;->H:Z

    if-nez p1, :cond_3

    .line 242
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-boolean v0, p0, Landroidx/fragment/app/c;->G:Z

    :cond_3
    return-void
.end method

.method b()I
    .locals 5

    .line 155
    iget v0, p0, Landroidx/fragment/app/r;->c:I

    .line 158
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v1, v1, Landroidx/fragment/app/c;->m:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v1, v1, Landroidx/fragment/app/c;->n:Z

    if-eqz v1, :cond_0

    .line 162
    iget v0, p0, Landroidx/fragment/app/r;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v1, v1, Landroidx/fragment/app/c;->k:Z

    if-nez v1, :cond_2

    .line 171
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v1, v1, Landroidx/fragment/app/c;->l:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    .line 174
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1}, Landroidx/fragment/app/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 179
    :cond_3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 184
    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v1, v1, Landroidx/fragment/app/c;->G:Z

    const/4 v4, 0x3

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v1, v1, Landroidx/fragment/app/c;->b:I

    if-ge v1, v4, :cond_5

    const/4 v1, 0x2

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 188
    :cond_5
    sget-object v1, Landroidx/fragment/app/r$1;->a:[I

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->P:Landroidx/lifecycle/f$b;

    invoke-virtual {p0}, Landroidx/lifecycle/f$b;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    .line 199
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 196
    :pswitch_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 193
    :pswitch_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method c()V
    .locals 4

    .line 205
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v0, v0, Landroidx/fragment/app/c;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v0, v0, Landroidx/fragment/app/c;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v0, v0, Landroidx/fragment/app/c;->p:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 206
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATE_VIEW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/c;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v3, v3, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/c;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 211
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 213
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v0, v0, Landroidx/fragment/app/c;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v3, v3, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 215
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v3, v3, Landroidx/fragment/app/c;->F:Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, p0, v1}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/c;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_2
    return-void
.end method

.method d()V
    .locals 4

    const/4 v0, 0x3

    .line 264
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-boolean v0, v0, Landroidx/fragment/app/c;->O:Z

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v2, v2, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/c;Landroid/os/Bundle;Z)V

    .line 270
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->k(Landroid/os/Bundle;)V

    .line 271
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0, v3}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/c;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->g(Landroid/os/Bundle;)V

    .line 275
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/c;->b:I

    :goto_0
    return-void
.end method

.method e()V
    .locals 3

    const/4 v0, 0x3

    .line 333
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->l(Landroid/os/Bundle;)V

    .line 337
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/c;Landroid/os/Bundle;Z)V

    return-void
.end method

.method f()V
    .locals 3

    const/4 v0, 0x3

    .line 342
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/c;->a(Landroid/os/Bundle;)V

    .line 348
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    return-void
.end method

.method g()V
    .locals 3

    const/4 v0, 0x3

    .line 352
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->O()V

    .line 356
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/c;Z)V

    return-void
.end method

.method h()V
    .locals 3

    const/4 v0, 0x3

    .line 360
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->P()V

    .line 364
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/c;Z)V

    .line 365
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    .line 366
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object v1, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    return-void
.end method

.method i()V
    .locals 3

    const/4 v0, 0x3

    .line 370
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->T()V

    .line 374
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/c;Z)V

    return-void
.end method

.method j()V
    .locals 3

    const/4 v0, 0x3

    .line 378
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->U()V

    .line 382
    iget-object v0, p0, Landroidx/fragment/app/r;->a:Landroidx/fragment/app/l;

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/l;->d(Landroidx/fragment/app/c;Z)V

    return-void
.end method

.method k()Landroidx/fragment/app/q;
    .locals 4

    .line 387
    new-instance v0, Landroidx/fragment/app/q;

    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    invoke-direct {v0, v1}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/c;)V

    .line 389
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v1, v1, Landroidx/fragment/app/c;->b:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 390
    invoke-direct {p0}, Landroidx/fragment/app/r;->m()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    .line 392
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, v0, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 394
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    .line 396
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    iget-object v3, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v3, v3, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget v1, v1, Landroidx/fragment/app/c;->j:I

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, v0, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget p0, p0, Landroidx/fragment/app/c;->j:I

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object p0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    iput-object p0, v0, Landroidx/fragment/app/q;->m:Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-object v0
.end method

.method l()V
    .locals 2

    .line 452
    iget-object v0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 456
    iget-object v1, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iget-object v1, v1, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 457
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 458
    iget-object p0, p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/c;

    iput-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method
