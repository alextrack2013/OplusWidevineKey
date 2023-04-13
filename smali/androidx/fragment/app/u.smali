.class Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/u$b;,
        Landroidx/fragment/app/u$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroidx/fragment/app/w;

.field private static final c:Landroidx/fragment/app/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/u;->a:[I

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/fragment/app/v;

    invoke-direct {v0}, Landroidx/fragment/app/v;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/w;

    .line 80
    invoke-static {}, Landroidx/fragment/app/u;->a()Landroidx/fragment/app/w;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/w;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method static a(Landroidx/b/a;Landroidx/fragment/app/u$b;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/u$b;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 971
    iget-object p1, p1, Landroidx/fragment/app/u$b;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 972
    iget-object p2, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 974
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 975
    iget-object p1, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 976
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 977
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 978
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_4

    .line 182
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 183
    invoke-virtual {v1, p0}, Landroidx/fragment/app/a;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 186
    :cond_0
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 187
    iget-object v3, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 188
    iget-object v3, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 193
    iget-object v1, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_1

    .line 195
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 196
    iget-object v1, v1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 199
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v6}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 203
    invoke-virtual {v0, v5, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 205
    :cond_2
    invoke-virtual {v0, v5, v6}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static a(Landroidx/fragment/app/w;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/u$b;)Landroidx/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/u$b;",
            ")",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 898
    iget-object v0, p3, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    .line 899
    invoke-virtual {v0}, Landroidx/fragment/app/c;->s()Landroid/view/View;

    move-result-object v1

    .line 900
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_3

    .line 904
    :cond_0
    new-instance p2, Landroidx/b/a;

    invoke-direct {p2}, Landroidx/b/a;-><init>()V

    .line 905
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/w;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 909
    iget-object p0, p3, Landroidx/fragment/app/u$b;->c:Landroidx/fragment/app/a;

    .line 910
    iget-boolean p3, p3, Landroidx/fragment/app/u$b;->b:Z

    if-eqz p3, :cond_1

    .line 911
    invoke-virtual {v0}, Landroidx/fragment/app/c;->ab()Landroidx/core/app/g;

    move-result-object p3

    .line 912
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/c;->aa()Landroidx/core/app/g;

    move-result-object p3

    .line 915
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 919
    invoke-virtual {p2, p0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    .line 920
    invoke-virtual {p1}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 923
    invoke-virtual {p3, p0, p2}, Landroidx/core/app/g;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 924
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_6

    .line 925
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 926
    invoke-virtual {p2, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 928
    invoke-static {p1, v0}, Landroidx/fragment/app/u;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 930
    invoke-virtual {p1, v0}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 932
    :cond_3
    invoke-static {v1}, Landroidx/core/g/t;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 933
    invoke-static {p1, v0}, Landroidx/fragment/app/u;->a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 935
    invoke-static {v1}, Landroidx/core/g/t;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 940
    :cond_5
    invoke-static {p1, p2}, Landroidx/fragment/app/u;->a(Landroidx/b/a;Landroidx/b/a;)V

    :cond_6
    return-object p2

    .line 901
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/u$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/u$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/u$b;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/u$b;",
            ">;I)",
            "Landroidx/fragment/app/u$b;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1281
    new-instance p0, Landroidx/fragment/app/u$b;

    invoke-direct {p0}, Landroidx/fragment/app/u$b;-><init>()V

    .line 1282
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static a()Landroidx/fragment/app/w;
    .locals 3

    :try_start_0
    const-string v0, "androidx.transition.FragmentTransitionSupport"

    .line 85
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Landroidx/fragment/app/c;Landroidx/fragment/app/c;)Landroidx/fragment/app/w;
    .locals 2

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/c;->F()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->E()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->I()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 493
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 497
    invoke-virtual {p1}, Landroidx/fragment/app/c;->D()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 499
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/c;->G()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 503
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/c;->H()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 507
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 514
    :cond_6
    sget-object p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/w;

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/w;

    invoke-static {p0, v0}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 515
    sget-object p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/w;

    return-object p0

    .line 517
    :cond_7
    sget-object p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/w;

    if-eqz p0, :cond_8

    sget-object p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/w;

    invoke-static {p0, v0}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 518
    sget-object p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/w;

    return-object p0

    .line 520
    :cond_8
    sget-object p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/w;

    if-nez p0, :cond_a

    sget-object p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/w;

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_9
    return-object p1

    .line 521
    :cond_a
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/fragment/app/w;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/u$b;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v8, p7

    .line 618
    iget-object v9, v7, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    .line 619
    iget-object v10, v7, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    if-eqz v9, :cond_0

    .line 621
    invoke-virtual {v9}, Landroidx/fragment/app/c;->t()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v9, :cond_9

    if-nez v10, :cond_1

    goto/16 :goto_3

    .line 627
    :cond_1
    iget-boolean v11, v7, Landroidx/fragment/app/u$b;->b:Z

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_0

    .line 629
    :cond_2
    invoke-static {v6, v9, v10, v11}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v5

    .line 631
    :goto_0
    invoke-static {v6, v1, v5, v7}, Landroidx/fragment/app/u;->b(Landroidx/fragment/app/w;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/u$b;)Landroidx/b/a;

    move-result-object v12

    .line 634
    invoke-static {v6, v1, v5, v7}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/u$b;)Landroidx/b/a;

    move-result-object v13

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_3

    .line 640
    invoke-virtual {v12}, Landroidx/b/a;->clear()V

    :cond_3
    if-eqz v13, :cond_4

    .line 643
    invoke-virtual {v13}, Landroidx/b/a;->clear()V

    :cond_4
    move-object v14, v4

    goto :goto_1

    .line 647
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 646
    invoke-static {v2, v12, v14}, Landroidx/fragment/app/u;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v1

    .line 648
    invoke-static {v3, v13, v1}, Landroidx/fragment/app/u;->a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V

    move-object v14, v5

    :goto_1
    if-nez v8, :cond_6

    if-nez p8, :cond_6

    if-nez v14, :cond_6

    return-object v4

    :cond_6
    const/4 v1, 0x1

    .line 657
    invoke-static {v9, v10, v11, v12, v1}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/c;ZLandroidx/b/a;Z)V

    if-eqz v14, :cond_8

    .line 662
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v6, v14, v0, v2}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 665
    iget-boolean v4, v7, Landroidx/fragment/app/u$b;->e:Z

    .line 666
    iget-object v15, v7, Landroidx/fragment/app/u$b;->f:Landroidx/fragment/app/a;

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p8

    move-object v3, v12

    move-object v5, v15

    .line 667
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    .line 669
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 670
    invoke-static {v13, v7, v8, v11}, Landroidx/fragment/app/u;->a(Landroidx/b/a;Landroidx/fragment/app/u$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 673
    invoke-virtual {v6, v8, v0}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_7
    move-object v7, v0

    move-object v5, v1

    goto :goto_2

    :cond_8
    move-object v5, v4

    move-object v7, v5

    .line 680
    :goto_2
    new-instance v8, Landroidx/fragment/app/u$5;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v13

    invoke-direct/range {v0 .. v7}, Landroidx/fragment/app/u$5;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/c;ZLandroidx/b/a;Landroid/view/View;Landroidx/fragment/app/w;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroidx/core/g/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/g/r;

    return-object v14

    :cond_9
    :goto_3
    return-object v4
.end method

.method private static a(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Landroidx/fragment/app/c;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 553
    invoke-virtual {p2}, Landroidx/fragment/app/c;->I()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/c;->H()Ljava/lang/Object;

    move-result-object p1

    .line 552
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 555
    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 567
    invoke-virtual {p1}, Landroidx/fragment/app/c;->G()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/c;->D()Ljava/lang/Object;

    move-result-object p1

    .line 566
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/c;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1102
    invoke-virtual {p4}, Landroidx/fragment/app/c;->K()Z

    move-result p4

    goto :goto_0

    .line 1103
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/c;->J()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 1113
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 1118
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/w;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static a(Landroidx/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Landroidx/b/a;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 951
    invoke-virtual {p0, v1}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    invoke-virtual {p0, v1}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/c;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-virtual {p2}, Landroidx/fragment/app/c;->s()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1066
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/w;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1069
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1071
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1072
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static a(Landroidx/b/a;Landroidx/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1016
    invoke-virtual {p0}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1017
    invoke-virtual {p0, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1018
    invoke-virtual {p1, v1}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1019
    invoke-virtual {p0, v0}, Landroidx/b/a;->d(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/u$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1137
    iget-object v3, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/t$a;

    .line 1138
    invoke-static {p0, v3, p1, v1, p2}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/t$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/a;Landroidx/fragment/app/t$a;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/t$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/u$b;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1183
    iget-object v0, p1, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-nez v0, :cond_0

    return-void

    .line 1187
    :cond_0
    iget v1, v0, Landroidx/fragment/app/c;->w:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 1191
    sget-object v2, Landroidx/fragment/app/u;->a:[I

    iget p1, p1, Landroidx/fragment/app/t$a;->a:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/fragment/app/t$a;->a:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    packed-switch p1, :pswitch_data_0

    move p1, v2

    move v4, p1

    move v5, v4

    goto/16 :goto_6

    :pswitch_0
    if-eqz p4, :cond_3

    .line 1199
    iget-boolean p1, v0, Landroidx/fragment/app/c;->L:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Landroidx/fragment/app/c;->y:Z

    if-nez p1, :cond_9

    iget-boolean p1, v0, Landroidx/fragment/app/c;->k:Z

    if-eqz p1, :cond_9

    goto :goto_4

    .line 1201
    :cond_3
    iget-boolean p1, v0, Landroidx/fragment/app/c;->y:Z

    goto/16 :goto_5

    :pswitch_1
    if-eqz p4, :cond_4

    .line 1216
    iget-boolean p1, v0, Landroidx/fragment/app/c;->L:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Landroidx/fragment/app/c;->k:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Landroidx/fragment/app/c;->y:Z

    if-eqz p1, :cond_5

    :goto_1
    goto :goto_2

    .line 1218
    :cond_4
    iget-boolean p1, v0, Landroidx/fragment/app/c;->k:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Landroidx/fragment/app/c;->y:Z

    if-nez p1, :cond_5

    goto :goto_1

    :pswitch_2
    if-eqz p4, :cond_6

    .line 1225
    iget-boolean p1, v0, Landroidx/fragment/app/c;->k:Z

    if-nez p1, :cond_5

    iget-object p1, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-object p1, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    .line 1226
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget p1, v0, Landroidx/fragment/app/c;->M:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_5

    :goto_2
    move p1, v3

    goto :goto_3

    :cond_5
    move p1, v2

    goto :goto_3

    .line 1229
    :cond_6
    iget-boolean p1, v0, Landroidx/fragment/app/c;->k:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v0, Landroidx/fragment/app/c;->y:Z

    if-nez p1, :cond_5

    goto :goto_2

    :goto_3
    move v5, p1

    move p1, v2

    move v4, v3

    goto :goto_6

    :cond_7
    :pswitch_3
    if-eqz p4, :cond_8

    .line 1208
    iget-boolean p1, v0, Landroidx/fragment/app/c;->K:Z

    goto :goto_5

    .line 1210
    :cond_8
    iget-boolean p1, v0, Landroidx/fragment/app/c;->k:Z

    if-nez p1, :cond_9

    iget-boolean p1, v0, Landroidx/fragment/app/c;->y:Z

    if-nez p1, :cond_9

    :goto_4
    move p1, v3

    goto :goto_5

    :cond_9
    move p1, v2

    :goto_5
    move v4, v2

    move v5, v4

    move v2, p1

    move p1, v3

    .line 1234
    :goto_6
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/u$b;

    if-eqz v2, :cond_a

    .line 1237
    invoke-static {v6, p2, v1}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/u$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/u$b;

    move-result-object v6

    .line 1238
    iput-object v0, v6, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    .line 1239
    iput-boolean p3, v6, Landroidx/fragment/app/u$b;->b:Z

    .line 1240
    iput-object p0, v6, Landroidx/fragment/app/u$b;->c:Landroidx/fragment/app/a;

    :cond_a
    const/4 v2, 0x0

    if-nez p4, :cond_c

    if-eqz p1, :cond_c

    if-eqz v6, :cond_b

    .line 1243
    iget-object p1, v6, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    if-ne p1, v0, :cond_b

    .line 1244
    iput-object v2, v6, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    .line 1251
    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    .line 1252
    iget v7, v0, Landroidx/fragment/app/c;->b:I

    if-ge v7, v3, :cond_c

    iget v7, p1, Landroidx/fragment/app/m;->b:I

    if-lt v7, v3, :cond_c

    iget-boolean v7, p0, Landroidx/fragment/app/a;->s:Z

    if-nez v7, :cond_c

    .line 1254
    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->h(Landroidx/fragment/app/c;)V

    .line 1255
    invoke-virtual {p1, v0, v3}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    :cond_c
    if-eqz v5, :cond_e

    if-eqz v6, :cond_d

    .line 1258
    iget-object p1, v6, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    if-nez p1, :cond_e

    .line 1260
    :cond_d
    invoke-static {v6, p2, v1}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/u$b;Landroid/util/SparseArray;I)Landroidx/fragment/app/u$b;

    move-result-object v6

    .line 1261
    iput-object v0, v6, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    .line 1262
    iput-boolean p3, v6, Landroidx/fragment/app/u$b;->e:Z

    .line 1263
    iput-object p0, v6, Landroidx/fragment/app/u$b;->f:Landroidx/fragment/app/a;

    :cond_e
    if-nez p4, :cond_f

    if-eqz v4, :cond_f

    if-eqz v6, :cond_f

    .line 1266
    iget-object p0, v6, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    if-ne p0, v0, :cond_f

    .line 1268
    iput-object v2, v6, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static a(Landroidx/fragment/app/c;Landroidx/fragment/app/c;ZLandroidx/b/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/c;",
            "Landroidx/fragment/app/c;",
            "Z",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1039
    invoke-virtual {p1}, Landroidx/fragment/app/c;->aa()Landroidx/core/app/g;

    move-result-object p0

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->aa()Landroidx/core/app/g;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 1042
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    .line 1044
    :cond_1
    invoke-virtual {p3}, Landroidx/b/a;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1046
    invoke-virtual {p3, v0}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    invoke-virtual {p3, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    if-eqz p4, :cond_3

    .line 1050
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/g;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 1052
    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Landroidx/core/app/g;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static a(Landroidx/fragment/app/m;ILandroidx/fragment/app/u$b;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$a;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/m;",
            "I",
            "Landroidx/fragment/app/u$b;",
            "Landroid/view/View;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/u$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    .line 232
    iget-object v1, v0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v0, v0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v11, v0

    if-nez v11, :cond_1

    return-void

    .line 238
    :cond_1
    iget-object v12, v4, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    .line 239
    iget-object v13, v4, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    .line 240
    invoke-static {v13, v12}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/c;)Landroidx/fragment/app/w;

    move-result-object v14

    if-nez v14, :cond_2

    return-void

    .line 244
    :cond_2
    iget-boolean v15, v4, Landroidx/fragment/app/u$b;->b:Z

    .line 245
    iget-boolean v0, v4, Landroidx/fragment/app/u$b;->e:Z

    .line 247
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-static {v14, v12, v15}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v6

    .line 250
    invoke-static {v14, v13, v0}, Landroidx/fragment/app/u;->b(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v14

    move-object v1, v11

    move-object v2, v9

    move-object/from16 v3, p4

    move-object/from16 v16, v5

    move-object v5, v7

    move-object/from16 v17, v6

    move-object v6, v8

    move-object/from16 v18, v11

    move-object v11, v7

    move-object/from16 v7, v17

    move-object v10, v8

    move-object/from16 v8, v16

    .line 252
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v6, v17

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    move-object/from16 v7, v16

    if-nez v7, :cond_4

    return-void

    :cond_3
    move-object/from16 v7, v16

    .line 261
    :cond_4
    invoke-static {v14, v7, v13, v11, v9}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    .line 264
    invoke-static {v14, v6, v12, v10, v9}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v0, 0x4

    .line 267
    invoke-static {v9, v0}, Landroidx/fragment/app/u;->a(Ljava/util/ArrayList;I)V

    move-object v0, v14

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v12

    move-object v12, v5

    move v5, v15

    .line 269
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v15

    if-eqz v13, :cond_6

    if-eqz v12, :cond_6

    .line 273
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 274
    :cond_5
    new-instance v0, Landroidx/core/c/a;

    invoke-direct {v0}, Landroidx/core/c/a;-><init>()V

    move-object/from16 v1, p5

    .line 275
    invoke-interface {v1, v13, v0}, Landroidx/fragment/app/u$a;->a(Landroidx/fragment/app/c;Landroidx/core/c/a;)V

    .line 276
    new-instance v2, Landroidx/fragment/app/u$1;

    invoke-direct {v2, v1, v13, v0}, Landroidx/fragment/app/u$1;-><init>(Landroidx/fragment/app/u$a;Landroidx/fragment/app/c;Landroidx/core/c/a;)V

    invoke-virtual {v14, v13, v15, v0, v2}, Landroidx/fragment/app/w;->a(Landroidx/fragment/app/c;Ljava/lang/Object;Landroidx/core/c/a;Ljava/lang/Runnable;)V

    :cond_6
    if-eqz v15, :cond_7

    .line 285
    invoke-static {v14, v7, v13, v12}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/c;Ljava/util/ArrayList;)V

    .line 287
    invoke-virtual {v14, v10}, Landroidx/fragment/app/w;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v0, v14

    move-object v1, v15

    move-object v2, v6

    move-object v3, v9

    move-object v4, v7

    move-object v5, v12

    move-object v6, v8

    move-object v7, v10

    .line 288
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    .line 291
    invoke-virtual {v14, v0, v15}, Landroidx/fragment/app/w;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v1, v14

    move-object v2, v0

    move-object v3, v11

    move-object v4, v10

    move-object v5, v13

    move-object/from16 v6, p4

    .line 292
    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/w;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 294
    invoke-static {v9, v0}, Landroidx/fragment/app/u;->a(Ljava/util/ArrayList;I)V

    .line 295
    invoke-virtual {v14, v8, v11, v10}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method static a(Landroidx/fragment/app/m;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLandroidx/fragment/app/u$a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/m;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Landroidx/fragment/app/u$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    .line 124
    iget v0, v6, Landroidx/fragment/app/m;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    move/from16 v0, p3

    :goto_0
    if-ge v0, v9, :cond_2

    .line 131
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 132
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-static {v1, v11, v10}, Landroidx/fragment/app/u;->b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 136
    :cond_1
    invoke-static {v1, v11, v10}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    new-instance v12, Landroid/view/View;

    iget-object v0, v6, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v0, 0x0

    move v14, v0

    :goto_2
    if-ge v14, v13, :cond_4

    .line 144
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move/from16 v15, p3

    .line 145
    invoke-static {v1, v7, v8, v15, v9}, Landroidx/fragment/app/u;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroidx/b/a;

    move-result-object v4

    .line 149
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/u$b;

    if-eqz v10, :cond_3

    move-object v0, v6

    move-object v3, v12

    move-object/from16 v5, p6

    .line 152
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/m;ILandroidx/fragment/app/u$b;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$a;)V

    goto :goto_3

    :cond_3
    move-object v0, v6

    move-object v3, v12

    move-object/from16 v5, p6

    .line 155
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/u;->b(Landroidx/fragment/app/m;ILandroidx/fragment/app/u$b;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$a;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static a(Landroidx/fragment/app/w;Landroid/view/ViewGroup;Landroidx/fragment/app/c;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Landroid/view/ViewGroup;",
            "Landroidx/fragment/app/c;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 450
    new-instance v9, Landroidx/fragment/app/u$4;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/fragment/app/u$4;-><init>(Ljava/lang/Object;Landroidx/fragment/app/w;Landroid/view/View;Landroidx/fragment/app/c;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object v0, p1

    invoke-static {v0, v9}, Landroidx/core/g/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/g/r;

    return-void
.end method

.method private static a(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/c;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/c;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 308
    iget-boolean v0, p2, Landroidx/fragment/app/c;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/c;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Landroidx/fragment/app/c;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 310
    invoke-virtual {p2, v0}, Landroidx/fragment/app/c;->g(Z)V

    .line 312
    invoke-virtual {p2}, Landroidx/fragment/app/c;->s()Landroid/view/View;

    move-result-object v0

    .line 311
    invoke-virtual {p0, p1, v0, p3}, Landroidx/fragment/app/w;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 328
    iget-object p0, p2, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    .line 329
    new-instance p1, Landroidx/fragment/app/u$2;

    invoke-direct {p1, p3}, Landroidx/fragment/app/u$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1}, Landroidx/core/g/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/g/r;

    :cond_0
    return-void
.end method

.method private static a(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .line 995
    iget-object v0, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 996
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 997
    iget-object p4, p5, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 998
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 999
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1000
    :goto_0
    invoke-virtual {p3, p4}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 1001
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 1004
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1087
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1088
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1089
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroidx/b/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 704
    invoke-virtual {p1}, Landroidx/b/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 705
    invoke-virtual {p1, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 706
    invoke-static {v1}, Landroidx/core/g/t;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroidx/fragment/app/w;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 528
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Landroidx/fragment/app/w;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/u$b;)Landroidx/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/u$b;",
            ")",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 840
    invoke-virtual {p1}, Landroidx/b/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 844
    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    .line 845
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 846
    invoke-virtual {p2}, Landroidx/fragment/app/c;->t()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/w;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 850
    iget-object p0, p3, Landroidx/fragment/app/u$b;->f:Landroidx/fragment/app/a;

    .line 851
    iget-boolean p3, p3, Landroidx/fragment/app/u$b;->e:Z

    if-eqz p3, :cond_1

    .line 852
    invoke-virtual {p2}, Landroidx/fragment/app/c;->aa()Landroidx/core/app/g;

    move-result-object p2

    .line 853
    iget-object p0, p0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/c;->ab()Landroidx/core/app/g;

    move-result-object p2

    .line 856
    iget-object p0, p0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 860
    invoke-virtual {v0, p0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p2, :cond_5

    .line 863
    invoke-virtual {p2, p0, v0}, Landroidx/core/app/g;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 864
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    .line 865
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 866
    invoke-virtual {v0, p3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 868
    invoke-virtual {p1, p3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 869
    :cond_3
    invoke-static {v1}, Landroidx/core/g/t;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 870
    invoke-virtual {p1, p3}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 871
    invoke-static {v1}, Landroidx/core/g/t;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 875
    :cond_5
    invoke-virtual {v0}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/b/a;->a(Ljava/util/Collection;)Z

    :cond_6
    return-object v0

    .line 841
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroidx/b/a;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroidx/fragment/app/w;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/u$b;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    .line 747
    iget-object v8, v7, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    .line 748
    iget-object v9, v7, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    const/4 v0, 0x0

    if-eqz v8, :cond_6

    if-nez v9, :cond_0

    goto/16 :goto_3

    .line 754
    :cond_0
    iget-boolean v12, v7, Landroidx/fragment/app/u$b;->b:Z

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v13, p3

    move-object v1, v0

    goto :goto_0

    .line 756
    :cond_1
    invoke-static {v6, v8, v9, v12}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v13, p3

    .line 758
    :goto_0
    invoke-static {v6, v13, v1, v7}, Landroidx/fragment/app/u;->b(Landroidx/fragment/app/w;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/u$b;)Landroidx/b/a;

    move-result-object v3

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroidx/b/a;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v14, v0

    goto :goto_1

    .line 764
    :cond_2
    invoke-virtual {v3}, Landroidx/b/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v1

    :goto_1
    if-nez v11, :cond_3

    if-nez p8, :cond_3

    if-nez v14, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x1

    .line 772
    invoke-static {v8, v9, v12, v3, v1}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/c;ZLandroidx/b/a;Z)V

    if-eqz v14, :cond_4

    .line 776
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v5, p2

    .line 777
    invoke-virtual {v6, v14, v5, v10}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 779
    iget-boolean v4, v7, Landroidx/fragment/app/u$b;->e:Z

    .line 780
    iget-object v1, v7, Landroidx/fragment/app/u$b;->f:Landroidx/fragment/app/a;

    move-object v0, v6

    move-object/from16 v16, v1

    move-object v1, v14

    move-object/from16 v2, p8

    move-object/from16 v5, v16

    .line 781
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Landroidx/b/a;ZLandroidx/fragment/app/a;)V

    if-eqz v11, :cond_5

    .line 784
    invoke-virtual {v6, v11, v15}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move-object v15, v0

    .line 792
    :cond_5
    :goto_2
    new-instance v5, Landroidx/fragment/app/u$6;

    move-object v0, v5

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v7

    move-object v13, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object v7, v8

    move-object v8, v9

    move v9, v12

    move-object v12, v15

    invoke-direct/range {v0 .. v12}, Landroidx/fragment/app/u$6;-><init>(Landroidx/fragment/app/w;Landroidx/b/a;Ljava/lang/Object;Landroidx/fragment/app/u$b;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/c;Landroidx/fragment/app/c;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroidx/core/g/r;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/g/r;

    return-object v14

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static b(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Z)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 580
    invoke-virtual {p1}, Landroidx/fragment/app/c;->E()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/c;->F()Ljava/lang/Object;

    move-result-object p1

    .line 579
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/fragment/app/a;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/u$b;",
            ">;Z)V"
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1157
    iget-object v2, p0, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/t$a;

    .line 1158
    invoke-static {p0, v2, p1, v1, p2}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/a;Landroidx/fragment/app/t$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroidx/fragment/app/m;ILandroidx/fragment/app/u$b;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$a;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/m;",
            "I",
            "Landroidx/fragment/app/u$b;",
            "Landroid/view/View;",
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/fragment/app/u$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 357
    iget-object v1, v0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v0, v0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/f;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v14, v0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-nez v14, :cond_1

    return-void

    .line 363
    :cond_1
    iget-object v15, v9, Landroidx/fragment/app/u$b;->a:Landroidx/fragment/app/c;

    .line 364
    iget-object v8, v9, Landroidx/fragment/app/u$b;->d:Landroidx/fragment/app/c;

    .line 365
    invoke-static {v8, v15}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/c;Landroidx/fragment/app/c;)Landroidx/fragment/app/w;

    move-result-object v7

    if-nez v7, :cond_2

    return-void

    .line 369
    :cond_2
    iget-boolean v0, v9, Landroidx/fragment/app/u$b;->b:Z

    .line 370
    iget-boolean v1, v9, Landroidx/fragment/app/u$b;->e:Z

    .line 372
    invoke-static {v7, v15, v0}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v6

    .line 373
    invoke-static {v7, v8, v1}, Landroidx/fragment/app/u;->b(Landroidx/fragment/app/w;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v5

    .line 375
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v16, v3

    move-object v3, v11

    move-object/from16 v17, v4

    move-object v4, v9

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    move-object v13, v7

    move-object/from16 v7, v19

    move-object v11, v8

    move-object/from16 v8, v18

    .line 378
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/u;->b(Landroidx/fragment/app/w;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/b/a;Landroidx/fragment/app/u$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v8, v19

    if-nez v8, :cond_3

    if-nez v6, :cond_3

    move-object/from16 v0, v18

    if-nez v0, :cond_4

    return-void

    :cond_3
    move-object/from16 v0, v18

    :cond_4
    move-object/from16 v7, v17

    .line 387
    invoke-static {v13, v0, v11, v7, v10}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/c;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 390
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v20, v0

    goto :goto_2

    :cond_6
    :goto_1
    const/16 v20, 0x0

    .line 396
    :goto_2
    invoke-virtual {v13, v8, v10}, Landroidx/fragment/app/w;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 398
    iget-boolean v9, v9, Landroidx/fragment/app/u$b;->b:Z

    move-object v0, v13

    move-object v1, v8

    move-object/from16 v2, v20

    move-object v3, v6

    move-object v4, v15

    move-object v10, v5

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/c;Z)Ljava/lang/Object;

    move-result-object v9

    if-eqz v11, :cond_8

    if-eqz v10, :cond_8

    .line 402
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 403
    :cond_7
    new-instance v0, Landroidx/core/c/a;

    invoke-direct {v0}, Landroidx/core/c/a;-><init>()V

    .line 404
    invoke-interface {v12, v11, v0}, Landroidx/fragment/app/u$a;->a(Landroidx/fragment/app/c;Landroidx/core/c/a;)V

    .line 405
    new-instance v1, Landroidx/fragment/app/u$3;

    invoke-direct {v1, v12, v11, v0}, Landroidx/fragment/app/u$3;-><init>(Landroidx/fragment/app/u$a;Landroidx/fragment/app/c;Landroidx/core/c/a;)V

    invoke-virtual {v13, v11, v9, v0, v1}, Landroidx/fragment/app/w;->a(Landroidx/fragment/app/c;Ljava/lang/Object;Landroidx/core/c/a;Ljava/lang/Runnable;)V

    :cond_8
    if-eqz v9, :cond_9

    .line 414
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v13

    move-object v1, v9

    move-object v2, v8

    move-object v3, v11

    move-object/from16 v4, v20

    move-object v5, v10

    move-object/from16 v7, v16

    .line 415
    invoke-virtual/range {v0 .. v7}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object v5, v8

    move-object v6, v11

    move-object/from16 v7, v20

    move-object v8, v10

    .line 418
    invoke-static/range {v0 .. v8}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/w;Landroid/view/ViewGroup;Landroidx/fragment/app/c;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v1, v16

    move-object/from16 v0, p4

    .line 420
    invoke-virtual {v13, v14, v1, v0}, Landroidx/fragment/app/w;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 422
    invoke-virtual {v13, v14, v9}, Landroidx/fragment/app/w;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v13, v14, v1, v0}, Landroidx/fragment/app/w;->a(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    :cond_9
    return-void
.end method
