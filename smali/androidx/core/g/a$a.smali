.class final Landroidx/core/g/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/g/a;


# direct methods
.method constructor <init>(Landroidx/core/g/a;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/g/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 118
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    .line 119
    invoke-virtual {p0, p1}, Landroidx/core/g/a;->a(Landroid/view/View;)Landroidx/core/g/a/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroidx/core/g/a/c;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 76
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/g/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 82
    invoke-static {p2}, Landroidx/core/g/a/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/g/a/b;

    move-result-object v0

    .line 83
    invoke-static {p1}, Landroidx/core/g/t;->p(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/g/a/b;->b(Z)V

    .line 84
    invoke-static {p1}, Landroidx/core/g/t;->r(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/g/a/b;->c(Z)V

    .line 85
    invoke-static {p1}, Landroidx/core/g/t;->q(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/g/a/b;->c(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, v0}, Landroidx/core/g/a;->a(Landroid/view/View;Landroidx/core/g/a/b;)V

    .line 87
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/core/g/a/b;->a(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 88
    invoke-static {p1}, Landroidx/core/g/a;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 90
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/g/a/b$a;

    invoke-virtual {v0, p2}, Landroidx/core/g/a/b;->a(Landroidx/core/g/a/b$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 96
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/g/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/g/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 126
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/g/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/core/g/a$a;->a:Landroidx/core/g/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/g/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
