.class public Lcom/oplus/widevine/b/a;
.super Lcom/oplus/widevine/b/i;
.source "RealmeGoogleKey18321Task.java"


# static fields
.field private static f:I = 0x0

.field private static volatile g:Ljava/lang/Boolean; = null

.field private static h:Z = false


# instance fields
.field private e:Lcom/oplus/widevine/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/widevine/b/a;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oplus/widevine/b/i;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 31
    new-instance p1, Lcom/oplus/widevine/c/d;

    invoke-direct {p1}, Lcom/oplus/widevine/c/d;-><init>()V

    iput-object p1, p0, Lcom/oplus/widevine/b/a;->e:Lcom/oplus/widevine/c/d;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "RealmeGoogleKey18321"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x2

    .line 104
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/b/a;->sendEmptyMessage(I)Z

    return-void
.end method

.method private b(Ljava/io/InputStream;)Z
    .locals 2

    const-string v0, "/sdcard/.lii/"

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/oplus/widevine/b/a;->e:Lcom/oplus/widevine/c/d;

    invoke-virtual {v1, p1, v0}, Lcom/oplus/widevine/c/d;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/oplus/widevine/b/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/oplus/widevine/b/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    .line 141
    iget-object p0, p0, Lcom/oplus/widevine/b/a;->e:Lcom/oplus/widevine/c/d;

    invoke-virtual {p0, v0}, Lcom/oplus/widevine/c/d;->a(Ljava/lang/String;)Z

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 139
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    iget-object p0, p0, Lcom/oplus/widevine/b/a;->e:Lcom/oplus/widevine/c/d;

    invoke-virtual {p0, v0}, Lcom/oplus/widevine/c/d;->a(Ljava/lang/String;)Z

    const/4 p0, 0x0

    return p0

    :goto_1
    iget-object p0, p0, Lcom/oplus/widevine/b/a;->e:Lcom/oplus/widevine/c/d;

    invoke-virtual {p0, v0}, Lcom/oplus/widevine/c/d;->a(Ljava/lang/String;)Z

    .line 142
    throw p1
.end method

.method private d()V
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/oplus/widevine/b/a;->e:Lcom/oplus/widevine/c/d;

    iget-object v1, p0, Lcom/oplus/widevine/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/widevine/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/oplus/widevine/e;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "RMX1851"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Lcom/oplus/widevine/c/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    .line 83
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "RMX1851"

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    const-string v4, ""

    aput-object v4, v3, v2

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string v2, "1d44e98fbad8465fb690b5886bafdfs8q"

    const/4 v4, 0x4

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/oplus/widevine/c/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v1, v0}, Lcom/oplus/widevine/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v3, Lcom/oplus/widevine/c/a$a;

    invoke-direct {v3}, Lcom/oplus/widevine/c/a$a;-><init>()V

    const-string v4, "https://phone-api.realme.com/"

    .line 86
    invoke-virtual {v3, v4}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v4

    const-string v5, "/synkey/patch/status"

    .line 87
    invoke-virtual {v4, v5}, Lcom/oplus/widevine/c/a$a;->b(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v4

    .line 88
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/a;->b(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oplus/widevine/c/a$a;->a(Landroid/content/ContentValues;)Lcom/oplus/widevine/c/a$a;

    move-result-object v1

    const-string v4, "sign"

    .line 89
    invoke-virtual {v1, v4, v2}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v1

    const-string v2, "imei"

    .line 90
    invoke-virtual {v1, v2, v0}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v0

    const-string v1, "projectCode"

    const-string v2, ""

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v0

    new-instance v1, Lcom/oplus/widevine/b/b;

    invoke-direct {v1, p0}, Lcom/oplus/widevine/b/b;-><init>(Lcom/oplus/widevine/b/a;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/oplus/widevine/c/a$a;->a(Lcom/oplus/widevine/c/a$a$a;)Lcom/oplus/widevine/c/a$a;

    .line 94
    :try_start_0
    invoke-virtual {v3}, Lcom/oplus/widevine/c/a$a;->a()V
    :try_end_0
    .catch Lcom/oplus/widevine/c/a$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RealmeGoogleKey18321"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http cause exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private e()V
    .locals 4

    .line 147
    sget v0, Lcom/oplus/widevine/b/a;->f:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/widevine/b/a;->g:Ljava/lang/Boolean;

    .line 149
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/a;->removeMessages(I)V

    .line 150
    sget v0, Lcom/oplus/widevine/b/a;->f:I

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x493e0

    .line 153
    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/widevine/b/a;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const-string p0, "RealmeGoogleKey18321"

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/widevine/b/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget p0, Lcom/oplus/widevine/b/a;->f:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/oplus/widevine/b/a;->f:I

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/a;->removeMessages(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 109
    iget-object v0, p0, Lcom/oplus/widevine/b/a;->e:Lcom/oplus/widevine/c/d;

    iget-object v1, p0, Lcom/oplus/widevine/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/widevine/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/oplus/widevine/e;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "RMX1851"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v1, v3}, Lcom/oplus/widevine/c/c;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    .line 111
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "RMX1851"

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    const-string v4, ""

    aput-object v4, v3, v2

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const-string v2, "1d44e98fbad8465fb690b5886bafdfs8q"

    const/4 v4, 0x4

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/oplus/widevine/c/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v1, v0}, Lcom/oplus/widevine/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v3, Lcom/oplus/widevine/c/a$a;

    const-string v4, "https://phone-api.realme.com/"

    invoke-direct {v3, v4}, Lcom/oplus/widevine/c/a$a;-><init>(Ljava/lang/String;)V

    const-string v4, "/synkey/patch/downLoad/by/project"

    .line 114
    invoke-virtual {v3, v4}, Lcom/oplus/widevine/c/a$a;->b(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v4

    .line 115
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/a;->b(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oplus/widevine/c/a$a;->a(Landroid/content/ContentValues;)Lcom/oplus/widevine/c/a$a;

    move-result-object v1

    const-string v4, "sign"

    .line 116
    invoke-virtual {v1, v4, v2}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v1

    const-string v2, "imei"

    .line 117
    invoke-virtual {v1, v2, v0}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v0

    const-string v1, "projectCode"

    const-string v2, ""

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v0

    new-instance v1, Lcom/oplus/widevine/b/c;

    invoke-direct {v1, p0}, Lcom/oplus/widevine/b/c;-><init>(Lcom/oplus/widevine/b/a;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/oplus/widevine/c/a$a;->a(Lcom/oplus/widevine/c/a$a$b;)Lcom/oplus/widevine/c/a$a;

    .line 121
    :try_start_0
    invoke-virtual {v3}, Lcom/oplus/widevine/c/a$a;->a()V
    :try_end_0
    .catch Lcom/oplus/widevine/c/a$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RealmeGoogleKey18321"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http cause exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/oplus/widevine/b/a;->e()V

    :goto_0
    return-void
.end method

.method final synthetic a(Ljava/io/InputStream;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/oplus/widevine/b/a;->b(Ljava/io/InputStream;)Z

    return-void
.end method

.method final synthetic a(Lorg/json/JSONObject;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/oplus/widevine/b/a;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 64
    sget-boolean p1, Lcom/oplus/widevine/b/a;->h:Z

    if-nez p1, :cond_0

    .line 65
    invoke-static {}, Lcom/oplus/widevine/a/d;->c()I

    .line 66
    invoke-static {}, Lcom/oplus/widevine/a/b;->a()Z

    move-result p1

    sput-boolean p1, Lcom/oplus/widevine/b/a;->h:Z

    .line 69
    :cond_0
    sget-boolean p1, Lcom/oplus/widevine/b/a;->h:Z

    if-eqz p1, :cond_1

    const-string p1, "RealmeGoogleKey18321"

    const-string v0, "write success"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lcom/oplus/widevine/b/a;->d()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p1, "RealmeGoogleKey18321"

    const-string v0, "write failed"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/oplus/widevine/b/a;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/oplus/widevine/b/i;->handleMessage(Landroid/os/Message;)V

    .line 37
    iget p1, p0, Lcom/oplus/widevine/b/a;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    invoke-static {}, Lcom/oplus/widevine/a/b;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 41
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/b/a;->sendEmptyMessage(I)Z

    return-void

    .line 44
    :cond_0
    sget-object p1, Lcom/oplus/widevine/b/a;->g:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/oplus/widevine/b/a;->g:Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p0}, Lcom/oplus/widevine/b/a;->a()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/oplus/widevine/b/a;->g:Ljava/lang/Boolean;

    .line 54
    iget-object p0, p0, Lcom/oplus/widevine/b/a;->d:Lcom/oplus/widevine/b/i$a;

    invoke-interface {p0}, Lcom/oplus/widevine/b/i$a;->a()V

    :cond_1
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
