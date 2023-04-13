.class public Landroidx/fragment/app/d;
.super Landroidx/activity/b;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/d$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/fragment/app/h;

.field final b:Landroidx/lifecycle/k;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:I

.field i:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroidx/activity/b;-><init>()V

    .line 82
    new-instance v0, Landroidx/fragment/app/d$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d$a;-><init>(Landroidx/fragment/app/d;)V

    invoke-static {v0}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/j;)Landroidx/fragment/app/h;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    .line 89
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Landroidx/fragment/app/d;->e:Z

    return-void
.end method

.method private static a(Landroidx/fragment/app/m;Landroidx/lifecycle/f$b;)Z
    .locals 4

    .line 995
    invoke-virtual {p0}, Landroidx/fragment/app/m;->e()Ljava/util/List;

    move-result-object p0

    .line 996
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/c;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/c;->k()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1001
    invoke-virtual {v1}, Landroidx/fragment/app/c;->n()Landroidx/fragment/app/m;

    move-result-object v2

    .line 1002
    invoke-static {v2, p1}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/m;Landroidx/lifecycle/f$b;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1004
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/c;->b()Landroidx/lifecycle/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/f;->a()Landroidx/lifecycle/f$b;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/f$b;->d:Landroidx/lifecycle/f$b;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/f$b;->a(Landroidx/lifecycle/f$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1005
    iget-object v0, v1, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/k;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/k;->b(Landroidx/lifecycle/f$b;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method static b(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    .line 714
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 989
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m()Landroidx/fragment/app/m;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/f$b;->c:Landroidx/lifecycle/f$b;

    invoke-static {v0, v1}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/m;Landroidx/lifecycle/f$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 356
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/h;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/fragment/app/c;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 501
    invoke-super {p0, v0, p1, p2}, Landroidx/activity/b;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 598
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/b;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 599
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 601
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-boolean v1, p0, Landroidx/fragment/app/d;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-boolean v1, p0, Landroidx/fragment/app/d;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-boolean v1, p0, Landroidx/fragment/app/d;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/d;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    invoke-static {p0}, Landroidx/loader/a/a;->a(Landroidx/lifecycle/j;)Landroidx/loader/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroidx/loader/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/m;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/m;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
    invoke-virtual {p0}, Landroidx/fragment/app/d;->invalidateOptionsMenu()V

    return-void
.end method

.method protected l()V
    .locals 2

    .line 477
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_RESUME:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    .line 478
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->g()V

    return-void
.end method

.method public m()Landroidx/fragment/app/m;
    .locals 0

    .line 635
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/m;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 155
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 160
    iget-object v1, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v1, v0}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    iget-object v2, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v2, v0}, Landroidx/b/h;->b(I)V

    if-nez v1, :cond_0

    const-string p0, "FragmentActivity"

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "FragmentActivity"

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(IILandroid/content/Intent;)V

    :goto_0
    return-void

    .line 175
    :cond_2
    invoke-static {}, Landroidx/core/app/a;->a()Landroidx/core/app/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/core/app/a$a;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 181
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Landroidx/activity/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b()V

    .line 275
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 283
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/c;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "android:support:fragments"

    .line 286
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 287
    iget-object v2, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/h;->a(Landroid/os/Parcelable;)V

    const-string v1, "android:support:next_request_index"

    .line 290
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android:support:next_request_index"

    .line 292
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/fragment/app/d;->h:I

    const-string v1, "android:support:request_indicies"

    .line 293
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android:support:request_fragment_who"

    .line 294
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 295
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    new-instance v3, Landroidx/b/h;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroidx/b/h;-><init>(I)V

    iput-object v3, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    move v3, v0

    .line 300
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 301
    iget-object v4, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "FragmentActivity"

    const-string v2, "Invalid requestCode mapping in savedInstanceState."

    .line 297
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    if-nez v1, :cond_3

    .line 308
    new-instance v1, Landroidx/b/h;

    invoke-direct {v1}, Landroidx/b/h;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    .line 309
    iput v0, p0, Landroidx/fragment/app/d;->h:I

    .line 312
    :cond_3
    invoke-super {p0, p1}, Landroidx/activity/b;->onCreate(Landroid/os/Bundle;)V

    .line 314
    iget-object p1, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_CREATE:Landroidx/lifecycle/f$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    .line 315
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->d()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 324
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 325
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroidx/fragment/app/h;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0

    .line 328
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 335
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/d;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/activity/b;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/d;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 364
    invoke-super {p0}, Landroidx/activity/b;->onDestroy()V

    .line 365
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()V

    .line 366
    iget-object p0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_DESTROY:Landroidx/lifecycle/f$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 374
    invoke-super {p0}, Landroidx/activity/b;->onLowMemory()V

    .line 375
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->k()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 383
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 392
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/h;->b(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 389
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/h;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 250
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h;->a(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 436
    invoke-super {p0, p1}, Landroidx/activity/b;->onNewIntent(Landroid/content/Intent;)V

    .line 437
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->b()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/h;->b(Landroid/view/Menu;)V

    .line 409
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 417
    invoke-super {p0}, Landroidx/activity/b;->onPause()V

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Landroidx/fragment/app/d;->d:Z

    .line 419
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->h()V

    .line 420
    iget-object p0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_PAUSE:Landroidx/lifecycle/f$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 265
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/h;->b(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 466
    invoke-super {p0}, Landroidx/activity/b;->onPostResume()V

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/d;->l()V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 487
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/d;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 488
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/h;->a(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr p0, p1

    return p0

    .line 491
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 753
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b()V

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 758
    iget-object v2, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v2, v0}, Landroidx/b/h;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 759
    iget-object v3, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v3, v0}, Landroidx/b/h;->b(I)V

    if-nez v2, :cond_0

    const-string p0, "FragmentActivity"

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 761
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/h;->a(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "FragmentActivity"

    .line 766
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    and-int/2addr p1, v1

    .line 768
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(I[Ljava/lang/String;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 455
    invoke-super {p0}, Landroidx/activity/b;->onResume()V

    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Landroidx/fragment/app/d;->d:Z

    .line 457
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b()V

    .line 458
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->l()Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 509
    invoke-super {p0, p1}, Landroidx/activity/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 510
    invoke-direct {p0}, Landroidx/fragment/app/d;->f()V

    .line 511
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    .line 512
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->c()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 514
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 516
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "android:support:next_request_index"

    .line 517
    iget v1, p0, Landroidx/fragment/app/d;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    iget-object v0, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    new-array v0, v0, [I

    .line 520
    iget-object v1, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v1}, Landroidx/b/h;->b()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 521
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v3}, Landroidx/b/h;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 522
    iget-object v3, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v3, v2}, Landroidx/b/h;->c(I)I

    move-result v3

    aput v3, v0, v2

    .line 523
    iget-object v3, p0, Landroidx/fragment/app/d;->i:Landroidx/b/h;

    invoke-virtual {v3, v2}, Landroidx/b/h;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "android:support:request_indicies"

    .line 525
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "android:support:request_fragment_who"

    .line 526
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 535
    invoke-super {p0}, Landroidx/activity/b;->onStart()V

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Landroidx/fragment/app/d;->e:Z

    .line 539
    iget-boolean v0, p0, Landroidx/fragment/app/d;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Landroidx/fragment/app/d;->c:Z

    .line 541
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->e()V

    .line 544
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b()V

    .line 545
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Z

    .line 549
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/f$a;->ON_START:Landroidx/lifecycle/f$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    .line 550
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->f()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    .line 445
    iget-object p0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 558
    invoke-super {p0}, Landroidx/activity/b;->onStop()V

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Landroidx/fragment/app/d;->e:Z

    .line 561
    invoke-direct {p0}, Landroidx/fragment/app/d;->f()V

    .line 563
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->i()V

    .line 564
    iget-object p0, p0, Landroidx/fragment/app/d;->b:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/f$a;->ON_STOP:Landroidx/lifecycle/f$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/f$a;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 657
    iget-boolean v0, p0, Landroidx/fragment/app/d;->g:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 659
    invoke-static {p2}, Landroidx/fragment/app/d;->b(I)V

    .line 662
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/b;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 670
    iget-boolean v0, p0, Landroidx/fragment/app/d;->g:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 672
    invoke-static {p2}, Landroidx/fragment/app/d;->b(I)V

    .line 675
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/b;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 684
    iget-boolean v0, p0, Landroidx/fragment/app/d;->f:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 686
    invoke-static {p2}, Landroidx/fragment/app/d;->b(I)V

    .line 689
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/activity/b;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 699
    iget-boolean v0, p0, Landroidx/fragment/app/d;->f:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 701
    invoke-static {p2}, Landroidx/fragment/app/d;->b(I)V

    .line 704
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/activity/b;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
