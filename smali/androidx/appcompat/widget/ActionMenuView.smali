.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/aj;
.source "ActionMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$b;
.implements Landroidx/appcompat/view/menu/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$c;,
        Landroidx/appcompat/widget/ActionMenuView$a;,
        Landroidx/appcompat/widget/ActionMenuView$b;,
        Landroidx/appcompat/widget/ActionMenuView$d;,
        Landroidx/appcompat/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/view/menu/g$a;

.field b:Landroidx/appcompat/widget/ActionMenuView$e;

.field private c:Landroidx/appcompat/view/menu/g;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Z

.field private g:Landroidx/appcompat/widget/c;

.field private h:Landroidx/appcompat/view/menu/m$a;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 84
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 85
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    .line 86
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    .line 87
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .locals 5

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 407
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 409
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 410
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 412
    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    .line 413
    move-object p4, p0

    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    .line 414
    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result p4

    if-eqz p4, :cond_1

    move p4, v2

    goto :goto_1

    :cond_1
    move p4, v1

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    .line 418
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 420
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 423
    div-int v4, p2, p1

    .line 424
    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v1

    .line 428
    :goto_2
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    move v1, v2

    .line 429
    :cond_6
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 431
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 433
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private c(II)V
    .locals 34

    move-object/from16 v0, p0

    .line 179
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 180
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 181
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    .line 186
    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    .line 192
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int v4, v2, v4

    .line 193
    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    rem-int v7, v2, v7

    const/4 v8, 0x0

    if-nez v4, :cond_0

    .line 197
    invoke-virtual {v0, v2, v8}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    .line 201
    :cond_0
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int/2addr v7, v4

    add-int/2addr v9, v7

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v7

    move v14, v4

    move v4, v8

    move v10, v4

    move v12, v10

    move v13, v12

    move v15, v13

    move/from16 v16, v15

    const-wide/16 v19, 0x0

    :goto_0
    if-ge v4, v7, :cond_8

    .line 215
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 216
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v8

    move/from16 v21, v3

    const/16 v3, 0x8

    if-ne v8, v3, :cond_1

    move/from16 v23, v2

    goto/16 :goto_5

    .line 218
    :cond_1
    instance-of v3, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v3, :cond_2

    .line 224
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v22, v13

    iget v13, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v23, v2

    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2, v13, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    move/from16 v23, v2

    move/from16 v22, v13

    const/4 v2, 0x0

    .line 227
    :goto_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 228
    iput-boolean v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    .line 229
    iput v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    .line 230
    iput v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 231
    iput-boolean v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    .line 232
    iput v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    .line 233
    iput v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    if-eqz v3, :cond_3

    .line 234
    move-object v2, v11

    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    .line 237
    iget-boolean v2, v8, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v14

    .line 239
    :goto_3
    invoke-static {v11, v9, v2, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v2

    .line 242
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 243
    iget-boolean v13, v8, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    if-eqz v13, :cond_5

    add-int/lit8 v16, v16, 0x1

    .line 244
    :cond_5
    iget-boolean v8, v8, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v8, :cond_6

    const/4 v12, 0x1

    :cond_6
    sub-int/2addr v14, v2

    .line 247
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    shl-int v2, v8, v4

    move/from16 v24, v3

    int-to-long v2, v2

    or-long v2, v19, v2

    move-wide/from16 v19, v2

    goto :goto_4

    :cond_7
    move/from16 v24, v3

    :goto_4
    move/from16 v13, v22

    move/from16 v15, v24

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v21

    move/from16 v2, v23

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    move/from16 v23, v2

    move/from16 v21, v3

    const/4 v2, 0x2

    if-eqz v12, :cond_9

    if-ne v13, v2, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    :goto_7
    const-wide/16 v24, 0x1

    if-lez v16, :cond_14

    if-lez v14, :cond_14

    const v5, 0x7fffffff

    move v11, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v26, 0x0

    :goto_8
    if-ge v5, v7, :cond_d

    .line 264
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v28, v4

    .line 268
    iget-boolean v4, v2, Landroidx/appcompat/widget/ActionMenuView$c;->d:Z

    if-nez v4, :cond_a

    goto :goto_9

    .line 271
    :cond_a
    iget v4, v2, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ge v4, v11, :cond_b

    .line 272
    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    shl-long v26, v24, v5

    move v11, v2

    const/4 v8, 0x1

    goto :goto_9

    .line 275
    :cond_b
    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ne v2, v11, :cond_c

    shl-long v29, v24, v5

    or-long v26, v26, v29

    add-int/lit8 v8, v8, 0x1

    :cond_c
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v28

    const/4 v2, 0x2

    goto :goto_8

    :cond_d
    move/from16 v28, v4

    or-long v19, v19, v26

    if-le v8, v14, :cond_e

    :goto_a
    move/from16 v32, v6

    move/from16 v33, v7

    move/from16 v31, v10

    goto :goto_e

    :cond_e
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v7, :cond_13

    .line 290
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 291
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v31, v10

    const/4 v8, 0x1

    shl-int v10, v8, v2

    move/from16 v32, v6

    move/from16 v33, v7

    int-to-long v6, v10

    and-long v24, v26, v6

    const-wide/16 v17, 0x0

    cmp-long v8, v24, v17

    if-nez v8, :cond_f

    .line 294
    iget v4, v5, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    if-ne v4, v11, :cond_12

    or-long v19, v19, v6

    goto :goto_d

    :cond_f
    if-eqz v3, :cond_10

    .line 298
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    if-ne v14, v6, :cond_11

    .line 300
    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    add-int/2addr v7, v9

    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_c

    :cond_10
    const/4 v6, 0x1

    .line 302
    :cond_11
    :goto_c
    iget v4, v5, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    add-int/2addr v4, v6

    iput v4, v5, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    .line 303
    iput-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    add-int/lit8 v14, v14, -0x1

    :cond_12
    :goto_d
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v31

    move/from16 v6, v32

    move/from16 v7, v33

    goto :goto_b

    :cond_13
    const/4 v2, 0x2

    const/4 v4, 0x1

    goto/16 :goto_7

    :cond_14
    move/from16 v28, v4

    goto :goto_a

    :goto_e
    move-wide/from16 v2, v19

    if-nez v12, :cond_15

    const/4 v4, 0x1

    if-ne v13, v4, :cond_16

    move v5, v4

    goto :goto_f

    :cond_15
    const/4 v4, 0x1

    :cond_16
    const/4 v5, 0x0

    :goto_f
    if-lez v14, :cond_23

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-eqz v8, :cond_23

    sub-int/2addr v13, v4

    if-lt v14, v13, :cond_17

    if-nez v5, :cond_17

    if-le v15, v4, :cond_23

    .line 316
    :cond_17
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-float v4, v4

    if-nez v5, :cond_1a

    and-long v5, v2, v24

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v5, :cond_18

    const/4 v5, 0x0

    .line 321
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 322
    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v7, :cond_19

    sub-float/2addr v4, v6

    goto :goto_10

    :cond_18
    const/4 v5, 0x0

    :cond_19
    :goto_10
    add-int/lit8 v7, v33, -0x1

    const/4 v8, 0x1

    shl-int v10, v8, v7

    int-to-long v10, v10

    and-long/2addr v10, v2

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_1b

    .line 325
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 326
    iget-boolean v7, v7, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v7, :cond_1b

    sub-float/2addr v4, v6

    goto :goto_11

    :cond_1a
    const/4 v5, 0x0

    :cond_1b
    :goto_11
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1c

    mul-int/2addr v14, v9

    int-to-float v6, v14

    div-float/2addr v6, v4

    float-to-int v8, v6

    goto :goto_12

    :cond_1c
    move v8, v5

    :goto_12
    move v6, v5

    move/from16 v11, v28

    move/from16 v4, v33

    :goto_13
    if-ge v6, v4, :cond_24

    const/4 v7, 0x1

    shl-int v10, v7, v6

    int-to-long v12, v10

    and-long/2addr v12, v2

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-nez v7, :cond_1d

    const/4 v7, 0x1

    const/4 v12, 0x2

    goto :goto_15

    .line 336
    :cond_1d
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 337
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 338
    instance-of v7, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_1f

    .line 340
    iput v8, v10, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    const/4 v7, 0x1

    .line 341
    iput-boolean v7, v10, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v6, :cond_1e

    .line 342
    iget-boolean v7, v10, Landroidx/appcompat/widget/ActionMenuView$c;->e:Z

    if-nez v7, :cond_1e

    neg-int v7, v8

    const/4 v12, 0x2

    .line 345
    div-int/2addr v7, v12

    iput v7, v10, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    goto :goto_14

    :cond_1e
    const/4 v12, 0x2

    :goto_14
    const/4 v7, 0x1

    const/4 v11, 0x1

    goto :goto_15

    :cond_1f
    const/4 v12, 0x2

    .line 348
    iget-boolean v7, v10, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v7, :cond_20

    .line 349
    iput v8, v10, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    const/4 v7, 0x1

    .line 350
    iput-boolean v7, v10, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    neg-int v11, v8

    .line 351
    div-int/2addr v11, v12

    iput v11, v10, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    move v11, v7

    goto :goto_15

    :cond_20
    const/4 v7, 0x1

    if-eqz v6, :cond_21

    .line 358
    div-int/lit8 v13, v8, 0x2

    iput v13, v10, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    :cond_21
    add-int/lit8 v13, v4, -0x1

    if-eq v6, v13, :cond_22

    .line 361
    div-int/lit8 v13, v8, 0x2

    iput v13, v10, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    :cond_22
    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_23
    move/from16 v4, v33

    const/4 v5, 0x0

    move/from16 v11, v28

    :cond_24
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v11, :cond_26

    :goto_16
    if-ge v5, v4, :cond_26

    .line 372
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 373
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 375
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v7, :cond_25

    move/from16 v7, v32

    goto :goto_17

    .line 377
    :cond_25
    iget v7, v6, Landroidx/appcompat/widget/ActionMenuView$c;->b:I

    mul-int/2addr v7, v9

    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$c;->c:I

    add-int/2addr v7, v6

    .line 378
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v7, v32

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    :goto_17
    add-int/lit8 v5, v5, 0x1

    move/from16 v32, v7

    goto :goto_16

    :cond_26
    if-eq v1, v2, :cond_27

    move/from16 v2, v23

    move/from16 v1, v31

    goto :goto_18

    :cond_27
    move/from16 v1, v21

    move/from16 v2, v23

    .line 387
    :goto_18
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 1

    .line 589
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 0

    if-eqz p1, :cond_2

    .line 595
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    if-eqz p0, :cond_0

    .line 596
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$c;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V

    goto :goto_0

    .line 597
    :cond_0
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    :goto_0
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    .line 599
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    :cond_1
    return-object p0

    .line 603
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 637
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V
    .locals 0

    .line 670
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    .line 671
    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->a:Landroidx/appcompat/view/menu/g$a;

    return-void
.end method

.method public a()Z
    .locals 0

    .line 570
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Z

    return p0
.end method

.method protected a(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 734
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 735
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 737
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    instance-of p0, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p0, :cond_1

    .line 738
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$a;->d()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1
    if-lez p1, :cond_2

    .line 740
    instance-of p0, v2, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p0, :cond_2

    .line 741
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$a;->c()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .line 623
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method protected b()Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 1

    .line 581
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$c;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(II)V

    const/16 v0, 0x10

    .line 583
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView$c;->h:I

    return-object p0
.end method

.method public synthetic b(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/aj$a;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic b(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/aj$a;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public c()Landroidx/appcompat/widget/ActionMenuView$c;
    .locals 1

    .line 614
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    return-object p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 608
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    return p0
.end method

.method public d()Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 680
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 1

    .line 689
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()Z
    .locals 1

    .line 698
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Z
    .locals 1

    .line 708
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 649
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_1

    .line 650
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 651
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    .line 652
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 653
    new-instance v1, Landroidx/appcompat/widget/c;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->b(Z)V

    .line 655
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/m$a;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$b;

    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    .line 655
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 657
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 661
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 563
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 564
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    .line 114
    iget p0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h()Z
    .locals 1

    .line 714
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()V
    .locals 1

    .line 721
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_0

    .line 722
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->f()Z

    :cond_0
    return-void
.end method

.method protected synthetic j()Landroidx/appcompat/widget/aj$a;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/widget/aj;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/c;->a(Z)V

    .line 134
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->e()Z

    .line 136
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->d()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 542
    invoke-super {p0}, Landroidx/appcompat/widget/aj;->onDetachedFromWindow()V

    .line 543
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->i()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 440
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-nez v1, :cond_0

    .line 441
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/aj;->onLayout(ZIIII)V

    return-void

    .line 445
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 446
    div-int/lit8 v2, v2, 0x2

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 452
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/bd;->a(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_5

    .line 454
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 455
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    .line 459
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 460
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v14, :cond_4

    .line 461
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 462
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->a(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v8, v3

    .line 465
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_1

    .line 472
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    .line 475
    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 477
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    move v8, v12

    goto :goto_2

    .line 482
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    .line 484
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->a(I)Z

    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v8, :cond_6

    const/4 v3, 0x0

    .line 492
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 495
    div-int/lit8 v4, v4, 0x2

    .line 496
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 497
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    .line 498
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_7

    .line 503
    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_a

    .line 506
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_4
    if-ge v3, v1, :cond_d

    .line 508
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 509
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 510
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v8, :cond_8

    goto :goto_5

    .line 514
    :cond_8
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr v5, v8

    .line 515
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 516
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 517
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 518
    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 519
    iget v6, v7, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 522
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    :goto_6
    if-ge v3, v1, :cond_d

    .line 524
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 525
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 526
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->a:Z

    if-eqz v8, :cond_b

    goto :goto_7

    .line 530
    :cond_b
    iget v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v5, v8

    .line 531
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 532
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 533
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 534
    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 535
    iget v6, v7, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 148
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    .line 151
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eq v0, v1, :cond_1

    .line 152
    iput v3, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 157
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 158
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    if-eq v0, v1, :cond_2

    .line 159
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    .line 160
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g;->b(Z)V

    .line 163
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 164
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v1, :cond_3

    if-lez v0, :cond_3

    .line 165
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->c(II)V

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    .line 169
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    .line 171
    iput v3, v2, Landroidx/appcompat/widget/ActionMenuView$c;->rightMargin:I

    iput v3, v2, Landroidx/appcompat/widget/ActionMenuView$c;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/aj;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 754
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c;->c(Z)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
    .locals 0

    .line 142
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 552
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 553
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 98
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    if-eq v0, p1, :cond_1

    .line 99
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:I

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->d:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/c;)V
    .locals 0

    .line 123
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    .line 124
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/widget/c;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    return-void
.end method
