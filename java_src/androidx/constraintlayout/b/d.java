package androidx.constraintlayout.b;

import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.h;
import java.util.Arrays;
import java.util.HashMap;
/* compiled from: LinearSystem.java */
/* loaded from: classes.dex */
public class d {
    public static boolean a = false;
    public static boolean b = true;
    public static boolean c = true;
    public static boolean d = true;
    public static boolean e = true;
    public static boolean f = false;
    public static e o = null;
    public static long p = 0;
    public static long q = 0;
    private static int r = 1000;
    private a A;
    androidx.constraintlayout.b.b[] i;
    final c n;
    private a t;
    public boolean g = false;
    int h = 0;
    private HashMap<String, h> s = null;
    private int u = 32;
    private int v = this.u;
    public boolean j = false;
    public boolean k = false;
    private boolean[] w = new boolean[this.u];
    int l = 1;
    int m = 0;
    private int x = this.u;
    private h[] y = new h[r];
    private int z = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinearSystem.java */
    /* loaded from: classes.dex */
    public interface a {
        h a(d dVar, boolean[] zArr);

        void a(a aVar);

        void d(h hVar);

        boolean e();

        void f();

        h g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LinearSystem.java */
    /* loaded from: classes.dex */
    public class b extends androidx.constraintlayout.b.b {
        public b(c cVar) {
            this.e = new i(this, cVar);
        }
    }

    public d() {
        this.i = null;
        this.i = new androidx.constraintlayout.b.b[this.u];
        i();
        this.n = new c();
        this.t = new g(this.n);
        if (f) {
            this.A = new b(this.n);
        } else {
            this.A = new androidx.constraintlayout.b.b(this.n);
        }
    }

    public static e a() {
        return o;
    }

    private void h() {
        this.u *= 2;
        this.i = (androidx.constraintlayout.b.b[]) Arrays.copyOf(this.i, this.u);
        this.n.d = (h[]) Arrays.copyOf(this.n.d, this.u);
        this.w = new boolean[this.u];
        this.v = this.u;
        this.x = this.u;
        if (o != null) {
            o.d++;
            o.o = Math.max(o.o, this.u);
            o.x = o.o;
        }
    }

    private void i() {
        int i = 0;
        if (f) {
            while (i < this.m) {
                androidx.constraintlayout.b.b bVar = this.i[i];
                if (bVar != null) {
                    this.n.a.a(bVar);
                }
                this.i[i] = null;
                i++;
            }
            return;
        }
        while (i < this.m) {
            androidx.constraintlayout.b.b bVar2 = this.i[i];
            if (bVar2 != null) {
                this.n.b.a(bVar2);
            }
            this.i[i] = null;
            i++;
        }
    }

    public void b() {
        for (int i = 0; i < this.n.d.length; i++) {
            h hVar = this.n.d[i];
            if (hVar != null) {
                hVar.b();
            }
        }
        this.n.c.a(this.y, this.z);
        this.z = 0;
        Arrays.fill(this.n.d, (Object) null);
        if (this.s != null) {
            this.s.clear();
        }
        this.h = 0;
        this.t.f();
        this.l = 1;
        for (int i2 = 0; i2 < this.m; i2++) {
            if (this.i[i2] != null) {
                this.i[i2].c = false;
            }
        }
        i();
        this.m = 0;
        if (f) {
            this.A = new b(this.n);
        } else {
            this.A = new androidx.constraintlayout.b.b(this.n);
        }
    }

    public h a(Object obj) {
        h hVar = null;
        if (obj == null) {
            return null;
        }
        if (this.l + 1 >= this.v) {
            h();
        }
        if (obj instanceof androidx.constraintlayout.b.a.d) {
            androidx.constraintlayout.b.a.d dVar = (androidx.constraintlayout.b.a.d) obj;
            hVar = dVar.g();
            if (hVar == null) {
                dVar.a(this.n);
                hVar = dVar.g();
            }
            if (hVar.b == -1 || hVar.b > this.h || this.n.d[hVar.b] == null) {
                if (hVar.b != -1) {
                    hVar.b();
                }
                this.h++;
                this.l++;
                hVar.b = this.h;
                hVar.i = h.a.UNRESTRICTED;
                this.n.d[this.h] = hVar;
            }
        }
        return hVar;
    }

    public androidx.constraintlayout.b.b c() {
        androidx.constraintlayout.b.b a2;
        if (f) {
            a2 = this.n.a.a();
            if (a2 == null) {
                a2 = new b(this.n);
                q++;
            } else {
                a2.c();
            }
        } else {
            a2 = this.n.b.a();
            if (a2 == null) {
                a2 = new androidx.constraintlayout.b.b(this.n);
                p++;
            } else {
                a2.c();
            }
        }
        h.a();
        return a2;
    }

    public h d() {
        if (o != null) {
            o.m++;
        }
        if (this.l + 1 >= this.v) {
            h();
        }
        h a2 = a(h.a.SLACK, (String) null);
        this.h++;
        this.l++;
        a2.b = this.h;
        this.n.d[this.h] = a2;
        return a2;
    }

    public h e() {
        if (o != null) {
            o.n++;
        }
        if (this.l + 1 >= this.v) {
            h();
        }
        h a2 = a(h.a.SLACK, (String) null);
        this.h++;
        this.l++;
        a2.b = this.h;
        this.n.d[this.h] = a2;
        return a2;
    }

    void a(androidx.constraintlayout.b.b bVar, int i, int i2) {
        bVar.c(a(i2, (String) null), i);
    }

    public h a(int i, String str) {
        if (o != null) {
            o.l++;
        }
        if (this.l + 1 >= this.v) {
            h();
        }
        h a2 = a(h.a.ERROR, str);
        this.h++;
        this.l++;
        a2.b = this.h;
        a2.d = i;
        this.n.d[this.h] = a2;
        this.t.d(a2);
        return a2;
    }

    private h a(h.a aVar, String str) {
        h a2 = this.n.c.a();
        if (a2 == null) {
            a2 = new h(aVar, str);
            a2.a(aVar, str);
        } else {
            a2.b();
            a2.a(aVar, str);
        }
        if (this.z >= r) {
            r *= 2;
            this.y = (h[]) Arrays.copyOf(this.y, r);
        }
        h[] hVarArr = this.y;
        int i = this.z;
        this.z = i + 1;
        hVarArr[i] = a2;
        return a2;
    }

    public int b(Object obj) {
        h g = ((androidx.constraintlayout.b.a.d) obj).g();
        if (g != null) {
            return (int) (g.e + 0.5f);
        }
        return 0;
    }

    public void f() {
        if (o != null) {
            o.e++;
        }
        if (this.t.e()) {
            j();
        } else if (this.j || this.k) {
            if (o != null) {
                o.q++;
            }
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= this.m) {
                    z = true;
                    break;
                } else if (!this.i[i].f) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                a(this.t);
                return;
            }
            if (o != null) {
                o.p++;
            }
            j();
        } else {
            a(this.t);
        }
    }

    void a(a aVar) {
        if (o != null) {
            o.t++;
            o.u = Math.max(o.u, this.l);
            o.v = Math.max(o.v, this.m);
        }
        b(aVar);
        a(aVar, false);
        j();
    }

    public void a(androidx.constraintlayout.b.b bVar) {
        h c2;
        if (bVar == null) {
            return;
        }
        if (o != null) {
            o.f++;
            if (bVar.f) {
                o.g++;
            }
        }
        if (this.m + 1 >= this.x || this.l + 1 >= this.v) {
            h();
        }
        boolean z = false;
        if (!bVar.f) {
            bVar.c(this);
            if (bVar.e()) {
                return;
            }
            bVar.d();
            if (bVar.a(this)) {
                h e2 = e();
                bVar.a = e2;
                int i = this.m;
                b(bVar);
                if (this.m == i + 1) {
                    this.A.a(bVar);
                    a(this.A, true);
                    if (e2.c == -1) {
                        if (bVar.a == e2 && (c2 = bVar.c(e2)) != null) {
                            if (o != null) {
                                o.j++;
                            }
                            bVar.b(c2);
                        }
                        if (!bVar.f) {
                            bVar.a.a(this, bVar);
                        }
                        if (f) {
                            this.n.a.a(bVar);
                        } else {
                            this.n.b.a(bVar);
                        }
                        this.m--;
                    }
                    z = true;
                }
            }
            if (!bVar.a()) {
                return;
            }
        }
        if (z) {
            return;
        }
        b(bVar);
    }

    private final void b(androidx.constraintlayout.b.b bVar) {
        if (c && bVar.f) {
            bVar.a.a(this, bVar.b);
        } else {
            this.i[this.m] = bVar;
            bVar.a.c = this.m;
            this.m++;
            bVar.a.a(this, bVar);
        }
        if (c && this.g) {
            int i = 0;
            while (i < this.m) {
                if (this.i[i] == null) {
                    System.out.println("WTF");
                }
                if (this.i[i] != null && this.i[i].f) {
                    androidx.constraintlayout.b.b bVar2 = this.i[i];
                    bVar2.a.a(this, bVar2.b);
                    if (f) {
                        this.n.a.a(bVar2);
                    } else {
                        this.n.b.a(bVar2);
                    }
                    this.i[i] = null;
                    int i2 = i + 1;
                    int i3 = i2;
                    while (i2 < this.m) {
                        int i4 = i2 - 1;
                        this.i[i4] = this.i[i2];
                        if (this.i[i4].a.c == i2) {
                            this.i[i4].a.c = i4;
                        }
                        i3 = i2;
                        i2++;
                    }
                    if (i3 < this.m) {
                        this.i[i3] = null;
                    }
                    this.m--;
                    i--;
                }
                i++;
            }
            this.g = false;
        }
    }

    private final int a(a aVar, boolean z) {
        if (o != null) {
            o.h++;
        }
        for (int i = 0; i < this.l; i++) {
            this.w[i] = false;
        }
        boolean z2 = false;
        int i2 = 0;
        while (!z2) {
            if (o != null) {
                o.i++;
            }
            i2++;
            if (i2 >= this.l * 2) {
                return i2;
            }
            if (aVar.g() != null) {
                this.w[aVar.g().b] = true;
            }
            h a2 = aVar.a(this, this.w);
            if (a2 != null) {
                if (this.w[a2.b]) {
                    return i2;
                }
                this.w[a2.b] = true;
            }
            if (a2 != null) {
                float f2 = Float.MAX_VALUE;
                int i3 = -1;
                for (int i4 = 0; i4 < this.m; i4++) {
                    androidx.constraintlayout.b.b bVar = this.i[i4];
                    if (bVar.a.i != h.a.UNRESTRICTED && !bVar.f && bVar.a(a2)) {
                        float b2 = bVar.e.b(a2);
                        if (b2 < 0.0f) {
                            float f3 = (-bVar.b) / b2;
                            if (f3 < f2) {
                                i3 = i4;
                                f2 = f3;
                            }
                        }
                    }
                }
                if (i3 > -1) {
                    androidx.constraintlayout.b.b bVar2 = this.i[i3];
                    bVar2.a.c = -1;
                    if (o != null) {
                        o.j++;
                    }
                    bVar2.b(a2);
                    bVar2.a.c = i3;
                    bVar2.a.a(this, bVar2);
                }
            } else {
                z2 = true;
            }
        }
        return i2;
    }

    private int b(a aVar) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.m) {
                z = false;
                break;
            } else if (this.i[i].a.i != h.a.UNRESTRICTED && this.i[i].b < 0.0f) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            boolean z2 = false;
            int i2 = 0;
            while (!z2) {
                if (o != null) {
                    o.k++;
                }
                i2++;
                float f2 = Float.MAX_VALUE;
                int i3 = -1;
                int i4 = -1;
                int i5 = 0;
                for (int i6 = 0; i6 < this.m; i6++) {
                    androidx.constraintlayout.b.b bVar = this.i[i6];
                    if (bVar.a.i != h.a.UNRESTRICTED && !bVar.f && bVar.b < 0.0f) {
                        int i7 = 9;
                        if (e) {
                            int c2 = bVar.e.c();
                            int i8 = i5;
                            float f3 = f2;
                            int i9 = i4;
                            int i10 = i3;
                            int i11 = 0;
                            while (i11 < c2) {
                                h a2 = bVar.e.a(i11);
                                float b2 = bVar.e.b(a2);
                                if (b2 > 0.0f) {
                                    int i12 = i8;
                                    int i13 = 0;
                                    while (i13 < i7) {
                                        float f4 = a2.g[i13] / b2;
                                        if ((f4 < f3 && i13 == i12) || i13 > i12) {
                                            i10 = i6;
                                            i9 = a2.b;
                                            f3 = f4;
                                            i12 = i13;
                                        }
                                        i13++;
                                        i7 = 9;
                                    }
                                    i8 = i12;
                                }
                                i11++;
                                i7 = 9;
                            }
                            i3 = i10;
                            i4 = i9;
                            f2 = f3;
                            i5 = i8;
                        } else {
                            for (int i14 = 1; i14 < this.l; i14++) {
                                h hVar = this.n.d[i14];
                                float b3 = bVar.e.b(hVar);
                                if (b3 > 0.0f) {
                                    for (int i15 = 0; i15 < 9; i15++) {
                                        float f5 = hVar.g[i15] / b3;
                                        if ((f5 < f2 && i15 == i5) || i15 > i5) {
                                            i4 = i14;
                                            i3 = i6;
                                            i5 = i15;
                                            f2 = f5;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (i3 != -1) {
                    androidx.constraintlayout.b.b bVar2 = this.i[i3];
                    bVar2.a.c = -1;
                    if (o != null) {
                        o.j++;
                    }
                    bVar2.b(this.n.d[i4]);
                    bVar2.a.c = i3;
                    bVar2.a.a(this, bVar2);
                } else {
                    z2 = true;
                }
                if (i2 > this.l / 2) {
                    z2 = true;
                }
            }
            return i2;
        }
        return 0;
    }

    private void j() {
        for (int i = 0; i < this.m; i++) {
            androidx.constraintlayout.b.b bVar = this.i[i];
            bVar.a.e = bVar.b;
        }
    }

    public c g() {
        return this.n;
    }

    public void a(h hVar, h hVar2, int i, int i2) {
        androidx.constraintlayout.b.b c2 = c();
        h d2 = d();
        d2.d = 0;
        c2.a(hVar, hVar2, d2, i);
        if (i2 != 8) {
            a(c2, (int) (c2.e.b(d2) * (-1.0f)), i2);
        }
        a(c2);
    }

    public void a(h hVar, h hVar2, int i, boolean z) {
        androidx.constraintlayout.b.b c2 = c();
        h d2 = d();
        d2.d = 0;
        c2.a(hVar, hVar2, d2, i);
        a(c2);
    }

    public void b(h hVar, h hVar2, int i, int i2) {
        androidx.constraintlayout.b.b c2 = c();
        h d2 = d();
        d2.d = 0;
        c2.b(hVar, hVar2, d2, i);
        if (i2 != 8) {
            a(c2, (int) (c2.e.b(d2) * (-1.0f)), i2);
        }
        a(c2);
    }

    public void b(h hVar, h hVar2, int i, boolean z) {
        androidx.constraintlayout.b.b c2 = c();
        h d2 = d();
        d2.d = 0;
        c2.b(hVar, hVar2, d2, i);
        a(c2);
    }

    public void a(h hVar, h hVar2, int i, float f2, h hVar3, h hVar4, int i2, int i3) {
        androidx.constraintlayout.b.b c2 = c();
        c2.a(hVar, hVar2, i, f2, hVar3, hVar4, i2);
        if (i3 != 8) {
            c2.a(this, i3);
        }
        a(c2);
    }

    public void a(h hVar, h hVar2, h hVar3, h hVar4, float f2, int i) {
        androidx.constraintlayout.b.b c2 = c();
        c2.a(hVar, hVar2, hVar3, hVar4, f2);
        if (i != 8) {
            c2.a(this, i);
        }
        a(c2);
    }

    public androidx.constraintlayout.b.b c(h hVar, h hVar2, int i, int i2) {
        if (b && i2 == 8 && hVar2.f && hVar.c == -1) {
            hVar.a(this, hVar2.e + i);
            return null;
        }
        androidx.constraintlayout.b.b c2 = c();
        c2.a(hVar, hVar2, i);
        if (i2 != 8) {
            c2.a(this, i2);
        }
        a(c2);
        return c2;
    }

    public void a(h hVar, int i) {
        if (b && hVar.c == -1) {
            float f2 = i;
            hVar.a(this, f2);
            for (int i2 = 0; i2 < this.h + 1; i2++) {
                h hVar2 = this.n.d[i2];
                if (hVar2 != null && hVar2.m && hVar2.n == hVar.b) {
                    hVar2.a(this, hVar2.o + f2);
                }
            }
            return;
        }
        int i3 = hVar.c;
        if (hVar.c != -1) {
            androidx.constraintlayout.b.b bVar = this.i[i3];
            if (bVar.f) {
                bVar.b = i;
                return;
            } else if (bVar.e.c() == 0) {
                bVar.f = true;
                bVar.b = i;
                return;
            } else {
                androidx.constraintlayout.b.b c2 = c();
                c2.b(hVar, i);
                a(c2);
                return;
            }
        }
        androidx.constraintlayout.b.b c3 = c();
        c3.a(hVar, i);
        a(c3);
    }

    public static androidx.constraintlayout.b.b a(d dVar, h hVar, h hVar2, float f2) {
        return dVar.c().a(hVar, hVar2, f2);
    }

    public void a(androidx.constraintlayout.b.a.e eVar, androidx.constraintlayout.b.a.e eVar2, float f2, int i) {
        h a2 = a(eVar.a(d.a.LEFT));
        h a3 = a(eVar.a(d.a.TOP));
        h a4 = a(eVar.a(d.a.RIGHT));
        h a5 = a(eVar.a(d.a.BOTTOM));
        h a6 = a(eVar2.a(d.a.LEFT));
        h a7 = a(eVar2.a(d.a.TOP));
        h a8 = a(eVar2.a(d.a.RIGHT));
        h a9 = a(eVar2.a(d.a.BOTTOM));
        androidx.constraintlayout.b.b c2 = c();
        double d2 = f2;
        double d3 = i;
        c2.b(a3, a5, a7, a9, (float) (Math.sin(d2) * d3));
        a(c2);
        androidx.constraintlayout.b.b c3 = c();
        c3.b(a2, a4, a6, a8, (float) (Math.cos(d2) * d3));
        a(c3);
    }
}
