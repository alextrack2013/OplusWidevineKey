.class Lcom/oplus/widevine/MainActivity$a;
.super Landroid/os/CountDownTimer;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widevine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/widevine/MainActivity;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/oplus/widevine/MainActivity;IJJ)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/oplus/widevine/MainActivity$a;->a:Lcom/oplus/widevine/MainActivity;

    .line 169
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 170
    iput p2, p0, Lcom/oplus/widevine/MainActivity$a;->b:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 188
    invoke-static {}, Lcom/oplus/widevine/a/d;->a()Z

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/oplus/widevine/MainActivity$a;->a:Lcom/oplus/widevine/MainActivity;

    invoke-static {v1}, Lcom/oplus/widevine/MainActivity;->b(Lcom/oplus/widevine/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 193
    iget v2, p0, Lcom/oplus/widevine/MainActivity$a;->b:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object p0, p0, Lcom/oplus/widevine/MainActivity$a;->a:Lcom/oplus/widevine/MainActivity;

    invoke-static {p0}, Lcom/oplus/widevine/MainActivity;->b(Lcom/oplus/widevine/MainActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 175
    invoke-static {}, Lcom/oplus/widevine/a/d;->a()Z

    move-result p1

    .line 176
    iget-object p2, p0, Lcom/oplus/widevine/MainActivity$a;->a:Lcom/oplus/widevine/MainActivity;

    invoke-static {p2}, Lcom/oplus/widevine/MainActivity;->b(Lcom/oplus/widevine/MainActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 178
    iget p1, p0, Lcom/oplus/widevine/MainActivity$a;->b:I

    iput p1, p2, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    .line 179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    iget-object p1, p0, Lcom/oplus/widevine/MainActivity$a;->a:Lcom/oplus/widevine/MainActivity;

    invoke-static {p1}, Lcom/oplus/widevine/MainActivity;->b(Lcom/oplus/widevine/MainActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    invoke-virtual {p0}, Lcom/oplus/widevine/MainActivity$a;->cancel()V

    :cond_0
    return-void
.end method
