.class public Lcom/oplus/widevine/a/b;
.super Ljava/lang/Object;
.source "EngineerModeBox.java"


# direct methods
.method public static a()Z
    .locals 3

    .line 9
    :try_start_0
    new-instance v0, Lcom/oplus/widevine/a/c;

    invoke-direct {v0}, Lcom/oplus/widevine/a/c;-><init>()V

    invoke-virtual {v0}, Lcom/oplus/widevine/a/c;->b()V

    .line 10
    new-instance v0, Lcom/oplus/widevine/a/c;

    invoke-direct {v0}, Lcom/oplus/widevine/a/c;-><init>()V

    invoke-virtual {v0}, Lcom/oplus/widevine/a/c;->a()V

    const-string v0, "EngineerModeBox"

    const-string v1, "KeyAttestationTest pass"

    .line 11
    invoke-static {v0, v1}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "EngineerModeBox"

    const-string v2, "KeyAttestationTest failed"

    .line 14
    invoke-static {v1, v2, v0}, Lcom/oplus/widevine/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method
