.class Landroidx/fragment/app/e$a;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/animation/Animation;

.field public final b:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Landroidx/fragment/app/e$a;->a:Landroid/view/animation/Animation;

    .line 241
    iput-object p1, p0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    if-nez p1, :cond_0

    .line 243
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animator cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Landroidx/fragment/app/e$a;->a:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Landroidx/fragment/app/e$a;->b:Landroid/animation/Animator;

    if-nez p1, :cond_0

    .line 235
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animation cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method
