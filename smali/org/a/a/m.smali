.class public abstract Lorg/a/a/m;
.super Lorg/a/a/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Lorg/a/a/r;)V
.end method

.method a(Lorg/a/a/t;)Z
    .locals 0

    instance-of p0, p1, Lorg/a/a/m;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NULL"

    return-object p0
.end method
