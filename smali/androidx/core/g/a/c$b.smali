.class Landroidx/core/g/a/c$b;
.super Landroidx/core/g/a/c$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/g/a/c;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroidx/core/g/a/c$a;-><init>(Landroidx/core/g/a/c;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/core/g/a/c$b;->a:Landroidx/core/g/a/c;

    invoke-virtual {p0, p1}, Landroidx/core/g/a/c;->b(I)Landroidx/core/g/a/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroidx/core/g/a/b;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method
