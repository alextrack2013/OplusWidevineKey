.class public Lcom/oplus/widevine/c/a$a;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widevine/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widevine/c/a$a$a;,
        Lcom/oplus/widevine/c/a$a$b;
    }
.end annotation


# instance fields
.field protected a:Lorg/json/JSONObject;

.field protected b:Lcom/oplus/widevine/c/a$a$b;

.field protected c:Lcom/oplus/widevine/c/a$a$a;

.field protected d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/oplus/widevine/c/a$a;->a:Lorg/json/JSONObject;

    const-string v0, "POST"

    .line 34
    iput-object v0, p0, Lcom/oplus/widevine/c/a$a;->d:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/oplus/widevine/e;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/widevine/c/a$a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/oplus/widevine/c/a$a;->a:Lorg/json/JSONObject;

    const-string v0, "POST"

    .line 34
    iput-object v0, p0, Lcom/oplus/widevine/c/a$a;->d:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/oplus/widevine/e;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/widevine/c/a$a;->g:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lcom/oplus/widevine/c/a$a;->a(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/widevine/c/a$a;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oplus/widevine/c/a$a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/oplus/widevine/c/a$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/oplus/widevine/c/a$a;
    .locals 4

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/oplus/widevine/c/a$a;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object p0
.end method

.method public a(Lcom/oplus/widevine/c/a$a$a;)Lcom/oplus/widevine/c/a$a;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oplus/widevine/c/a$a;->c:Lcom/oplus/widevine/c/a$a$a;

    return-object p0
.end method

.method public a(Lcom/oplus/widevine/c/a$a$b;)Lcom/oplus/widevine/c/a$a;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/oplus/widevine/c/a$a;->b:Lcom/oplus/widevine/c/a$a$b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/oplus/widevine/c/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;
    .locals 1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/oplus/widevine/c/a$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public a()V
    .locals 3

    const-string v0, "HttpHelper"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PROD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/widevine/c/a$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/widevine/c/a$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/oplus/widevine/c/a;

    invoke-direct {v0}, Lcom/oplus/widevine/c/a;-><init>()V

    .line 97
    invoke-static {v0, p0}, Lcom/oplus/widevine/c/a;->a(Lcom/oplus/widevine/c/a;Lcom/oplus/widevine/c/a$a;)V

    .line 98
    invoke-virtual {v0}, Lcom/oplus/widevine/c/a;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/oplus/widevine/c/a$a;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oplus/widevine/c/a$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/widevine/c/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/widevine/c/a$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/widevine/c/a$a;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
