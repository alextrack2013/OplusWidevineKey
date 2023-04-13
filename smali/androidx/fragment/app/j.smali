.class public abstract Landroidx/fragment/app/j;
.super Landroidx/fragment/app/f;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/f;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroidx/fragment/app/m;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/f;-><init>()V

    .line 49
    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0}, Landroidx/fragment/app/n;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/m;

    .line 63
    iput-object p1, p0, Landroidx/fragment/app/j;->a:Landroid/app/Activity;

    const-string p1, "context == null"

    .line 64
    invoke-static {p2, p1}, Landroidx/core/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/fragment/app/j;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 65
    invoke-static {p3, p1}, Landroidx/core/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroidx/fragment/app/j;->d:Landroid/os/Handler;

    .line 66
    iput p4, p0, Landroidx/fragment/app/j;->e:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/d;)V
    .locals 2

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/j;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(Landroidx/fragment/app/c;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method b(Landroidx/fragment/app/c;)V
    .locals 0

    return-void
.end method

.method public e()Landroid/view/LayoutInflater;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/fragment/app/j;->c:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method i()Landroid/app/Activity;
    .locals 0

    .line 195
    iget-object p0, p0, Landroidx/fragment/app/j;->a:Landroid/app/Activity;

    return-object p0
.end method

.method j()Landroid/content/Context;
    .locals 0

    .line 200
    iget-object p0, p0, Landroidx/fragment/app/j;->c:Landroid/content/Context;

    return-object p0
.end method

.method k()Landroid/os/Handler;
    .locals 0

    .line 205
    iget-object p0, p0, Landroidx/fragment/app/j;->d:Landroid/os/Handler;

    return-object p0
.end method
