.class public Lcom/oplus/widevine/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widevine/MainActivity$a;,
        Lcom/oplus/widevine/MainActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/oplus/widevine/MainActivity$a;

.field private c:Lcom/oplus/widevine/MainActivity$a;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Lcom/oplus/widevine/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/oplus/widevine/MainActivity$b;-><init>(Lcom/oplus/widevine/MainActivity;)V

    iput-object v0, p0, Lcom/oplus/widevine/MainActivity;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/oplus/widevine/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/widevine/MainActivity;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 45
    new-instance v0, Landroidx/appcompat/app/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->a(Z)Landroidx/appcompat/app/b$a;

    const-string v1, "Agree"

    .line 47
    new-instance v2, Lcom/oplus/widevine/c;

    invoke-direct {v2, p0}, Lcom/oplus/widevine/c;-><init>(Lcom/oplus/widevine/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    move-result-object v1

    const-string v2, "Disagree"

    new-instance v3, Lcom/oplus/widevine/d;

    invoke-direct {v3, p0}, Lcom/oplus/widevine/d;-><init>(Lcom/oplus/widevine/MainActivity;)V

    .line 52
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/b$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object p0

    const-string v0, "To provide services for you , we need to collect and use your imei information, do you agree?"

    .line 57
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/b;->a(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/b;->show()V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4

    .line 96
    new-instance v0, Lcom/oplus/widevine/c/d;

    invoke-direct {v0}, Lcom/oplus/widevine/c/d;-><init>()V

    const-string v1, "ro.oppo.regionmark"

    const-string v2, "IN"

    .line 97
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/widevine/e;->k:Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Lcom/oplus/widevine/c/d;->a()Z

    move-result v1

    .line 99
    invoke-virtual {v0, p0}, Lcom/oplus/widevine/c/d;->a(Landroid/content/Context;)Z

    move-result p0

    .line 100
    invoke-static {}, Lcom/oplus/widevine/a/d;->a()Z

    move-result v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/widevine/e;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nIs Devices Locked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nIs Widevine-key exists: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "The Widevine-Key is already exists,if you want, you can click the button \'Widevine\' to overwrite."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Click the button \'Widevine\' to start writing key"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "The network is unavailable, unable to write key"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/oplus/widevine/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oplus/widevine/MainActivity;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 8

    .line 62
    new-instance v0, Lcom/oplus/widevine/c/d;

    invoke-direct {v0}, Lcom/oplus/widevine/c/d;-><init>()V

    .line 63
    invoke-virtual {v0, p0}, Lcom/oplus/widevine/c/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->d:Landroid/os/Handler;

    const-class v1, Lcom/oplus/widevine/b/j;

    invoke-static {p0, v0, v1}, Lcom/oplus/widevine/b/g;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Class;)Lcom/oplus/widevine/b/g;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/oplus/widevine/b/g;->a()V

    .line 67
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->b:Lcom/oplus/widevine/MainActivity$a;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/oplus/widevine/MainActivity$a;

    const/4 v3, 0x0

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x1770

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/widevine/MainActivity$a;-><init>(Lcom/oplus/widevine/MainActivity;IJJ)V

    iput-object v0, p0, Lcom/oplus/widevine/MainActivity;->b:Lcom/oplus/widevine/MainActivity$a;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->b:Lcom/oplus/widevine/MainActivity$a;

    invoke-virtual {v0}, Lcom/oplus/widevine/MainActivity$a;->cancel()V

    .line 71
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->a:Landroid/widget/TextView;

    const-string v1, "Try to wirte Windevine-Key..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p0, p0, Lcom/oplus/widevine/MainActivity;->b:Lcom/oplus/widevine/MainActivity$a;

    invoke-virtual {p0}, Lcom/oplus/widevine/MainActivity$a;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/oplus/widevine/MainActivity;->a:Landroid/widget/TextView;

    const-string v0, "The network is unavailable, unable to write key"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method final synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    invoke-virtual {p0}, Lcom/oplus/widevine/MainActivity;->finish()V

    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/oplus/widevine/MainActivity;->finish()V

    return-void
.end method

.method final synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 49
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 50
    iget-object p1, p0, Lcom/oplus/widevine/MainActivity;->a:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/oplus/widevine/MainActivity;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/widevine/MainActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 36
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/MainActivity;->setContentView(I)V

    const p1, 0x7f0700b1

    .line 37
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/widevine/MainActivity;->a:Landroid/widget/TextView;

    const p1, 0x7f070053

    .line 38
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/oplus/widevine/a;

    invoke-direct {v0, p0}, Lcom/oplus/widevine/a;-><init>(Lcom/oplus/widevine/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070055

    .line 40
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/oplus/widevine/b;

    invoke-direct {v0, p0}, Lcom/oplus/widevine/b;-><init>(Lcom/oplus/widevine/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-direct {p0}, Lcom/oplus/widevine/MainActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->c:Lcom/oplus/widevine/MainActivity$a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->c:Lcom/oplus/widevine/MainActivity$a;

    invoke-virtual {v0}, Lcom/oplus/widevine/MainActivity$a;->cancel()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->b:Lcom/oplus/widevine/MainActivity$a;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->b:Lcom/oplus/widevine/MainActivity$a;

    invoke-virtual {v0}, Lcom/oplus/widevine/MainActivity$a;->cancel()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/oplus/widevine/MainActivity;->d:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 128
    iget-object p0, p0, Lcom/oplus/widevine/MainActivity;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
