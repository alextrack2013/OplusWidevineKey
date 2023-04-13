.class Landroidx/fragment/app/m$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 410
    iput-object p1, p0, Landroidx/fragment/app/m$4;->a:Landroidx/fragment/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 413
    iget-object p0, p0, Landroidx/fragment/app/m$4;->a:Landroidx/fragment/app/m;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/m;->a(Z)Z

    return-void
.end method
