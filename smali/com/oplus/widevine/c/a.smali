.class public Lcom/oplus/widevine/c/a;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/widevine/c/a$b;,
        Lcom/oplus/widevine/c/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/widevine/c/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 194
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 197
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz p0, :cond_3

    .line 194
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 196
    :cond_3
    throw p1
.end method

.method private a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 173
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    sget-object p1, Lcom/oplus/widevine/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    sget-object v0, Lcom/oplus/widevine/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/oplus/widevine/c/a$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server return error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/widevine/e;->f:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/oplus/widevine/c/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    sget-object p1, Lcom/oplus/widevine/e;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/oplus/widevine/c/a$a;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    return-void
.end method

.method static synthetic a(Lcom/oplus/widevine/c/a;Lcom/oplus/widevine/c/a$a;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/oplus/widevine/c/a;->a(Lcom/oplus/widevine/c/a$a;)V

    return-void
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 5

    .line 149
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const-string v1, "HttpHelper"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect remote:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 152
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    iget-object v1, v1, Lcom/oplus/widevine/c/a$a;->b:Lcom/oplus/widevine/c/a$a$b;

    if-eqz v1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    iget-object p0, p0, Lcom/oplus/widevine/c/a$a;->b:Lcom/oplus/widevine/c/a$a$b;

    invoke-interface {p0, p1}, Lcom/oplus/widevine/c/a$a$b;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    iget-object v1, v1, Lcom/oplus/widevine/c/a$a;->c:Lcom/oplus/widevine/c/a$a$a;

    if-eqz v1, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/oplus/widevine/c/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 159
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/widevine/c/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    iget-object p0, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    iget-object p0, p0, Lcom/oplus/widevine/c/a$a;->c:Lcom/oplus/widevine/c/a$a$a;

    invoke-interface {p0, v1}, Lcom/oplus/widevine/c/a$a$a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "HttpHelper"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance p0, Lcom/oplus/widevine/c/a$b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content is not json format"

    invoke-direct {p0, p1, v0}, Lcom/oplus/widevine/c/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p0, "HttpHelper"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://phone-api.realme.com/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/widevine/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance p0, Lcom/oplus/widevine/c/a$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/widevine/c/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    invoke-virtual {v1}, Lcom/oplus/widevine/c/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 131
    iget-object v1, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    iget-object v1, v1, Lcom/oplus/widevine/c/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 132
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1388

    .line 133
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 135
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 137
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 138
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 139
    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    invoke-static {v2}, Lcom/oplus/widevine/c/a$a;->a(Lcom/oplus/widevine/c/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v2, "HttpHelper"

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestBody : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/widevine/c/a;->a:Lcom/oplus/widevine/c/a$a;

    invoke-static {v4}, Lcom/oplus/widevine/c/a$a;->a(Lcom/oplus/widevine/c/a$a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 144
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 145
    invoke-direct {p0, v0}, Lcom/oplus/widevine/c/a;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    return-void
.end method
