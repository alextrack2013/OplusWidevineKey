package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.a.e;
/* compiled from: Guideline.java */
/* loaded from: classes.dex */
public class h extends e {
    protected float a = -1.0f;
    protected int am = -1;
    protected int an = -1;
    private d ao = this.x;
    private int ap = 0;
    private int aq = 0;
    private boolean ar;

    @Override // androidx.constraintlayout.b.a.e
    public boolean a() {
        return true;
    }

    public h() {
        this.F.clear();
        this.F.add(this.ao);
        int length = this.E.length;
        for (int i = 0; i < length; i++) {
            this.E[i] = this.ao;
        }
    }

    public void a(int i) {
        if (this.ap == i) {
            return;
        }
        this.ap = i;
        this.F.clear();
        if (this.ap == 1) {
            this.ao = this.w;
        } else {
            this.ao = this.x;
        }
        this.F.add(this.ao);
        int length = this.E.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.E[i2] = this.ao;
        }
    }

    public d b() {
        return this.ao;
    }

    public int c() {
        return this.ap;
    }

    @Override // androidx.constraintlayout.b.a.e
    public d a(d.a aVar) {
        switch (aVar) {
            case LEFT:
            case RIGHT:
                if (this.ap == 1) {
                    return this.ao;
                }
                break;
            case TOP:
            case BOTTOM:
                if (this.ap == 0) {
                    return this.ao;
                }
                break;
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return null;
        }
        throw new AssertionError(aVar.name());
    }

    public void e(float f) {
        if (f > -1.0f) {
            this.a = f;
            this.am = -1;
            this.an = -1;
        }
    }

    public void b(int i) {
        if (i > -1) {
            this.a = -1.0f;
            this.am = i;
            this.an = -1;
        }
    }

    public void y(int i) {
        if (i > -1) {
            this.a = -1.0f;
            this.am = -1;
            this.an = i;
        }
    }

    public float f() {
        return this.a;
    }

    public int g() {
        return this.am;
    }

    public int h() {
        return this.an;
    }

    public void z(int i) {
        this.ao.a(i);
        this.ar = true;
    }

    @Override // androidx.constraintlayout.b.a.e
    public boolean d() {
        return this.ar;
    }

    @Override // androidx.constraintlayout.b.a.e
    public boolean e() {
        return this.ar;
    }

    @Override // androidx.constraintlayout.b.a.e
    public void a(androidx.constraintlayout.b.d dVar, boolean z) {
        f fVar = (f) v();
        if (fVar == null) {
            return;
        }
        d a = fVar.a(d.a.LEFT);
        d a2 = fVar.a(d.a.RIGHT);
        boolean z2 = this.H != null && this.H.G[0] == e.a.WRAP_CONTENT;
        if (this.ap == 0) {
            a = fVar.a(d.a.TOP);
            a2 = fVar.a(d.a.BOTTOM);
            z2 = this.H != null && this.H.G[1] == e.a.WRAP_CONTENT;
        }
        if (this.ar && this.ao.f()) {
            androidx.constraintlayout.b.h a3 = dVar.a(this.ao);
            dVar.a(a3, this.ao.d());
            if (this.am != -1) {
                if (z2) {
                    dVar.a(dVar.a(a2), a3, 0, 5);
                }
            } else if (this.an != -1 && z2) {
                androidx.constraintlayout.b.h a4 = dVar.a(a2);
                dVar.a(a3, dVar.a(a), 0, 5);
                dVar.a(a4, a3, 0, 5);
            }
            this.ar = false;
        } else if (this.am != -1) {
            androidx.constraintlayout.b.h a5 = dVar.a(this.ao);
            dVar.c(a5, dVar.a(a), this.am, 8);
            if (z2) {
                dVar.a(dVar.a(a2), a5, 0, 5);
            }
        } else if (this.an != -1) {
            androidx.constraintlayout.b.h a6 = dVar.a(this.ao);
            androidx.constraintlayout.b.h a7 = dVar.a(a2);
            dVar.c(a6, a7, -this.an, 8);
            if (z2) {
                dVar.a(a6, dVar.a(a), 0, 5);
                dVar.a(a7, a6, 0, 5);
            }
        } else if (this.a != -1.0f) {
            dVar.a(androidx.constraintlayout.b.d.a(dVar, dVar.a(this.ao), dVar.a(a2), this.a));
        }
    }

    @Override // androidx.constraintlayout.b.a.e
    public void b(androidx.constraintlayout.b.d dVar, boolean z) {
        if (v() == null) {
            return;
        }
        int b = dVar.b(this.ao);
        if (this.ap == 1) {
            m(b);
            n(0);
            p(v().B());
            o(0);
            return;
        }
        m(0);
        n(b);
        o(v().A());
        p(0);
    }
}
