.class public abstract Lcom/oplus/widevine/b/i;
.super Landroid/os/Handler;
.source "RealmeKeysTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widevine/b/i$a;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Landroid/os/Message;

.field protected c:I

.field protected d:Lcom/oplus/widevine/b/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lcom/oplus/widevine/b/i;->b:Landroid/os/Message;

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/oplus/widevine/b/i;->c:I

    .line 23
    iput-object p1, p0, Lcom/oplus/widevine/b/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/widevine/b/i$a;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oplus/widevine/b/i;->d:Lcom/oplus/widevine/b/i$a;

    return-void
.end method

.method protected b(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 39
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "appId"

    const-string v1, "RMX1851"

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "secureKey"

    .line 41
    invoke-static {p1}, Lcom/oplus/widevine/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x2

    .line 46
    invoke-virtual {p0, v0}, Lcom/oplus/widevine/b/i;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/oplus/widevine/b/i;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/oplus/widevine/b/i;->b:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 34
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, p0, Lcom/oplus/widevine/b/i;->c:I

    :cond_0
    return-void
.end method
