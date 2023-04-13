.class final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/t;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/m$c;


# instance fields
.field final a:Landroidx/fragment/app/m;

.field b:Z

.field c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/m;)V
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroidx/fragment/app/m;->w()Landroidx/fragment/app/i;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    .line 140
    invoke-virtual {v1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 139
    :goto_0
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/i;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/fragment/app/a;->c:I

    .line 142
    iput-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    return-void
.end method

.method private static b(Landroidx/fragment/app/t$a;)Z
    .locals 1

    .line 662
    iget-object p0, p0, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz p0, :cond_0

    .line 663
    iget-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/c;->af()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method a(Ljava/util/ArrayList;Landroidx/fragment/app/c;)Landroidx/fragment/app/c;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c;",
            ">;",
            "Landroidx/fragment/app/c;",
            ")",
            "Landroidx/fragment/app/c;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p2

    move p2, v0

    .line 538
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 539
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/t$a;

    .line 540
    iget v3, v2, Landroidx/fragment/app/t$a;->a:I

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 595
    :pswitch_1
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v4, Landroidx/fragment/app/t$a;

    invoke-direct {v4, v5, v1}, Landroidx/fragment/app/t$a;-><init>(ILandroidx/fragment/app/c;)V

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    .line 598
    iget-object v1, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    goto/16 :goto_5

    .line 547
    :pswitch_2
    iget-object v3, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 548
    iget-object v3, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-ne v3, v1, :cond_5

    .line 549
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/t$a;

    iget-object v2, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-direct {v3, v5, v2}, Landroidx/fragment/app/t$a;-><init>(ILandroidx/fragment/app/c;)V

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    move-object v1, v4

    goto/16 :goto_5

    .line 556
    :pswitch_3
    iget-object v3, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    .line 557
    iget v7, v3, Landroidx/fragment/app/c;->w:I

    .line 559
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    move-object v9, v1

    move v1, p2

    move p2, v0

    :goto_1
    if-ltz v8, :cond_3

    .line 560
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/c;

    .line 561
    iget v11, v10, Landroidx/fragment/app/c;->w:I

    if-ne v11, v7, :cond_2

    if-ne v10, v3, :cond_0

    move p2, v6

    goto :goto_2

    :cond_0
    if-ne v10, v9, :cond_1

    .line 568
    iget-object v9, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/t$a;

    invoke-direct {v11, v5, v10}, Landroidx/fragment/app/t$a;-><init>(ILandroidx/fragment/app/c;)V

    invoke-virtual {v9, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object v9, v4

    .line 572
    :cond_1
    new-instance v11, Landroidx/fragment/app/t$a;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v10}, Landroidx/fragment/app/t$a;-><init>(ILandroidx/fragment/app/c;)V

    .line 573
    iget v12, v2, Landroidx/fragment/app/t$a;->c:I

    iput v12, v11, Landroidx/fragment/app/t$a;->c:I

    .line 574
    iget v12, v2, Landroidx/fragment/app/t$a;->e:I

    iput v12, v11, Landroidx/fragment/app/t$a;->e:I

    .line 575
    iget v12, v2, Landroidx/fragment/app/t$a;->d:I

    iput v12, v11, Landroidx/fragment/app/t$a;->d:I

    .line 576
    iget v12, v2, Landroidx/fragment/app/t$a;->f:I

    iput v12, v11, Landroidx/fragment/app/t$a;->f:I

    .line 577
    iget-object v12, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 578
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v1, v6

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 584
    iget-object p2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_3
    move p2, v1

    goto :goto_4

    .line 587
    :cond_4
    iput v6, v2, Landroidx/fragment/app/t$a;->a:I

    .line 588
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_4
    move-object v1, v9

    goto :goto_5

    .line 543
    :pswitch_4
    iget-object v2, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    add-int/2addr p2, v6

    goto/16 :goto_0

    :cond_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public a()V
    .locals 2

    .line 276
    iget-object v0, p0, Landroidx/fragment/app/a;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Landroidx/fragment/app/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Landroidx/fragment/app/a;->t:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method a(I)V
    .locals 7

    .line 256
    iget-boolean v0, p0, Landroidx/fragment/app/a;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 259
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 264
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/t$a;

    .line 265
    iget-object v4, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    iget v5, v4, Landroidx/fragment/app/c;->q:I

    add-int/2addr v5, p1

    iput v5, v4, Landroidx/fragment/app/c;->q:I

    .line 267
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "FragmentManager"

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    iget v3, v3, Landroidx/fragment/app/c;->q:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(ILandroidx/fragment/app/c;Ljava/lang/String;I)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/t;->a(ILandroidx/fragment/app/c;Ljava/lang/String;I)V

    .line 181
    iget-object p0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iput-object p0, p2, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    return-void
.end method

.method a(Landroidx/fragment/app/c$c;)V
    .locals 3

    const/4 v0, 0x0

    .line 653
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 654
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/t$a;

    .line 655
    invoke-static {v1}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/t$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    iget-object v1, v1, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/c$c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 65
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 66
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/a;->b:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 67
    iget v0, p0, Landroidx/fragment/app/a;->i:I

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroidx/fragment/app/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/a;->f:I

    if-eqz v0, :cond_2

    .line 72
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 74
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroidx/fragment/app/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    :cond_2
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/a;->h:I

    if-eqz v0, :cond_4

    .line 78
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroidx/fragment/app/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    :cond_4
    iget v0, p0, Landroidx/fragment/app/a;->m:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/a;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 84
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Landroidx/fragment/app/a;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 86
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Landroidx/fragment/app/a;->n:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    :cond_6
    iget v0, p0, Landroidx/fragment/app/a;->o:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 90
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Landroidx/fragment/app/a;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 92
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 97
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    .line 101
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/t$a;

    .line 103
    iget v3, v2, Landroidx/fragment/app/t$a;->a:I

    packed-switch v3, :pswitch_data_0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroidx/fragment/app/t$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    .line 117
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 118
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 119
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 121
    iget v3, v2, Landroidx/fragment/app/t$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Landroidx/fragment/app/t$a;->d:I

    if-eqz v3, :cond_a

    .line 122
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget v3, v2, Landroidx/fragment/app/t$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 124
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v3, v2, Landroidx/fragment/app/t$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    :cond_a
    iget v3, v2, Landroidx/fragment/app/t$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Landroidx/fragment/app/t$a;->f:I

    if-eqz v3, :cond_c

    .line 128
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    iget v3, v2, Landroidx/fragment/app/t$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 130
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget v2, v2, Landroidx/fragment/app/t$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Z)V
    .locals 6

    .line 459
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 460
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/t$a;

    .line 461
    iget-object v3, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz v3, :cond_0

    .line 463
    iget v4, p0, Landroidx/fragment/app/a;->i:I

    invoke-static {v4}, Landroidx/fragment/app/m;->d(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/c;->b(I)V

    .line 465
    :cond_0
    iget v4, v2, Landroidx/fragment/app/t$a;->a:I

    if-eq v4, v1, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 503
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown cmd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroidx/fragment/app/t$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 500
    :pswitch_0
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iget-object v5, v2, Landroidx/fragment/app/t$a;->g:Landroidx/lifecycle/f$b;

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Landroidx/lifecycle/f$b;)V

    goto :goto_1

    .line 497
    :pswitch_1
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/m;->o(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 494
    :pswitch_2
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/m;->o(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 489
    :pswitch_3
    iget v4, v2, Landroidx/fragment/app/t$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/c;->a(I)V

    .line 490
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Z)V

    .line 491
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 485
    :pswitch_4
    iget v4, v2, Landroidx/fragment/app/t$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/c;->a(I)V

    .line 486
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/m;->n(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 480
    :pswitch_5
    iget v4, v2, Landroidx/fragment/app/t$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/c;->a(I)V

    .line 481
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Z)V

    .line 482
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/m;->k(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 476
    :pswitch_6
    iget v4, v2, Landroidx/fragment/app/t$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/c;->a(I)V

    .line 477
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/m;->l(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 472
    :pswitch_7
    iget v4, v2, Landroidx/fragment/app/t$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/c;->a(I)V

    .line 473
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/m;->i(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 467
    :cond_1
    iget v4, v2, Landroidx/fragment/app/t$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/c;->a(I)V

    .line 468
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Z)V

    .line 469
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/m;->j(Landroidx/fragment/app/c;)V

    .line 505
    :goto_1
    iget-boolean v4, p0, Landroidx/fragment/app/a;->s:Z

    if-nez v4, :cond_2

    iget v2, v2, Landroidx/fragment/app/t$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    if-eqz v3, :cond_2

    .line 506
    iget-object v2, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/c;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 509
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/a;->s:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 510
    iget-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iget-object p0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iget p0, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/m;->a(IZ)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Ljava/util/ArrayList;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    .line 365
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 368
    iget-object v4, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/t$a;

    .line 369
    iget-object v5, v4, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    iget v4, v4, Landroidx/fragment/app/c;->w:I

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_6

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_5

    .line 373
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    .line 374
    iget-object v6, v5, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 376
    iget-object v8, v5, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/t$a;

    .line 377
    iget-object v9, v8, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz v9, :cond_2

    iget-object v8, v8, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    iget v8, v8, Landroidx/fragment/app/c;->w:I

    goto :goto_4

    :cond_2
    move v8, v0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
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

    const/4 v0, 0x2

    .line 337
    invoke-static {v0}, Landroidx/fragment/app/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 342
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget-boolean p1, p0, Landroidx/fragment/app/a;->j:Z

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/a;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method b(Ljava/util/ArrayList;Landroidx/fragment/app/c;)Landroidx/fragment/app/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/c;",
            ">;",
            "Landroidx/fragment/app/c;",
            ")",
            "Landroidx/fragment/app/c;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 618
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/t$a;

    .line 619
    iget v3, v2, Landroidx/fragment/app/t$a;->a:I

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 635
    :pswitch_0
    iget-object v3, v2, Landroidx/fragment/app/t$a;->g:Landroidx/lifecycle/f$b;

    iput-object v3, v2, Landroidx/fragment/app/t$a;->h:Landroidx/lifecycle/f$b;

    goto :goto_1

    .line 629
    :pswitch_1
    iget-object p2, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    goto :goto_1

    :pswitch_2
    const/4 p2, 0x0

    goto :goto_1

    .line 626
    :cond_0
    :pswitch_3
    iget-object v2, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    :cond_1
    :pswitch_4
    iget-object v2, v2, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/a;->f()Landroidx/fragment/app/t;

    .line 303
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/m$c;Z)V

    return-void
.end method

.method b(I)Z
    .locals 5

    .line 350
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 352
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/t$a;

    .line 353
    iget-object v4, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    iget v3, v3, Landroidx/fragment/app/c;->w:I

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method c()V
    .locals 8

    .line 394
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 396
    iget-object v4, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/t$a;

    .line 397
    iget-object v5, v4, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz v5, :cond_0

    .line 399
    iget v6, p0, Landroidx/fragment/app/a;->i:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/c;->b(I)V

    .line 401
    :cond_0
    iget v6, v4, Landroidx/fragment/app/t$a;->a:I

    if-eq v6, v3, :cond_1

    packed-switch v6, :pswitch_data_0

    .line 439
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Landroidx/fragment/app/t$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :pswitch_0
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iget-object v7, v4, Landroidx/fragment/app/t$a;->h:Landroidx/lifecycle/f$b;

    invoke-virtual {v6, v5, v7}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Landroidx/lifecycle/f$b;)V

    goto :goto_1

    .line 433
    :pswitch_1
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/m;->o(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 430
    :pswitch_2
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/m;->o(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 425
    :pswitch_3
    iget v6, v4, Landroidx/fragment/app/t$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/c;->a(I)V

    .line 426
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Z)V

    .line 427
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/m;->n(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 421
    :pswitch_4
    iget v6, v4, Landroidx/fragment/app/t$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/c;->a(I)V

    .line 422
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/m;->m(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 416
    :pswitch_5
    iget v6, v4, Landroidx/fragment/app/t$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/c;->a(I)V

    .line 417
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Z)V

    .line 418
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/m;->l(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 412
    :pswitch_6
    iget v6, v4, Landroidx/fragment/app/t$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/c;->a(I)V

    .line 413
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/m;->k(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 408
    :pswitch_7
    iget v6, v4, Landroidx/fragment/app/t$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/c;->a(I)V

    .line 409
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/m;->j(Landroidx/fragment/app/c;)V

    goto :goto_1

    .line 403
    :cond_1
    iget v6, v4, Landroidx/fragment/app/t$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/c;->a(I)V

    .line 404
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;Z)V

    .line 405
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/m;->i(Landroidx/fragment/app/c;)V

    .line 441
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/a;->s:Z

    if-nez v6, :cond_2

    iget v4, v4, Landroidx/fragment/app/t$a;->a:I

    if-eq v4, v3, :cond_2

    if-eqz v5, :cond_2

    .line 442
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/m;->g(Landroidx/fragment/app/c;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 445
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/a;->s:Z

    if-nez v0, :cond_4

    .line 447
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iget-object p0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iget p0, p0, Landroidx/fragment/app/m;->b:I

    invoke-virtual {v0, p0, v3}, Landroidx/fragment/app/m;->a(IZ)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method d()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 643
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 644
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/t$a;

    .line 645
    invoke-static {v2}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/t$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 670
    iget-object p0, p0, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroidx/fragment/app/a;->c:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object p0, p0, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "}"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
