.class Landroidx/core/g/t$3;
.super Landroidx/core/g/t$b;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/g/t;->b()Landroidx/core/g/t$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/core/g/t$b<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 4000
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/g/t$b;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 0

    .line 4005
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityPaneTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method synthetic b(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 4000
    invoke-virtual {p0, p1}, Landroidx/core/g/t$3;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
