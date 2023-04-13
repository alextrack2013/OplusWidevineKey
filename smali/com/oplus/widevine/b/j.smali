.class public Lcom/oplus/widevine/b/j;
.super Lcom/oplus/widevine/b/i;
.source "RealmeWidevineKeyTask.java"


# static fields
.field private static e:I

.field private static volatile f:Ljava/lang/Boolean;


# instance fields
.field private g:Lcom/oplus/widevine/c/d;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/widevine/b/j;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oplus/widevine/b/i;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/oplus/widevine/b/j;->h:Ljava/lang/String;

    .line 41
    new-instance p1, Lcom/oplus/widevine/c/d;

    invoke-direct {p1}, Lcom/oplus/widevine/c/d;-><init>()V

    iput-object p1, p0, Lcom/oplus/widevine/b/j;->g:Lcom/oplus/widevine/c/d;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "RealmeWidevineKeyTask"

    const-string v1, "response is coming now resolve"

    .line 109
    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/widevine/b/j;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RealmeWidevineKeyTask"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the key is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/b/j;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RealmeWidevineKeyTask"

    const-string v0, "format response error "

    .line 115
    invoke-static {p1, v0}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/oplus/widevine/b/j;->d()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .line 122
    sget-object v0, Lcom/oplus/widevine/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/oplus/widevine/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    sget-object v2, Lcom/oplus/widevine/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-static {v1}, Lcom/oplus/widevine/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1, v0}, Lcom/oplus/widevine/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    sget-object v3, Lcom/oplus/widevine/e;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "widevineKey"

    .line 129
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0, p1}, Lcom/oplus/widevine/c/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/oplus/widevine/b/j;->g:Lcom/oplus/widevine/c/d;

    iget-object p0, p0, Lcom/oplus/widevine/b/j;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/oplus/widevine/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 142
    sget v0, Lcom/oplus/widevine/b/j;->e:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 143
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/widevine/b/j;->f:Ljava/lang/Boolean;

    .line 144
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/j;->removeMessages(I)V

    .line 145
    sget v0, Lcom/oplus/widevine/b/j;->e:I

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/j;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x493e0

    .line 148
    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/widevine/b/j;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const-string p0, "RealmeWidevineKeyTask"

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/widevine/b/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget p0, Lcom/oplus/widevine/b/j;->e:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/oplus/widevine/b/j;->e:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 153
    invoke-virtual {p0, v0}, Lcom/oplus/widevine/b/j;->sendEmptyMessage(I)Z

    .line 154
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/j;->removeMessages(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/oplus/widevine/b/j;->g:Lcom/oplus/widevine/c/d;

    iget-object v1, p0, Lcom/oplus/widevine/b/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/widevine/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
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

    const/4 v3, 0x4

    .line 91
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "RMX1851"

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    aput-object v1, v3, v2

    const-string v2, "1d44e98fbad8465fb690b5886bafdfs8q"

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/oplus/widevine/c/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v1, v0}, Lcom/oplus/widevine/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v3, Lcom/oplus/widevine/c/a$a;

    invoke-direct {v3}, Lcom/oplus/widevine/c/a$a;-><init>()V

    const-string v4, "https://phone-api.realme.com/"

    .line 94
    invoke-virtual {v3, v4}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v4

    const-string v5, "/synkey/rmx/key"

    .line 95
    invoke-virtual {v4, v5}, Lcom/oplus/widevine/c/a$a;->b(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v4

    .line 96
    invoke-virtual {p0, v1}, Lcom/oplus/widevine/b/j;->b(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oplus/widevine/c/a$a;->a(Landroid/content/ContentValues;)Lcom/oplus/widevine/c/a$a;

    move-result-object v1

    const-string v4, "sign"

    .line 97
    invoke-virtual {v1, v4, v2}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v1

    const-string v2, "imei"

    .line 98
    invoke-virtual {v1, v2, v0}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    move-result-object v0

    new-instance v1, Lcom/oplus/widevine/b/k;

    invoke-direct {v1, p0}, Lcom/oplus/widevine/b/k;-><init>(Lcom/oplus/widevine/b/j;)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/oplus/widevine/c/a$a;->a(Lcom/oplus/widevine/c/a$a$a;)Lcom/oplus/widevine/c/a$a;

    .line 101
    :try_start_0
    invoke-virtual {v3}, Lcom/oplus/widevine/c/a$a;->a()V
    :try_end_0
    .catch Lcom/oplus/widevine/c/a$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RealmeWidevineKeyTask"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/oplus/widevine/b/j;->d()V

    :goto_0
    return-void
.end method

.method final synthetic a(Lorg/json/JSONObject;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/oplus/widevine/b/j;->b(Lorg/json/JSONObject;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/oplus/widevine/b/j;->h:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/oplus/widevine/a/d;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 2

    .line 160
    invoke-static {}, Lcom/oplus/widevine/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RealmeWidevineKeyTask"

    const-string v1, "w key is exist  so quit "

    .line 161
    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/oplus/widevine/b/j;->d:Lcom/oplus/widevine/b/i$a;

    invoke-interface {p0}, Lcom/oplus/widevine/b/i$a;->a()V

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/oplus/widevine/b/i;->c()Z

    move-result p0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/oplus/widevine/b/i;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget p1, p0, Lcom/oplus/widevine/b/j;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    sget-object p1, Lcom/oplus/widevine/b/j;->f:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/oplus/widevine/b/j;->f:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {p0}, Lcom/oplus/widevine/b/j;->a()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/oplus/widevine/b/j;->f:Ljava/lang/Boolean;

    .line 59
    iget-object p1, p0, Lcom/oplus/widevine/b/j;->d:Lcom/oplus/widevine/b/i$a;

    if-eqz p1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/oplus/widevine/b/j;->d:Lcom/oplus/widevine/b/i$a;

    invoke-interface {p0}, Lcom/oplus/widevine/b/i$a;->a()V

    goto :goto_0

    :cond_0
    const-string p0, "RealmeWidevineKeyTask"

    const-string p1, "quit error"

    .line 62
    invoke-static {p0, p1}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
