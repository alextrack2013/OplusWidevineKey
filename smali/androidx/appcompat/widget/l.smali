.class public Landroidx/appcompat/widget/l;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Landroidx/core/g/s;


# instance fields
.field private final a:Landroidx/appcompat/widget/f;

.field private final b:Landroidx/appcompat/widget/z;

.field private final c:Landroidx/appcompat/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    sget v0, Landroidx/appcompat/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-static {p1}, Landroidx/appcompat/widget/au;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/as;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 78
    new-instance p1, Landroidx/appcompat/widget/f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/f;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    .line 79
    iget-object p1, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/f;->a(Landroid/util/AttributeSet;I)V

    .line 81
    new-instance p1, Landroidx/appcompat/widget/z;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/z;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/z;

    .line 82
    iget-object p1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/z;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/z;->a(Landroid/util/AttributeSet;I)V

    .line 83
    iget-object p1, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/z;

    invoke-virtual {p1}, Landroidx/appcompat/widget/z;->b()V

    .line 85
    new-instance p1, Landroidx/appcompat/widget/y;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/y;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 176
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {v0}, Landroidx/appcompat/widget/f;->c()V

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_1

    .line 181
    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/z;

    invoke-virtual {p0}, Landroidx/appcompat/widget/z;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 171
    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {p0}, Landroidx/appcompat/widget/f;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 95
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/y;

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0

    .line 234
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 195
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/m;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 114
    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 106
    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f;->a(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 206
    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 205
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 128
    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Landroidx/appcompat/widget/l;->a:Landroidx/appcompat/widget/f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 188
    iget-object v0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/z;

    if-eqz v0, :cond_0

    .line 189
    iget-object p0, p0, Landroidx/appcompat/widget/l;->b:Landroidx/appcompat/widget/z;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/y;

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/l;->c:Landroidx/appcompat/widget/y;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/y;->a(Landroid/view/textclassifier/TextClassifier;)V

    return-void

    .line 216
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method
