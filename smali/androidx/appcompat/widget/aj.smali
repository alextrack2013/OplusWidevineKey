.class public Landroidx/appcompat/widget/aj;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/aj$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroidx/appcompat/widget/aj;->a:Z

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Landroidx/appcompat/widget/aj;->b:I

    const/4 v2, 0x0

    .line 118
    iput v2, p0, Landroidx/appcompat/widget/aj;->c:I

    const v3, 0x800033

    .line 122
    iput v3, p0, Landroidx/appcompat/widget/aj;->e:I

    .line 162
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ax;

    move-result-object v3

    .line 164
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 166
    invoke-virtual {v3}, Landroidx/appcompat/widget/ax;->a()Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 164
    invoke-static/range {v4 .. v10}, Landroidx/core/g/t;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 168
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 170
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->setOrientation(I)V

    .line 173
    :cond_0
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->setGravity(I)V

    .line 178
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 180
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->setBaselineAligned(Z)V

    .line 183
    :cond_2
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v3, p1, p2}, Landroidx/appcompat/widget/ax;->a(IF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/aj;->g:F

    .line 185
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 186
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/aj;->b:I

    .line 188
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/aj;->h:Z

    .line 190
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/aj;->n:I

    .line 192
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/ax;->e(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/aj;->o:I

    .line 194
    invoke-virtual {v3}, Landroidx/appcompat/widget/ax;->b()V

    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1655
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private c(II)V
    .locals 10

    .line 905
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 908
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v3

    .line 909
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 910
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/aj$a;

    .line 912
    iget v2, v8, Landroidx/appcompat/widget/aj$a;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 915
    iget v9, v8, Landroidx/appcompat/widget/aj$a;->height:I

    .line 916
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroidx/appcompat/widget/aj$a;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 919
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/aj;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 920
    iput v9, v8, Landroidx/appcompat/widget/aj$a;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(II)V
    .locals 10

    .line 1327
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1330
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v3

    .line 1331
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 1332
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/aj$a;

    .line 1334
    iget v2, v8, Landroidx/appcompat/widget/aj$a;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1337
    iget v9, v8, Landroidx/appcompat/widget/aj$a;->width:I

    .line 1338
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroidx/appcompat/widget/aj$a;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 1341
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/aj;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1342
    iput v9, v8, Landroidx/appcompat/widget/aj$a;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method a(Landroid/view/View;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method a(II)V
    .locals 40

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 605
    iput v10, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getVirtualChildCount()I

    move-result v11

    .line 615
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 616
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 621
    iget v14, v7, Landroidx/appcompat/widget/aj;->b:I

    .line 622
    iget-boolean v15, v7, Landroidx/appcompat/widget/aj;->h:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move/from16 v18, v6

    move/from16 v20, v18

    move/from16 v0, v16

    move/from16 v19, v17

    :goto_0
    const/16 v10, 0x8

    move/from16 v22, v4

    if-ge v6, v11, :cond_f

    .line 628
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 631
    iget v4, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/aj;->d(I)I

    move-result v10

    add-int/2addr v4, v10

    iput v4, v7, Landroidx/appcompat/widget/aj;->f:I

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v4, v22

    goto/16 :goto_9

    :cond_0
    move/from16 v24, v1

    .line 635
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_1

    .line 636
    invoke-virtual {v7, v4, v6}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v6, v1

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v4, v22

    move/from16 v1, v24

    goto/16 :goto_9

    .line 640
    :cond_1
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    iget v1, v7, Landroidx/appcompat/widget/aj;->f:I

    iget v10, v7, Landroidx/appcompat/widget/aj;->m:I

    add-int/2addr v1, v10

    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 644
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/aj$a;

    .line 646
    iget v1, v10, Landroidx/appcompat/widget/aj$a;->g:F

    add-float v25, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_3

    .line 648
    iget v0, v10, Landroidx/appcompat/widget/aj$a;->height:I

    if-nez v0, :cond_3

    iget v0, v10, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_3

    .line 652
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 653
    iget v1, v10, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v10, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/aj;->f:I

    move-object v8, v4

    move/from16 v34, v5

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v18, v17

    move/from16 v32, v22

    move/from16 v33, v24

    move/from16 v30, v26

    move v13, v6

    goto/16 :goto_3

    :cond_3
    move/from16 v26, v2

    .line 658
    iget v0, v10, Landroidx/appcompat/widget/aj$a;->height:I

    if-nez v0, :cond_4

    iget v0, v10, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_4

    const/4 v0, -0x2

    .line 664
    iput v0, v10, Landroidx/appcompat/widget/aj$a;->height:I

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/high16 v2, -0x80000000

    :goto_1
    const/16 v23, 0x0

    cmpl-float v0, v25, v16

    if-nez v0, :cond_5

    .line 673
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    move/from16 v27, v0

    goto :goto_2

    :cond_5
    const/16 v27, 0x0

    :goto_2
    move-object v0, v7

    move/from16 v28, v13

    move/from16 v13, v24

    const/high16 v24, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v29, v2

    move/from16 v30, v26

    move v2, v6

    move/from16 v31, v11

    move v11, v3

    move v3, v8

    move-object v8, v4

    move/from16 v33, v13

    move/from16 v32, v22

    move/from16 v13, v24

    move/from16 v4, v23

    move/from16 v34, v5

    move v5, v9

    move v13, v6

    move/from16 v6, v27

    .line 671
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;IIIII)V

    move/from16 v0, v29

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_6

    .line 676
    iput v0, v10, Landroidx/appcompat/widget/aj$a;->height:I

    .line 679
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 680
    iget v1, v7, Landroidx/appcompat/widget/aj;->f:I

    add-int v2, v1, v0

    .line 681
    iget v3, v10, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v2, v3

    .line 682
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 681
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    if-eqz v15, :cond_7

    .line 685
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v11

    :goto_3
    if-ltz v14, :cond_8

    add-int/lit8 v6, v13, 0x1

    if-ne v14, v6, :cond_8

    .line 694
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    iput v0, v7, Landroidx/appcompat/widget/aj;->c:I

    :cond_8
    if-ge v13, v14, :cond_9

    .line 700
    iget v0, v10, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_9

    .line 701
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_a

    .line 708
    iget v0, v10, Landroidx/appcompat/widget/aj$a;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    move/from16 v0, v17

    move/from16 v20, v0

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 717
    :goto_4
    iget v1, v10, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    iget v2, v10, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v1, v2

    .line 718
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    move/from16 v4, v30

    .line 719
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 721
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v33

    .line 720
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v19, :cond_b

    .line 723
    iget v6, v10, Landroidx/appcompat/widget/aj$a;->width:I

    const/4 v11, -0x1

    if-ne v6, v11, :cond_b

    move/from16 v6, v17

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    .line 724
    :goto_5
    iget v10, v10, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_d

    if-eqz v0, :cond_c

    :goto_6
    move/from16 v10, v32

    goto :goto_7

    :cond_c
    move v1, v2

    goto :goto_6

    .line 729
    :goto_7
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    move/from16 v0, v34

    goto :goto_8

    :cond_d
    move/from16 v10, v32

    if-eqz v0, :cond_e

    move v2, v1

    :cond_e
    move/from16 v1, v34

    .line 732
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 736
    :goto_8
    invoke-virtual {v7, v8, v13}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v13

    move v2, v4

    move/from16 v19, v6

    move v4, v10

    move v6, v1

    move v1, v5

    move v5, v0

    move/from16 v0, v25

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move/from16 v13, v28

    move/from16 v11, v31

    move/from16 v8, p1

    goto/16 :goto_0

    :cond_f
    move v6, v1

    move v4, v2

    move v1, v5

    move/from16 v31, v11

    move/from16 v28, v13

    move/from16 v2, v22

    move v11, v3

    .line 739
    iget v3, v7, Landroidx/appcompat/widget/aj;->f:I

    if-lez v3, :cond_10

    move/from16 v3, v31

    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 740
    iget v5, v7, Landroidx/appcompat/widget/aj;->f:I

    iget v8, v7, Landroidx/appcompat/widget/aj;->m:I

    add-int/2addr v5, v8

    iput v5, v7, Landroidx/appcompat/widget/aj;->f:I

    goto :goto_a

    :cond_10
    move/from16 v3, v31

    :cond_11
    :goto_a
    if-eqz v15, :cond_16

    move/from16 v5, v28

    const/high16 v8, -0x80000000

    if-eq v5, v8, :cond_13

    if-nez v5, :cond_12

    goto :goto_b

    :cond_12
    move/from16 v35, v4

    goto :goto_f

    :cond_13
    :goto_b
    const/4 v8, 0x0

    .line 745
    iput v8, v7, Landroidx/appcompat/widget/aj;->f:I

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v3, :cond_12

    .line 748
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_14

    .line 751
    iget v13, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/aj;->d(I)I

    move-result v14

    add-int/2addr v13, v14

    iput v13, v7, Landroidx/appcompat/widget/aj;->f:I

    goto :goto_d

    .line 755
    :cond_14
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v10, :cond_15

    .line 756
    invoke-virtual {v7, v13, v8}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v13

    add-int/2addr v8, v13

    :goto_d
    move/from16 v35, v4

    goto :goto_e

    .line 761
    :cond_15
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/aj$a;

    .line 763
    iget v10, v7, Landroidx/appcompat/widget/aj;->f:I

    add-int v21, v10, v11

    move/from16 v35, v4

    .line 764
    iget v4, v14, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int v21, v21, v4

    iget v4, v14, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int v21, v21, v4

    .line 765
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v4

    add-int v4, v21, v4

    .line 764
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/aj;->f:I

    :goto_e
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v35

    const/16 v10, 0x8

    goto :goto_c

    :cond_16
    move/from16 v35, v4

    move/from16 v5, v28

    .line 770
    :goto_f
    iget v4, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    add-int/2addr v4, v8

    iput v4, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 772
    iget v4, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v8, 0x0

    .line 778
    invoke-static {v4, v9, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v8, 0xffffff

    and-int/2addr v8, v4

    .line 784
    iget v10, v7, Landroidx/appcompat/widget/aj;->f:I

    sub-int/2addr v8, v10

    if-nez v18, :cond_1b

    if-eqz v8, :cond_17

    cmpl-float v10, v0, v16

    if-lez v10, :cond_17

    goto :goto_12

    .line 857
    :cond_17
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_1a

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v5, v1, :cond_1a

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_1a

    .line 865
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 867
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_18

    goto :goto_11

    .line 872
    :cond_18
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/aj$a;

    .line 874
    iget v5, v5, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v5, v5, v16

    if-lez v5, :cond_19

    .line 877
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 879
    invoke-static {v11, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 876
    invoke-virtual {v2, v5, v10}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    move/from16 v1, v35

    move/from16 v11, p1

    goto/16 :goto_1c

    .line 786
    :cond_1b
    :goto_12
    iget v2, v7, Landroidx/appcompat/widget/aj;->g:F

    cmpl-float v2, v2, v16

    if-lez v2, :cond_1c

    iget v0, v7, Landroidx/appcompat/widget/aj;->g:F

    :cond_1c
    const/4 v2, 0x0

    .line 788
    iput v2, v7, Landroidx/appcompat/widget/aj;->f:I

    move v11, v0

    move v0, v2

    move v10, v8

    move v8, v1

    move/from16 v1, v35

    :goto_13
    if-ge v0, v3, :cond_27

    .line 791
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v13

    .line 793
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1d

    move/from16 v37, v11

    move/from16 v11, p1

    goto/16 :goto_1b

    .line 797
    :cond_1d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/aj$a;

    .line 799
    iget v2, v14, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v18, v2, v16

    if-lez v18, :cond_22

    int-to-float v15, v10

    mul-float/2addr v15, v2

    div-float/2addr v15, v11

    float-to-int v15, v15

    sub-float/2addr v11, v2

    sub-int/2addr v10, v15

    .line 807
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v18

    add-int v2, v2, v18

    move/from16 v36, v10

    iget v10, v14, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v2, v10

    iget v10, v14, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v2, v10

    iget v10, v14, Landroidx/appcompat/widget/aj$a;->width:I

    move/from16 v37, v11

    move/from16 v11, p1

    .line 806
    invoke-static {v11, v2, v10}, Landroidx/appcompat/widget/aj;->getChildMeasureSpec(III)I

    move-result v2

    .line 812
    iget v10, v14, Landroidx/appcompat/widget/aj$a;->height:I

    if-nez v10, :cond_20

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v5, v10, :cond_1e

    goto :goto_15

    :cond_1e
    if-lez v15, :cond_1f

    goto :goto_14

    :cond_1f
    const/4 v15, 0x0

    .line 826
    :goto_14
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 825
    invoke-virtual {v13, v2, v15}, Landroid/view/View;->measure(II)V

    goto :goto_16

    :cond_20
    const/high16 v10, 0x40000000    # 2.0f

    .line 815
    :goto_15
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v15, v18, v15

    if-gez v15, :cond_21

    const/4 v15, 0x0

    .line 821
    :cond_21
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 820
    invoke-virtual {v13, v2, v15}, Landroid/view/View;->measure(II)V

    .line 832
    :goto_16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int/lit16 v2, v2, -0x100

    .line 831
    invoke-static {v6, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_17

    :cond_22
    move v2, v11

    move/from16 v11, p1

    move/from16 v37, v2

    move/from16 v36, v10

    .line 836
    :goto_17
    iget v2, v14, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    iget v10, v14, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v2, v10

    .line 837
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v2

    .line 838
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v12, v15, :cond_23

    .line 840
    iget v15, v14, Landroidx/appcompat/widget/aj$a;->width:I

    move/from16 v38, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_24

    move/from16 v15, v17

    goto :goto_18

    :cond_23
    move/from16 v38, v1

    const/4 v1, -0x1

    :cond_24
    const/4 v15, 0x0

    :goto_18
    if-eqz v15, :cond_25

    goto :goto_19

    :cond_25
    move v2, v10

    .line 843
    :goto_19
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v19, :cond_26

    .line 846
    iget v8, v14, Landroidx/appcompat/widget/aj$a;->width:I

    if-ne v8, v1, :cond_26

    move/from16 v8, v17

    goto :goto_1a

    :cond_26
    const/4 v8, 0x0

    .line 848
    :goto_1a
    iget v10, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 849
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    iget v1, v14, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int/2addr v15, v1

    iget v1, v14, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v15, v1

    .line 850
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    .line 849
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    move/from16 v19, v8

    move/from16 v10, v36

    move/from16 v1, v38

    move v8, v2

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v37

    const/4 v2, 0x0

    goto/16 :goto_13

    :cond_27
    move/from16 v11, p1

    .line 854
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    iput v0, v7, Landroidx/appcompat/widget/aj;->f:I

    move v0, v8

    :goto_1c
    if-nez v19, :cond_28

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_28

    goto :goto_1d

    :cond_28
    move v0, v1

    .line 890
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 895
    invoke-static {v0, v11, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v4}, Landroidx/appcompat/widget/aj;->setMeasuredDimension(II)V

    if-eqz v20, :cond_29

    .line 899
    invoke-direct {v7, v3, v9}, Landroidx/appcompat/widget/aj;->c(II)V

    :cond_29
    return-void
.end method

.method a(IIII)V
    .locals 18

    move-object/from16 v6, p0

    .line 1436
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v7

    sub-int v2, p3, p1

    .line 1443
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    sub-int/2addr v2, v7

    .line 1446
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v3

    sub-int v9, v2, v3

    .line 1448
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getVirtualChildCount()I

    move-result v10

    .line 1450
    iget v2, v6, Landroidx/appcompat/widget/aj;->e:I

    and-int/lit8 v2, v2, 0x70

    .line 1451
    iget v3, v6, Landroidx/appcompat/widget/aj;->e:I

    const v4, 0x800007

    and-int v11, v3, v4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    .line 1466
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v0

    goto :goto_0

    .line 1456
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v2

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v0, v6, Landroidx/appcompat/widget/aj;->f:I

    sub-int v0, v2, v0

    goto :goto_0

    .line 1461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v2

    sub-int v0, p4, p2

    iget v1, v6, Landroidx/appcompat/widget/aj;->f:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    :goto_0
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v10, :cond_8

    .line 1471
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_3

    .line 1473
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/aj;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v14

    goto/16 :goto_4

    .line 1474
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 1475
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1476
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1479
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/aj$a;

    .line 1481
    iget v1, v5, Landroidx/appcompat/widget/aj$a;->h:I

    if-gez v1, :cond_4

    move v1, v11

    .line 1485
    :cond_4
    invoke-static/range {p0 .. p0}, Landroidx/core/g/t;->b(Landroid/view/View;)I

    move-result v2

    .line 1486
    invoke-static {v1, v2}, Landroidx/core/g/d;->a(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 1500
    iget v1, v5, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v1, v7

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_5
    sub-int v1, v8, v4

    .line 1495
    iget v2, v5, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_6
    sub-int v1, v9, v4

    .line 1490
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_2

    .line 1504
    :goto_3
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1505
    iget v1, v6, Landroidx/appcompat/widget/aj;->m:I

    add-int/2addr v0, v1

    .line 1508
    :cond_7
    iget v1, v5, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int v16, v0, v1

    .line 1509
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object v0, v6

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;IIII)V

    .line 1511
    iget v0, v14, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 1513
    invoke-virtual {v6, v13, v12}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    :goto_4
    add-int/2addr v12, v1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 305
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 307
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 310
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/aj$a;

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroidx/appcompat/widget/aj$a;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/aj;->m:I

    sub-int/2addr v2, v3

    .line 313
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/aj;->a(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 319
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 322
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/aj;->m:I

    sub-int/2addr v0, v1

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/aj$a;

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v0, v1

    .line 327
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/aj;->a(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method a(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/aj;->o:I

    add-int/2addr v1, v2

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/aj;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/aj;->m:I

    add-int/2addr v3, p2

    .line 373
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object p0, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method a(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1387
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/aj;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method b(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method b(I)Landroid/view/View;
    .locals 0

    .line 515
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/aj$a;
    .locals 1

    .line 1731
    new-instance v0, Landroidx/appcompat/widget/aj$a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/aj$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/aj$a;
    .locals 0

    .line 1754
    new-instance p0, Landroidx/appcompat/widget/aj$a;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/aj$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method b(II)V
    .locals 41

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 938
    iput v10, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 946
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getVirtualChildCount()I

    move-result v11

    .line 948
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 949
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 954
    iget-object v0, v7, Landroidx/appcompat/widget/aj;->i:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_0

    iget-object v0, v7, Landroidx/appcompat/widget/aj;->j:[I

    if-nez v0, :cond_1

    .line 955
    :cond_0
    new-array v0, v14, [I

    iput-object v0, v7, Landroidx/appcompat/widget/aj;->i:[I

    .line 956
    new-array v0, v14, [I

    iput-object v0, v7, Landroidx/appcompat/widget/aj;->j:[I

    .line 959
    :cond_1
    iget-object v15, v7, Landroidx/appcompat/widget/aj;->i:[I

    .line 960
    iget-object v6, v7, Landroidx/appcompat/widget/aj;->j:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 962
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    .line 963
    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    .line 965
    iget-boolean v4, v7, Landroidx/appcompat/widget/aj;->a:Z

    .line 966
    iget-boolean v3, v7, Landroidx/appcompat/widget/aj;->h:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_2

    move/from16 v19, v18

    goto :goto_0

    :cond_2
    move/from16 v19, v10

    :goto_0
    const/16 v20, 0x0

    move v1, v10

    move v14, v1

    move/from16 v21, v14

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v26, v18

    move/from16 v0, v20

    :goto_1
    move-object/from16 v28, v6

    const/16 v5, 0x8

    if-ge v1, v11, :cond_15

    .line 974
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    .line 977
    iget v5, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/aj;->d(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v7, Landroidx/appcompat/widget/aj;->f:I

    :goto_2
    move/from16 v30, v0

    move v0, v1

    move v1, v2

    move/from16 v31, v3

    move/from16 v35, v4

    goto/16 :goto_10

    .line 981
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v5, :cond_4

    .line 982
    invoke-virtual {v7, v6, v1}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_2

    .line 986
    :cond_4
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 987
    iget v5, v7, Landroidx/appcompat/widget/aj;->f:I

    iget v10, v7, Landroidx/appcompat/widget/aj;->l:I

    add-int/2addr v5, v10

    iput v5, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 991
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroidx/appcompat/widget/aj$a;

    .line 993
    iget v5, v10, Landroidx/appcompat/widget/aj$a;->g:F

    add-float v30, v0, v5

    if-ne v12, v2, :cond_8

    .line 995
    iget v0, v10, Landroidx/appcompat/widget/aj$a;->width:I

    if-nez v0, :cond_8

    iget v0, v10, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_8

    if-eqz v19, :cond_6

    .line 1000
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    iget v5, v10, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    iget v2, v10, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    iput v0, v7, Landroidx/appcompat/widget/aj;->f:I

    goto :goto_3

    .line 1002
    :cond_6
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 1003
    iget v2, v10, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v2, v0

    iget v5, v10, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/aj;->f:I

    :goto_3
    if-eqz v4, :cond_7

    const/4 v0, 0x0

    .line 1013
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1014
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v33, v1

    move/from16 v31, v3

    move/from16 v35, v4

    move-object v8, v6

    const/16 v29, -0x2

    goto/16 :goto_7

    :cond_7
    move/from16 v33, v1

    move/from16 v31, v3

    move/from16 v35, v4

    move-object v8, v6

    move/from16 v22, v18

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v29, -0x2

    goto/16 :goto_8

    .line 1021
    :cond_8
    iget v0, v10, Landroidx/appcompat/widget/aj$a;->width:I

    if-nez v0, :cond_9

    iget v0, v10, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_9

    const/4 v5, -0x2

    .line 1027
    iput v5, v10, Landroidx/appcompat/widget/aj$a;->width:I

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    const/4 v5, -0x2

    const/high16 v2, -0x80000000

    :goto_4
    cmpl-float v0, v30, v20

    if-nez v0, :cond_a

    .line 1035
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    move/from16 v29, v0

    goto :goto_5

    :cond_a
    const/16 v29, 0x0

    :goto_5
    const/16 v32, 0x0

    move-object v0, v7

    move/from16 v33, v1

    move-object v1, v6

    move/from16 v34, v2

    move/from16 v2, v33

    move/from16 v31, v3

    move v3, v8

    move/from16 v35, v4

    move/from16 v4, v29

    move/from16 v29, v5

    const/4 v8, -0x1

    move v5, v9

    move-object v8, v6

    const/high16 v9, -0x80000000

    move/from16 v6, v32

    .line 1034
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;IIIII)V

    move/from16 v0, v34

    if-eq v0, v9, :cond_b

    .line 1039
    iput v0, v10, Landroidx/appcompat/widget/aj$a;->width:I

    .line 1042
    :cond_b
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_c

    .line 1044
    iget v1, v7, Landroidx/appcompat/widget/aj;->f:I

    iget v2, v10, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v10, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v2, v3

    .line 1045
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    goto :goto_6

    .line 1047
    :cond_c
    iget v1, v7, Landroidx/appcompat/widget/aj;->f:I

    add-int v2, v1, v0

    .line 1048
    iget v3, v10, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v2, v3

    .line 1049
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1048
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    :goto_6
    if-eqz v31, :cond_d

    .line 1053
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_d
    :goto_7
    const/high16 v1, 0x40000000    # 2.0f

    :goto_8
    if-eq v13, v1, :cond_e

    .line 1058
    iget v0, v10, Landroidx/appcompat/widget/aj$a;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    move/from16 v0, v18

    move/from16 v27, v0

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    .line 1066
    :goto_9
    iget v2, v10, Landroidx/appcompat/widget/aj$a;->topMargin:I

    iget v3, v10, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v2, v3

    .line 1067
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 1068
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    move/from16 v6, v25

    invoke-static {v6, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    if-eqz v35, :cond_10

    .line 1071
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 1075
    iget v6, v10, Landroidx/appcompat/widget/aj$a;->h:I

    if-gez v6, :cond_f

    iget v6, v7, Landroidx/appcompat/widget/aj;->e:I

    goto :goto_a

    :cond_f
    iget v6, v10, Landroidx/appcompat/widget/aj$a;->h:I

    :goto_a
    and-int/lit8 v6, v6, 0x70

    const/4 v9, 0x4

    shr-int/2addr v6, v9

    and-int/lit8 v6, v6, -0x2

    shr-int/lit8 v6, v6, 0x1

    .line 1080
    aget v9, v15, v6

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v15, v6

    .line 1081
    aget v9, v28, v6

    sub-int v5, v3, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v28, v6

    :cond_10
    move/from16 v5, v21

    .line 1085
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v26, :cond_11

    .line 1087
    iget v6, v10, Landroidx/appcompat/widget/aj$a;->height:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_11

    move/from16 v6, v18

    goto :goto_b

    :cond_11
    const/4 v6, 0x0

    .line 1088
    :goto_b
    iget v9, v10, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v9, v9, v20

    if-lez v9, :cond_13

    if-eqz v0, :cond_12

    :goto_c
    move/from16 v10, v24

    goto :goto_d

    :cond_12
    move v2, v3

    goto :goto_c

    .line 1093
    :goto_d
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    :goto_e
    move/from16 v10, v33

    goto :goto_f

    :cond_13
    move/from16 v10, v24

    if-eqz v0, :cond_14

    move v3, v2

    :cond_14
    move/from16 v2, v23

    .line 1096
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v24, v10

    goto :goto_e

    .line 1100
    :goto_f
    invoke-virtual {v7, v8, v10}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    move/from16 v25, v4

    move/from16 v21, v5

    move/from16 v26, v6

    :goto_10
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move-object/from16 v6, v28

    move/from16 v3, v31

    move/from16 v4, v35

    const/4 v5, -0x1

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    move v1, v0

    move/from16 v0, v30

    goto/16 :goto_1

    :cond_15
    move v1, v2

    move/from16 v31, v3

    move/from16 v35, v4

    move/from16 v3, v21

    move/from16 v2, v23

    move/from16 v10, v24

    move/from16 v6, v25

    const/high16 v9, -0x80000000

    const/16 v29, -0x2

    .line 1103
    iget v4, v7, Landroidx/appcompat/widget/aj;->f:I

    if-lez v4, :cond_16

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1104
    iget v4, v7, Landroidx/appcompat/widget/aj;->f:I

    iget v8, v7, Landroidx/appcompat/widget/aj;->l:I

    add-int/2addr v4, v8

    iput v4, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 1109
    :cond_16
    aget v4, v15, v18

    const/4 v8, -0x1

    if-ne v4, v8, :cond_17

    const/4 v4, 0x0

    aget v1, v15, v4

    if-ne v1, v8, :cond_17

    aget v1, v15, v17

    if-ne v1, v8, :cond_17

    aget v1, v15, v16

    if-eq v1, v8, :cond_18

    .line 1113
    :cond_17
    aget v1, v15, v16

    const/4 v4, 0x0

    aget v8, v15, v4

    aget v5, v15, v18

    aget v9, v15, v17

    .line 1115
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1114
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1113
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1116
    aget v5, v28, v16

    aget v8, v28, v4

    aget v4, v28, v18

    aget v9, v28, v17

    .line 1118
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1117
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1116
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v1, v4

    .line 1119
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v3, v21

    :cond_18
    if-eqz v31, :cond_1d

    const/high16 v1, -0x80000000

    if-eq v12, v1, :cond_19

    if-nez v12, :cond_1d

    :cond_19
    const/4 v1, 0x0

    .line 1124
    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v11, :cond_1d

    .line 1127
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 1130
    iget v4, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/aj;->d(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v7, Landroidx/appcompat/widget/aj;->f:I

    goto :goto_12

    .line 1134
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_1b

    .line 1135
    invoke-virtual {v7, v4, v1}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v1, v4

    :goto_12
    move/from16 v36, v1

    goto :goto_13

    .line 1140
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/aj$a;

    if-eqz v19, :cond_1c

    .line 1142
    iget v8, v7, Landroidx/appcompat/widget/aj;->f:I

    iget v9, v5, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v9, v14

    iget v5, v5, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v9, v5

    .line 1143
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/appcompat/widget/aj;->f:I

    goto :goto_12

    .line 1145
    :cond_1c
    iget v8, v7, Landroidx/appcompat/widget/aj;->f:I

    add-int v9, v8, v14

    move/from16 v36, v1

    .line 1146
    iget v1, v5, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v5, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v9, v1

    .line 1147
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    .line 1146
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    :goto_13
    add-int/lit8 v1, v36, 0x1

    goto :goto_11

    .line 1153
    :cond_1d
    iget v1, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iput v1, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 1155
    iget v1, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 1158
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, p1

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 1161
    invoke-static {v1, v4, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v5, 0xffffff

    and-int/2addr v5, v1

    .line 1167
    iget v9, v7, Landroidx/appcompat/widget/aj;->f:I

    sub-int/2addr v5, v9

    if-nez v22, :cond_22

    if-eqz v5, :cond_1e

    cmpl-float v21, v0, v20

    if-lez v21, :cond_1e

    goto :goto_16

    .line 1279
    :cond_1e
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v31, :cond_21

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_21

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v11, :cond_21

    .line 1285
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 1287
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_1f

    goto :goto_15

    .line 1292
    :cond_1f
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/aj$a;

    .line 1294
    iget v8, v8, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v8, v8, v20

    if-lez v8, :cond_20

    const/high16 v8, 0x40000000    # 2.0f

    .line 1297
    invoke-static {v14, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1298
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1296
    invoke-virtual {v5, v10, v12}, Landroid/view/View;->measure(II)V

    :cond_20
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    move/from16 v5, p2

    goto/16 :goto_25

    .line 1169
    :cond_22
    :goto_16
    iget v3, v7, Landroidx/appcompat/widget/aj;->g:F

    cmpl-float v3, v3, v20

    if-lez v3, :cond_23

    iget v0, v7, Landroidx/appcompat/widget/aj;->g:F

    .line 1171
    :cond_23
    aput v8, v15, v16

    aput v8, v15, v17

    aput v8, v15, v18

    const/4 v3, 0x0

    aput v8, v15, v3

    .line 1172
    aput v8, v28, v16

    aput v8, v28, v17

    aput v8, v28, v18

    aput v8, v28, v3

    .line 1175
    iput v3, v7, Landroidx/appcompat/widget/aj;->f:I

    move v10, v2

    move v3, v8

    move v2, v0

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v11, :cond_32

    .line 1178
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_31

    .line 1180
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_24

    goto/16 :goto_23

    .line 1185
    :cond_24
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/aj$a;

    .line 1187
    iget v9, v8, Landroidx/appcompat/widget/aj$a;->g:F

    cmpl-float v21, v9, v20

    if-lez v21, :cond_29

    int-to-float v4, v5

    mul-float/2addr v4, v9

    div-float/2addr v4, v2

    float-to-int v4, v4

    sub-float/2addr v2, v9

    sub-int/2addr v5, v4

    .line 1196
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v21

    add-int v9, v9, v21

    move/from16 v37, v2

    iget v2, v8, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int/2addr v9, v2

    iget v2, v8, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v9, v2

    iget v2, v8, Landroidx/appcompat/widget/aj$a;->height:I

    move/from16 v38, v5

    move/from16 v5, p2

    .line 1194
    invoke-static {v5, v9, v2}, Landroidx/appcompat/widget/aj;->getChildMeasureSpec(III)I

    move-result v2

    .line 1201
    iget v9, v8, Landroidx/appcompat/widget/aj$a;->width:I

    if-nez v9, :cond_27

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v12, v9, :cond_25

    goto :goto_19

    :cond_25
    if-lez v4, :cond_26

    goto :goto_18

    :cond_26
    const/4 v4, 0x0

    .line 1214
    :goto_18
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v14, v4, v2}, Landroid/view/View;->measure(II)V

    goto :goto_1a

    :cond_27
    const/high16 v9, 0x40000000    # 2.0f

    .line 1204
    :goto_19
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v4, v21, v4

    if-gez v4, :cond_28

    const/4 v4, 0x0

    .line 1210
    :cond_28
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1209
    invoke-virtual {v14, v4, v2}, Landroid/view/View;->measure(II)V

    .line 1221
    :goto_1a
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    .line 1220
    invoke-static {v6, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    move/from16 v2, v37

    move/from16 v4, v38

    goto :goto_1b

    :cond_29
    move v4, v5

    move/from16 v5, p2

    :goto_1b
    if-eqz v19, :cond_2a

    .line 1225
    iget v9, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v39, v2

    iget v2, v8, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int v21, v21, v2

    iget v2, v8, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int v21, v21, v2

    .line 1226
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v2

    add-int v21, v21, v2

    add-int v9, v9, v21

    iput v9, v7, Landroidx/appcompat/widget/aj;->f:I

    move/from16 v40, v4

    :goto_1c
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1d

    :cond_2a
    move/from16 v39, v2

    .line 1228
    iget v2, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 1229
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v2

    move/from16 v40, v4

    iget v4, v8, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v9, v4

    iget v4, v8, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v9, v4

    .line 1230
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v9, v4

    .line 1229
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/aj;->f:I

    goto :goto_1c

    :goto_1d
    if-eq v13, v2, :cond_2b

    .line 1233
    iget v2, v8, Landroidx/appcompat/widget/aj$a;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2b

    move/from16 v2, v18

    goto :goto_1e

    :cond_2b
    const/4 v2, 0x0

    .line 1236
    :goto_1e
    iget v4, v8, Landroidx/appcompat/widget/aj$a;->topMargin:I

    iget v9, v8, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    add-int/2addr v4, v9

    .line 1237
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v4

    .line 1238
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v2, :cond_2c

    goto :goto_1f

    :cond_2c
    move v4, v9

    .line 1239
    :goto_1f
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v26, :cond_2d

    .line 1242
    iget v4, v8, Landroidx/appcompat/widget/aj$a;->height:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_2e

    move/from16 v4, v18

    goto :goto_20

    :cond_2d
    const/4 v10, -0x1

    :cond_2e
    const/4 v4, 0x0

    :goto_20
    if-eqz v35, :cond_30

    .line 1245
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eq v14, v10, :cond_30

    .line 1248
    iget v10, v8, Landroidx/appcompat/widget/aj$a;->h:I

    if-gez v10, :cond_2f

    iget v8, v7, Landroidx/appcompat/widget/aj;->e:I

    goto :goto_21

    :cond_2f
    iget v8, v8, Landroidx/appcompat/widget/aj$a;->h:I

    :goto_21
    and-int/lit8 v8, v8, 0x70

    const/16 v21, 0x4

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, -0x2

    shr-int/lit8 v8, v8, 0x1

    .line 1253
    aget v10, v15, v8

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v15, v8

    .line 1254
    aget v10, v28, v8

    sub-int/2addr v9, v14

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v28, v8

    goto :goto_22

    :cond_30
    const/16 v21, 0x4

    :goto_22
    move v10, v2

    move/from16 v26, v4

    move/from16 v2, v39

    move/from16 v4, v40

    goto :goto_24

    :cond_31
    :goto_23
    move v4, v5

    move/from16 v5, p2

    const/16 v21, 0x4

    :goto_24
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    move/from16 v4, p1

    const/4 v8, -0x1

    goto/16 :goto_17

    :cond_32
    move/from16 v5, p2

    .line 1261
    iget v0, v7, Landroidx/appcompat/widget/aj;->f:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroidx/appcompat/widget/aj;->f:I

    .line 1266
    aget v0, v15, v18

    const/4 v2, -0x1

    if-ne v0, v2, :cond_33

    const/4 v0, 0x0

    aget v4, v15, v0

    if-ne v4, v2, :cond_33

    aget v0, v15, v17

    if-ne v0, v2, :cond_33

    aget v0, v15, v16

    if-eq v0, v2, :cond_34

    .line 1270
    :cond_33
    aget v0, v15, v16

    const/4 v2, 0x0

    aget v4, v15, v2

    aget v8, v15, v18

    aget v9, v15, v17

    .line 1272
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1271
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1270
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1273
    aget v4, v28, v16

    aget v2, v28, v2

    aget v8, v28, v18

    aget v9, v28, v17

    .line 1275
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1274
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1273
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1276
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    :cond_34
    move v0, v10

    :goto_25
    if-nez v26, :cond_35

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_35

    goto :goto_26

    :cond_35
    move v0, v3

    .line 1309
    :goto_26
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1312
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0x10

    .line 1315
    invoke-static {v0, v5, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1314
    invoke-virtual {v7, v1, v0}, Landroidx/appcompat/widget/aj;->setMeasuredDimension(II)V

    if-eqz v27, :cond_36

    move/from16 v0, p1

    .line 1319
    invoke-direct {v7, v11, v0}, Landroidx/appcompat/widget/aj;->d(II)V

    :cond_36
    return-void
.end method

.method b(IIII)V
    .locals 27

    move-object/from16 v6, p0

    .line 1531
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/bd;->a(Landroid/view/View;)Z

    move-result v2

    .line 1532
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v7

    sub-int v3, p4, p2

    .line 1539
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v4

    sub-int v8, v3, v4

    sub-int/2addr v3, v7

    .line 1542
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v4

    sub-int v9, v3, v4

    .line 1544
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getVirtualChildCount()I

    move-result v10

    .line 1546
    iget v3, v6, Landroidx/appcompat/widget/aj;->e:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 1547
    iget v4, v6, Landroidx/appcompat/widget/aj;->e:I

    and-int/lit8 v11, v4, 0x70

    .line 1549
    iget-boolean v12, v6, Landroidx/appcompat/widget/aj;->a:Z

    .line 1551
    iget-object v13, v6, Landroidx/appcompat/widget/aj;->i:[I

    .line 1552
    iget-object v14, v6, Landroidx/appcompat/widget/aj;->j:[I

    .line 1554
    invoke-static/range {p0 .. p0}, Landroidx/core/g/t;->b(Landroid/view/View;)I

    move-result v4

    .line 1555
    invoke-static {v3, v4}, Landroidx/core/g/d;->a(II)I

    move-result v3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 1558
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v0, v6, Landroidx/appcompat/widget/aj;->f:I

    sub-int v0, v3, v0

    goto :goto_0

    .line 1563
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v3

    sub-int v0, p3, p1

    iget v1, v6, Landroidx/appcompat/widget/aj;->f:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v15

    add-int/2addr v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    add-int/lit8 v2, v10, -0x1

    move/from16 v16, v2

    const/16 v17, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v1

    move/from16 v17, v5

    :goto_1
    move v3, v1

    :goto_2
    if-ge v3, v10, :cond_e

    mul-int v1, v17, v3

    add-int v2, v16, v1

    .line 1582
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1585
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/aj;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v18, v5

    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    :goto_3
    const/16 v20, -0x1

    goto/16 :goto_8

    .line 1586
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_d

    .line 1587
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1588
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1592
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Landroidx/appcompat/widget/aj$a;

    if-eqz v12, :cond_4

    move/from16 v22, v3

    .line 1594
    iget v3, v4, Landroidx/appcompat/widget/aj$a;->height:I

    move/from16 v23, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 1595
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_4

    :cond_4
    move/from16 v22, v3

    move/from16 v23, v10

    :cond_5
    const/4 v3, -0x1

    .line 1598
    :goto_4
    iget v10, v4, Landroidx/appcompat/widget/aj$a;->h:I

    if-gez v10, :cond_6

    move v10, v11

    :cond_6
    and-int/lit8 v10, v10, 0x70

    move/from16 v24, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_b

    const/16 v11, 0x30

    if-eq v10, v11, :cond_9

    const/16 v11, 0x50

    if-eq v10, v11, :cond_7

    move v3, v7

    const/4 v11, -0x1

    :goto_5
    const/16 v18, 0x1

    goto :goto_7

    :cond_7
    sub-int v10, v8, v5

    .line 1628
    iget v11, v4, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    sub-int/2addr v10, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_8

    .line 1630
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v20, v3

    const/4 v3, 0x2

    .line 1631
    aget v21, v14, v3

    sub-int v21, v21, v20

    sub-int v10, v10, v21

    :cond_8
    move v3, v10

    goto :goto_5

    :cond_9
    const/4 v11, -0x1

    .line 1605
    iget v10, v4, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int/2addr v10, v7

    if-eq v3, v11, :cond_a

    const/16 v18, 0x1

    .line 1607
    aget v20, v13, v18

    sub-int v20, v20, v3

    add-int v10, v10, v20

    goto :goto_6

    :cond_a
    const/16 v18, 0x1

    :goto_6
    move v3, v10

    goto :goto_7

    :cond_b
    const/4 v11, -0x1

    const/16 v18, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 1623
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroidx/appcompat/widget/aj$a;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 1639
    :goto_7
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1640
    iget v10, v6, Landroidx/appcompat/widget/aj;->l:I

    add-int/2addr v0, v10

    .line 1643
    :cond_c
    iget v10, v4, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    add-int/2addr v10, v0

    .line 1644
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;)I

    move-result v0

    add-int v19, v10, v0

    move-object v0, v6

    move-object/from16 v25, v1

    move v11, v2

    move/from16 v2, v19

    move/from16 v19, v22

    move/from16 v26, v7

    const/16 v20, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;IIII)V

    .line 1646
    iget v0, v7, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, v25

    .line 1647
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/aj;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 1649
    invoke-virtual {v6, v0, v11}, Landroidx/appcompat/widget/aj;->a(Landroid/view/View;I)I

    move-result v0

    add-int v3, v19, v0

    move v0, v10

    goto :goto_8

    :cond_d
    move/from16 v19, v3

    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    const/16 v18, 0x1

    goto/16 :goto_3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v18

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v7, v26

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 6

    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getVirtualChildCount()I

    move-result v0

    .line 333
    invoke-static {p0}, Landroidx/appcompat/widget/bd;->a(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 335
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 337
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 338
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/aj$a;

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 344
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/aj;->l:I

    sub-int/2addr v3, v4

    .line 346
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/aj;->b(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aj;->c(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 352
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aj;->b(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    .line 358
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/aj;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 361
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/aj$a;

    if-eqz v1, :cond_5

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroidx/appcompat/widget/aj$a;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/aj;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 365
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroidx/appcompat/widget/aj$a;->rightMargin:I

    add-int/2addr v0, v1

    .line 368
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/aj;->b(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method b(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 379
    iget-object v0, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/aj;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/aj;->l:I

    add-int/2addr v2, p2

    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/aj;->o:I

    sub-int/2addr v3, v4

    .line 379
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    iget-object p0, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected c(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 577
    iget p0, p0, Landroidx/appcompat/widget/aj;->n:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 578
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 579
    iget p0, p0, Landroidx/appcompat/widget/aj;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 580
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/aj;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    .line 583
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1761
    instance-of p0, p1, Landroidx/appcompat/widget/aj$a;

    return p0
.end method

.method d(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->j()Landroidx/appcompat/widget/aj$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/aj$a;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/aj$a;

    move-result-object p0

    return-object p0
.end method

.method public getBaseline()I
    .locals 5

    .line 433
    iget v0, p0, Landroidx/appcompat/widget/aj;->b:I

    if-gez v0, :cond_0

    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/aj;->b:I

    if-gt v0, v1, :cond_1

    .line 438
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 442
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/aj;->b:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 446
    iget p0, p0, Landroidx/appcompat/widget/aj;->b:I

    if-nez p0, :cond_2

    return v2

    .line 452
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 462
    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/aj;->c:I

    .line 464
    iget v3, p0, Landroidx/appcompat/widget/aj;->d:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 465
    iget v3, p0, Landroidx/appcompat/widget/aj;->e:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6

    const/16 v4, 0x10

    if-eq v3, v4, :cond_5

    const/16 v4, 0x50

    if-eq v3, v4, :cond_4

    goto :goto_0

    .line 469
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget p0, p0, Landroidx/appcompat/widget/aj;->f:I

    sub-int/2addr v2, p0

    goto :goto_0

    .line 473
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget p0, p0, Landroidx/appcompat/widget/aj;->f:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 480
    :cond_6
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/aj$a;

    .line 481
    iget p0, p0, Landroidx/appcompat/widget/aj$a;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 0

    .line 490
    iget p0, p0, Landroidx/appcompat/widget/aj;->b:I

    return p0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 231
    iget-object p0, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerPadding()I
    .locals 0

    .line 278
    iget p0, p0, Landroidx/appcompat/widget/aj;->o:I

    return p0
.end method

.method public getDividerWidth()I
    .locals 0

    .line 288
    iget p0, p0, Landroidx/appcompat/widget/aj;->l:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 1710
    iget p0, p0, Landroidx/appcompat/widget/aj;->e:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1677
    iget p0, p0, Landroidx/appcompat/widget/aj;->d:I

    return p0
.end method

.method public getShowDividers()I
    .locals 0

    .line 222
    iget p0, p0, Landroidx/appcompat/widget/aj;->n:I

    return p0
.end method

.method getVirtualChildCount()I
    .locals 0

    .line 528
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getWeightSum()F
    .locals 0

    .line 539
    iget p0, p0, Landroidx/appcompat/widget/aj;->g:F

    return p0
.end method

.method protected j()Landroidx/appcompat/widget/aj$a;
    .locals 2

    .line 1744
    iget v0, p0, Landroidx/appcompat/widget/aj;->d:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1745
    new-instance p0, Landroidx/appcompat/widget/aj$a;

    invoke-direct {p0, v1, v1}, Landroidx/appcompat/widget/aj$a;-><init>(II)V

    return-object p0

    .line 1746
    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/aj;->d:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1747
    new-instance p0, Landroidx/appcompat/widget/aj$a;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/aj$a;-><init>(II)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 293
    iget-object v0, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/aj;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 298
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/aj;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1767
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1772
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1773
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1416
    iget p1, p0, Landroidx/appcompat/widget/aj;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1417
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/aj;->a(IIII)V

    goto :goto_0

    .line 1419
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/aj;->b(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 560
    iget v0, p0, Landroidx/appcompat/widget/aj;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 561
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/aj;->a(II)V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/aj;->b(II)V

    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Landroidx/appcompat/widget/aj;->a:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 498
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/aj;->b:I

    return-void

    .line 499
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 242
    iget-object v0, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 245
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/aj;->k:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/aj;->l:I

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/aj;->m:I

    goto :goto_0

    .line 250
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/aj;->l:I

    .line 251
    iput v0, p0, Landroidx/appcompat/widget/aj;->m:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 253
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/aj;->setWillNotDraw(Z)V

    .line 254
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 267
    iput p1, p0, Landroidx/appcompat/widget/aj;->o:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1689
    iget v0, p0, Landroidx/appcompat/widget/aj;->e:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 1698
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/aj;->e:I

    .line 1699
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1715
    iget v1, p0, Landroidx/appcompat/widget/aj;->e:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    .line 1716
    iget v0, p0, Landroidx/appcompat/widget/aj;->e:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/aj;->e:I

    .line 1717
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Landroidx/appcompat/widget/aj;->h:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1664
    iget v0, p0, Landroidx/appcompat/widget/aj;->d:I

    if-eq v0, p1, :cond_0

    .line 1665
    iput p1, p0, Landroidx/appcompat/widget/aj;->d:I

    .line 1666
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    .line 205
    iget v0, p0, Landroidx/appcompat/widget/aj;->n:I

    if-eq p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->requestLayout()V

    .line 208
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/aj;->n:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x70

    .line 1723
    iget v0, p0, Landroidx/appcompat/widget/aj;->e:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_0

    .line 1724
    iget v0, p0, Landroidx/appcompat/widget/aj;->e:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/aj;->e:I

    .line 1725
    invoke-virtual {p0}, Landroidx/appcompat/widget/aj;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    .line 555
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/aj;->g:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
