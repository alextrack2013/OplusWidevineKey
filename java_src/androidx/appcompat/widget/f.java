package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R;
/* compiled from: AppCompatBackgroundHelper.java */
/* loaded from: classes.dex */
class f {
    private final View a;
    private av d;
    private av e;
    private av f;
    private int c = -1;
    private final k b = k.b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(View view) {
        this.a = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AttributeSet attributeSet, int i) {
        ax a = ax.a(this.a.getContext(), attributeSet, R.styleable.ViewBackgroundHelper, i, 0);
        androidx.core.g.t.a(this.a, this.a.getContext(), R.styleable.ViewBackgroundHelper, attributeSet, a.a(), i, 0);
        try {
            if (a.g(R.styleable.ViewBackgroundHelper_android_background)) {
                this.c = a.g(R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList b = this.b.b(this.a.getContext(), this.c);
                if (b != null) {
                    b(b);
                }
            }
            if (a.g(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                androidx.core.g.t.a(this.a, a.e(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (a.g(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                androidx.core.g.t.a(this.a, af.a(a.a(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.c = i;
        b(this.b != null ? this.b.b(this.a.getContext(), i) : null);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Drawable drawable) {
        this.c = -1;
        b((ColorStateList) null);
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new av();
        }
        this.e.a = colorStateList;
        this.e.d = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList a() {
        if (this.e != null) {
            return this.e.a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new av();
        }
        this.e.b = mode;
        this.e.c = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode b() {
        if (this.e != null) {
            return this.e.b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            if (d() && b(background)) {
                return;
            }
            if (this.e != null) {
                k.a(background, this.e, this.a.getDrawableState());
            } else if (this.d != null) {
                k.a(background, this.d, this.a.getDrawableState());
            }
        }
    }

    void b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new av();
            }
            this.d.a = colorStateList;
            this.d.d = true;
        } else {
            this.d = null;
        }
        c();
    }

    private boolean d() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.d != null : i == 21;
    }

    private boolean b(Drawable drawable) {
        if (this.f == null) {
            this.f = new av();
        }
        av avVar = this.f;
        avVar.a();
        ColorStateList j = androidx.core.g.t.j(this.a);
        if (j != null) {
            avVar.d = true;
            avVar.a = j;
        }
        PorterDuff.Mode k = androidx.core.g.t.k(this.a);
        if (k != null) {
            avVar.c = true;
            avVar.b = k;
        }
        if (avVar.d || avVar.c) {
            k.a(drawable, avVar, this.a.getDrawableState());
            return true;
        }
        return false;
    }
}
