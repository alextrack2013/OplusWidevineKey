.class final Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "BackStackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:[I

.field final d:[I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:I

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:I

.field final k:Ljava/lang/CharSequence;

.field final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Landroidx/fragment/app/b$1;

    invoke-direct {v0}, Landroidx/fragment/app/b$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->a:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->c:[I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->d:[I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->g:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 92
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->j:I

    .line 94
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/fragment/app/b;->n:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/a;)V
    .locals 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    .line 50
    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->a:[I

    .line 52
    iget-boolean v1, p1, Landroidx/fragment/app/a;->j:Z

    if-nez v1, :cond_0

    .line 53
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not on back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->c:[I

    .line 58
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/fragment/app/b;->d:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 61
    iget-object v3, p1, Landroidx/fragment/app/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/t$a;

    .line 62
    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroidx/fragment/app/t$a;->a:I

    aput v6, v4, v2

    .line 63
    iget-object v2, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    iget-object v4, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    iget-object v4, v4, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/t$a;->c:I

    aput v6, v2, v5

    .line 65
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroidx/fragment/app/t$a;->d:I

    aput v6, v2, v4

    .line 66
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroidx/fragment/app/t$a;->e:I

    aput v6, v2, v5

    .line 67
    iget-object v2, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroidx/fragment/app/t$a;->f:I

    aput v6, v2, v4

    .line 68
    iget-object v2, p0, Landroidx/fragment/app/b;->c:[I

    iget-object v4, v3, Landroidx/fragment/app/t$a;->g:Landroidx/lifecycle/f$b;

    invoke-virtual {v4}, Landroidx/lifecycle/f$b;->ordinal()I

    move-result v4

    aput v4, v2, v1

    .line 69
    iget-object v2, p0, Landroidx/fragment/app/b;->d:[I

    iget-object v3, v3, Landroidx/fragment/app/t$a;->h:Landroidx/lifecycle/f$b;

    invoke-virtual {v3}, Landroidx/lifecycle/f$b;->ordinal()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 71
    :cond_2
    iget v0, p1, Landroidx/fragment/app/a;->i:I

    iput v0, p0, Landroidx/fragment/app/b;->e:I

    .line 72
    iget-object v0, p1, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 73
    iget v0, p1, Landroidx/fragment/app/a;->c:I

    iput v0, p0, Landroidx/fragment/app/b;->g:I

    .line 74
    iget v0, p1, Landroidx/fragment/app/a;->m:I

    iput v0, p0, Landroidx/fragment/app/b;->h:I

    .line 75
    iget-object v0, p1, Landroidx/fragment/app/a;->n:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    .line 76
    iget v0, p1, Landroidx/fragment/app/a;->o:I

    iput v0, p0, Landroidx/fragment/app/b;->j:I

    .line 77
    iget-object v0, p1, Landroidx/fragment/app/a;->p:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p1, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p1, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 80
    iget-boolean p1, p1, Landroidx/fragment/app/a;->s:Z

    iput-boolean p1, p0, Landroidx/fragment/app/b;->n:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/m;)Landroidx/fragment/app/a;
    .locals 7

    .line 101
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/m;)V

    const/4 v1, 0x0

    move v2, v1

    .line 104
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/b;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 105
    new-instance v3, Landroidx/fragment/app/t$a;

    invoke-direct {v3}, Landroidx/fragment/app/t$a;-><init>()V

    .line 106
    iget-object v4, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Landroidx/fragment/app/t$a;->a:I

    const/4 v1, 0x2

    .line 107
    invoke-static {v1}, Landroidx/fragment/app/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instantiate "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " op #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " base fragment #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/b;->a:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1, v1}, Landroidx/fragment/app/m;->c(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object v1

    .line 114
    iput-object v1, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 116
    iput-object v1, v3, Landroidx/fragment/app/t$a;->b:Landroidx/fragment/app/c;

    .line 118
    :goto_1
    invoke-static {}, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/b;->c:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Landroidx/fragment/app/t$a;->g:Landroidx/lifecycle/f$b;

    .line 119
    invoke-static {}, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;

    move-result-object v1

    iget-object v4, p0, Landroidx/fragment/app/b;->d:[I

    aget v4, v4, v2

    aget-object v1, v1, v4

    iput-object v1, v3, Landroidx/fragment/app/t$a;->h:Landroidx/lifecycle/f$b;

    .line 120
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroidx/fragment/app/t$a;->c:I

    .line 121
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroidx/fragment/app/t$a;->d:I

    .line 122
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroidx/fragment/app/t$a;->e:I

    .line 123
    iget-object v1, p0, Landroidx/fragment/app/b;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroidx/fragment/app/t$a;->f:I

    .line 124
    iget v1, v3, Landroidx/fragment/app/t$a;->c:I

    iput v1, v0, Landroidx/fragment/app/a;->e:I

    .line 125
    iget v1, v3, Landroidx/fragment/app/t$a;->d:I

    iput v1, v0, Landroidx/fragment/app/a;->f:I

    .line 126
    iget v1, v3, Landroidx/fragment/app/t$a;->e:I

    iput v1, v0, Landroidx/fragment/app/a;->g:I

    .line 127
    iget v1, v3, Landroidx/fragment/app/t$a;->f:I

    iput v1, v0, Landroidx/fragment/app/a;->h:I

    .line 128
    invoke-virtual {v0, v3}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/t$a;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto/16 :goto_0

    .line 131
    :cond_2
    iget p1, p0, Landroidx/fragment/app/b;->e:I

    iput p1, v0, Landroidx/fragment/app/a;->i:I

    .line 132
    iget-object p1, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    iput-object p1, v0, Landroidx/fragment/app/a;->l:Ljava/lang/String;

    .line 133
    iget p1, p0, Landroidx/fragment/app/b;->g:I

    iput p1, v0, Landroidx/fragment/app/a;->c:I

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, v0, Landroidx/fragment/app/a;->j:Z

    .line 135
    iget v1, p0, Landroidx/fragment/app/b;->h:I

    iput v1, v0, Landroidx/fragment/app/a;->m:I

    .line 136
    iget-object v1, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/a;->n:Ljava/lang/CharSequence;

    .line 137
    iget v1, p0, Landroidx/fragment/app/b;->j:I

    iput v1, v0, Landroidx/fragment/app/a;->o:I

    .line 138
    iget-object v1, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/fragment/app/a;->p:Ljava/lang/CharSequence;

    .line 139
    iget-object v1, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/a;->q:Ljava/util/ArrayList;

    .line 140
    iget-object v1, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/a;->r:Ljava/util/ArrayList;

    .line 141
    iget-boolean p0, p0, Landroidx/fragment/app/b;->n:Z

    iput-boolean p0, v0, Landroidx/fragment/app/a;->s:Z

    .line 142
    invoke-virtual {v0, p1}, Landroidx/fragment/app/a;->a(I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 153
    iget-object p2, p0, Landroidx/fragment/app/b;->a:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 154
    iget-object p2, p0, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 155
    iget-object p2, p0, Landroidx/fragment/app/b;->c:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 156
    iget-object p2, p0, Landroidx/fragment/app/b;->d:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    iget p2, p0, Landroidx/fragment/app/b;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object p2, p0, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget p2, p0, Landroidx/fragment/app/b;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget p2, p0, Landroidx/fragment/app/b;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object p2, p0, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 162
    iget p2, p0, Landroidx/fragment/app/b;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 164
    iget-object p2, p0, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 165
    iget-object p2, p0, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    iget-boolean p0, p0, Landroidx/fragment/app/b;->n:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
