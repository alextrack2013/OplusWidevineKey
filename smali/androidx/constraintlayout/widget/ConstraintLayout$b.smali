.class Landroidx/constraintlayout/widget/ConstraintLayout$b;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/b/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 618
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private a(III)Z
    .locals 2

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    .line 889
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 890
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 891
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 892
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_2

    const/high16 p1, -0x80000000

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    if-ne p3, p2, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 903
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 905
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 906
    instance-of v4, v3, Landroidx/constraintlayout/widget/i;

    if-eqz v4, :cond_0

    .line 907
    check-cast v3, Landroidx/constraintlayout/widget/i;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/i;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 911
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 914
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/c;

    .line 915
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/c;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(IIIIII)V
    .locals 0

    .line 610
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 611
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    .line 612
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 613
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 614
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 615
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    return-void
.end method

.method public final a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/a/b$a;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    .line 629
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->o()Z

    move-result v3

    if-nez v3, :cond_1

    .line 630
    iput v5, v2, Landroidx/constraintlayout/b/a/a/b$a;->h:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/b/a/a/b$a;->i:I

    .line 632
    iput v5, v2, Landroidx/constraintlayout/b/a/a/b$a;->j:I

    return-void

    .line 635
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 646
    :cond_2
    iget-object v3, v2, Landroidx/constraintlayout/b/a/a/b$a;->d:Landroidx/constraintlayout/b/a/e$a;

    .line 647
    iget-object v4, v2, Landroidx/constraintlayout/b/a/a/b$a;->e:Landroidx/constraintlayout/b/a/e$a;

    .line 649
    iget v6, v2, Landroidx/constraintlayout/b/a/a/b$a;->f:I

    .line 650
    iget v7, v2, Landroidx/constraintlayout/b/a/a/b$a;->g:I

    .line 655
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    add-int/2addr v8, v9

    .line 656
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->M()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 660
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->a:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/e$a;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, -0x1

    const/4 v13, -0x2

    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x1

    packed-switch v11, :pswitch_data_0

    const/4 v5, 0x0

    goto/16 :goto_4

    .line 676
    :pswitch_0
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    invoke-static {v6, v9, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 677
    iget v9, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-ne v9, v15, :cond_3

    move v9, v15

    goto :goto_0

    :cond_3
    move v9, v5

    .line 678
    :goto_0
    iget v11, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v5, Landroidx/constraintlayout/b/a/a/b$a;->b:I

    if-eq v11, v5, :cond_4

    iget v5, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v11, Landroidx/constraintlayout/b/a/a/b$a;->c:I

    if-ne v5, v11, :cond_9

    .line 684
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v11

    if-ne v5, v11, :cond_5

    move v5, v15

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 685
    :goto_1
    iget v11, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v15, Landroidx/constraintlayout/b/a/a/b$a;->c:I

    if-eq v11, v15, :cond_8

    if-eqz v9, :cond_8

    if-eqz v9, :cond_6

    if-nez v5, :cond_8

    :cond_6
    instance-of v5, v10, Landroidx/constraintlayout/widget/i;

    if-nez v5, :cond_8

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->d()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_9

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v5

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_4

    :cond_9
    move v5, v6

    goto :goto_4

    .line 671
    :pswitch_1
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->G()I

    move-result v6

    add-int/2addr v9, v6

    .line 671
    invoke-static {v5, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_4

    .line 666
    :pswitch_2
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    invoke-static {v5, v9, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    goto :goto_4

    .line 662
    :pswitch_3
    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 698
    :goto_4
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintLayout$1;->a:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/e$a;->ordinal()I

    move-result v9

    aget v6, v6, v9

    packed-switch v6, :pswitch_data_1

    const/4 v6, 0x0

    goto :goto_9

    .line 715
    :pswitch_4
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    invoke-static {v6, v8, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 717
    iget v7, v1, Landroidx/constraintlayout/b/a/e;->m:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    .line 718
    :goto_5
    iget v8, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v9, Landroidx/constraintlayout/b/a/a/b$a;->b:I

    if-eq v8, v9, :cond_b

    iget v8, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v9, Landroidx/constraintlayout/b/a/a/b$a;->c:I

    if-ne v8, v9, :cond_10

    .line 724
    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v9

    if-ne v8, v9, :cond_c

    const/4 v8, 0x1

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    .line 725
    :goto_6
    iget v9, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v11, Landroidx/constraintlayout/b/a/a/b$a;->c:I

    if-eq v9, v11, :cond_f

    if-eqz v7, :cond_f

    if-eqz v7, :cond_d

    if-nez v8, :cond_f

    :cond_d
    instance-of v7, v10, Landroidx/constraintlayout/widget/i;

    if-nez v7, :cond_f

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->e()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_7

    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/4 v7, 0x1

    :goto_8
    if-eqz v7, :cond_10

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v6

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_9

    .line 710
    :pswitch_5
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->H()I

    move-result v7

    add-int/2addr v8, v7

    .line 710
    invoke-static {v6, v8, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_9

    .line 704
    :pswitch_6
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    invoke-static {v6, v8, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_9

    .line 700
    :pswitch_7
    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 738
    :cond_10
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->v()Landroidx/constraintlayout/b/a/e;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/b/a/f;

    if-eqz v7, :cond_12

    .line 739
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v8

    const/16 v9, 0x100

    invoke-static {v8, v9}, Landroidx/constraintlayout/b/a/k;->a(II)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 740
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v9

    if-ne v8, v9, :cond_12

    .line 743
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v9

    if-ge v8, v9, :cond_12

    .line 744
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v9

    if-ne v8, v9, :cond_12

    .line 745
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v7

    if-ge v8, v7, :cond_12

    .line 746
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v8

    if-ne v7, v8, :cond_12

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->p()Z

    move-result v7

    if-nez v7, :cond_12

    .line 749
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->q()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v8

    invoke-direct {v0, v7, v5, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(III)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->r()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v8

    invoke-direct {v0, v7, v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(III)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_12

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/b/a/a/b$a;->h:I

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/b/a/a/b$a;->i:I

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/b/a/a/b$a;->j:I

    return-void

    .line 764
    :cond_12
    sget-object v7, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v7, :cond_13

    const/4 v7, 0x1

    goto :goto_b

    :cond_13
    const/4 v7, 0x0

    .line 765
    :goto_b
    sget-object v8, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v8, :cond_14

    const/4 v8, 0x1

    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    .line 767
    :goto_c
    sget-object v9, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-eq v4, v9, :cond_16

    sget-object v9, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v4, v9, :cond_15

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v4, 0x1

    .line 769
    :goto_e
    sget-object v9, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    if-eq v3, v9, :cond_18

    sget-object v9, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v9, :cond_17

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v3, 0x1

    :goto_10
    const/4 v9, 0x0

    if-eqz v7, :cond_19

    .line 771
    iget v11, v1, Landroidx/constraintlayout/b/a/e;->K:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_19

    const/4 v11, 0x1

    goto :goto_11

    :cond_19
    const/4 v11, 0x0

    :goto_11
    if-eqz v8, :cond_1a

    .line 772
    iget v13, v1, Landroidx/constraintlayout/b/a/e;->K:F

    cmpl-float v9, v13, v9

    if-lez v9, :cond_1a

    const/4 v9, 0x1

    goto :goto_12

    :cond_1a
    const/4 v9, 0x0

    :goto_12
    if-nez v10, :cond_1b

    return-void

    .line 777
    :cond_1b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 783
    iget v15, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v12, Landroidx/constraintlayout/b/a/a/b$a;->b:I

    if-eq v15, v12, :cond_1d

    iget v12, v2, Landroidx/constraintlayout/b/a/a/b$a;->m:I

    sget v15, Landroidx/constraintlayout/b/a/a/b$a;->c:I

    if-eq v12, v15, :cond_1d

    if-eqz v7, :cond_1d

    iget v7, v1, Landroidx/constraintlayout/b/a/e;->l:I

    if-nez v7, :cond_1d

    if-eqz v8, :cond_1d

    iget v7, v1, Landroidx/constraintlayout/b/a/e;->m:I

    if-eqz v7, :cond_1c

    goto :goto_13

    :cond_1c
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1b

    .line 788
    :cond_1d
    :goto_13
    instance-of v7, v10, Landroidx/constraintlayout/widget/j;

    if-eqz v7, :cond_1e

    instance-of v7, v1, Landroidx/constraintlayout/b/a/l;

    if-eqz v7, :cond_1e

    .line 789
    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/b/a/l;

    .line 790
    move-object v8, v10

    check-cast v8, Landroidx/constraintlayout/widget/j;

    invoke-virtual {v8, v7, v5, v6}, Landroidx/constraintlayout/widget/j;->a(Landroidx/constraintlayout/b/a/l;II)V

    goto :goto_14

    .line 792
    :cond_1e
    invoke-virtual {v10, v5, v6}, Landroid/view/View;->measure(II)V

    .line 794
    :goto_14
    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/b/a/e;->c(II)V

    .line 796
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 797
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 798
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 808
    iget v15, v1, Landroidx/constraintlayout/b/a/e;->o:I

    if-lez v15, :cond_1f

    .line 809
    iget v15, v1, Landroidx/constraintlayout/b/a/e;->o:I

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_15

    :cond_1f
    move v15, v7

    .line 811
    :goto_15
    iget v14, v1, Landroidx/constraintlayout/b/a/e;->p:I

    if-lez v14, :cond_20

    .line 812
    iget v14, v1, Landroidx/constraintlayout/b/a/e;->p:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 814
    :cond_20
    iget v14, v1, Landroidx/constraintlayout/b/a/e;->r:I

    if-lez v14, :cond_21

    .line 815
    iget v14, v1, Landroidx/constraintlayout/b/a/e;->r:I

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v16, v5

    goto :goto_16

    :cond_21
    move/from16 v16, v5

    move v14, v8

    .line 817
    :goto_16
    iget v5, v1, Landroidx/constraintlayout/b/a/e;->s:I

    if-lez v5, :cond_22

    .line 818
    iget v5, v1, Landroidx/constraintlayout/b/a/e;->s:I

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 821
    :cond_22
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v0

    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroidx/constraintlayout/b/a/k;->a(II)Z

    move-result v0

    if-nez v0, :cond_24

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v11, :cond_23

    if-eqz v4, :cond_23

    .line 824
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->K:F

    int-to-float v4, v14

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v5, v0

    goto :goto_17

    :cond_23
    if-eqz v9, :cond_24

    if-eqz v3, :cond_24

    .line 827
    iget v3, v1, Landroidx/constraintlayout/b/a/e;->K:F

    int-to-float v4, v15

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v14, v0

    :cond_24
    move v5, v15

    :goto_17
    if-ne v7, v5, :cond_26

    if-eq v8, v14, :cond_25

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v0, -0x1

    goto :goto_1b

    :cond_26
    :goto_19
    if-eq v7, v5, :cond_27

    const/high16 v0, 0x40000000    # 2.0f

    .line 834
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_1a

    :cond_27
    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v5, v16

    :goto_1a
    if-eq v8, v14, :cond_28

    .line 837
    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 839
    :cond_28
    invoke-virtual {v10, v5, v6}, Landroid/view/View;->measure(II)V

    .line 840
    invoke-virtual {v1, v5, v6}, Landroidx/constraintlayout/b/a/e;->c(II)V

    .line 841
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 842
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 843
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v3

    move v14, v0

    move v12, v3

    goto :goto_18

    :goto_1b
    if-eq v12, v0, :cond_29

    const/4 v15, 0x1

    goto :goto_1c

    :cond_29
    const/4 v15, 0x0

    .line 854
    :goto_1c
    iget v0, v2, Landroidx/constraintlayout/b/a/a/b$a;->f:I

    if-ne v5, v0, :cond_2b

    iget v0, v2, Landroidx/constraintlayout/b/a/a/b$a;->g:I

    if-eq v14, v0, :cond_2a

    goto :goto_1d

    :cond_2a
    const/4 v0, 0x0

    goto :goto_1e

    :cond_2b
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    iput-boolean v0, v2, Landroidx/constraintlayout/b/a/a/b$a;->l:Z

    .line 856
    iget-boolean v0, v13, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-eqz v0, :cond_2c

    const/4 v15, 0x1

    :cond_2c
    if-eqz v15, :cond_2d

    const/4 v0, -0x1

    if-eq v12, v0, :cond_2d

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/a/e;->L()I

    move-result v0

    if-eq v0, v12, :cond_2d

    const/4 v0, 0x1

    .line 860
    iput-boolean v0, v2, Landroidx/constraintlayout/b/a/a/b$a;->l:Z

    .line 862
    :cond_2d
    iput v5, v2, Landroidx/constraintlayout/b/a/a/b$a;->h:I

    .line 863
    iput v14, v2, Landroidx/constraintlayout/b/a/a/b$a;->i:I

    .line 864
    iput-boolean v15, v2, Landroidx/constraintlayout/b/a/a/b$a;->k:Z

    .line 865
    iput v12, v2, Landroidx/constraintlayout/b/a/a/b$a;->j:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
