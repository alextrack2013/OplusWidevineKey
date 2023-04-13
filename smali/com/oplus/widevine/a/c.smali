.class public Lcom/oplus/widevine/a/c;
.super Ljava/lang/Object;
.source "KeyAttestationTest.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([0-9]{1,2})(?:\\.([0-9]{1,2}))?(?:\\.([0-9]{1,2}))?(?:[^0-9.]+.*)?"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/widevine/a/c;->a:Ljava/util/regex/Pattern;

    const-string v0, "([0-9]{4})-([0-9]{2})-[0-9]{2}"

    .line 96
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/widevine/a/c;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/math/BigInteger;)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 413
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 414
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    .line 415
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "INTEGER out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a([Lorg/a/a/f;I)Lorg/a/a/t;
    .locals 3

    .line 422
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    .line 423
    check-cast v1, Lorg/a/a/z;

    .line 424
    invoke-virtual {v1}, Lorg/a/a/z;->b()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 425
    invoke-virtual {v1}, Lorg/a/a/z;->d()Lorg/a/a/t;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/security/cert/Certificate;)Lorg/a/a/u;
    .locals 4

    .line 373
    check-cast p1, Ljava/security/cert/X509Certificate;

    const-string p0, "1.3.6.1.4.1.11129.2.1.17"

    .line 374
    invoke-virtual {p1, p0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_8

    .line 375
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_5

    .line 382
    :cond_0
    new-instance p1, Lorg/a/a/k;

    invoke-direct {p1, p0}, Lorg/a/a/k;-><init>([B)V

    const/4 p0, 0x0

    .line 384
    :try_start_0
    invoke-virtual {p1}, Lorg/a/a/k;->d()Lorg/a/a/t;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 386
    check-cast v0, Lorg/a/a/p;

    invoke-virtual {v0}, Lorg/a/a/p;->d()[B

    move-result-object v0

    .line 388
    new-instance v1, Lorg/a/a/k;

    invoke-direct {v1, v0}, Lorg/a/a/k;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 390
    :try_start_1
    invoke-virtual {v1}, Lorg/a/a/k;->d()Lorg/a/a/t;

    move-result-object v0

    check-cast v0, Lorg/a/a/u;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 391
    :try_start_2
    invoke-virtual {v1}, Lorg/a/a/k;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    move-object p0, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 388
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 391
    :try_start_4
    invoke-virtual {v1}, Lorg/a/a/k;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/a/a/k;->close()V

    :cond_3
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 393
    invoke-virtual {p1}, Lorg/a/a/k;->close()V

    :cond_5
    return-object p0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 382
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz p1, :cond_7

    if-eqz p0, :cond_6

    .line 393
    :try_start_7
    invoke-virtual {p1}, Lorg/a/a/k;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lorg/a/a/k;->close()V

    :cond_7
    :goto_4
    throw v0

    .line 377
    :cond_8
    :goto_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Couldn\'t find the keystore attestation extension data."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(I[BI[[Ljava/lang/String;)V
    .locals 9

    .line 210
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v8, p4, v1

    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p2

    move v5, p1

    move v6, p3

    move-object v7, v8

    .line 212
    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/oplus/widevine/a/c;->a([BZII[Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p2

    move v5, p1

    move v6, p3

    move-object v7, v8

    .line 214
    invoke-direct/range {v2 .. v7}, Lcom/oplus/widevine/a/c;->a([BZII[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 217
    new-instance p4, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed on key size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " challenge ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], purposes "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and paddings "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 0

    const-string p0, "AndroidKeyStore"

    .line 287
    invoke-static {p1, p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    .line 289
    invoke-virtual {p0, p2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 290
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    return-void
.end method

.method private a([BZII[Ljava/lang/String;)V
    .locals 8

    const-string v0, "test_key"

    .line 230
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 231
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 232
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x1e8480

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 233
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v4, v0, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {v4, p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "NONE"

    const-string v6, "SHA-256"

    const-string v7, "SHA-512"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 237
    invoke-virtual {v4, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {v4, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 241
    invoke-virtual {p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 242
    invoke-virtual {p2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 244
    :cond_0
    invoke-direct {p0, p4}, Lcom/oplus/widevine/a/c;->b(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 245
    invoke-virtual {v4, p5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 p2, 0x0

    .line 247
    invoke-virtual {v4, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 249
    :cond_1
    invoke-direct {p0, p4}, Lcom/oplus/widevine/a/c;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 250
    invoke-virtual {v4, p5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_2
    const-string p2, "RSA"

    .line 253
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p5

    invoke-direct {p0, p2, p5}, Lcom/oplus/widevine/a/c;->a(Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;)V

    const-string p2, "AndroidKeyStore"

    .line 255
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 p5, 0x0

    .line 256
    invoke-virtual {p2, p5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 259
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 261
    invoke-direct {p0, v2}, Lcom/oplus/widevine/a/c;->a([Ljava/security/cert/Certificate;)V

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    move v6, p4

    .line 262
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/widevine/a/c;->a([Ljava/security/cert/Certificate;I[BII)V

    goto :goto_0

    :cond_3
    const-string p0, "KeyAttestationTest"

    const-string p1, "certificates is null"

    .line 264
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :goto_0
    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 268
    throw p0
.end method

.method private a([BZLjava/lang/String;II)V
    .locals 8

    const-string v0, "test_key"

    .line 141
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 142
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 143
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x1e8480

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 144
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v4, v0, p5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v5, p3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    const-string v4, "NONE"

    const-string v5, "SHA-256"

    const-string v6, "SHA-512"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {p3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    .line 148
    invoke-virtual {p3, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p3, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 152
    invoke-virtual {p2, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 153
    invoke-virtual {p2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_0
    const-string p2, "EC"

    .line 156
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/oplus/widevine/a/c;->a(Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;)V

    const-string p2, "AndroidKeyStore"

    .line 158
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 p3, 0x0

    .line 159
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 162
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    invoke-direct {p0, v2}, Lcom/oplus/widevine/a/c;->a([Ljava/security/cert/Certificate;)V

    const/4 v3, 0x3

    move-object v1, p0

    move-object v4, p1

    move v5, p4

    move v6, p5

    .line 165
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/widevine/a/c;->a([Ljava/security/cert/Certificate;I[BII)V

    goto :goto_0

    :cond_1
    const-string p0, "KeyAttestationTest"

    const-string p1, "certificates is null"

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 171
    throw p0
.end method

.method private a([Ljava/security/cert/Certificate;)V
    .locals 5

    const/4 p0, 0x1

    .line 273
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1

    .line 275
    :try_start_0
    aget-object v1, p1, v0

    aget-object v2, p1, p0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 278
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to verify certificate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with public key "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, p0

    .line 279
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_1

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(I)Z
    .locals 1

    and-int/lit8 p0, p1, 0x2

    const/4 v0, 0x1

    if-nez p0, :cond_1

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 439
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Invalid security level."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "TEE"

    return-object p0

    :pswitch_1
    const-string p0, "Software"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lorg/a/a/f;)I
    .locals 2

    .line 399
    instance-of p0, p1, Lorg/a/a/l;

    if-eqz p0, :cond_0

    .line 400
    check-cast p1, Lorg/a/a/l;

    .line 401
    invoke-virtual {p1}, Lorg/a/a/l;->b()Ljava/math/BigInteger;

    move-result-object p0

    .line 400
    invoke-static {p0}, Lcom/oplus/widevine/a/c;->a(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    .line 402
    :cond_0
    instance-of p0, p1, Lorg/a/a/h;

    if-eqz p0, :cond_1

    .line 403
    check-cast p1, Lorg/a/a/h;

    .line 404
    invoke-virtual {p1}, Lorg/a/a/h;->b()Ljava/math/BigInteger;

    move-result-object p0

    .line 403
    invoke-static {p0}, Lcom/oplus/widevine/a/c;->a(Ljava/math/BigInteger;)I

    move-result p0

    return p0

    .line 406
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Integer value expected; found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()V
    .locals 22

    const-string v1, "secp224r1"

    .line 103
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 106
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xe0

    aput v5, v3, v4

    .line 109
    new-array v5, v2, [[B

    const-string v6, "challenge"

    .line 110
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    aput-object v6, v5, v4

    .line 112
    new-array v2, v2, [I

    const/4 v6, 0x2

    aput v6, v2, v4

    move v6, v4

    .line 116
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_2

    move v7, v4

    .line 117
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    move v8, v4

    .line 118
    :goto_2
    array-length v9, v2

    if-ge v8, v9, :cond_0

    .line 120
    :try_start_0
    aget-object v11, v5, v7

    const/4 v12, 0x1

    aget-object v13, v1, v6

    aget v14, v3, v6

    aget v15, v2, v8

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/oplus/widevine/a/c;->a([BZLjava/lang/String;II)V

    .line 123
    aget-object v17, v5, v7

    const/16 v18, 0x0

    aget-object v19, v1, v6

    aget v20, v3, v6

    aget v21, v2, v8

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/oplus/widevine/a/c;->a([BZLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 127
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed on curve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and challege "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a([Ljava/security/cert/Certificate;I[BII)V
    .locals 7

    const/4 p5, 0x0

    .line 295
    aget-object p1, p1, p5

    invoke-direct {p0, p1}, Lcom/oplus/widevine/a/c;->a(Ljava/security/cert/Certificate;)Lorg/a/a/u;

    move-result-object p1

    if-nez p1, :cond_0

    .line 297
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "invalid extensionData"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_0
    invoke-virtual {p1, p5}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object p5

    .line 300
    invoke-virtual {p0, p5}, Lcom/oplus/widevine/a/c;->a(Lorg/a/a/f;)I

    move-result p5

    const-string v0, "KeyAttestationTest"

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attestationVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p5, v2, :cond_1

    if-eq p5, v0, :cond_1

    if-eq p5, v1, :cond_1

    .line 305
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Unexpected attestation version. Attestation version must be 1 or 2 or 3"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :cond_1
    invoke-virtual {p1, v2}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object p5

    .line 309
    invoke-virtual {p0, p5}, Lcom/oplus/widevine/a/c;->a(Lorg/a/a/f;)I

    move-result p5

    .line 312
    invoke-virtual {p1, v1}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object v3

    .line 311
    invoke-virtual {p0, v3}, Lcom/oplus/widevine/a/c;->a(Lorg/a/a/f;)I

    move-result v3

    const-string v4, "KeyAttestationTest"

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attestation security level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-direct {p0, p5}, Lcom/oplus/widevine/a/c;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KeyAttestationTest"

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keymaster security level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-direct {p0, v3}, Lcom/oplus/widevine/a/c;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p5, v2, :cond_2

    .line 318
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Unexpected attestation security level value."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eq v3, v2, :cond_3

    .line 321
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Unexpected keymaster security level value."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p5, 0x4

    .line 325
    invoke-virtual {p1, p5}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object p5

    check-cast p5, Lorg/a/a/p;

    .line 326
    invoke-virtual {p5}, Lorg/a/a/p;->d()[B

    move-result-object p5

    .line 327
    invoke-static {p3, p5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_4

    .line 328
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Incorrect challenge string; key is not fresh"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 p3, 0x6

    .line 333
    invoke-virtual {p1, p3}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object p3

    check-cast p3, Lorg/a/a/u;

    invoke-virtual {p3}, Lorg/a/a/u;->b()[Lorg/a/a/f;

    const/4 p3, 0x7

    .line 335
    invoke-virtual {p1, p3}, Lorg/a/a/u;->a(I)Lorg/a/a/f;

    move-result-object p1

    check-cast p1, Lorg/a/a/u;

    invoke-virtual {p1}, Lorg/a/a/u;->b()[Lorg/a/a/f;

    move-result-object p1

    .line 337
    invoke-direct {p0, p1, v1}, Lcom/oplus/widevine/a/c;->a([Lorg/a/a/f;I)Lorg/a/a/t;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oplus/widevine/a/c;->a(Lorg/a/a/f;)I

    move-result p3

    const-string p5, "KeyAttestationTest"

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p3, p4, :cond_5

    .line 341
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The key does not have the expected size."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/oplus/widevine/a/c;->a([Lorg/a/a/f;I)Lorg/a/a/t;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oplus/widevine/a/c;->a(Lorg/a/a/f;)I

    move-result p3

    const-string p4, "KeyAttestationTest"

    .line 347
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key cryptographic algorithm: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p3, p2, :cond_6

    .line 349
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "This key is not an elliptic curve (EC) key, which was expected."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/16 p2, 0x2be

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/oplus/widevine/a/c;->a([Lorg/a/a/f;I)Lorg/a/a/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/widevine/a/c;->a(Lorg/a/a/f;)I

    move-result p0

    const-string p1, "KeyAttestationTest"

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Key origin: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_7

    .line 357
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "This key does not have the expected origin."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void
.end method

.method public b()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 175
    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x200

    aput v4, v2, v3

    .line 178
    new-array v4, v1, [[B

    const-string v5, "challenge"

    .line 179
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v4, v3

    .line 181
    new-array v5, v1, [I

    const/16 v6, 0xc

    aput v6, v5, v3

    .line 184
    new-array v6, v1, [[Ljava/lang/String;

    const-string v7, "NoPadding"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 189
    new-array v1, v1, [[Ljava/lang/String;

    const-string v7, "PKCS1"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 195
    array-length v7, v2

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_3

    aget v9, v2, v8

    .line 196
    array-length v10, v4

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v4, v11

    .line 197
    array-length v13, v5

    move v14, v3

    :goto_2
    if-ge v14, v13, :cond_1

    aget v15, v5, v14

    .line 198
    invoke-direct {v0, v15}, Lcom/oplus/widevine/a/c;->b(I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 199
    invoke-direct {v0, v9, v12, v15, v6}, Lcom/oplus/widevine/a/c;->a(I[BI[[Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_0
    invoke-direct {v0, v9, v12, v15, v1}, Lcom/oplus/widevine/a/c;->a(I[BI[[Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
