package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.a.a.f;
import java.lang.ref.WeakReference;
/* compiled from: AppCompatTextHelper.java */
/* loaded from: classes.dex */
class z {
    private final TextView a;
    private av b;
    private av c;
    private av d;
    private av e;
    private av f;
    private av g;
    private av h;
    private final ab i;
    private int j = 0;
    private int k = -1;
    private Typeface l;
    private boolean m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(TextView textView) {
        this.a = textView;
        this.i = new ab(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012b  */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.util.AttributeSet r19, int r20) {
        /*
            Method dump skipped, instructions count: 845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.z.a(android.util.AttributeSet, int):void");
    }

    private void a(Context context, ax axVar) {
        int i;
        String d;
        this.j = axVar.a(R.styleable.TextAppearance_android_textStyle, this.j);
        if (Build.VERSION.SDK_INT >= 28) {
            this.k = axVar.a(R.styleable.TextAppearance_android_textFontWeight, -1);
            if (this.k != -1) {
                this.j = (this.j & 2) | 0;
            }
        }
        if (axVar.g(R.styleable.TextAppearance_android_fontFamily) || axVar.g(R.styleable.TextAppearance_fontFamily)) {
            this.l = null;
            if (axVar.g(R.styleable.TextAppearance_fontFamily)) {
                i = R.styleable.TextAppearance_fontFamily;
            } else {
                i = R.styleable.TextAppearance_android_fontFamily;
            }
            final int i2 = this.k;
            final int i3 = this.j;
            if (!context.isRestricted()) {
                final WeakReference weakReference = new WeakReference(this.a);
                try {
                    Typeface a = axVar.a(i, this.j, new f.a() { // from class: androidx.appcompat.widget.z.1
                        @Override // androidx.core.a.a.f.a
                        public void a(int i4) {
                        }

                        @Override // androidx.core.a.a.f.a
                        public void a(Typeface typeface) {
                            if (Build.VERSION.SDK_INT >= 28 && i2 != -1) {
                                typeface = Typeface.create(typeface, i2, (i3 & 2) != 0);
                            }
                            z.this.a(weakReference, typeface);
                        }
                    });
                    if (a != null) {
                        if (Build.VERSION.SDK_INT >= 28 && this.k != -1) {
                            this.l = Typeface.create(Typeface.create(a, 0), this.k, (this.j & 2) != 0);
                        } else {
                            this.l = a;
                        }
                    }
                    this.m = this.l == null;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.l != null || (d = axVar.d(i)) == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 28 && this.k != -1) {
                this.l = Typeface.create(Typeface.create(d, 0), this.k, (this.j & 2) != 0);
            } else {
                this.l = Typeface.create(d, this.j);
            }
        } else if (axVar.g(R.styleable.TextAppearance_android_typeface)) {
            this.m = false;
            switch (axVar.a(R.styleable.TextAppearance_android_typeface, 1)) {
                case 1:
                    this.l = Typeface.SANS_SERIF;
                    return;
                case 2:
                    this.l = Typeface.SERIF;
                    return;
                case 3:
                    this.l = Typeface.MONOSPACE;
                    return;
                default:
                    return;
            }
        }
    }

    void a(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.m) {
            this.l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, this.j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, int i) {
        String d;
        ColorStateList e;
        ax a = ax.a(context, i, R.styleable.TextAppearance);
        if (a.g(R.styleable.TextAppearance_textAllCaps)) {
            a(a.a(R.styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a.g(R.styleable.TextAppearance_android_textColor) && (e = a.e(R.styleable.TextAppearance_android_textColor)) != null) {
            this.a.setTextColor(e);
        }
        if (a.g(R.styleable.TextAppearance_android_textSize) && a.e(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            this.a.setTextSize(0, 0.0f);
        }
        a(context, a);
        if (Build.VERSION.SDK_INT >= 26 && a.g(R.styleable.TextAppearance_fontVariationSettings) && (d = a.d(R.styleable.TextAppearance_fontVariationSettings)) != null) {
            this.a.setFontVariationSettings(d);
        }
        a.b();
        if (this.l != null) {
            this.a.setTypeface(this.l, this.j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.a.setAllCaps(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.b != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f == null && this.g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f);
            a(compoundDrawablesRelative[2], this.g);
        }
    }

    private void a(Drawable drawable, av avVar) {
        if (drawable == null || avVar == null) {
            return;
        }
        k.a(drawable, avVar, this.a.getDrawableState());
    }

    private static av a(Context context, k kVar, int i) {
        ColorStateList b = kVar.b(context, i);
        if (b != null) {
            av avVar = new av();
            avVar.d = true;
            avVar.a = b;
            return avVar;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z, int i, int i2, int i3, int i4) {
        if (androidx.core.widget.b.d) {
            return;
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, float f) {
        if (androidx.core.widget.b.d || d()) {
            return;
        }
        b(i, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.i.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.i.g();
    }

    private void b(int i, float f) {
        this.i.a(i, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.i.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, int i4) {
        this.i.a(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int[] iArr, int i) {
        this.i.a(iArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.i.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.i.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.i.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
        return this.i.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] i() {
        return this.i.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList j() {
        if (this.h != null) {
            return this.h.a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new av();
        }
        this.h.a = colorStateList;
        this.h.d = colorStateList != null;
        l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode k() {
        if (this.h != null) {
            return this.h.b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new av();
        }
        this.h.b = mode;
        this.h.c = mode != null;
        l();
    }

    private void l() {
        this.b = this.h;
        this.c = this.h;
        this.d = this.h;
        this.e = this.h;
        this.f = this.h;
        this.g = this.h;
    }

    private void a(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            TextView textView = this.a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        } else if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
        } else {
            if (Build.VERSION.SDK_INT >= 17) {
                Drawable[] compoundDrawablesRelative2 = this.a.getCompoundDrawablesRelative();
                if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                    TextView textView2 = this.a;
                    Drawable drawable7 = compoundDrawablesRelative2[0];
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative2[1];
                    }
                    Drawable drawable8 = compoundDrawablesRelative2[2];
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative2[3];
                    }
                    textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                    return;
                }
            }
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            TextView textView3 = this.a;
            if (drawable == null) {
                drawable = compoundDrawables[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawables[1];
            }
            if (drawable3 == null) {
                drawable3 = compoundDrawables[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawables[3];
            }
            textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }
    }
}
