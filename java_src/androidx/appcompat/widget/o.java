package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R;
/* compiled from: AppCompatImageHelper.java */
/* loaded from: classes.dex */
public class o {
    private final ImageView a;
    private av b;
    private av c;
    private av d;

    public o(ImageView imageView) {
        this.a = imageView;
    }

    public void a(AttributeSet attributeSet, int i) {
        int g;
        ax a = ax.a(this.a.getContext(), attributeSet, R.styleable.AppCompatImageView, i, 0);
        androidx.core.g.t.a(this.a, this.a.getContext(), R.styleable.AppCompatImageView, attributeSet, a.a(), i, 0);
        try {
            Drawable drawable = this.a.getDrawable();
            if (drawable == null && (g = a.g(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = androidx.appcompat.a.a.a.b(this.a.getContext(), g)) != null) {
                this.a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                af.a(drawable);
            }
            if (a.g(R.styleable.AppCompatImageView_tint)) {
                androidx.core.widget.e.a(this.a, a.e(R.styleable.AppCompatImageView_tint));
            }
            if (a.g(R.styleable.AppCompatImageView_tintMode)) {
                androidx.core.widget.e.a(this.a, af.a(a.a(R.styleable.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            a.b();
        }
    }

    public void a(int i) {
        if (i != 0) {
            Drawable b = androidx.appcompat.a.a.a.b(this.a.getContext(), i);
            if (b != null) {
                af.a(b);
            }
            this.a.setImageDrawable(b);
        } else {
            this.a.setImageDrawable(null);
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return Build.VERSION.SDK_INT < 21 || !(this.a.getBackground() instanceof RippleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.c == null) {
            this.c = new av();
        }
        this.c.a = colorStateList;
        this.c.d = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList b() {
        if (this.c != null) {
            return this.c.a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.c == null) {
            this.c = new av();
        }
        this.c.b = mode;
        this.c.c = true;
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        if (this.c != null) {
            return this.c.b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        Drawable drawable = this.a.getDrawable();
        if (drawable != null) {
            af.a(drawable);
        }
        if (drawable != null) {
            if (e() && a(drawable)) {
                return;
            }
            if (this.c != null) {
                k.a(drawable, this.c, this.a.getDrawableState());
            } else if (this.b != null) {
                k.a(drawable, this.b, this.a.getDrawableState());
            }
        }
    }

    private boolean e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.b != null : i == 21;
    }

    private boolean a(Drawable drawable) {
        if (this.d == null) {
            this.d = new av();
        }
        av avVar = this.d;
        avVar.a();
        ColorStateList a = androidx.core.widget.e.a(this.a);
        if (a != null) {
            avVar.d = true;
            avVar.a = a;
        }
        PorterDuff.Mode b = androidx.core.widget.e.b(this.a);
        if (b != null) {
            avVar.c = true;
            avVar.b = b;
        }
        if (avVar.d || avVar.c) {
            k.a(drawable, avVar, this.a.getDrawableState());
            return true;
        }
        return false;
    }
}
