package androidx.core.g;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Objects;
/* compiled from: WindowInsetsCompat.java */
/* loaded from: classes.dex */
public class ab {
    public static final ab a = new a().a().g().f().e();
    private final e b;

    private ab(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.b = new i(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 28) {
            this.b = new h(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.b = new g(this, windowInsets);
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.b = new f(this, windowInsets);
        } else {
            this.b = new e(this);
        }
    }

    public ab(ab abVar) {
        if (abVar != null) {
            e eVar = abVar.b;
            if (Build.VERSION.SDK_INT >= 29 && (eVar instanceof i)) {
                this.b = new i(this, (i) eVar);
                return;
            } else if (Build.VERSION.SDK_INT >= 28 && (eVar instanceof h)) {
                this.b = new h(this, (h) eVar);
                return;
            } else if (Build.VERSION.SDK_INT >= 21 && (eVar instanceof g)) {
                this.b = new g(this, (g) eVar);
                return;
            } else if (Build.VERSION.SDK_INT >= 20 && (eVar instanceof f)) {
                this.b = new f(this, (f) eVar);
                return;
            } else {
                this.b = new e(this);
                return;
            }
        }
        this.b = new e(this);
    }

    public static ab a(WindowInsets windowInsets) {
        return new ab((WindowInsets) androidx.core.f.d.a(windowInsets));
    }

    public int a() {
        return h().b;
    }

    public int b() {
        return h().c;
    }

    public int c() {
        return h().d;
    }

    public int d() {
        return h().e;
    }

    public ab e() {
        return this.b.c();
    }

    @Deprecated
    public ab a(int i2, int i3, int i4, int i5) {
        return new a(this).a(androidx.core.graphics.b.a(i2, i3, i4, i5)).a();
    }

    public ab f() {
        return this.b.d();
    }

    public ab g() {
        return this.b.f();
    }

    public androidx.core.graphics.b h() {
        return this.b.g();
    }

    public ab b(int i2, int i3, int i4, int i5) {
        return this.b.a(i2, i3, i4, i5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ab) {
            return androidx.core.f.c.a(this.b, ((ab) obj).b);
        }
        return false;
    }

    public int hashCode() {
        if (this.b == null) {
            return 0;
        }
        return this.b.hashCode();
    }

    public WindowInsets i() {
        if (this.b instanceof f) {
            return ((f) this.b).b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class e {
        final ab a;

        boolean a() {
            return false;
        }

        boolean b() {
            return false;
        }

        androidx.core.g.c e() {
            return null;
        }

        e(ab abVar) {
            this.a = abVar;
        }

        ab c() {
            return this.a;
        }

        ab d() {
            return this.a;
        }

        ab f() {
            return this.a;
        }

        androidx.core.graphics.b g() {
            return androidx.core.graphics.b.a;
        }

        androidx.core.graphics.b h() {
            return androidx.core.graphics.b.a;
        }

        ab a(int i, int i2, int i3, int i4) {
            return ab.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                e eVar = (e) obj;
                return a() == eVar.a() && b() == eVar.b() && androidx.core.f.c.a(g(), eVar.g()) && androidx.core.f.c.a(h(), eVar.h()) && androidx.core.f.c.a(e(), eVar.e());
            }
            return false;
        }

        public int hashCode() {
            return androidx.core.f.c.a(Boolean.valueOf(a()), Boolean.valueOf(b()), g(), h(), e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class f extends e {
        final WindowInsets b;
        private androidx.core.graphics.b c;

        f(ab abVar, WindowInsets windowInsets) {
            super(abVar);
            this.c = null;
            this.b = windowInsets;
        }

        f(ab abVar, f fVar) {
            this(abVar, new WindowInsets(fVar.b));
        }

        @Override // androidx.core.g.ab.e
        boolean a() {
            return this.b.isRound();
        }

        @Override // androidx.core.g.ab.e
        final androidx.core.graphics.b g() {
            if (this.c == null) {
                this.c = androidx.core.graphics.b.a(this.b.getSystemWindowInsetLeft(), this.b.getSystemWindowInsetTop(), this.b.getSystemWindowInsetRight(), this.b.getSystemWindowInsetBottom());
            }
            return this.c;
        }

        @Override // androidx.core.g.ab.e
        ab a(int i, int i2, int i3, int i4) {
            a aVar = new a(ab.a(this.b));
            aVar.a(ab.a(g(), i, i2, i3, i4));
            aVar.b(ab.a(h(), i, i2, i3, i4));
            return aVar.a();
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class g extends f {
        private androidx.core.graphics.b c;

        g(ab abVar, WindowInsets windowInsets) {
            super(abVar, windowInsets);
            this.c = null;
        }

        g(ab abVar, g gVar) {
            super(abVar, gVar);
            this.c = null;
        }

        @Override // androidx.core.g.ab.e
        boolean b() {
            return this.b.isConsumed();
        }

        @Override // androidx.core.g.ab.e
        ab d() {
            return ab.a(this.b.consumeStableInsets());
        }

        @Override // androidx.core.g.ab.e
        ab c() {
            return ab.a(this.b.consumeSystemWindowInsets());
        }

        @Override // androidx.core.g.ab.e
        final androidx.core.graphics.b h() {
            if (this.c == null) {
                this.c = androidx.core.graphics.b.a(this.b.getStableInsetLeft(), this.b.getStableInsetTop(), this.b.getStableInsetRight(), this.b.getStableInsetBottom());
            }
            return this.c;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class h extends g {
        h(ab abVar, WindowInsets windowInsets) {
            super(abVar, windowInsets);
        }

        h(ab abVar, h hVar) {
            super(abVar, hVar);
        }

        @Override // androidx.core.g.ab.e
        androidx.core.g.c e() {
            return androidx.core.g.c.a(this.b.getDisplayCutout());
        }

        @Override // androidx.core.g.ab.e
        ab f() {
            return ab.a(this.b.consumeDisplayCutout());
        }

        @Override // androidx.core.g.ab.e
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof h) {
                return Objects.equals(this.b, ((h) obj).b);
            }
            return false;
        }

        @Override // androidx.core.g.ab.e
        public int hashCode() {
            return this.b.hashCode();
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class i extends h {
        private androidx.core.graphics.b c;
        private androidx.core.graphics.b d;
        private androidx.core.graphics.b e;

        i(ab abVar, WindowInsets windowInsets) {
            super(abVar, windowInsets);
            this.c = null;
            this.d = null;
            this.e = null;
        }

        i(ab abVar, i iVar) {
            super(abVar, iVar);
            this.c = null;
            this.d = null;
            this.e = null;
        }

        @Override // androidx.core.g.ab.f, androidx.core.g.ab.e
        ab a(int i, int i2, int i3, int i4) {
            return ab.a(this.b.inset(i, i2, i3, i4));
        }
    }

    static androidx.core.graphics.b a(androidx.core.graphics.b bVar, int i2, int i3, int i4, int i5) {
        int max = Math.max(0, bVar.b - i2);
        int max2 = Math.max(0, bVar.c - i3);
        int max3 = Math.max(0, bVar.d - i4);
        int max4 = Math.max(0, bVar.e - i5);
        return (max == i2 && max2 == i3 && max3 == i4 && max4 == i5) ? bVar : androidx.core.graphics.b.a(max, max2, max3, max4);
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static final class a {
        private final b a;

        public a() {
            if (Build.VERSION.SDK_INT >= 29) {
                this.a = new d();
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.a = new c();
            } else {
                this.a = new b();
            }
        }

        public a(ab abVar) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.a = new d(abVar);
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.a = new c(abVar);
            } else {
                this.a = new b(abVar);
            }
        }

        public a a(androidx.core.graphics.b bVar) {
            this.a.a(bVar);
            return this;
        }

        public a b(androidx.core.graphics.b bVar) {
            this.a.b(bVar);
            return this;
        }

        public ab a() {
            return this.a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    public static class b {
        private final ab a;

        void a(androidx.core.graphics.b bVar) {
        }

        void b(androidx.core.graphics.b bVar) {
        }

        b() {
            this(new ab((ab) null));
        }

        b(ab abVar) {
            this.a = abVar;
        }

        ab a() {
            return this.a;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class c extends b {
        private static Field a = null;
        private static boolean b = false;
        private static Constructor<WindowInsets> c = null;
        private static boolean d = false;
        private WindowInsets e;

        c() {
            this.e = b();
        }

        c(ab abVar) {
            this.e = abVar.i();
        }

        @Override // androidx.core.g.ab.b
        void a(androidx.core.graphics.b bVar) {
            if (this.e != null) {
                this.e = this.e.replaceSystemWindowInsets(bVar.b, bVar.c, bVar.d, bVar.e);
            }
        }

        @Override // androidx.core.g.ab.b
        ab a() {
            return ab.a(this.e);
        }

        private static WindowInsets b() {
            if (!b) {
                try {
                    a = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                b = true;
            }
            if (a != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) a.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!d) {
                try {
                    c = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                d = true;
            }
            if (c != null) {
                try {
                    return c.newInstance(new Rect());
                } catch (ReflectiveOperationException e4) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e4);
                }
            }
            return null;
        }
    }

    /* compiled from: WindowInsetsCompat.java */
    /* loaded from: classes.dex */
    private static class d extends b {
        final WindowInsets.Builder a;

        d() {
            this.a = new WindowInsets.Builder();
        }

        d(ab abVar) {
            WindowInsets.Builder builder;
            WindowInsets i = abVar.i();
            if (i != null) {
                builder = new WindowInsets.Builder(i);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.a = builder;
        }

        @Override // androidx.core.g.ab.b
        void a(androidx.core.graphics.b bVar) {
            this.a.setSystemWindowInsets(bVar.a());
        }

        @Override // androidx.core.g.ab.b
        void b(androidx.core.graphics.b bVar) {
            this.a.setStableInsets(bVar.a());
        }

        @Override // androidx.core.g.ab.b
        ab a() {
            return ab.a(this.a.build());
        }
    }
}
