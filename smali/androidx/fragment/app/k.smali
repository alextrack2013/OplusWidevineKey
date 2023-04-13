.class Landroidx/fragment/app/k;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private final a:Landroidx/fragment/app/m;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    .line 50
    const-class v0, Landroidx/fragment/app/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance p1, Landroidx/fragment/app/g;

    iget-object p0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-direct {p1, p3, p4, p0}, Landroidx/fragment/app/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/m;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    .line 58
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 59
    sget-object v1, Landroidx/fragment/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez p2, :cond_2

    .line 61
    sget p2, Landroidx/fragment/R$styleable;->Fragment_android_name:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 63
    :cond_2
    sget v2, Landroidx/fragment/R$styleable;->Fragment_android_id:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 64
    sget v4, Landroidx/fragment/R$styleable;->Fragment_android_tag:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_11

    .line 67
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/fragment/app/i;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v3, :cond_5

    if-ne v2, v3, :cond_5

    if-nez v4, :cond_5

    .line 75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eq v2, v3, :cond_6

    .line 83
    iget-object v0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/m;->c(I)Landroidx/fragment/app/c;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    if-eqz v4, :cond_7

    .line 85
    iget-object v0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/m;->a(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    if-eq p1, v3, :cond_8

    .line 88
    iget-object v0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/m;->c(I)Landroidx/fragment/app/c;

    move-result-object v0

    :cond_8
    const/4 v1, 0x2

    .line 91
    invoke-static {v1}, Landroidx/fragment/app/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateView: id=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fname="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " existing="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 97
    iget-object v0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->w()Landroidx/fragment/app/i;

    move-result-object v0

    .line 98
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 97
    invoke-virtual {v0, p3, p2}, Landroidx/fragment/app/i;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v0

    .line 99
    iput-boolean v1, v0, Landroidx/fragment/app/c;->m:Z

    if-eqz v2, :cond_a

    move p3, v2

    goto :goto_1

    :cond_a
    move p3, p1

    .line 100
    :goto_1
    iput p3, v0, Landroidx/fragment/app/c;->v:I

    .line 101
    iput p1, v0, Landroidx/fragment/app/c;->w:I

    .line 102
    iput-object v4, v0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    .line 103
    iput-boolean v1, v0, Landroidx/fragment/app/c;->n:Z

    .line 104
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    iput-object p1, v0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/m;

    .line 105
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    iget-object p1, p1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    iput-object p1, v0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    .line 106
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    iget-object p1, p1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object p1

    iget-object p3, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p4, p3}, Landroidx/fragment/app/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 108
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->i(Landroidx/fragment/app/c;)V

    .line 109
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->f(Landroidx/fragment/app/c;)V

    goto :goto_2

    .line 111
    :cond_b
    iget-boolean p3, v0, Landroidx/fragment/app/c;->n:Z

    if-eqz p3, :cond_c

    .line 114
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with another fragment for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_c
    iput-boolean v1, v0, Landroidx/fragment/app/c;->n:Z

    .line 122
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    iget-object p1, p1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    iput-object p1, v0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/j;

    .line 124
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    iget-object p1, p1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object p1

    iget-object p3, v0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p4, p3}, Landroidx/fragment/app/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 132
    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    iget p1, p1, Landroidx/fragment/app/m;->b:I

    if-ge p1, v1, :cond_d

    iget-boolean p1, v0, Landroidx/fragment/app/c;->m:Z

    if-eqz p1, :cond_d

    .line 133
    iget-object p0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/m;->a(Landroidx/fragment/app/c;I)V

    goto :goto_3

    .line 135
    :cond_d
    iget-object p0, p0, Landroidx/fragment/app/k;->a:Landroidx/fragment/app/m;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->f(Landroidx/fragment/app/c;)V

    .line 138
    :goto_3
    iget-object p0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-nez p0, :cond_e

    .line 139
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " did not create a view."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-eqz v2, :cond_f

    .line 143
    iget-object p0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setId(I)V

    .line 145
    :cond_f
    iget-object p0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_10

    .line 146
    iget-object p0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    :cond_10
    iget-object p0, v0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    return-object p0

    :cond_11
    :goto_4
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
