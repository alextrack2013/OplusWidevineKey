.class Landroidx/fragment/app/m$3;
.super Landroidx/fragment/app/i;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/m;


# direct methods
.method constructor <init>(Landroidx/fragment/app/m;)V
    .locals 0

    .line 385
    iput-object p1, p0, Landroidx/fragment/app/m$3;->a:Landroidx/fragment/app/m;

    invoke-direct {p0}, Landroidx/fragment/app/i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 1

    .line 390
    iget-object p1, p0, Landroidx/fragment/app/m$3;->a:Landroidx/fragment/app/m;

    iget-object p1, p1, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/m$3;->a:Landroidx/fragment/app/m;

    iget-object p0, p0, Landroidx/fragment/app/m;->c:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->j()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroidx/fragment/app/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/c;

    move-result-object p0

    return-object p0
.end method
