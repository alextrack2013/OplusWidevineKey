.class Landroidx/appcompat/widget/ba$1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ba;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ba;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/appcompat/widget/ba$1;->a:Landroidx/appcompat/widget/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object p0, p0, Landroidx/appcompat/widget/ba$1;->a:Landroidx/appcompat/widget/ba;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ba;->a(Z)V

    return-void
.end method
