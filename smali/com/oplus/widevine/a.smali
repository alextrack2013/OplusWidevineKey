.class final synthetic Lcom/oplus/widevine/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/oplus/widevine/MainActivity;


# direct methods
.method constructor <init>(Lcom/oplus/widevine/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/widevine/a;->a:Lcom/oplus/widevine/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/widevine/a;->a:Lcom/oplus/widevine/MainActivity;

    invoke-virtual {p0, p1}, Lcom/oplus/widevine/MainActivity;->b(Landroid/view/View;)V

    return-void
.end method
