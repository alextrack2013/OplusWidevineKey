.class Landroidx/appcompat/widget/SearchView$d;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi",
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2042
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$d;->a:Ljava/lang/reflect/Method;

    .line 2043
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$d;->b:Ljava/lang/reflect/Method;

    .line 2044
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$d;->c:Ljava/lang/reflect/Method;

    .line 2050
    invoke-static {}, Landroidx/appcompat/widget/SearchView$d;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2052
    :try_start_0
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doBeforeTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2053
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$d;->a:Ljava/lang/reflect/Method;

    .line 2054
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$d;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2059
    :catch_0
    :try_start_1
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doAfterTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2060
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$d;->b:Ljava/lang/reflect/Method;

    .line 2061
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$d;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2066
    :catch_1
    :try_start_2
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "ensureImeVisible"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 2067
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$d;->c:Ljava/lang/reflect/Method;

    .line 2068
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$d;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method private static a()V
    .locals 2

    .line 2105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2106
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    const-string v1, "This function can only be used for API Level < 29."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    .line 2075
    invoke-static {}, Landroidx/appcompat/widget/SearchView$d;->a()V

    .line 2076
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$d;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2078
    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$d;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method b(Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    .line 2085
    invoke-static {}, Landroidx/appcompat/widget/SearchView$d;->a()V

    .line 2086
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$d;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2088
    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$d;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method c(Landroid/widget/AutoCompleteTextView;)V
    .locals 3

    .line 2095
    invoke-static {}, Landroidx/appcompat/widget/SearchView$d;->a()V

    .line 2096
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$d;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 2098
    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$d;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
