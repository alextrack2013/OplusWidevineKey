.class public final Landroidx/core/g/a/a;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field private final a:I

.field private final b:Landroidx/core/g/a/b;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/core/g/a/b;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 56
    iput p1, p0, Landroidx/core/g/a/a;->a:I

    .line 57
    iput-object p2, p0, Landroidx/core/g/a/a;->b:Landroidx/core/g/a/b;

    .line 58
    iput p3, p0, Landroidx/core/g/a/a;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 70
    iget v1, p0, Landroidx/core/g/a/a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Landroidx/core/g/a/a;->b:Landroidx/core/g/a/b;

    iget p0, p0, Landroidx/core/g/a/a;->c:I

    invoke-virtual {v0, p0, p1}, Landroidx/core/g/a/b;->a(ILandroid/os/Bundle;)Z

    return-void
.end method
