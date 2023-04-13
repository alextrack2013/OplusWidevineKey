.class public Landroidx/constraintlayout/widget/f;
.super Landroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/f$a;
    }
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/e;


# virtual methods
.method protected a()Landroidx/constraintlayout/widget/f$a;
    .locals 1

    .line 136
    new-instance p0, Landroidx/constraintlayout/widget/f$a;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/constraintlayout/widget/f$a;-><init>(II)V

    return-object p0
.end method

.method public a(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/f$a;
    .locals 1

    .line 62
    new-instance v0, Landroidx/constraintlayout/widget/f$a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/f;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/f$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/f;->a()Landroidx/constraintlayout/widget/f$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/f;->a(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/f$a;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 148
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/e;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/constraintlayout/widget/f;->a:Landroidx/constraintlayout/widget/e;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/f;->a:Landroidx/constraintlayout/widget/e;

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/f;->a:Landroidx/constraintlayout/widget/e;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/e;->a(Landroidx/constraintlayout/widget/f;)V

    .line 157
    iget-object p0, p0, Landroidx/constraintlayout/widget/f;->a:Landroidx/constraintlayout/widget/e;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method
