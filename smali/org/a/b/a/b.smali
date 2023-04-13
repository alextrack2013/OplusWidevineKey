.class public Lorg/a/b/a/b;
.super Ljava/lang/IllegalStateException;


# instance fields
.field private a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/a/b/a/b;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/a/b/a/b;->a:Ljava/lang/Throwable;

    return-object p0
.end method
