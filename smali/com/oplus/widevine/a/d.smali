.class public Lcom/oplus/widevine/a/d;
.super Ljava/lang/Object;
.source "RealmeKeysBoxUtils.java"


# static fields
.field private static a:Ljava/lang/String; = "RealmeKeysBoxUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 3

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    .line 36
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 37
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {v0}, Lcom/oplus/widevine/a/a;->a(Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .line 16
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x9

    .line 18
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p0, v3

    .line 23
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0}, Lcom/oplus/widevine/a/a;->a(Ljava/util/ArrayList;)I

    move-result p0

    if-nez p0, :cond_1

    .line 26
    sget-object p0, Lcom/oplus/widevine/a/d;->a:Ljava/lang/String;

    const-string v0, "key is write success"

    invoke-static {p0, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 29
    :cond_1
    sget-object p0, Lcom/oplus/widevine/a/d;->a:Ljava/lang/String;

    const-string v0, "key is write failed"

    invoke-static {p0, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static b()I
    .locals 2

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Lcom/oplus/widevine/a/a;->a(B)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 49
    invoke-static {v1}, Lcom/oplus/widevine/a/a;->a(B)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x3

    .line 61
    invoke-static {v0}, Lcom/oplus/widevine/a/a;->a(B)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 62
    invoke-static {v0}, Lcom/oplus/widevine/a/a;->a(B)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
