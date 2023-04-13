.class Lcom/oplus/widevine/b/g$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RealmeKeysManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widevine/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/widevine/b/g;


# direct methods
.method constructor <init>(Lcom/oplus/widevine/b/g;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/oplus/widevine/b/g$1;->a:Lcom/oplus/widevine/b/g;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string p1, "RealmeKeyManager"

    const-string v0, "network is available"

    .line 126
    invoke-static {p1, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/oplus/widevine/b/g$1;->a:Lcom/oplus/widevine/b/g;

    invoke-static {p1}, Lcom/oplus/widevine/b/g;->a(Lcom/oplus/widevine/b/g;)Lcom/oplus/widevine/b/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/oplus/widevine/b/g$1;->a:Lcom/oplus/widevine/b/g;

    invoke-static {p0}, Lcom/oplus/widevine/b/g;->a(Lcom/oplus/widevine/b/g;)Lcom/oplus/widevine/b/i;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/oplus/widevine/b/i;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p1, "RealmeKeyManager"

    const-string v0, " Work Task Null "

    .line 130
    invoke-static {p1, v0}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/oplus/widevine/b/g$1;->a:Lcom/oplus/widevine/b/g;

    invoke-virtual {p0}, Lcom/oplus/widevine/b/g;->b()V

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "RealmeKeyManager"

    const-string v0, "network is onLost"

    .line 138
    invoke-static {p1, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/oplus/widevine/b/g$1;->a:Lcom/oplus/widevine/b/g;

    invoke-static {p1}, Lcom/oplus/widevine/b/g;->a(Lcom/oplus/widevine/b/g;)Lcom/oplus/widevine/b/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p0, p0, Lcom/oplus/widevine/b/g$1;->a:Lcom/oplus/widevine/b/g;

    invoke-static {p0}, Lcom/oplus/widevine/b/g;->a(Lcom/oplus/widevine/b/g;)Lcom/oplus/widevine/b/i;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/widevine/b/i;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p1, "RealmeKeyManager"

    const-string v0, " Work Task Null "

    .line 142
    invoke-static {p1, v0}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/oplus/widevine/b/g$1;->a:Lcom/oplus/widevine/b/g;

    invoke-virtual {p0}, Lcom/oplus/widevine/b/g;->b()V

    :goto_0
    return-void
.end method
