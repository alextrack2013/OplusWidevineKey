package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.a.e;
/* compiled from: Barrier.java */
/* loaded from: classes.dex */
public class a extends j {
    private int ao = 0;
    private boolean ap = true;
    private int aq = 0;
    boolean a = false;

    @Override // androidx.constraintlayout.b.a.e
    public boolean a() {
        return true;
    }

    public int b() {
        return this.ao;
    }

    public void a(int i) {
        this.ao = i;
    }

    public void a(boolean z) {
        this.ap = z;
    }

    public boolean c() {
        return this.ap;
    }

    @Override // androidx.constraintlayout.b.a.e
    public boolean d() {
        return this.a;
    }

    @Override // androidx.constraintlayout.b.a.e
    public boolean e() {
        return this.a;
    }

    @Override // androidx.constraintlayout.b.a.e
    public String toString() {
        String str = "[Barrier] " + x() + " {";
        for (int i = 0; i < this.an; i++) {
            e eVar = this.am[i];
            if (i > 0) {
                str = str + ", ";
            }
            str = str + eVar.x();
        }
        return str + "}";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        for (int i = 0; i < this.an; i++) {
            e eVar = this.am[i];
            if (this.ao == 0 || this.ao == 1) {
                eVar.a(0, true);
            } else if (this.ao == 2 || this.ao == 3) {
                eVar.a(1, true);
            }
        }
    }

    @Override // androidx.constraintlayout.b.a.e
    public void a(androidx.constraintlayout.b.d dVar, boolean z) {
        boolean z2;
        this.E[0] = this.w;
        this.E[2] = this.x;
        this.E[1] = this.y;
        this.E[3] = this.z;
        for (int i = 0; i < this.E.length; i++) {
            this.E[i].f = dVar.a(this.E[i]);
        }
        if (this.ao < 0 || this.ao >= 4) {
            return;
        }
        d dVar2 = this.E[this.ao];
        if (!this.a) {
            i();
        }
        if (this.a) {
            this.a = false;
            if (this.ao == 0 || this.ao == 1) {
                dVar.a(this.w.f, this.M);
                dVar.a(this.y.f, this.M);
                return;
            } else if (this.ao == 2 || this.ao == 3) {
                dVar.a(this.x.f, this.N);
                dVar.a(this.z.f, this.N);
                return;
            } else {
                return;
            }
        }
        for (int i2 = 0; i2 < this.an; i2++) {
            e eVar = this.am[i2];
            if ((this.ap || eVar.a()) && (((this.ao == 0 || this.ao == 1) && eVar.S() == e.a.MATCH_CONSTRAINT && eVar.w.c != null && eVar.y.c != null) || ((this.ao == 2 || this.ao == 3) && eVar.T() == e.a.MATCH_CONSTRAINT && eVar.x.c != null && eVar.z.c != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.w.c() || this.y.c();
        boolean z4 = this.x.c() || this.z.c();
        int i3 = !z2 && ((this.ao == 0 && z3) || ((this.ao == 2 && z4) || ((this.ao == 1 && z3) || (this.ao == 3 && z4)))) ? 5 : 4;
        for (int i4 = 0; i4 < this.an; i4++) {
            e eVar2 = this.am[i4];
            if (this.ap || eVar2.a()) {
                androidx.constraintlayout.b.h a = dVar.a(eVar2.E[this.ao]);
                eVar2.E[this.ao].f = a;
                int i5 = (eVar2.E[this.ao].c == null || eVar2.E[this.ao].c.a != this) ? 0 : eVar2.E[this.ao].d + 0;
                if (this.ao == 0 || this.ao == 2) {
                    dVar.b(dVar2.f, a, this.aq - i5, z2);
                } else {
                    dVar.a(dVar2.f, a, this.aq + i5, z2);
                }
                dVar.c(dVar2.f, a, this.aq + i5, i3);
            }
        }
        if (this.ao == 0) {
            dVar.c(this.y.f, this.w.f, 0, 8);
            dVar.c(this.w.f, this.H.y.f, 0, 4);
            dVar.c(this.w.f, this.H.w.f, 0, 0);
        } else if (this.ao == 1) {
            dVar.c(this.w.f, this.y.f, 0, 8);
            dVar.c(this.w.f, this.H.w.f, 0, 4);
            dVar.c(this.w.f, this.H.y.f, 0, 0);
        } else if (this.ao == 2) {
            dVar.c(this.z.f, this.x.f, 0, 8);
            dVar.c(this.x.f, this.H.z.f, 0, 4);
            dVar.c(this.x.f, this.H.x.f, 0, 0);
        } else if (this.ao == 3) {
            dVar.c(this.x.f, this.z.f, 0, 8);
            dVar.c(this.x.f, this.H.x.f, 0, 4);
            dVar.c(this.x.f, this.H.z.f, 0, 0);
        }
    }

    public void b(int i) {
        this.aq = i;
    }

    public int g() {
        return this.aq;
    }

    public int h() {
        switch (this.ao) {
            case 0:
            case 1:
                return 0;
            case 2:
            case 3:
                return 1;
            default:
                return -1;
        }
    }

    public boolean i() {
        boolean z = true;
        for (int i = 0; i < this.an; i++) {
            e eVar = this.am[i];
            if ((this.ap || eVar.a()) && (((this.ao == 0 || this.ao == 1) && !eVar.d()) || ((this.ao == 2 || this.ao == 3) && !eVar.e()))) {
                z = false;
            }
        }
        if (!z || this.an <= 0) {
            return false;
        }
        int i2 = 0;
        boolean z2 = false;
        for (int i3 = 0; i3 < this.an; i3++) {
            e eVar2 = this.am[i3];
            if (this.ap || eVar2.a()) {
                if (!z2) {
                    if (this.ao == 0) {
                        i2 = eVar2.a(d.a.LEFT).d();
                    } else if (this.ao == 1) {
                        i2 = eVar2.a(d.a.RIGHT).d();
                    } else if (this.ao == 2) {
                        i2 = eVar2.a(d.a.TOP).d();
                    } else if (this.ao == 3) {
                        i2 = eVar2.a(d.a.BOTTOM).d();
                    }
                    z2 = true;
                }
                if (this.ao == 0) {
                    i2 = Math.min(i2, eVar2.a(d.a.LEFT).d());
                } else if (this.ao == 1) {
                    i2 = Math.max(i2, eVar2.a(d.a.RIGHT).d());
                } else if (this.ao == 2) {
                    i2 = Math.min(i2, eVar2.a(d.a.TOP).d());
                } else if (this.ao == 3) {
                    i2 = Math.max(i2, eVar2.a(d.a.BOTTOM).d());
                }
            }
        }
        int i4 = i2 + this.aq;
        if (this.ao == 0 || this.ao == 1) {
            a(i4, i4);
        } else {
            b(i4, i4);
        }
        this.a = true;
        return true;
    }
}
