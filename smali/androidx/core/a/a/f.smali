.class public final Landroidx/core/a/a/f;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/a/a/f$b;,
        Landroidx/core/a/a/f$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/a/a/f$a;)Landroid/graphics/Typeface;
    .locals 7

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 350
    invoke-static/range {v0 .. v6}, Landroidx/core/a/a/f;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/a/a/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/a/a/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 8

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    .line 371
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 372
    invoke-static/range {v0 .. v7}, Landroidx/core/a/a/f;->a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/a/a/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    if-nez p4, :cond_0

    .line 375
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Font resource ID #0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be retrieved."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/a/a/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 14

    move-object v3, p1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 390
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 391
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not a Font: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :cond_0
    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v1, "res/"

    .line 396
    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v12, 0x0

    const/4 v13, -0x3

    if-nez v1, :cond_2

    if-eqz v9, :cond_1

    .line 399
    invoke-virtual {v9, v13, v10}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V

    :cond_1
    return-object v12

    .line 404
    :cond_2
    invoke-static {v3, v4, v5}, Landroidx/core/graphics/d;->a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v9, :cond_3

    .line 408
    invoke-virtual {v9, v1, v10}, Landroidx/core/a/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_3
    return-object v1

    .line 414
    :cond_4
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 415
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 417
    invoke-static {v1, v3}, Landroidx/core/a/a/c;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/a/a/c$a;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to find font-family tag"

    .line 419
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_5

    .line 421
    invoke-virtual {v9, v13, v10}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V

    :cond_5
    return-object v12

    :cond_6
    move-object v1, p0

    move-object v6, v9

    move-object v7, v10

    move/from16 v8, p7

    .line 426
    invoke-static/range {v1 .. v8}, Landroidx/core/graphics/d;->a(Landroid/content/Context;Landroidx/core/a/a/c$a;Landroid/content/res/Resources;IILandroidx/core/a/a/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    :cond_7
    move-object v1, p0

    .line 429
    invoke-static {v1, v3, v4, v11, v5}, Landroidx/core/graphics/d;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v9, :cond_9

    if-eqz v1, :cond_8

    .line 433
    invoke-virtual {v9, v1, v10}, Landroidx/core/a/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 435
    :cond_8
    invoke-virtual {v9, v13, v10}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "ResourcesCompat"

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read xml resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v2, "ResourcesCompat"

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse xml resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v9, :cond_a

    .line 446
    invoke-virtual {v9, v13, v10}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V

    :cond_a
    return-object v12
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
