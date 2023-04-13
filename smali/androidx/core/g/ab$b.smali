.class Landroidx/core/g/ab$b;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/g/ab;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1004
    new-instance v0, Landroidx/core/g/ab;

    const/4 v1, 0x0

    check-cast v1, Landroidx/core/g/ab;

    invoke-direct {v0, v1}, Landroidx/core/g/ab;-><init>(Landroidx/core/g/ab;)V

    invoke-direct {p0, v0}, Landroidx/core/g/ab$b;-><init>(Landroidx/core/g/ab;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/g/ab;)V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Landroidx/core/g/ab$b;->a:Landroidx/core/g/ab;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/g/ab;
    .locals 0

    .line 1025
    iget-object p0, p0, Landroidx/core/g/ab$b;->a:Landroidx/core/g/ab;

    return-object p0
.end method

.method a(Landroidx/core/graphics/b;)V
    .locals 0

    return-void
.end method

.method b(Landroidx/core/graphics/b;)V
    .locals 0

    return-void
.end method
