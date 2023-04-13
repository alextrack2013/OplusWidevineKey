.class public Landroidx/constraintlayout/b/a/b;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method static a(Landroidx/constraintlayout/b/a/f;Landroidx/constraintlayout/b/d;IILandroidx/constraintlayout/b/a/c;)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    .line 83
    iget-object v12, v1, Landroidx/constraintlayout/b/a/c;->a:Landroidx/constraintlayout/b/a/e;

    .line 84
    iget-object v13, v1, Landroidx/constraintlayout/b/a/c;->c:Landroidx/constraintlayout/b/a/e;

    .line 85
    iget-object v14, v1, Landroidx/constraintlayout/b/a/c;->b:Landroidx/constraintlayout/b/a/e;

    .line 86
    iget-object v15, v1, Landroidx/constraintlayout/b/a/c;->d:Landroidx/constraintlayout/b/a/e;

    .line 87
    iget-object v2, v1, Landroidx/constraintlayout/b/a/c;->e:Landroidx/constraintlayout/b/a/e;

    .line 93
    iget v3, v1, Landroidx/constraintlayout/b/a/c;->k:F

    .line 94
    iget-object v4, v1, Landroidx/constraintlayout/b/a/c;->f:Landroidx/constraintlayout/b/a/e;

    .line 95
    iget-object v4, v1, Landroidx/constraintlayout/b/a/c;->g:Landroidx/constraintlayout/b/a/e;

    .line 97
    iget-object v4, v0, Landroidx/constraintlayout/b/a/f;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v4, v4, p2

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-nez p2, :cond_4

    .line 103
    iget v8, v2, Landroidx/constraintlayout/b/a/e;->ab:I

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 104
    :goto_1
    iget v6, v2, Landroidx/constraintlayout/b/a/e;->ab:I

    if-ne v6, v7, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 105
    :goto_2
    iget v7, v2, Landroidx/constraintlayout/b/a/e;->ab:I

    if-ne v7, v5, :cond_3

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    move v7, v5

    move/from16 v19, v6

    move/from16 v18, v8

    move-object v6, v12

    const/4 v5, 0x0

    goto :goto_7

    .line 107
    :cond_4
    iget v6, v2, Landroidx/constraintlayout/b/a/e;->ac:I

    if-nez v6, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 108
    :goto_5
    iget v6, v2, Landroidx/constraintlayout/b/a/e;->ac:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 109
    :goto_6
    iget v7, v2, Landroidx/constraintlayout/b/a/e;->ac:I

    if-ne v7, v5, :cond_3

    goto :goto_3

    :goto_7
    const/16 v23, 0x0

    if-nez v5, :cond_13

    .line 126
    iget-object v8, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v8, v8, p3

    if-eqz v7, :cond_7

    const/16 v21, 0x1

    goto :goto_8

    :cond_7
    const/16 v21, 0x4

    .line 132
    :goto_8
    invoke-virtual {v8}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v24

    move/from16 v25, v3

    .line 133
    iget-object v3, v6, Landroidx/constraintlayout/b/a/e;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v3, v3, p2

    move/from16 v26, v5

    sget-object v5, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v3, v5, :cond_8

    iget-object v3, v6, Landroidx/constraintlayout/b/a/e;->n:[I

    aget v3, v3, p2

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 136
    :goto_9
    iget-object v5, v8, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v5, :cond_9

    if-eq v6, v12, :cond_9

    .line 137
    iget-object v5, v8, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v5

    add-int v24, v24, v5

    :cond_9
    move/from16 v5, v24

    if-eqz v7, :cond_a

    if-eq v6, v12, :cond_a

    if-eq v6, v14, :cond_a

    move-object/from16 v27, v2

    const/16 v21, 0x8

    goto :goto_a

    :cond_a
    move-object/from16 v27, v2

    .line 144
    :goto_a
    iget-object v2, v8, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v2, :cond_d

    if-ne v6, v14, :cond_b

    .line 146
    iget-object v2, v8, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object/from16 v28, v12

    iget-object v12, v8, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v12, v12, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object/from16 v29, v14

    const/4 v14, 0x6

    invoke-virtual {v9, v2, v12, v5, v14}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    goto :goto_b

    :cond_b
    move-object/from16 v28, v12

    move-object/from16 v29, v14

    .line 149
    iget-object v2, v8, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v12, v8, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v12, v12, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    const/16 v14, 0x8

    invoke-virtual {v9, v2, v12, v5, v14}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    :goto_b
    if-eqz v3, :cond_c

    if-nez v7, :cond_c

    const/4 v2, 0x5

    goto :goto_c

    :cond_c
    move/from16 v2, v21

    .line 155
    :goto_c
    iget-object v3, v8, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v8, v8, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v8, v8, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {v9, v3, v8, v5, v2}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    goto :goto_d

    :cond_d
    move-object/from16 v28, v12

    move-object/from16 v29, v14

    :goto_d
    if-eqz v4, :cond_f

    .line 160
    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    iget-object v2, v6, Landroidx/constraintlayout/b/a/e;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v2, v2, p2

    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v2, v3, :cond_e

    .line 162
    iget-object v2, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v3, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    const/4 v5, 0x0

    const/4 v8, 0x5

    invoke-virtual {v9, v2, v3, v5, v8}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    .line 166
    :goto_e
    iget-object v2, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v3, v0, Landroidx/constraintlayout/b/a/f;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    const/16 v8, 0x8

    invoke-virtual {v9, v2, v3, v5, v8}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    .line 172
    :cond_f
    iget-object v2, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v2, :cond_11

    .line 174
    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    .line 175
    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v3, :cond_11

    iget-object v3, v2, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    if-eq v3, v6, :cond_10

    goto :goto_f

    :cond_10
    move-object/from16 v23, v2

    :cond_11
    :goto_f
    if-eqz v23, :cond_12

    move-object/from16 v6, v23

    move/from16 v5, v26

    goto :goto_10

    :cond_12
    const/4 v5, 0x1

    :goto_10
    move/from16 v3, v25

    move-object/from16 v2, v27

    move-object/from16 v12, v28

    move-object/from16 v14, v29

    goto/16 :goto_7

    :cond_13
    move-object/from16 v27, v2

    move/from16 v25, v3

    move-object/from16 v28, v12

    move-object/from16 v29, v14

    if-eqz v15, :cond_17

    .line 189
    iget-object v2, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v2, :cond_17

    .line 190
    iget-object v2, v15, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v3

    .line 191
    iget-object v5, v15, Landroidx/constraintlayout/b/a/e;->G:[Landroidx/constraintlayout/b/a/e$a;

    aget-object v5, v5, p2

    sget-object v6, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    if-ne v5, v6, :cond_14

    iget-object v5, v15, Landroidx/constraintlayout/b/a/e;->n:[I

    aget v5, v5, p2

    if-nez v5, :cond_14

    const/4 v5, 0x1

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_15

    if-nez v7, :cond_15

    .line 193
    iget-object v5, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    if-ne v5, v0, :cond_15

    .line 194
    iget-object v5, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v6, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v8

    neg-int v8, v8

    const/4 v12, 0x5

    invoke-virtual {v9, v5, v6, v8, v12}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    goto :goto_12

    :cond_15
    const/4 v12, 0x5

    if-eqz v7, :cond_16

    .line 196
    iget-object v5, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->a:Landroidx/constraintlayout/b/a/e;

    if-ne v5, v0, :cond_16

    .line 197
    iget-object v5, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v6, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v6, v6, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v8

    neg-int v8, v8

    const/4 v14, 0x4

    invoke-virtual {v9, v5, v6, v8, v14}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    .line 200
    :cond_16
    :goto_12
    iget-object v5, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v6, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v6, v3

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 201
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    const/4 v6, 0x6

    .line 200
    invoke-virtual {v9, v5, v3, v2, v6}, Landroidx/constraintlayout/b/d;->b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    goto :goto_13

    :cond_17
    const/4 v12, 0x5

    :goto_13
    if-eqz v4, :cond_18

    .line 207
    iget-object v0, v0, Landroidx/constraintlayout/b/a/f;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v3, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v4, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v4, v2

    .line 209
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    const/16 v4, 0x8

    .line 207
    invoke-virtual {v9, v0, v3, v2, v4}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    .line 213
    :cond_18
    iget-object v0, v1, Landroidx/constraintlayout/b/a/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1e

    .line 220
    iget-boolean v4, v1, Landroidx/constraintlayout/b/a/c;->p:Z

    if-eqz v4, :cond_19

    iget-boolean v4, v1, Landroidx/constraintlayout/b/a/c;->r:Z

    if-nez v4, :cond_19

    .line 221
    iget v4, v1, Landroidx/constraintlayout/b/a/c;->j:I

    int-to-float v4, v4

    move/from16 v25, v4

    :cond_19
    const/4 v4, 0x0

    move/from16 v31, v4

    move-object/from16 v6, v23

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v2, :cond_1e

    .line 225
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/b/a/e;

    .line 226
    iget-object v14, v8, Landroidx/constraintlayout/b/a/e;->af:[F

    aget v14, v14, p2

    cmpg-float v17, v14, v4

    if-gez v17, :cond_1b

    .line 229
    iget-boolean v14, v1, Landroidx/constraintlayout/b/a/c;->r:Z

    if-eqz v14, :cond_1a

    .line 230
    iget-object v14, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v17, p3, 0x1

    aget-object v14, v14, v17

    iget-object v14, v14, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v8, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    const/4 v3, 0x0

    const/4 v12, 0x4

    invoke-virtual {v9, v14, v8, v3, v12}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    move v14, v3

    goto :goto_16

    :cond_1a
    const/4 v12, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    move v14, v3

    goto :goto_15

    :cond_1b
    const/4 v12, 0x4

    :goto_15
    cmpl-float v3, v14, v4

    if-nez v3, :cond_1c

    .line 237
    iget-object v3, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v14, p3, 0x1

    aget-object v3, v3, v14

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v8, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v8, v8, p3

    iget-object v8, v8, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    const/16 v4, 0x8

    const/4 v14, 0x0

    invoke-virtual {v9, v3, v8, v14, v4}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    :goto_16
    move-object/from16 v39, v0

    goto :goto_18

    :cond_1c
    const/4 v3, 0x0

    if-eqz v6, :cond_1d

    .line 243
    iget-object v4, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 244
    iget-object v6, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v16, p3, 0x1

    aget-object v6, v6, v16

    iget-object v6, v6, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 245
    iget-object v3, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 246
    iget-object v12, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v12, v12, v16

    iget-object v12, v12, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object/from16 v39, v0

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v0

    move-object/from16 v30, v0

    move/from16 v32, v25

    move/from16 v33, v14

    move-object/from16 v34, v4

    move-object/from16 v35, v6

    move-object/from16 v36, v3

    move-object/from16 v37, v12

    .line 248
    invoke-virtual/range {v30 .. v37}, Landroidx/constraintlayout/b/b;->a(FFFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;)Landroidx/constraintlayout/b/b;

    .line 250
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    goto :goto_17

    :cond_1d
    move-object/from16 v39, v0

    :goto_17
    move-object v6, v8

    move/from16 v31, v14

    :goto_18
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v39

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x5

    goto/16 :goto_14

    :cond_1e
    if-eqz v29, :cond_25

    move-object/from16 v12, v29

    if-eq v12, v15, :cond_20

    if-eqz v7, :cond_1f

    goto :goto_19

    :cond_1f
    move-object/from16 v14, v28

    goto/16 :goto_1e

    :cond_20
    :goto_19
    move-object/from16 v14, v28

    .line 272
    iget-object v0, v14, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    .line 273
    iget-object v1, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 274
    iget-object v3, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v3, :cond_21

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object v3, v0

    goto :goto_1a

    :cond_21
    move-object/from16 v3, v23

    .line 275
    :goto_1a
    iget-object v0, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v0, :cond_22

    iget-object v0, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v0, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object v5, v0

    goto :goto_1b

    :cond_22
    move-object/from16 v5, v23

    .line 276
    :goto_1b
    iget-object v0, v12, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    .line 277
    iget-object v1, v15, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v2

    if-eqz v3, :cond_24

    if-eqz v5, :cond_24

    if-nez p2, :cond_23

    move-object/from16 v2, v27

    .line 281
    iget v2, v2, Landroidx/constraintlayout/b/a/e;->W:F

    :goto_1c
    move v4, v2

    goto :goto_1d

    :cond_23
    move-object/from16 v2, v27

    .line 283
    iget v2, v2, Landroidx/constraintlayout/b/a/e;->X:F

    goto :goto_1c

    .line 285
    :goto_1d
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v6

    .line 286
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v7

    .line 287
    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v8, v1, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    const/4 v10, 0x7

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    :cond_24
    move-object/from16 v45, v13

    goto/16 :goto_36

    :cond_25
    move-object/from16 v14, v28

    move-object/from16 v12, v29

    :goto_1e
    if-eqz v18, :cond_38

    if-eqz v12, :cond_38

    .line 294
    iget v0, v1, Landroidx/constraintlayout/b/a/c;->j:I

    if-lez v0, :cond_26

    iget v0, v1, Landroidx/constraintlayout/b/a/c;->i:I

    iget v1, v1, Landroidx/constraintlayout/b/a/c;->j:I

    if-ne v0, v1, :cond_26

    const/16 v38, 0x1

    goto :goto_1f

    :cond_26
    const/16 v38, 0x0

    :goto_1f
    move-object v7, v12

    move-object v8, v7

    :goto_20
    if-eqz v8, :cond_24

    .line 296
    iget-object v0, v8, Landroidx/constraintlayout/b/a/e;->ah:[Landroidx/constraintlayout/b/a/e;

    aget-object v0, v0, p2

    move-object v6, v0

    :goto_21
    if-eqz v6, :cond_27

    .line 297
    invoke-virtual {v6}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_28

    .line 298
    iget-object v0, v6, Landroidx/constraintlayout/b/a/e;->ah:[Landroidx/constraintlayout/b/a/e;

    aget-object v6, v0, p2

    goto :goto_21

    :cond_27
    const/16 v5, 0x8

    :cond_28
    if-nez v6, :cond_2a

    if-ne v8, v15, :cond_29

    goto :goto_23

    :cond_29
    move-object/from16 v22, v6

    move-object/from16 v16, v7

    move-object/from16 v43, v13

    move-object/from16 v44, v14

    move v14, v5

    :goto_22
    move-object v13, v8

    goto/16 :goto_2a

    .line 301
    :cond_2a
    :goto_23
    iget-object v0, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    .line 302
    iget-object v1, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 303
    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v2, :cond_2b

    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_24

    :cond_2b
    move-object/from16 v2, v23

    :goto_24
    if-eq v7, v8, :cond_2c

    .line 305
    iget-object v2, v7, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_25

    :cond_2c
    if-ne v8, v12, :cond_2e

    if-ne v7, v8, :cond_2e

    .line 307
    iget-object v2, v14, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v2, :cond_2d

    iget-object v2, v14, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_25

    :cond_2d
    move-object/from16 v2, v23

    .line 313
    :cond_2e
    :goto_25
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v0

    .line 314
    iget-object v3, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    if-eqz v6, :cond_2f

    .line 317
    iget-object v5, v6, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, p3

    move-object/from16 v40, v6

    .line 318
    iget-object v6, v5, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object/from16 v41, v5

    .line 319
    iget-object v5, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object/from16 v16, v5

    move-object/from16 v5, v41

    goto :goto_27

    :cond_2f
    move-object/from16 v40, v6

    .line 321
    iget-object v5, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v5, :cond_30

    .line 323
    iget-object v6, v5, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object/from16 v42, v5

    goto :goto_26

    :cond_30
    move-object/from16 v42, v5

    move-object/from16 v6, v23

    .line 325
    :goto_26
    iget-object v5, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object/from16 v16, v5

    move-object/from16 v5, v42

    :goto_27
    if-eqz v5, :cond_31

    .line 329
    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v5

    add-int/2addr v3, v5

    :cond_31
    if-eqz v7, :cond_32

    .line 332
    iget-object v5, v7, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v5

    add-int/2addr v0, v5

    :cond_32
    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    if-eqz v6, :cond_36

    if-eqz v16, :cond_36

    if-ne v8, v12, :cond_33

    .line 337
    iget-object v0, v12, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v0

    :cond_33
    move v5, v0

    if-ne v8, v15, :cond_34

    .line 341
    iget-object v0, v15, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v0

    move/from16 v17, v0

    goto :goto_28

    :cond_34
    move/from16 v17, v3

    :goto_28
    if-eqz v38, :cond_35

    const/16 v20, 0x8

    goto :goto_29

    :cond_35
    const/16 v20, 0x5

    :goto_29
    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v9

    move v3, v5

    const/16 v21, 0x8

    move-object v5, v6

    move-object/from16 v22, v40

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, v17

    move-object/from16 v43, v13

    move-object/from16 v44, v14

    move/from16 v14, v21

    move-object v13, v8

    move/from16 v8, v20

    .line 347
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    goto :goto_2a

    :cond_36
    move-object/from16 v16, v7

    move-object/from16 v43, v13

    move-object/from16 v44, v14

    move-object/from16 v22, v40

    const/16 v14, 0x8

    goto/16 :goto_22

    .line 352
    :goto_2a
    invoke-virtual {v13}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v0

    if-eq v0, v14, :cond_37

    move-object v7, v13

    goto :goto_2b

    :cond_37
    move-object/from16 v7, v16

    :goto_2b
    move-object/from16 v8, v22

    move-object/from16 v13, v43

    move-object/from16 v14, v44

    goto/16 :goto_20

    :cond_38
    move-object/from16 v43, v13

    move-object/from16 v44, v14

    const/16 v14, 0x8

    if-eqz v19, :cond_4a

    if-eqz v12, :cond_4a

    .line 361
    iget v0, v1, Landroidx/constraintlayout/b/a/c;->j:I

    if-lez v0, :cond_39

    iget v0, v1, Landroidx/constraintlayout/b/a/c;->i:I

    iget v1, v1, Landroidx/constraintlayout/b/a/c;->j:I

    if-ne v0, v1, :cond_39

    const/16 v38, 0x1

    goto :goto_2c

    :cond_39
    const/16 v38, 0x0

    :goto_2c
    move-object v8, v12

    move-object v13, v8

    :goto_2d
    if-eqz v13, :cond_46

    .line 363
    iget-object v0, v13, Landroidx/constraintlayout/b/a/e;->ah:[Landroidx/constraintlayout/b/a/e;

    aget-object v0, v0, p2

    :goto_2e
    if-eqz v0, :cond_3a

    .line 364
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v1

    if-ne v1, v14, :cond_3a

    .line 365
    iget-object v0, v0, Landroidx/constraintlayout/b/a/e;->ah:[Landroidx/constraintlayout/b/a/e;

    aget-object v0, v0, p2

    goto :goto_2e

    :cond_3a
    if-eq v13, v12, :cond_44

    if-eq v13, v15, :cond_44

    if-eqz v0, :cond_44

    if-ne v0, v15, :cond_3b

    move-object/from16 v7, v23

    goto :goto_2f

    :cond_3b
    move-object v7, v0

    .line 371
    :goto_2f
    iget-object v0, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    .line 372
    iget-object v1, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 373
    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v2, :cond_3c

    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 374
    :cond_3c
    iget-object v2, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 378
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v0

    .line 379
    iget-object v4, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    if-eqz v7, :cond_3e

    .line 382
    iget-object v5, v7, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, p3

    .line 383
    iget-object v6, v5, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 384
    iget-object v14, v5, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v14, :cond_3d

    iget-object v14, v5, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v14, v14, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_31

    :cond_3d
    move-object/from16 v14, v23

    goto :goto_31

    .line 386
    :cond_3e
    iget-object v5, v15, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, p3

    if-eqz v5, :cond_3f

    .line 388
    iget-object v6, v5, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_30

    :cond_3f
    move-object/from16 v6, v23

    .line 390
    :goto_30
    iget-object v14, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v14, v14, v3

    iget-object v14, v14, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    :goto_31
    if-eqz v5, :cond_40

    .line 394
    invoke-virtual {v5}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v5

    add-int/2addr v4, v5

    :cond_40
    move/from16 v16, v4

    if-eqz v8, :cond_41

    .line 397
    iget-object v4, v8, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v3

    add-int/2addr v0, v3

    :cond_41
    move v3, v0

    if-eqz v38, :cond_42

    const/16 v17, 0x8

    goto :goto_32

    :cond_42
    const/16 v17, 0x4

    :goto_32
    if-eqz v1, :cond_43

    if-eqz v2, :cond_43

    if-eqz v6, :cond_43

    if-eqz v14, :cond_43

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v9

    move-object v5, v6

    move-object v6, v14

    move-object v14, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    const/16 v20, 0x4

    move/from16 v8, v17

    .line 404
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    goto :goto_33

    :cond_43
    move-object v14, v7

    move-object/from16 v16, v8

    const/16 v20, 0x4

    goto :goto_33

    :cond_44
    move-object/from16 v16, v8

    const/16 v20, 0x4

    move-object v14, v0

    .line 409
    :goto_33
    invoke-virtual {v13}, Landroidx/constraintlayout/b/a/e;->w()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_45

    move-object v8, v13

    goto :goto_34

    :cond_45
    move-object/from16 v8, v16

    :goto_34
    move-object v13, v14

    move v14, v1

    goto/16 :goto_2d

    .line 414
    :cond_46
    iget-object v0, v12, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    move-object/from16 v1, v44

    .line 415
    iget-object v1, v1, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    .line 416
    iget-object v2, v15, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v10, v2, v3

    move-object/from16 v13, v43

    .line 417
    iget-object v2, v13, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v2, v3

    iget-object v14, v2, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v1, :cond_49

    if-eq v12, v15, :cond_48

    .line 421
    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v1, v1, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v0

    const/4 v8, 0x5

    invoke-virtual {v9, v2, v1, v0, v8}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    :cond_47
    move-object/from16 v45, v13

    move v13, v8

    goto :goto_35

    :cond_48
    const/4 v8, 0x5

    if-eqz v14, :cond_47

    .line 423
    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v3, v1, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v10, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v7, v14, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    .line 424
    invoke-virtual {v10}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v16

    const/16 v17, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, v16

    move-object/from16 v45, v13

    move v13, v8

    move/from16 v8, v17

    .line 423
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    goto :goto_35

    :cond_49
    move-object/from16 v45, v13

    const/4 v13, 0x5

    :goto_35
    if-eqz v14, :cond_4b

    if-eq v12, v15, :cond_4b

    .line 428
    iget-object v0, v10, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v1, v14, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    invoke-virtual {v10}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v9, v0, v1, v2, v13}, Landroidx/constraintlayout/b/d;->c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;

    goto :goto_36

    :cond_4a
    move-object/from16 v45, v43

    :cond_4b
    :goto_36
    if-nez v18, :cond_4c

    if-eqz v19, :cond_53

    :cond_4c
    if-eqz v12, :cond_53

    if-eq v12, v15, :cond_53

    .line 435
    iget-object v0, v12, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    .line 436
    iget-object v1, v15, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 437
    iget-object v3, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v3, :cond_4d

    iget-object v3, v0, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v3, v3, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_37

    :cond_4d
    move-object/from16 v3, v23

    .line 438
    :goto_37
    iget-object v4, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v4, :cond_4e

    iget-object v4, v1, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    move-object v5, v4

    :goto_38
    move-object/from16 v4, v45

    goto :goto_39

    :cond_4e
    move-object/from16 v5, v23

    goto :goto_38

    :goto_39
    if-eq v4, v15, :cond_50

    .line 440
    iget-object v5, v4, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v5, v5, v2

    .line 441
    iget-object v6, v5, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    if-eqz v6, :cond_4f

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->c:Landroidx/constraintlayout/b/a/d;

    iget-object v5, v5, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    goto :goto_3a

    :cond_4f
    move-object/from16 v5, v23

    :cond_50
    :goto_3a
    if-ne v12, v15, :cond_51

    .line 444
    iget-object v0, v12, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v0, v0, p3

    .line 445
    iget-object v1, v12, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v1, v1, v2

    :cond_51
    if-eqz v3, :cond_53

    if-eqz v5, :cond_53

    const/high16 v6, 0x3f000000    # 0.5f

    .line 449
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v7

    if-nez v15, :cond_52

    move-object v15, v4

    .line 454
    :cond_52
    iget-object v4, v15, Landroidx/constraintlayout/b/a/e;->E:[Landroidx/constraintlayout/b/a/d;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/d;->j()I

    move-result v8

    .line 455
    iget-object v2, v0, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    iget-object v10, v1, Landroidx/constraintlayout/b/a/d;->f:Landroidx/constraintlayout/b/h;

    const/4 v11, 0x5

    move-object v0, v9

    move-object v1, v2

    move-object v2, v3

    move v3, v7

    move v4, v6

    move-object v6, v10

    move v7, v8

    move v8, v11

    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V

    :cond_53
    return-void
.end method

.method public static a(Landroidx/constraintlayout/b/a/f;Landroidx/constraintlayout/b/d;Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/b/a/f;",
            "Landroidx/constraintlayout/b/d;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/b/a/e;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 52
    iget v1, p0, Landroidx/constraintlayout/b/a/f;->au:I

    .line 53
    iget-object v2, p0, Landroidx/constraintlayout/b/a/f;->ax:[Landroidx/constraintlayout/b/a/c;

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 56
    iget v2, p0, Landroidx/constraintlayout/b/a/f;->av:I

    .line 57
    iget-object v3, p0, Landroidx/constraintlayout/b/a/f;->aw:[Landroidx/constraintlayout/b/a/c;

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    :goto_0
    if-ge v0, v3, :cond_3

    .line 61
    aget-object v4, v2, v0

    .line 64
    invoke-virtual {v4}, Landroidx/constraintlayout/b/a/c;->a()V

    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    .line 65
    iget-object v5, v4, Landroidx/constraintlayout/b/a/c;->a:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    :cond_1
    invoke-static {p0, p1, p3, v1, v4}, Landroidx/constraintlayout/b/a/b;->a(Landroidx/constraintlayout/b/a/f;Landroidx/constraintlayout/b/d;IILandroidx/constraintlayout/b/a/c;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
