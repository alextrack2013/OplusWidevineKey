.class Landroidx/loader/a/b$b;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/p<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/loader/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/b/a<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final b:Landroidx/loader/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/a/a$a<",
            "TD;>;"
        }
    .end annotation
.end field

.field private c:Z


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 246
    sget-boolean v0, Landroidx/loader/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onLoadFinished in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/loader/a/b$b;->a:Landroidx/loader/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/loader/a/b$b;->a:Landroidx/loader/b/a;

    .line 248
    invoke-virtual {v2, p1}, Landroidx/loader/b/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v0, p0, Landroidx/loader/a/b$b;->b:Landroidx/loader/a/a$a;

    iget-object v1, p0, Landroidx/loader/a/b$b;->a:Landroidx/loader/b/a;

    invoke-interface {v0, v1, p1}, Landroidx/loader/a/a$a;->a(Landroidx/loader/b/a;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Landroidx/loader/a/b$b;->c:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDeliveredData="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/loader/a/b$b;->c:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method a()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Landroidx/loader/a/b$b;->c:Z

    return p0
.end method

.method b()V
    .locals 3

    .line 260
    iget-boolean v0, p0, Landroidx/loader/a/b$b;->c:Z

    if-eqz v0, :cond_1

    .line 261
    sget-boolean v0, Landroidx/loader/a/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Resetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/loader/a/b$b;->a:Landroidx/loader/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Landroidx/loader/a/b$b;->b:Landroidx/loader/a/a$a;

    iget-object p0, p0, Landroidx/loader/a/b$b;->a:Landroidx/loader/b/a;

    invoke-interface {v0, p0}, Landroidx/loader/a/a$a;->a(Landroidx/loader/b/a;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Landroidx/loader/a/b$b;->b:Landroidx/loader/a/a$a;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
