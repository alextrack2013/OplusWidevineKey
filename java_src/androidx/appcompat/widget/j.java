package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
/* compiled from: AppCompatCompoundButtonHelper.java */
/* loaded from: classes.dex */
class j {
    private final CompoundButton a;
    private ColorStateList b = null;
    private PorterDuff.Mode c = null;
    private boolean d = false;
    private boolean e = false;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006c A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:3:0x0021, B:5:0x0029, B:7:0x0031, B:11:0x0045, B:13:0x004d, B:15:0x0055, B:16:0x0064, B:18:0x006c, B:19:0x0077, B:21:0x007f), top: B:28:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f A[Catch: all -> 0x0094, TRY_LEAVE, TryCatch #0 {all -> 0x0094, blocks: (B:3:0x0021, B:5:0x0029, B:7:0x0031, B:11:0x0045, B:13:0x004d, B:15:0x0055, B:16:0x0064, B:18:0x006c, B:19:0x0077, B:21:0x007f), top: B:28:0x0021 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.util.AttributeSet r11, int r12) {
        /*
            r10 = this;
            android.widget.CompoundButton r0 = r10.a
            android.content.Context r0 = r0.getContext()
            int[] r1 = androidx.appcompat.R.styleable.CompoundButton
            r2 = 0
            androidx.appcompat.widget.ax r0 = androidx.appcompat.widget.ax.a(r0, r11, r1, r12, r2)
            android.widget.CompoundButton r3 = r10.a
            android.widget.CompoundButton r1 = r10.a
            android.content.Context r4 = r1.getContext()
            int[] r5 = androidx.appcompat.R.styleable.CompoundButton
            android.content.res.TypedArray r7 = r0.a()
            r9 = 0
            r6 = r11
            r8 = r12
            androidx.core.g.t.a(r3, r4, r5, r6, r7, r8, r9)
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L94
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L94
            if (r11 == 0) goto L42
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L94
            int r11 = r0.g(r11, r2)     // Catch: java.lang.Throwable -> L94
            if (r11 == 0) goto L42
            android.widget.CompoundButton r12 = r10.a     // Catch: android.content.res.Resources.NotFoundException -> L42 java.lang.Throwable -> L94
            android.widget.CompoundButton r1 = r10.a     // Catch: android.content.res.Resources.NotFoundException -> L42 java.lang.Throwable -> L94
            android.content.Context r1 = r1.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L42 java.lang.Throwable -> L94
            android.graphics.drawable.Drawable r11 = androidx.appcompat.a.a.a.b(r1, r11)     // Catch: android.content.res.Resources.NotFoundException -> L42 java.lang.Throwable -> L94
            r12.setButtonDrawable(r11)     // Catch: android.content.res.Resources.NotFoundException -> L42 java.lang.Throwable -> L94
            r11 = 1
            goto L43
        L42:
            r11 = r2
        L43:
            if (r11 != 0) goto L64
            int r11 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L94
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L94
            if (r11 == 0) goto L64
            int r11 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: java.lang.Throwable -> L94
            int r11 = r0.g(r11, r2)     // Catch: java.lang.Throwable -> L94
            if (r11 == 0) goto L64
            android.widget.CompoundButton r12 = r10.a     // Catch: java.lang.Throwable -> L94
            android.widget.CompoundButton r1 = r10.a     // Catch: java.lang.Throwable -> L94
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L94
            android.graphics.drawable.Drawable r11 = androidx.appcompat.a.a.a.b(r1, r11)     // Catch: java.lang.Throwable -> L94
            r12.setButtonDrawable(r11)     // Catch: java.lang.Throwable -> L94
        L64:
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L94
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L94
            if (r11 == 0) goto L77
            android.widget.CompoundButton r11 = r10.a     // Catch: java.lang.Throwable -> L94
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L94
            android.content.res.ColorStateList r12 = r0.e(r12)     // Catch: java.lang.Throwable -> L94
            androidx.core.widget.c.a(r11, r12)     // Catch: java.lang.Throwable -> L94
        L77:
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L94
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L94
            if (r11 == 0) goto L90
            android.widget.CompoundButton r10 = r10.a     // Catch: java.lang.Throwable -> L94
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L94
            r12 = -1
            int r11 = r0.a(r11, r12)     // Catch: java.lang.Throwable -> L94
            r12 = 0
            android.graphics.PorterDuff$Mode r11 = androidx.appcompat.widget.af.a(r11, r12)     // Catch: java.lang.Throwable -> L94
            androidx.core.widget.c.a(r10, r11)     // Catch: java.lang.Throwable -> L94
        L90:
            r0.b()
            return
        L94:
            r10 = move-exception
            r0.b()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.j.a(android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.d = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList a() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.f) {
            this.f = false;
            return;
        }
        this.f = true;
        d();
    }

    void d() {
        Drawable a = androidx.core.widget.c.a(this.a);
        if (a != null) {
            if (this.d || this.e) {
                Drawable mutate = androidx.core.graphics.drawable.a.f(a).mutate();
                if (this.d) {
                    androidx.core.graphics.drawable.a.a(mutate, this.b);
                }
                if (this.e) {
                    androidx.core.graphics.drawable.a.a(mutate, this.c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.a.getDrawableState());
                }
                this.a.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i) {
        Drawable a;
        return (Build.VERSION.SDK_INT >= 17 || (a = androidx.core.widget.c.a(this.a)) == null) ? i : i + a.getIntrinsicWidth();
    }
}
