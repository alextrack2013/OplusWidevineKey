.class public Landroidx/constraintlayout/widget/i;
.super Landroid/view/View;
.source "Placeholder.java"


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:I


# virtual methods
.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 147
    iget v0, p0, Landroidx/constraintlayout/widget/i;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Landroidx/constraintlayout/widget/i;->c:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/i;->setVisibility(I)V

    .line 153
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/i;->a:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 154
    iget-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    .line 158
    iget-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/i;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 194
    iget-object p1, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 198
    iget-object p0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->j(I)V

    .line 201
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->S()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v0, v1, :cond_1

    .line 202
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/e;->o(I)V

    .line 204
    :cond_1
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->T()Landroidx/constraintlayout/b/a/e$a;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    if-eq v0, v1, :cond_2

    .line 205
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/e;->p(I)V

    .line 207
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/b/a/e;->j(I)V

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .line 113
    iget-object p0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    return-object p0
.end method

.method public getEmptyVisibility()I
    .locals 0

    .line 105
    iget p0, p0, Landroidx/constraintlayout/widget/i;->c:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 121
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->isInEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xdf

    .line 122
    invoke-virtual {p1, p0, p0, p0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 123
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/16 v0, 0xff

    const/16 v1, 0xd2

    .line 124
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 125
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 126
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 129
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 133
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v4, "?"

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v1, v5

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 138
    invoke-virtual {p1, v4, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 2

    .line 169
    iget v0, p0, Landroidx/constraintlayout/widget/i;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 176
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Landroidx/constraintlayout/widget/i;->b:Landroid/view/View;

    .line 180
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/widget/i;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 182
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/i;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 p1, 0x8

    .line 184
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEmptyVisibility(I)V
    .locals 0

    .line 96
    iput p1, p0, Landroidx/constraintlayout/widget/i;->c:I

    return-void
.end method
