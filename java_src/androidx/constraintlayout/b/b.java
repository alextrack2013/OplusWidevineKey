package androidx.constraintlayout.b;

import androidx.constraintlayout.b.d;
import androidx.constraintlayout.b.h;
import java.util.ArrayList;
/* compiled from: ArrayRow.java */
/* loaded from: classes.dex */
public class b implements d.a {
    public a e;
    h a = null;
    float b = 0.0f;
    boolean c = false;
    ArrayList<h> d = new ArrayList<>();
    boolean f = false;

    /* compiled from: ArrayRow.java */
    /* loaded from: classes.dex */
    public interface a {
        float a(b bVar, boolean z);

        float a(h hVar, boolean z);

        h a(int i);

        void a();

        void a(float f);

        void a(h hVar, float f);

        void a(h hVar, float f, boolean z);

        boolean a(h hVar);

        float b(int i);

        float b(h hVar);

        void b();

        int c();
    }

    public b() {
    }

    public b(c cVar) {
        this.e = new androidx.constraintlayout.b.a(this, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.a != null && (this.a.i == h.a.UNRESTRICTED || this.b >= 0.0f);
    }

    public String toString() {
        return b();
    }

    String b() {
        boolean z;
        float b;
        int i;
        String str = (this.a == null ? "0" : "" + this.a) + " = ";
        if (this.b != 0.0f) {
            str = str + this.b;
            z = true;
        } else {
            z = false;
        }
        int c = this.e.c();
        for (int i2 = 0; i2 < c; i2++) {
            h a2 = this.e.a(i2);
            if (a2 != null && (this.e.b(i2)) != 0.0f) {
                String hVar = a2.toString();
                if (z) {
                    if (i > 0) {
                        str = str + " + ";
                    } else {
                        str = str + " - ";
                        b *= -1.0f;
                    }
                } else if (b < 0.0f) {
                    str = str + "- ";
                    b *= -1.0f;
                }
                str = b == 1.0f ? str + hVar : str + b + " " + hVar;
                z = true;
            }
        }
        if (z) {
            return str;
        }
        return str + "0.0";
    }

    public void c() {
        this.a = null;
        this.e.a();
        this.b = 0.0f;
        this.f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(h hVar) {
        return this.e.a(hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(h hVar, int i) {
        this.a = hVar;
        float f = i;
        hVar.e = f;
        this.b = f;
        this.f = true;
        return this;
    }

    public b b(h hVar, int i) {
        if (i < 0) {
            this.b = i * (-1);
            this.e.a(hVar, 1.0f);
        } else {
            this.b = i;
            this.e.a(hVar, -1.0f);
        }
        return this;
    }

    public b a(h hVar, h hVar2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.e.a(hVar, -1.0f);
            this.e.a(hVar2, 1.0f);
        } else {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b c(h hVar, int i) {
        this.e.a(hVar, i);
        return this;
    }

    public b a(h hVar, h hVar2, h hVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.e.a(hVar, -1.0f);
            this.e.a(hVar2, 1.0f);
            this.e.a(hVar3, 1.0f);
        } else {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
            this.e.a(hVar3, -1.0f);
        }
        return this;
    }

    public b b(h hVar, h hVar2, h hVar3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        if (!z) {
            this.e.a(hVar, -1.0f);
            this.e.a(hVar2, 1.0f);
            this.e.a(hVar3, -1.0f);
        } else {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
            this.e.a(hVar3, 1.0f);
        }
        return this;
    }

    public b a(float f, float f2, float f3, h hVar, h hVar2, h hVar3, h hVar4) {
        this.b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
            this.e.a(hVar4, 1.0f);
            this.e.a(hVar3, -1.0f);
        } else if (f == 0.0f) {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
        } else if (f3 == 0.0f) {
            this.e.a(hVar3, 1.0f);
            this.e.a(hVar4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
            this.e.a(hVar4, f4);
            this.e.a(hVar3, -f4);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(h hVar, h hVar2, int i, float f, h hVar3, h hVar4, int i2) {
        if (hVar2 == hVar3) {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar4, 1.0f);
            this.e.a(hVar2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
            this.e.a(hVar3, -1.0f);
            this.e.a(hVar4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.e.a(hVar, -1.0f);
            this.e.a(hVar2, 1.0f);
            this.b = i;
        } else if (f >= 1.0f) {
            this.e.a(hVar4, -1.0f);
            this.e.a(hVar3, 1.0f);
            this.b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.e.a(hVar, f2 * 1.0f);
            this.e.a(hVar2, f2 * (-1.0f));
            this.e.a(hVar3, (-1.0f) * f);
            this.e.a(hVar4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    public b a(d dVar, int i) {
        this.e.a(dVar.a(i, "ep"), 1.0f);
        this.e.a(dVar.a(i, "em"), -1.0f);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(h hVar, h hVar2, float f) {
        this.e.a(hVar, -1.0f);
        this.e.a(hVar2, f);
        return this;
    }

    public b a(h hVar, h hVar2, h hVar3, h hVar4, float f) {
        this.e.a(hVar, -1.0f);
        this.e.a(hVar2, 1.0f);
        this.e.a(hVar3, f);
        this.e.a(hVar4, -f);
        return this;
    }

    public b b(h hVar, h hVar2, h hVar3, h hVar4, float f) {
        this.e.a(hVar3, 0.5f);
        this.e.a(hVar4, 0.5f);
        this.e.a(hVar, -0.5f);
        this.e.a(hVar2, -0.5f);
        this.b = -f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (this.b < 0.0f) {
            this.b *= -1.0f;
            this.e.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(d dVar) {
        boolean z;
        h b = b(dVar);
        if (b == null) {
            z = true;
        } else {
            b(b);
            z = false;
        }
        if (this.e.c() == 0) {
            this.f = true;
        }
        return z;
    }

    h b(d dVar) {
        boolean a2;
        boolean a3;
        int c = this.e.c();
        h hVar = null;
        h hVar2 = null;
        boolean z = false;
        boolean z2 = false;
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < c; i++) {
            float b = this.e.b(i);
            h a4 = this.e.a(i);
            if (a4.i == h.a.UNRESTRICTED) {
                if (hVar == null) {
                    a3 = a(a4, dVar);
                } else if (f > b) {
                    a3 = a(a4, dVar);
                } else if (!z && a(a4, dVar)) {
                    f = b;
                    hVar = a4;
                    z = true;
                }
                z = a3;
                f = b;
                hVar = a4;
            } else if (hVar == null && b < 0.0f) {
                if (hVar2 == null) {
                    a2 = a(a4, dVar);
                } else if (f2 > b) {
                    a2 = a(a4, dVar);
                } else if (!z2 && a(a4, dVar)) {
                    f2 = b;
                    hVar2 = a4;
                    z2 = true;
                }
                z2 = a2;
                f2 = b;
                hVar2 = a4;
            }
        }
        return hVar != null ? hVar : hVar2;
    }

    private boolean a(h hVar, d dVar) {
        return hVar.l <= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(h hVar) {
        if (this.a != null) {
            this.e.a(this.a, -1.0f);
            this.a.c = -1;
            this.a = null;
        }
        float a2 = this.e.a(hVar, true) * (-1.0f);
        this.a = hVar;
        if (a2 == 1.0f) {
            return;
        }
        this.b /= a2;
        this.e.a(a2);
    }

    @Override // androidx.constraintlayout.b.d.a
    public boolean e() {
        return this.a == null && this.b == 0.0f && this.e.c() == 0;
    }

    public void a(d dVar, b bVar, boolean z) {
        this.b += bVar.b * this.e.a(bVar, z);
        if (z) {
            bVar.a.b(this);
        }
        if (d.c && this.a != null && this.e.c() == 0) {
            this.f = true;
            dVar.g = true;
        }
    }

    public void a(d dVar, h hVar, boolean z) {
        if (hVar.f) {
            this.b += hVar.e * this.e.b(hVar);
            this.e.a(hVar, z);
            if (z) {
                hVar.b(this);
            }
            if (d.c && hVar != null && this.e.c() == 0) {
                this.f = true;
                dVar.g = true;
            }
        }
    }

    public void b(d dVar, h hVar, boolean z) {
        if (hVar.m) {
            float b = this.e.b(hVar);
            this.b += hVar.o * b;
            this.e.a(hVar, z);
            if (z) {
                hVar.b(this);
            }
            this.e.a(dVar.n.d[hVar.n], b, z);
            if (d.c && hVar != null && this.e.c() == 0) {
                this.f = true;
                dVar.g = true;
            }
        }
    }

    private h a(boolean[] zArr, h hVar) {
        int c = this.e.c();
        h hVar2 = null;
        float f = 0.0f;
        for (int i = 0; i < c; i++) {
            float b = this.e.b(i);
            if (b < 0.0f) {
                h a2 = this.e.a(i);
                if ((zArr == null || !zArr[a2.b]) && a2 != hVar && ((a2.i == h.a.SLACK || a2.i == h.a.ERROR) && b < f)) {
                    f = b;
                    hVar2 = a2;
                }
            }
        }
        return hVar2;
    }

    public h c(h hVar) {
        return a((boolean[]) null, hVar);
    }

    @Override // androidx.constraintlayout.b.d.a
    public h a(d dVar, boolean[] zArr) {
        return a(zArr, (h) null);
    }

    @Override // androidx.constraintlayout.b.d.a
    public void f() {
        this.e.a();
        this.a = null;
        this.b = 0.0f;
    }

    @Override // androidx.constraintlayout.b.d.a
    public void a(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.a = null;
            this.e.a();
            for (int i = 0; i < bVar.e.c(); i++) {
                this.e.a(bVar.e.a(i), bVar.e.b(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.b.d.a
    public void d(h hVar) {
        float f = 1.0f;
        if (hVar.d != 1) {
            if (hVar.d == 2) {
                f = 1000.0f;
            } else if (hVar.d == 3) {
                f = 1000000.0f;
            } else if (hVar.d == 4) {
                f = 1.0E9f;
            } else if (hVar.d == 5) {
                f = 1.0E12f;
            }
        }
        this.e.a(hVar, f);
    }

    @Override // androidx.constraintlayout.b.d.a
    public h g() {
        return this.a;
    }

    public void c(d dVar) {
        if (dVar.i.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int c = this.e.c();
            for (int i = 0; i < c; i++) {
                h a2 = this.e.a(i);
                if (a2.c != -1 || a2.f || a2.m) {
                    this.d.add(a2);
                }
            }
            int size = this.d.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    h hVar = this.d.get(i2);
                    if (hVar.f) {
                        a(dVar, hVar, true);
                    } else if (hVar.m) {
                        b(dVar, hVar, true);
                    } else {
                        a(dVar, dVar.i[hVar.c], true);
                    }
                }
                this.d.clear();
            } else {
                z = true;
            }
        }
        if (d.c && this.a != null && this.e.c() == 0) {
            this.f = true;
            dVar.g = true;
        }
    }
}
