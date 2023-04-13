.class public Landroidx/core/d/b$b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Landroidx/core/f/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroidx/core/d/b$b;->a:Landroid/net/Uri;

    .line 348
    iput p2, p0, Landroidx/core/d/b$b;->b:I

    .line 349
    iput p3, p0, Landroidx/core/d/b$b;->c:I

    .line 350
    iput-boolean p4, p0, Landroidx/core/d/b$b;->d:Z

    .line 351
    iput p5, p0, Landroidx/core/d/b$b;->e:I

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 0

    .line 358
    iget-object p0, p0, Landroidx/core/d/b$b;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 365
    iget p0, p0, Landroidx/core/d/b$b;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    .line 372
    iget p0, p0, Landroidx/core/d/b$b;->c:I

    return p0
.end method

.method public d()Z
    .locals 0

    .line 379
    iget-boolean p0, p0, Landroidx/core/d/b$b;->d:Z

    return p0
.end method

.method public e()I
    .locals 0

    .line 388
    iget p0, p0, Landroidx/core/d/b$b;->e:I

    return p0
.end method
