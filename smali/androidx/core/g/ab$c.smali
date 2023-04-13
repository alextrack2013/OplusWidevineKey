.class Landroidx/core/g/ab$c;
.super Landroidx/core/g/ab$b;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/g/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Field; = null

.field private static b:Z = false

.field private static c:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z = false


# instance fields
.field private e:Landroid/view/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1039
    invoke-direct {p0}, Landroidx/core/g/ab$b;-><init>()V

    .line 1040
    invoke-static {}, Landroidx/core/g/ab$c;->b()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/g/ab$c;->e:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/g/ab;)V
    .locals 0

    .line 1043
    invoke-direct {p0}, Landroidx/core/g/ab$b;-><init>()V

    .line 1044
    invoke-virtual {p1}, Landroidx/core/g/ab;->i()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/g/ab$c;->e:Landroid/view/WindowInsets;

    return-void
.end method

.method private static b()Landroid/view/WindowInsets;
    .locals 6

    .line 1069
    sget-boolean v0, Landroidx/core/g/ab$c;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1071
    :try_start_0
    const-class v0, Landroid/view/WindowInsets;

    const-string v2, "CONSUMED"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/g/ab$c;->a:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WindowInsetsCompat"

    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    .line 1073
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1075
    :goto_0
    sput-boolean v1, Landroidx/core/g/ab$c;->b:Z

    .line 1077
    :cond_0
    sget-object v0, Landroidx/core/g/ab$c;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1079
    :try_start_1
    sget-object v0, Landroidx/core/g/ab$c;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 1081
    new-instance v3, Landroid/view/WindowInsets;

    invoke-direct {v3, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    const-string v3, "WindowInsetsCompat"

    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    .line 1084
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    :cond_1
    sget-boolean v0, Landroidx/core/g/ab$c;->d:Z

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1092
    :try_start_2
    const-class v0, Landroid/view/WindowInsets;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/g/ab$c;->c:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v4, "WindowInsetsCompat"

    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    .line 1094
    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1096
    :goto_1
    sput-boolean v1, Landroidx/core/g/ab$c;->d:Z

    .line 1098
    :cond_2
    sget-object v0, Landroidx/core/g/ab$c;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    .line 1100
    :try_start_3
    sget-object v0, Landroidx/core/g/ab$c;->c:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "WindowInsetsCompat"

    const-string v3, "Could not invoke WindowInsets(Rect) constructor"

    .line 1102
    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object v2
.end method


# virtual methods
.method a()Landroidx/core/g/ab;
    .locals 0

    .line 1058
    iget-object p0, p0, Landroidx/core/g/ab$c;->e:Landroid/view/WindowInsets;

    invoke-static {p0}, Landroidx/core/g/ab;->a(Landroid/view/WindowInsets;)Landroidx/core/g/ab;

    move-result-object p0

    return-object p0
.end method

.method a(Landroidx/core/graphics/b;)V
    .locals 4

    .line 1049
    iget-object v0, p0, Landroidx/core/g/ab$c;->e:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Landroidx/core/g/ab$c;->e:Landroid/view/WindowInsets;

    iget v1, p1, Landroidx/core/graphics/b;->b:I

    iget v2, p1, Landroidx/core/graphics/b;->c:I

    iget v3, p1, Landroidx/core/graphics/b;->d:I

    iget p1, p1, Landroidx/core/graphics/b;->e:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/g/ab$c;->e:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method
