.class Landroidx/core/g/a/c$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/g/a/c;


# direct methods
.method constructor <init>(Landroidx/core/g/a/c;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/core/g/a/c$a;->a:Landroidx/core/g/a/c;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Landroidx/core/g/a/c$a;->a:Landroidx/core/g/a/c;

    .line 45
    invoke-virtual {p0, p1}, Landroidx/core/g/a/c;->a(I)Landroidx/core/g/a/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroidx/core/g/a/b;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Landroidx/core/g/a/c$a;->a:Landroidx/core/g/a/c;

    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/core/g/a/c;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 64
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/g/a/b;

    .line 65
    invoke-virtual {v1}, Landroidx/core/g/a/b;->a()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    .line 73
    iget-object p0, p0, Landroidx/core/g/a/c$a;->a:Landroidx/core/g/a/c;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/g/a/c;->a(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method