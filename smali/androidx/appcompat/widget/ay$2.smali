.class Landroidx/appcompat/widget/ay$2;
.super Landroidx/core/g/z;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ay;->a(IJ)Landroidx/core/g/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/appcompat/widget/ay;

.field private c:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ay;I)V
    .locals 0

    .line 569
    iput-object p1, p0, Landroidx/appcompat/widget/ay$2;->b:Landroidx/appcompat/widget/ay;

    iput p2, p0, Landroidx/appcompat/widget/ay$2;->a:I

    invoke-direct {p0}, Landroidx/core/g/z;-><init>()V

    const/4 p1, 0x0

    .line 570
    iput-boolean p1, p0, Landroidx/appcompat/widget/ay$2;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 574
    iget-object p0, p0, Landroidx/appcompat/widget/ay$2;->b:Landroidx/appcompat/widget/ay;

    iget-object p0, p0, Landroidx/appcompat/widget/ay;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 579
    iget-boolean p1, p0, Landroidx/appcompat/widget/ay$2;->c:Z

    if-nez p1, :cond_0

    .line 580
    iget-object p1, p0, Landroidx/appcompat/widget/ay$2;->b:Landroidx/appcompat/widget/ay;

    iget-object p1, p1, Landroidx/appcompat/widget/ay;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Landroidx/appcompat/widget/ay$2;->a:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 586
    iput-boolean p1, p0, Landroidx/appcompat/widget/ay$2;->c:Z

    return-void
.end method
