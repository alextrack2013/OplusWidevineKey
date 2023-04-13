package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.a.f;
import androidx.constraintlayout.b.a.a.p;
import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.a.e;
/* compiled from: VerticalWidgetRun.java */
/* loaded from: classes.dex */
public class n extends p {
    public f a;
    g b;

    public n(androidx.constraintlayout.b.a.e eVar) {
        super(eVar);
        this.a = new f(this);
        this.b = null;
        this.j.e = f.a.TOP;
        this.k.e = f.a.BOTTOM;
        this.a.e = f.a.BASELINE;
        this.h = 1;
    }

    public String toString() {
        return "VerticalRun " + this.d.x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void c() {
        this.e = null;
        this.j.a();
        this.k.a();
        this.a.a();
        this.g.a();
        this.i = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void d() {
        this.i = false;
        this.j.a();
        this.j.j = false;
        this.k.a();
        this.k.j = false;
        this.a.a();
        this.a.j = false;
        this.g.j = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public boolean a() {
        return this.f != e.a.MATCH_CONSTRAINT || this.d.m == 0;
    }

    @Override // androidx.constraintlayout.b.a.a.p, androidx.constraintlayout.b.a.a.d
    public void a(d dVar) {
        int N;
        switch (this.l) {
            case START:
                b(dVar);
                break;
            case END:
                c(dVar);
                break;
            case CENTER:
                a(dVar, this.d.x, this.d.z, 1);
                return;
        }
        if (this.g.c && !this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.m) {
                case 2:
                    androidx.constraintlayout.b.a.e v = this.d.v();
                    if (v != null && v.g.g.j) {
                        this.g.a((int) ((v.g.g.g * this.d.t) + 0.5f));
                        break;
                    }
                    break;
                case 3:
                    if (this.d.f.g.j) {
                        switch (this.d.O()) {
                            case -1:
                                N = (int) ((this.d.f.g.g / this.d.N()) + 0.5f);
                                break;
                            case 0:
                                N = (int) ((this.d.f.g.g * this.d.N()) + 0.5f);
                                break;
                            case 1:
                                N = (int) ((this.d.f.g.g / this.d.N()) + 0.5f);
                                break;
                            default:
                                N = 0;
                                break;
                        }
                        this.g.a(N);
                        break;
                    }
                    break;
            }
        }
        if (this.j.c && this.k.c) {
            if (this.j.j && this.k.j && this.g.j) {
                return;
            }
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.d.l == 0 && !this.d.V()) {
                int i = this.j.l.get(0).g + this.j.f;
                int i2 = this.k.l.get(0).g + this.k.f;
                this.j.a(i);
                this.k.a(i2);
                this.g.a(i2 - i);
                return;
            }
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.c == 1 && this.j.l.size() > 0 && this.k.l.size() > 0) {
                int i3 = (this.k.l.get(0).g + this.k.f) - (this.j.l.get(0).g + this.j.f);
                if (i3 < this.g.m) {
                    this.g.a(i3);
                } else {
                    this.g.a(this.g.m);
                }
            }
            if (this.g.j && this.j.l.size() > 0 && this.k.l.size() > 0) {
                f fVar = this.j.l.get(0);
                f fVar2 = this.k.l.get(0);
                int i4 = fVar.g + this.j.f;
                int i5 = fVar2.g + this.k.f;
                float J = this.d.J();
                if (fVar == fVar2) {
                    i4 = fVar.g;
                    i5 = fVar2.g;
                    J = 0.5f;
                }
                this.j.a((int) (i4 + 0.5f + (((i5 - i4) - this.g.g) * J)));
                this.k.a(this.j.g + this.g.g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void f() {
        androidx.constraintlayout.b.a.e v;
        androidx.constraintlayout.b.a.e v2;
        if (this.d.b) {
            this.g.a(this.d.B());
        }
        if (!this.g.j) {
            this.f = this.d.T();
            if (this.d.K()) {
                this.b = new a(this);
            }
            if (this.f != e.a.MATCH_CONSTRAINT) {
                if (this.f == e.a.MATCH_PARENT && (v2 = this.d.v()) != null && v2.T() == e.a.FIXED) {
                    int B = (v2.B() - this.d.x.j()) - this.d.z.j();
                    a(this.j, v2.g.j, this.d.x.j());
                    a(this.k, v2.g.k, -this.d.z.j());
                    this.g.a(B);
                    return;
                } else if (this.f == e.a.FIXED) {
                    this.g.a(this.d.B());
                }
            }
        } else if (this.f == e.a.MATCH_PARENT && (v = this.d.v()) != null && v.T() == e.a.FIXED) {
            a(this.j, v.g.j, this.d.x.j());
            a(this.k, v.g.k, -this.d.z.j());
            return;
        }
        if (this.g.j && this.d.b) {
            if (this.d.E[2].c != null && this.d.E[3].c != null) {
                if (this.d.V()) {
                    this.j.f = this.d.E[2].j();
                    this.k.f = -this.d.E[3].j();
                } else {
                    f a = a(this.d.E[2]);
                    if (a != null) {
                        a(this.j, a, this.d.E[2].j());
                    }
                    f a2 = a(this.d.E[3]);
                    if (a2 != null) {
                        a(this.k, a2, -this.d.E[3].j());
                    }
                    this.j.b = true;
                    this.k.b = true;
                }
                if (this.d.K()) {
                    a(this.a, this.j, this.d.L());
                    return;
                }
                return;
            } else if (this.d.E[2].c != null) {
                f a3 = a(this.d.E[2]);
                if (a3 != null) {
                    a(this.j, a3, this.d.E[2].j());
                    a(this.k, this.j, this.g.g);
                    if (this.d.K()) {
                        a(this.a, this.j, this.d.L());
                        return;
                    }
                    return;
                }
                return;
            } else if (this.d.E[3].c != null) {
                f a4 = a(this.d.E[3]);
                if (a4 != null) {
                    a(this.k, a4, -this.d.E[3].j());
                    a(this.j, this.k, -this.g.g);
                }
                if (this.d.K()) {
                    a(this.a, this.j, this.d.L());
                    return;
                }
                return;
            } else if (this.d.E[4].c != null) {
                f a5 = a(this.d.E[4]);
                if (a5 != null) {
                    a(this.a, a5, 0);
                    a(this.j, this.a, -this.d.L());
                    a(this.k, this.j, this.g.g);
                    return;
                }
                return;
            } else if ((this.d instanceof androidx.constraintlayout.b.a.i) || this.d.v() == null || this.d.a(d.a.CENTER).c != null) {
                return;
            } else {
                a(this.j, this.d.v().g.j, this.d.z());
                a(this.k, this.j, this.g.g);
                if (this.d.K()) {
                    a(this.a, this.j, this.d.L());
                    return;
                }
                return;
            }
        }
        if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.m) {
                case 2:
                    androidx.constraintlayout.b.a.e v3 = this.d.v();
                    if (v3 != null) {
                        g gVar = v3.g.g;
                        this.g.l.add(gVar);
                        gVar.k.add(this.g);
                        this.g.b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                        break;
                    }
                    break;
                case 3:
                    if (!this.d.V() && this.d.l != 3) {
                        g gVar2 = this.d.f.g;
                        this.g.l.add(gVar2);
                        gVar2.k.add(this.g);
                        this.g.b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                        break;
                    }
                    break;
            }
        } else {
            this.g.b(this);
        }
        if (this.d.E[2].c != null && this.d.E[3].c != null) {
            if (this.d.V()) {
                this.j.f = this.d.E[2].j();
                this.k.f = -this.d.E[3].j();
            } else {
                f a6 = a(this.d.E[2]);
                f a7 = a(this.d.E[3]);
                a6.b(this);
                a7.b(this);
                this.l = p.a.CENTER;
            }
            if (this.d.K()) {
                a(this.a, this.j, 1, this.b);
            }
        } else if (this.d.E[2].c != null) {
            f a8 = a(this.d.E[2]);
            if (a8 != null) {
                a(this.j, a8, this.d.E[2].j());
                a(this.k, this.j, 1, this.g);
                if (this.d.K()) {
                    a(this.a, this.j, 1, this.b);
                }
                if (this.f == e.a.MATCH_CONSTRAINT && this.d.N() > 0.0f && this.d.f.f == e.a.MATCH_CONSTRAINT) {
                    this.d.f.g.k.add(this.g);
                    this.g.l.add(this.d.f.g);
                    this.g.a = this;
                }
            }
        } else if (this.d.E[3].c != null) {
            f a9 = a(this.d.E[3]);
            if (a9 != null) {
                a(this.k, a9, -this.d.E[3].j());
                a(this.j, this.k, -1, this.g);
                if (this.d.K()) {
                    a(this.a, this.j, 1, this.b);
                }
            }
        } else if (this.d.E[4].c != null) {
            f a10 = a(this.d.E[4]);
            if (a10 != null) {
                a(this.a, a10, 0);
                a(this.j, this.a, -1, this.b);
                a(this.k, this.j, 1, this.g);
            }
        } else if (!(this.d instanceof androidx.constraintlayout.b.a.i) && this.d.v() != null) {
            a(this.j, this.d.v().g.j, this.d.z());
            a(this.k, this.j, 1, this.g);
            if (this.d.K()) {
                a(this.a, this.j, 1, this.b);
            }
            if (this.f == e.a.MATCH_CONSTRAINT && this.d.N() > 0.0f && this.d.f.f == e.a.MATCH_CONSTRAINT) {
                this.d.f.g.k.add(this.g);
                this.g.l.add(this.d.f.g);
                this.g.a = this;
            }
        }
        if (this.g.l.size() == 0) {
            this.g.c = true;
        }
    }

    @Override // androidx.constraintlayout.b.a.a.p
    public void e() {
        if (this.j.j) {
            this.d.n(this.j.g);
        }
    }
}
