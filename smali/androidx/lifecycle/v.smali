.class public Landroidx/lifecycle/v;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/v$b;,
        Landroidx/lifecycle/v$c;,
        Landroidx/lifecycle/v$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/v$a;

.field private final b:Landroidx/lifecycle/w;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/w;Landroidx/lifecycle/v$a;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$a;

    .line 127
    iput-object p1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/u;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/v;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/u;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/w;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/String;)Landroidx/lifecycle/u;

    move-result-object v0

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object p1, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$a;

    instance-of p1, p1, Landroidx/lifecycle/v$c;

    if-eqz p1, :cond_0

    .line 175
    iget-object p0, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$a;

    check-cast p0, Landroidx/lifecycle/v$c;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/v$c;->a(Landroidx/lifecycle/u;)V

    :cond_0
    return-object v0

    .line 184
    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$a;

    instance-of v0, v0, Landroidx/lifecycle/v$b;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$a;

    check-cast v0, Landroidx/lifecycle/v$b;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/v$b;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p2

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$a;

    invoke-interface {v0, p2}, Landroidx/lifecycle/v$a;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p2

    .line 189
    :goto_0
    iget-object p0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/w;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/w;->a(Ljava/lang/String;Landroidx/lifecycle/u;)V

    return-object p2
.end method
