.class Landroidx/constraintlayout/b/a/g$a;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/constraintlayout/b/a/g;

.field private b:I

.field private c:Landroidx/constraintlayout/b/a/e;

.field private d:Landroidx/constraintlayout/b/a/d;

.field private e:Landroidx/constraintlayout/b/a/d;

.field private f:Landroidx/constraintlayout/b/a/d;

.field private g:Landroidx/constraintlayout/b/a/d;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# virtual methods
.method public a(ZIZ)V
    .locals 15

    move-object v0, p0

    .line 450
    iget v2, v0, Landroidx/constraintlayout/b/a/g$a;->m:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 452
    iget v5, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v5, v4

    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v6}, Landroidx/constraintlayout/b/a/g;->c(Landroidx/constraintlayout/b/a/g;)I

    move-result v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    iget-object v5, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v5}, Landroidx/constraintlayout/b/a/g;->d(Landroidx/constraintlayout/b/a/g;)[Landroidx/constraintlayout/b/a/e;

    move-result-object v5

    iget v6, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_1

    .line 457
    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/e;->R()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_31

    .line 460
    iget-object v4, v0, Landroidx/constraintlayout/b/a/g$a;->c:Landroidx/constraintlayout/b/a/e;

    if-nez v4, :cond_3

    goto/16 :goto_16

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    const/4 v6, -0x1

    move v7, v3

    move v8, v6

    move v9, v8

    :goto_3
    if-ge v7, v2, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v10, v2, -0x1

    sub-int/2addr v10, v7

    goto :goto_4

    :cond_5
    move v10, v7

    .line 472
    :goto_4
    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v11, v10

    iget-object v12, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v12}, Landroidx/constraintlayout/b/a/g;->c(Landroidx/constraintlayout/b/a/g;)I

    move-result v12

    if-lt v11, v12, :cond_6

    goto :goto_5

    .line 475
    :cond_6
    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->d(Landroidx/constraintlayout/b/a/g;)[Landroidx/constraintlayout/b/a/e;

    move-result-object v11

    iget v12, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v12, v10

    aget-object v10, v11, v12

    .line 476
    invoke-virtual {v10}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v10

    if-nez v10, :cond_8

    if-ne v8, v6, :cond_7

    move v8, v7

    :cond_7
    move v9, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 485
    :cond_9
    :goto_5
    iget v10, v0, Landroidx/constraintlayout/b/a/g$a;->b:I

    if-nez v10, :cond_1e

    .line 486
    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->c:Landroidx/constraintlayout/b/a/e;

    .line 487
    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->e(Landroidx/constraintlayout/b/a/g;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/b/a/e;->u(I)V

    .line 488
    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->i:I

    if-lez p2, :cond_a

    .line 490
    iget-object v12, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v12}, Landroidx/constraintlayout/b/a/g;->b(Landroidx/constraintlayout/b/a/g;)I

    move-result v12

    add-int/2addr v11, v12

    .line 492
    :cond_a
    iget-object v12, v10, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v13, v0, Landroidx/constraintlayout/b/a/g$a;->e:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v12, v13, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    if-eqz p3, :cond_b

    .line 494
    iget-object v11, v10, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v12, v0, Landroidx/constraintlayout/b/a/g$a;->g:Landroidx/constraintlayout/b/a/d;

    iget v13, v0, Landroidx/constraintlayout/b/a/g$a;->k:I

    invoke-virtual {v11, v12, v13}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    :cond_b
    if-lez p2, :cond_c

    .line 497
    iget-object v1, v0, Landroidx/constraintlayout/b/a/g$a;->e:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    .line 498
    iget-object v11, v10, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v1, v11, v3}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    .line 502
    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v1}, Landroidx/constraintlayout/b/a/g;->f(Landroidx/constraintlayout/b/a/g;)I

    move-result v1

    const/4 v11, 0x3

    if-ne v1, v11, :cond_10

    invoke-virtual {v10}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v3

    :goto_6
    if-ge v1, v2, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v12, v2, -0x1

    sub-int/2addr v12, v1

    goto :goto_7

    :cond_d
    move v12, v1

    .line 508
    :goto_7
    iget v13, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v13, v12

    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v7}, Landroidx/constraintlayout/b/a/g;->c(Landroidx/constraintlayout/b/a/g;)I

    move-result v7

    if-lt v13, v7, :cond_e

    goto :goto_8

    .line 511
    :cond_e
    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v7}, Landroidx/constraintlayout/b/a/g;->d(Landroidx/constraintlayout/b/a/g;)[Landroidx/constraintlayout/b/a/e;

    move-result-object v7

    iget v13, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v13, v12

    aget-object v7, v7, v13

    .line 512
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v12

    if-eqz v12, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v7, v10

    :goto_9
    move v1, v3

    const/4 v12, 0x0

    :goto_a
    if-ge v1, v2, :cond_30

    if-eqz p1, :cond_11

    add-int/lit8 v13, v2, -0x1

    sub-int/2addr v13, v1

    goto :goto_b

    :cond_11
    move v13, v1

    .line 524
    :goto_b
    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v11, v13

    iget-object v4, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v4}, Landroidx/constraintlayout/b/a/g;->c(Landroidx/constraintlayout/b/a/g;)I

    move-result v4

    if-lt v11, v4, :cond_12

    goto/16 :goto_15

    .line 527
    :cond_12
    iget-object v4, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v4}, Landroidx/constraintlayout/b/a/g;->d(Landroidx/constraintlayout/b/a/g;)[Landroidx/constraintlayout/b/a/e;

    move-result-object v4

    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v11, v13

    aget-object v4, v4, v11

    if-nez v1, :cond_13

    .line 529
    iget-object v11, v4, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v3, v0, Landroidx/constraintlayout/b/a/g$a;->d:Landroidx/constraintlayout/b/a/d;

    iget v6, v0, Landroidx/constraintlayout/b/a/g$a;->h:I

    invoke-virtual {v4, v11, v3, v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d;Landroidx/constraintlayout/b/a/d;I)V

    :cond_13
    if-nez v13, :cond_17

    .line 535
    iget-object v3, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v3}, Landroidx/constraintlayout/b/a/g;->g(Landroidx/constraintlayout/b/a/g;)I

    move-result v3

    .line 536
    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v6}, Landroidx/constraintlayout/b/a/g;->h(Landroidx/constraintlayout/b/a/g;)F

    move-result v6

    .line 537
    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    if-nez v11, :cond_14

    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->i(Landroidx/constraintlayout/b/a/g;)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_15

    .line 538
    iget-object v3, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v3}, Landroidx/constraintlayout/b/a/g;->i(Landroidx/constraintlayout/b/a/g;)I

    move-result v3

    .line 539
    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v6}, Landroidx/constraintlayout/b/a/g;->j(Landroidx/constraintlayout/b/a/g;)F

    move-result v6

    goto :goto_c

    :cond_14
    const/4 v13, -0x1

    :cond_15
    if-eqz p3, :cond_16

    .line 540
    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->k(Landroidx/constraintlayout/b/a/g;)I

    move-result v11

    if-eq v11, v13, :cond_16

    .line 541
    iget-object v3, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v3}, Landroidx/constraintlayout/b/a/g;->k(Landroidx/constraintlayout/b/a/g;)I

    move-result v3

    .line 542
    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v6}, Landroidx/constraintlayout/b/a/g;->l(Landroidx/constraintlayout/b/a/g;)F

    move-result v6

    .line 544
    :cond_16
    :goto_c
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/b/a/e;->t(I)V

    .line 545
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/b/a/e;->a(F)V

    :cond_17
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_18

    .line 548
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->f:Landroidx/constraintlayout/b/a/d;

    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->j:I

    invoke-virtual {v4, v3, v6, v11}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d;Landroidx/constraintlayout/b/a/d;I)V

    :cond_18
    if-eqz v12, :cond_1a

    .line 551
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v12, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->a(Landroidx/constraintlayout/b/a/g;)I

    move-result v11

    invoke-virtual {v3, v6, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    if-ne v1, v8, :cond_19

    .line 553
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget v6, v0, Landroidx/constraintlayout/b/a/g$a;->h:I

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/b/a/d;->b(I)V

    .line 555
    :cond_19
    iget-object v3, v12, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v4, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    const/4 v3, 0x1

    add-int/lit8 v6, v9, 0x1

    if-ne v1, v6, :cond_1a

    .line 557
    iget-object v3, v12, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget v6, v0, Landroidx/constraintlayout/b/a/g$a;->j:I

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/b/a/d;->b(I)V

    :cond_1a
    if-eq v4, v10, :cond_1d

    .line 561
    iget-object v3, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v3}, Landroidx/constraintlayout/b/a/g;->f(Landroidx/constraintlayout/b/a/g;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1b

    .line 562
    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eq v4, v7, :cond_1b

    .line 564
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e;->K()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 565
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->A:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v7, Landroidx/constraintlayout/b/a/e;->A:Landroidx/constraintlayout/b/a/d;

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_d

    :cond_1b
    const/4 v12, 0x0

    .line 567
    iget-object v3, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v3}, Landroidx/constraintlayout/b/a/g;->f(Landroidx/constraintlayout/b/a/g;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    if-eqz v5, :cond_1c

    .line 579
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->e:Landroidx/constraintlayout/b/a/d;

    iget v12, v0, Landroidx/constraintlayout/b/a/g$a;->i:I

    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    .line 580
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->g:Landroidx/constraintlayout/b/a/d;

    iget v12, v0, Landroidx/constraintlayout/b/a/g$a;->k:I

    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_d

    .line 573
    :pswitch_0
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v10, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_d

    .line 569
    :pswitch_1
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v10, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_d

    .line 582
    :cond_1c
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v10, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    .line 583
    iget-object v3, v4, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v10, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_d

    :cond_1d
    const/4 v6, 0x3

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-object v12, v4

    move v11, v6

    const/4 v3, 0x0

    const/4 v6, -0x1

    goto/16 :goto_a

    .line 592
    :cond_1e
    iget-object v3, v0, Landroidx/constraintlayout/b/a/g$a;->c:Landroidx/constraintlayout/b/a/e;

    .line 593
    iget-object v4, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v4}, Landroidx/constraintlayout/b/a/g;->g(Landroidx/constraintlayout/b/a/g;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/b/a/e;->t(I)V

    .line 594
    iget v4, v0, Landroidx/constraintlayout/b/a/g$a;->h:I

    if-lez p2, :cond_1f

    .line 596
    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v6}, Landroidx/constraintlayout/b/a/g;->a(Landroidx/constraintlayout/b/a/g;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_1f
    if-eqz p1, :cond_21

    .line 599
    iget-object v6, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->f:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v6, v7, v4}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    if-eqz p3, :cond_20

    .line 601
    iget-object v4, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->d:Landroidx/constraintlayout/b/a/d;

    iget v7, v0, Landroidx/constraintlayout/b/a/g$a;->j:I

    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    :cond_20
    if-lez p2, :cond_23

    .line 604
    iget-object v1, v0, Landroidx/constraintlayout/b/a/g$a;->f:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    .line 605
    iget-object v4, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_e

    .line 608
    :cond_21
    iget-object v6, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->d:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v6, v7, v4}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    if-eqz p3, :cond_22

    .line 610
    iget-object v4, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->f:Landroidx/constraintlayout/b/a/d;

    iget v7, v0, Landroidx/constraintlayout/b/a/g$a;->j:I

    invoke-virtual {v4, v6, v7}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    :cond_22
    if-lez p2, :cond_23

    .line 613
    iget-object v1, v0, Landroidx/constraintlayout/b/a/g$a;->d:Landroidx/constraintlayout/b/a/d;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    .line 614
    iget-object v4, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    :cond_23
    :goto_e
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v1, v2, :cond_30

    .line 618
    iget v6, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v6, v1

    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v7}, Landroidx/constraintlayout/b/a/g;->c(Landroidx/constraintlayout/b/a/g;)I

    move-result v7

    if-lt v6, v7, :cond_24

    goto/16 :goto_15

    .line 621
    :cond_24
    iget-object v6, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v6}, Landroidx/constraintlayout/b/a/g;->d(Landroidx/constraintlayout/b/a/g;)[Landroidx/constraintlayout/b/a/e;

    move-result-object v6

    iget v7, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    add-int/2addr v7, v1

    aget-object v6, v6, v7

    if-nez v1, :cond_28

    .line 623
    iget-object v7, v6, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->e:Landroidx/constraintlayout/b/a/d;

    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->i:I

    invoke-virtual {v6, v7, v10, v11}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d;Landroidx/constraintlayout/b/a/d;I)V

    .line 624
    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v7}, Landroidx/constraintlayout/b/a/g;->e(Landroidx/constraintlayout/b/a/g;)I

    move-result v7

    .line 625
    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v10}, Landroidx/constraintlayout/b/a/g;->m(Landroidx/constraintlayout/b/a/g;)F

    move-result v10

    .line 626
    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->l:I

    if-nez v11, :cond_25

    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->n(Landroidx/constraintlayout/b/a/g;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_26

    .line 627
    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v7}, Landroidx/constraintlayout/b/a/g;->n(Landroidx/constraintlayout/b/a/g;)I

    move-result v7

    .line 628
    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v10}, Landroidx/constraintlayout/b/a/g;->o(Landroidx/constraintlayout/b/a/g;)F

    move-result v10

    goto :goto_10

    :cond_25
    const/4 v12, -0x1

    :cond_26
    if-eqz p3, :cond_27

    .line 629
    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->p(Landroidx/constraintlayout/b/a/g;)I

    move-result v11

    if-eq v11, v12, :cond_27

    .line 630
    iget-object v7, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v7}, Landroidx/constraintlayout/b/a/g;->p(Landroidx/constraintlayout/b/a/g;)I

    move-result v7

    .line 631
    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v10}, Landroidx/constraintlayout/b/a/g;->q(Landroidx/constraintlayout/b/a/g;)F

    move-result v10

    .line 633
    :cond_27
    :goto_10
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/b/a/e;->u(I)V

    .line 634
    invoke-virtual {v6, v10}, Landroidx/constraintlayout/b/a/e;->b(F)V

    goto :goto_11

    :cond_28
    const/4 v12, -0x1

    :goto_11
    add-int/lit8 v7, v2, -0x1

    if-ne v1, v7, :cond_29

    .line 637
    iget-object v7, v6, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->g:Landroidx/constraintlayout/b/a/d;

    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->k:I

    invoke-virtual {v6, v7, v10, v11}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d;Landroidx/constraintlayout/b/a/d;I)V

    :cond_29
    if-eqz v4, :cond_2b

    .line 640
    iget-object v7, v6, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v4, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v11, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v11}, Landroidx/constraintlayout/b/a/g;->b(Landroidx/constraintlayout/b/a/g;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    if-ne v1, v8, :cond_2a

    .line 642
    iget-object v7, v6, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    iget v10, v0, Landroidx/constraintlayout/b/a/g$a;->i:I

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/b/a/d;->b(I)V

    .line 644
    :cond_2a
    iget-object v7, v4, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v6, Landroidx/constraintlayout/b/a/e;->x:Landroidx/constraintlayout/b/a/d;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    const/4 v7, 0x1

    add-int/lit8 v10, v9, 0x1

    if-ne v1, v10, :cond_2c

    .line 646
    iget-object v4, v4, Landroidx/constraintlayout/b/a/e;->z:Landroidx/constraintlayout/b/a/d;

    iget v10, v0, Landroidx/constraintlayout/b/a/g$a;->k:I

    invoke-virtual {v4, v10}, Landroidx/constraintlayout/b/a/d;->b(I)V

    goto :goto_12

    :cond_2b
    const/4 v7, 0x1

    :cond_2c
    :goto_12
    if-eq v6, v3, :cond_2f

    if-eqz p1, :cond_2d

    .line 651
    iget-object v4, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v4}, Landroidx/constraintlayout/b/a/g;->r(Landroidx/constraintlayout/b/a/g;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_13

    .line 657
    :pswitch_2
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    .line 658
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_13

    :pswitch_3
    const/4 v11, 0x0

    .line 662
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_13

    :pswitch_4
    const/4 v11, 0x0

    .line 653
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_13

    .line 667
    :cond_2d
    iget-object v4, v0, Landroidx/constraintlayout/b/a/g$a;->a:Landroidx/constraintlayout/b/a/g;

    invoke-static {v4}, Landroidx/constraintlayout/b/a/g;->r(Landroidx/constraintlayout/b/a/g;)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_13

    :pswitch_5
    if-eqz v5, :cond_2e

    .line 674
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->d:Landroidx/constraintlayout/b/a/d;

    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->h:I

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    .line 675
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v0, Landroidx/constraintlayout/b/a/g$a;->f:Landroidx/constraintlayout/b/a/d;

    iget v11, v0, Landroidx/constraintlayout/b/a/g$a;->j:I

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_13

    .line 677
    :cond_2e
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    .line 678
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_14

    :pswitch_6
    const/4 v11, 0x0

    .line 683
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->y:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_14

    :pswitch_7
    const/4 v11, 0x0

    .line 669
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    iget-object v10, v3, Landroidx/constraintlayout/b/a/e;->w:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v4, v10, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;I)Z

    goto :goto_14

    :cond_2f
    :goto_13
    const/4 v11, 0x0

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object v4, v6

    goto/16 :goto_f

    :cond_30
    :goto_15
    return-void

    :cond_31
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
