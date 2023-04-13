.class Landroidx/appcompat/app/f$f;
.super Landroidx/appcompat/app/f$e;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;

.field private final c:Landroidx/appcompat/app/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;Landroidx/appcompat/app/l;)V
    .locals 0

    .line 3242
    iput-object p1, p0, Landroidx/appcompat/app/f$f;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f$e;-><init>(Landroidx/appcompat/app/f;)V

    .line 3243
    iput-object p2, p0, Landroidx/appcompat/app/f$f;->c:Landroidx/appcompat/app/l;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3249
    iget-object p0, p0, Landroidx/appcompat/app/f$f;->c:Landroidx/appcompat/app/l;

    invoke-virtual {p0}, Landroidx/appcompat/app/l;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public b()V
    .locals 0

    .line 3254
    iget-object p0, p0, Landroidx/appcompat/app/f$f;->a:Landroidx/appcompat/app/f;

    invoke-virtual {p0}, Landroidx/appcompat/app/f;->t()Z

    return-void
.end method

.method c()Landroid/content/IntentFilter;
    .locals 1

    .line 3259
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 3260
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 3261
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    .line 3262
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method
