.class Landroidx/c/a/a$a;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a/a;


# direct methods
.method constructor <init>(Landroidx/c/a/a;)V
    .locals 0

    .line 476
    iput-object p1, p0, Landroidx/c/a/a$a;->a:Landroidx/c/a/a;

    .line 477
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .locals 0

    .line 487
    iget-object p0, p0, Landroidx/c/a/a$a;->a:Landroidx/c/a/a;

    invoke-virtual {p0}, Landroidx/c/a/a;->b()V

    return-void
.end method
