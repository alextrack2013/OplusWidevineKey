.class public abstract Landroidx/loader/a/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/lifecycle/j;)Landroidx/loader/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/j;",
            ":",
            "Landroidx/lifecycle/x;",
            ">(TT;)",
            "Landroidx/loader/a/a;"
        }
    .end annotation

    .line 128
    new-instance v0, Landroidx/loader/a/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/x;

    invoke-interface {v1}, Landroidx/lifecycle/x;->c()Landroidx/lifecycle/w;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/loader/a/b;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/w;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
