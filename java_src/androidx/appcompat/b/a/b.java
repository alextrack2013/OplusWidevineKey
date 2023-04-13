package androidx.appcompat.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawableContainer.java */
/* loaded from: classes.dex */
public class b extends Drawable implements Drawable.Callback {
    private AbstractC0015b a;
    private Rect b;
    private Drawable c;
    private Drawable d;
    private boolean f;
    private boolean h;
    private Runnable i;
    private long j;
    private long k;
    private a l;
    private int e = 255;
    private int g = -1;

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.c != null) {
            this.c.draw(canvas);
        }
        if (this.d != null) {
            this.d.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.a.getChangingConfigurations() | super.getChangingConfigurations();
    }

    private boolean a() {
        return isAutoMirrored() && androidx.core.graphics.drawable.a.g(this) == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        Rect f = this.a.f();
        if (f != null) {
            rect.set(f);
            padding = (f.right | ((f.left | f.top) | f.bottom)) != 0;
        } else if (this.c != null) {
            padding = this.c.getPadding(rect);
        } else {
            padding = super.getPadding(rect);
        }
        if (a()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.c != null) {
            this.c.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f && this.e == i) {
            return;
        }
        this.f = true;
        this.e = i;
        if (this.c != null) {
            if (this.j == 0) {
                this.c.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        if (this.a.z != z) {
            this.a.z = z;
            if (this.c != null) {
                this.c.setDither(this.a.z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.a.G = true;
        if (this.a.F != colorFilter) {
            this.a.F = colorFilter;
            if (this.c != null) {
                this.c.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        this.a.J = true;
        if (this.a.H != colorStateList) {
            this.a.H = colorStateList;
            androidx.core.graphics.drawable.a.a(this.c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        this.a.K = true;
        if (this.a.I != mode) {
            this.a.I = mode;
            androidx.core.graphics.drawable.a.a(this.c, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.d != null) {
            this.d.setBounds(rect);
        }
        if (this.c != null) {
            this.c.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.a.n();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        if (this.a.E != z) {
            this.a.E = z;
            if (this.c != null) {
                androidx.core.graphics.drawable.a.a(this.c, this.a.E);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.a.E;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        if (this.d != null) {
            this.d.jumpToCurrentState();
            this.d = null;
            z = true;
        } else {
            z = false;
        }
        if (this.c != null) {
            this.c.jumpToCurrentState();
            if (this.f) {
                this.c.setAlpha(this.e);
            }
        }
        if (this.k != 0) {
            this.k = 0L;
            z = true;
        }
        if (this.j != 0) {
            this.j = 0L;
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.b == null) {
            this.b = new Rect(i, i2, i3, i4);
        } else {
            this.b.set(i, i2, i3, i4);
        }
        if (this.c != null) {
            androidx.core.graphics.drawable.a.a(this.c, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(Rect rect) {
        if (this.b != null) {
            rect.set(this.b);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.d != null) {
            return this.d.setState(iArr);
        }
        if (this.c != null) {
            return this.c.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        if (this.d != null) {
            return this.d.setLevel(i);
        }
        if (this.c != null) {
            return this.c.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.a.d(i, d());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.a.g()) {
            return this.a.h();
        }
        if (this.c != null) {
            return this.c.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.a.g()) {
            return this.a.i();
        }
        if (this.c != null) {
            return this.c.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.a.g()) {
            return this.a.j();
        }
        if (this.c != null) {
            return this.c.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.a.g()) {
            return this.a.k();
        }
        if (this.c != null) {
            return this.c.getMinimumHeight();
        }
        return 0;
    }

    public void invalidateDrawable(Drawable drawable) {
        if (this.a != null) {
            this.a.b();
        }
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (this.d != null) {
            this.d.setVisible(z, z2);
        }
        if (this.c != null) {
            this.c.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (this.c == null || !this.c.isVisible()) {
            return -2;
        }
        return this.a.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        if (i == this.g) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.a.D > 0) {
            if (this.d != null) {
                this.d.setVisible(false, false);
            }
            if (this.c != null) {
                this.d = this.c;
                this.k = this.a.D + uptimeMillis;
            } else {
                this.d = null;
                this.k = 0L;
            }
        } else if (this.c != null) {
            this.c.setVisible(false, false);
        }
        if (i >= 0 && i < this.a.j) {
            Drawable b = this.a.b(i);
            this.c = b;
            this.g = i;
            if (b != null) {
                if (this.a.C > 0) {
                    this.j = uptimeMillis + this.a.C;
                }
                a(b);
            }
        } else {
            this.c = null;
            this.g = -1;
        }
        if (this.j != 0 || this.k != 0) {
            if (this.i == null) {
                this.i = new Runnable() { // from class: androidx.appcompat.b.a.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.a(true);
                        b.this.invalidateSelf();
                    }
                };
            } else {
                unscheduleSelf(this.i);
            }
            a(true);
        }
        invalidateSelf();
        return true;
    }

    private void a(Drawable drawable) {
        if (this.l == null) {
            this.l = new a();
        }
        drawable.setCallback(this.l.a(drawable.getCallback()));
        try {
            if (this.a.C <= 0 && this.f) {
                drawable.setAlpha(this.e);
            }
            if (this.a.G) {
                drawable.setColorFilter(this.a.F);
            } else {
                if (this.a.J) {
                    androidx.core.graphics.drawable.a.a(drawable, this.a.H);
                }
                if (this.a.K) {
                    androidx.core.graphics.drawable.a.a(drawable, this.a.I);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.a.z);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(getLayoutDirection());
            }
            if (Build.VERSION.SDK_INT >= 19) {
                drawable.setAutoMirrored(this.a.E);
            }
            Rect rect = this.b;
            if (Build.VERSION.SDK_INT >= 21 && rect != null) {
                drawable.setHotspotBounds(rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.l.a());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0076 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(boolean r12) {
        /*
            r11 = this;
            r0 = 1
            r11.f = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r11.c
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r7 = 0
            if (r3 == 0) goto L3e
            long r9 = r11.j
            int r3 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r3 == 0) goto L40
            long r9 = r11.j
            int r3 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r3 > 0) goto L26
            android.graphics.drawable.Drawable r3 = r11.c
            int r9 = r11.e
            r3.setAlpha(r9)
            r11.j = r7
            goto L40
        L26:
            long r9 = r11.j
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r3 = (int) r9
            androidx.appcompat.b.a.b$b r9 = r11.a
            int r9 = r9.C
            int r3 = r3 / r9
            android.graphics.drawable.Drawable r9 = r11.c
            int r3 = 255 - r3
            int r10 = r11.e
            int r3 = r3 * r10
            int r3 = r3 / 255
            r9.setAlpha(r3)
            r3 = r0
            goto L41
        L3e:
            r11.j = r7
        L40:
            r3 = r6
        L41:
            android.graphics.drawable.Drawable r9 = r11.d
            if (r9 == 0) goto L71
            long r9 = r11.k
            int r9 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r9 == 0) goto L73
            long r9 = r11.k
            int r9 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r9 > 0) goto L5c
            android.graphics.drawable.Drawable r0 = r11.d
            r0.setVisible(r6, r6)
            r0 = 0
            r11.d = r0
            r11.k = r7
            goto L73
        L5c:
            long r6 = r11.k
            long r6 = r6 - r1
            long r6 = r6 * r4
            int r3 = (int) r6
            androidx.appcompat.b.a.b$b r4 = r11.a
            int r4 = r4.D
            int r3 = r3 / r4
            android.graphics.drawable.Drawable r4 = r11.d
            int r5 = r11.e
            int r3 = r3 * r5
            int r3 = r3 / 255
            r4.setAlpha(r3)
            goto L74
        L71:
            r11.k = r7
        L73:
            r0 = r3
        L74:
            if (r12 == 0) goto L80
            if (r0 == 0) goto L80
            java.lang.Runnable r12 = r11.i
            r3 = 16
            long r1 = r1 + r3
            r11.scheduleSelf(r12, r1)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.b.a.b.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Resources resources) {
        this.a.a(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        this.a.a(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.a.o()) {
            this.a.f = getChangingConfigurations();
            return this.a;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.h && super.mutate() == this) {
            AbstractC0015b c = c();
            c.a();
            a(c);
            this.h = true;
        }
        return this;
    }

    AbstractC0015b c() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearMutated() {
        this.a.e();
        this.h = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawableContainer.java */
    /* renamed from: androidx.appcompat.b.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0015b extends Drawable.ConstantState {
        boolean A;
        int B;
        int C;
        int D;
        boolean E;
        ColorFilter F;
        boolean G;
        ColorStateList H;
        PorterDuff.Mode I;
        boolean J;
        boolean K;
        final b c;
        Resources d;
        int e;
        int f;
        int g;
        SparseArray<Drawable.ConstantState> h;
        Drawable[] i;
        int j;
        boolean k;
        boolean l;
        Rect m;
        boolean n;
        boolean o;
        int p;
        int q;
        int r;
        int s;
        boolean t;
        int u;
        boolean v;
        boolean w;
        boolean x;
        boolean y;
        boolean z;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC0015b(AbstractC0015b abstractC0015b, b bVar, Resources resources) {
            Resources resources2;
            this.e = 160;
            this.k = false;
            this.n = false;
            this.z = true;
            this.C = 0;
            this.D = 0;
            this.c = bVar;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = abstractC0015b != null ? abstractC0015b.d : null;
            }
            this.d = resources2;
            this.e = b.a(resources, abstractC0015b != null ? abstractC0015b.e : 0);
            if (abstractC0015b != null) {
                this.f = abstractC0015b.f;
                this.g = abstractC0015b.g;
                this.x = true;
                this.y = true;
                this.k = abstractC0015b.k;
                this.n = abstractC0015b.n;
                this.z = abstractC0015b.z;
                this.A = abstractC0015b.A;
                this.B = abstractC0015b.B;
                this.C = abstractC0015b.C;
                this.D = abstractC0015b.D;
                this.E = abstractC0015b.E;
                this.F = abstractC0015b.F;
                this.G = abstractC0015b.G;
                this.H = abstractC0015b.H;
                this.I = abstractC0015b.I;
                this.J = abstractC0015b.J;
                this.K = abstractC0015b.K;
                if (abstractC0015b.e == this.e) {
                    if (abstractC0015b.l) {
                        this.m = new Rect(abstractC0015b.m);
                        this.l = true;
                    }
                    if (abstractC0015b.o) {
                        this.p = abstractC0015b.p;
                        this.q = abstractC0015b.q;
                        this.r = abstractC0015b.r;
                        this.s = abstractC0015b.s;
                        this.o = true;
                    }
                }
                if (abstractC0015b.t) {
                    this.u = abstractC0015b.u;
                    this.t = true;
                }
                if (abstractC0015b.v) {
                    this.w = abstractC0015b.w;
                    this.v = true;
                }
                Drawable[] drawableArr = abstractC0015b.i;
                this.i = new Drawable[drawableArr.length];
                this.j = abstractC0015b.j;
                SparseArray<Drawable.ConstantState> sparseArray = abstractC0015b.h;
                if (sparseArray != null) {
                    this.h = sparseArray.clone();
                } else {
                    this.h = new SparseArray<>(this.j);
                }
                int i = this.j;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null) {
                        Drawable.ConstantState constantState = drawableArr[i2].getConstantState();
                        if (constantState != null) {
                            this.h.put(i2, constantState);
                        } else {
                            this.i[i2] = drawableArr[i2];
                        }
                    }
                }
                return;
            }
            this.i = new Drawable[10];
            this.j = 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.g | this.f;
        }

        public final int a(Drawable drawable) {
            int i = this.j;
            if (i >= this.i.length) {
                e(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.c);
            this.i[i] = drawable;
            this.j++;
            this.g = drawable.getChangingConfigurations() | this.g;
            b();
            this.m = null;
            this.l = false;
            this.o = false;
            this.x = false;
            return i;
        }

        void b() {
            this.t = false;
            this.v = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int c() {
            return this.i.length;
        }

        private void p() {
            if (this.h != null) {
                int size = this.h.size();
                for (int i = 0; i < size; i++) {
                    this.i[this.h.keyAt(i)] = b(this.h.valueAt(i).newDrawable(this.d));
                }
                this.h = null;
            }
        }

        private Drawable b(Drawable drawable) {
            if (Build.VERSION.SDK_INT >= 23) {
                drawable.setLayoutDirection(this.B);
            }
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.c);
            return mutate;
        }

        public final int d() {
            return this.j;
        }

        public final Drawable b(int i) {
            int indexOfKey;
            Drawable drawable = this.i[i];
            if (drawable != null) {
                return drawable;
            }
            if (this.h == null || (indexOfKey = this.h.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable b = b(this.h.valueAt(indexOfKey).newDrawable(this.d));
            this.i[i] = b;
            this.h.removeAt(indexOfKey);
            if (this.h.size() == 0) {
                this.h = null;
            }
            return b;
        }

        final boolean d(int i, int i2) {
            int i3 = this.j;
            Drawable[] drawableArr = this.i;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                if (drawableArr[i4] != null) {
                    boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? drawableArr[i4].setLayoutDirection(i) : false;
                    if (i4 == i2) {
                        z = layoutDirection;
                    }
                }
            }
            this.B = i;
            return z;
        }

        final void a(Resources resources) {
            if (resources != null) {
                this.d = resources;
                int a = b.a(resources, this.e);
                int i = this.e;
                this.e = a;
                if (i != a) {
                    this.o = false;
                    this.l = false;
                }
            }
        }

        final void a(Resources.Theme theme) {
            if (theme != null) {
                p();
                int i = this.j;
                Drawable[] drawableArr = this.i;
                for (int i2 = 0; i2 < i; i2++) {
                    if (drawableArr[i2] != null && drawableArr[i2].canApplyTheme()) {
                        drawableArr[i2].applyTheme(theme);
                        this.g |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                a(theme.getResources());
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    if (drawable.canApplyTheme()) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = this.h.get(i2);
                    if (constantState != null && constantState.canApplyTheme()) {
                        return true;
                    }
                }
            }
            return false;
        }

        void a() {
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2] != null) {
                    drawableArr[i2].mutate();
                }
            }
            this.A = true;
        }

        final void e() {
            this.A = false;
        }

        public final void a(boolean z) {
            this.k = z;
        }

        public final Rect f() {
            if (this.k) {
                return null;
            }
            if (this.m != null || this.l) {
                return this.m;
            }
            p();
            Rect rect = new Rect();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            Rect rect2 = null;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect)) {
                    if (rect2 == null) {
                        rect2 = new Rect(0, 0, 0, 0);
                    }
                    if (rect.left > rect2.left) {
                        rect2.left = rect.left;
                    }
                    if (rect.top > rect2.top) {
                        rect2.top = rect.top;
                    }
                    if (rect.right > rect2.right) {
                        rect2.right = rect.right;
                    }
                    if (rect.bottom > rect2.bottom) {
                        rect2.bottom = rect.bottom;
                    }
                }
            }
            this.l = true;
            this.m = rect2;
            return rect2;
        }

        public final void b(boolean z) {
            this.n = z;
        }

        public final boolean g() {
            return this.n;
        }

        public final int h() {
            if (!this.o) {
                l();
            }
            return this.p;
        }

        public final int i() {
            if (!this.o) {
                l();
            }
            return this.q;
        }

        public final int j() {
            if (!this.o) {
                l();
            }
            return this.r;
        }

        public final int k() {
            if (!this.o) {
                l();
            }
            return this.s;
        }

        protected void l() {
            this.o = true;
            p();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            this.q = -1;
            this.p = -1;
            this.s = 0;
            this.r = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.p) {
                    this.p = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.q) {
                    this.q = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.r) {
                    this.r = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.s) {
                    this.s = minimumHeight;
                }
            }
        }

        public final void c(int i) {
            this.C = i;
        }

        public final void d(int i) {
            this.D = i;
        }

        public final int m() {
            if (this.t) {
                return this.u;
            }
            p();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.u = opacity;
            this.t = true;
            return opacity;
        }

        public final boolean n() {
            if (this.v) {
                return this.w;
            }
            p();
            int i = this.j;
            Drawable[] drawableArr = this.i;
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                } else if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                } else {
                    i2++;
                }
            }
            this.w = z;
            this.v = true;
            return z;
        }

        public void e(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            System.arraycopy(this.i, 0, drawableArr, 0, i);
            this.i = drawableArr;
        }

        public synchronized boolean o() {
            if (this.x) {
                return this.y;
            }
            p();
            this.x = true;
            int i = this.j;
            Drawable[] drawableArr = this.i;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.y = false;
                    return false;
                }
            }
            this.y = true;
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AbstractC0015b abstractC0015b) {
        this.a = abstractC0015b;
        if (this.g >= 0) {
            this.c = abstractC0015b.b(this.g);
            if (this.c != null) {
                a(this.c);
            }
        }
        this.d = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawableContainer.java */
    /* loaded from: classes.dex */
    public static class a implements Drawable.Callback {
        private Drawable.Callback a;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
        }

        a() {
        }

        public a a(Drawable.Callback callback) {
            this.a = callback;
            return this;
        }

        public Drawable.Callback a() {
            Drawable.Callback callback = this.a;
            this.a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            if (this.a != null) {
                this.a.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            if (this.a != null) {
                this.a.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    static int a(Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }
}
