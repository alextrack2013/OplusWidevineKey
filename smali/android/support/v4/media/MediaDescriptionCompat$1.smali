.class final Landroid/support/v4/media/MediaDescriptionCompat$1;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v4/media/MediaDescriptionCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 1

    .line 422
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 423
    new-instance p0, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Landroid/os/Parcel;)V

    return-object p0

    .line 425
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/a;->a(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    return-object p0
.end method

.method public a(I)[Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 0

    .line 431
    new-array p0, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$1;->a(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$1;->a(I)[Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    return-object p0
.end method