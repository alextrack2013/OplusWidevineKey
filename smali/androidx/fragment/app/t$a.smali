.class final Landroidx/fragment/app/t$a;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroidx/fragment/app/c;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroidx/lifecycle/f$b;

.field h:Landroidx/lifecycle/f$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/fragment/app/c;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroidx/fragment/app/t$a;->a:I

    .line 78
    iput-object p2, p0, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    .line 79
    sget-object p1, Landroidx/lifecycle/f$b;->e:Landroidx/lifecycle/f$b;

    iput-object p1, p0, Landroidx/fragment/app/t$a;->g:Landroidx/lifecycle/f$b;

    .line 80
    sget-object p1, Landroidx/lifecycle/f$b;->e:Landroidx/lifecycle/f$b;

    iput-object p1, p0, Landroidx/fragment/app/t$a;->h:Landroidx/lifecycle/f$b;

    return-void
.end method
