package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.a.f;
import androidx.constraintlayout.b.a.a.p;
import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.a.e;
/* compiled from: HorizontalWidgetRun.java */
/* loaded from: classes.dex */
public class l extends p {
    private static int[] a = new int[2];

    public l(androidx.constraintlayout.b.a.e eVar) {
        super(eVar);
        this.j.e = f.a.LEFT;
        this.k.e = f.a.RIGHT;
        this.h = 0;
    }

    public String toString() {
        return "HorizontalRun " + this.d.x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void c() {
        this.e = null;
        this.j.a();
        this.k.a();
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
        this.g.j = false;
    }

    @Override // androidx.constraintlayout.b.a.a.p
    boolean a() {
        return this.f != e.a.MATCH_CONSTRAINT || this.d.l == 0;
    }

    @Override // androidx.constraintlayout.b.a.a.p
    void f() {
        androidx.constraintlayout.b.a.e v;
        androidx.constraintlayout.b.a.e v2;
        if (this.d.b) {
            this.g.a(this.d.A());
        }
        if (!this.g.j) {
            this.f = this.d.S();
            if (this.f != e.a.MATCH_CONSTRAINT) {
                if (this.f == e.a.MATCH_PARENT && (((v2 = this.d.v()) != null && v2.S() == e.a.FIXED) || v2.S() == e.a.MATCH_PARENT)) {
                    int A = (v2.A() - this.d.w.j()) - this.d.y.j();
                    a(this.j, v2.f.j, this.d.w.j());
                    a(this.k, v2.f.k, -this.d.y.j());
                    this.g.a(A);
                    return;
                } else if (this.f == e.a.FIXED) {
                    this.g.a(this.d.A());
                }
            }
        } else if (this.f == e.a.MATCH_PARENT && (((v = this.d.v()) != null && v.S() == e.a.FIXED) || v.S() == e.a.MATCH_PARENT)) {
            a(this.j, v.f.j, this.d.w.j());
            a(this.k, v.f.k, -this.d.y.j());
            return;
        }
        if (this.g.j && this.d.b) {
            if (this.d.E[0].c != null && this.d.E[1].c != null) {
                if (this.d.U()) {
                    this.j.f = this.d.E[0].j();
                    this.k.f = -this.d.E[1].j();
                    return;
                }
                f a2 = a(this.d.E[0]);
                if (a2 != null) {
                    a(this.j, a2, this.d.E[0].j());
                }
                f a3 = a(this.d.E[1]);
                if (a3 != null) {
                    a(this.k, a3, -this.d.E[1].j());
                }
                this.j.b = true;
                this.k.b = true;
                return;
            } else if (this.d.E[0].c != null) {
                f a4 = a(this.d.E[0]);
                if (a4 != null) {
                    a(this.j, a4, this.d.E[0].j());
                    a(this.k, this.j, this.g.g);
                    return;
                }
                return;
            } else if (this.d.E[1].c != null) {
                f a5 = a(this.d.E[1]);
                if (a5 != null) {
                    a(this.k, a5, -this.d.E[1].j());
                    a(this.j, this.k, -this.g.g);
                    return;
                }
                return;
            } else if ((this.d instanceof androidx.constraintlayout.b.a.i) || this.d.v() == null || this.d.a(d.a.CENTER).c != null) {
                return;
            } else {
                a(this.j, this.d.v().f.j, this.d.y());
                a(this.k, this.j, this.g.g);
                return;
            }
        }
        if (this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.l) {
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
                    if (this.d.m == 3) {
                        this.j.a = this;
                        this.k.a = this;
                        this.d.g.j.a = this;
                        this.d.g.k.a = this;
                        this.g.a = this;
                        if (this.d.V()) {
                            this.g.l.add(this.d.g.g);
                            this.d.g.g.k.add(this.g);
                            this.d.g.g.a = this;
                            this.g.l.add(this.d.g.j);
                            this.g.l.add(this.d.g.k);
                            this.d.g.j.k.add(this.g);
                            this.d.g.k.k.add(this.g);
                            break;
                        } else if (this.d.U()) {
                            this.d.g.g.l.add(this.g);
                            this.g.k.add(this.d.g.g);
                            break;
                        } else {
                            this.d.g.g.l.add(this.g);
                            break;
                        }
                    } else {
                        g gVar2 = this.d.g.g;
                        this.g.l.add(gVar2);
                        gVar2.k.add(this.g);
                        this.d.g.j.k.add(this.g);
                        this.d.g.k.k.add(this.g);
                        this.g.b = true;
                        this.g.k.add(this.j);
                        this.g.k.add(this.k);
                        this.j.l.add(this.g);
                        this.k.l.add(this.g);
                        break;
                    }
            }
        }
        if (this.d.E[0].c != null && this.d.E[1].c != null) {
            if (this.d.U()) {
                this.j.f = this.d.E[0].j();
                this.k.f = -this.d.E[1].j();
                return;
            }
            f a6 = a(this.d.E[0]);
            f a7 = a(this.d.E[1]);
            a6.b(this);
            a7.b(this);
            this.l = p.a.CENTER;
        } else if (this.d.E[0].c != null) {
            f a8 = a(this.d.E[0]);
            if (a8 != null) {
                a(this.j, a8, this.d.E[0].j());
                a(this.k, this.j, 1, this.g);
            }
        } else if (this.d.E[1].c != null) {
            f a9 = a(this.d.E[1]);
            if (a9 != null) {
                a(this.k, a9, -this.d.E[1].j());
                a(this.j, this.k, -1, this.g);
            }
        } else if ((this.d instanceof androidx.constraintlayout.b.a.i) || this.d.v() == null) {
        } else {
            a(this.j, this.d.v().f.j, this.d.y());
            a(this.k, this.j, 1, this.g);
        }
    }

    private void a(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        switch (i5) {
            case -1:
                int i8 = (int) ((i7 * f) + 0.5f);
                int i9 = (int) ((i6 / f) + 0.5f);
                if (i8 <= i6 && i7 <= i7) {
                    iArr[0] = i8;
                    iArr[1] = i7;
                    return;
                } else if (i6 > i6 || i9 > i7) {
                    return;
                } else {
                    iArr[0] = i6;
                    iArr[1] = i9;
                    return;
                }
            case 0:
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            case 1:
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            default:
                return;
        }
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
                a(dVar, this.d.w, this.d.y, 0);
                return;
        }
        if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
            switch (this.d.l) {
                case 2:
                    androidx.constraintlayout.b.a.e v = this.d.v();
                    if (v != null && v.f.g.j) {
                        this.g.a((int) ((v.f.g.g * this.d.q) + 0.5f));
                        break;
                    }
                    break;
                case 3:
                    if (this.d.m == 0 || this.d.m == 3) {
                        f fVar = this.d.g.j;
                        f fVar2 = this.d.g.k;
                        boolean z = this.d.w.c != null;
                        boolean z2 = this.d.x.c != null;
                        boolean z3 = this.d.y.c != null;
                        boolean z4 = this.d.z.c != null;
                        int O = this.d.O();
                        if (!z || !z2 || !z3 || !z4) {
                            if (!z || !z3) {
                                if (z2 && z4) {
                                    if (fVar.c && fVar2.c) {
                                        float N2 = this.d.N();
                                        int i = fVar.l.get(0).g + fVar.f;
                                        int i2 = fVar2.l.get(0).g - fVar2.f;
                                        switch (O) {
                                            case -1:
                                            case 1:
                                                int a2 = a(i2 - i, 1);
                                                int i3 = (int) ((a2 / N2) + 0.5f);
                                                int a3 = a(i3, 0);
                                                if (i3 != a3) {
                                                    a2 = (int) ((a3 * N2) + 0.5f);
                                                }
                                                this.g.a(a3);
                                                this.d.g.g.a(a2);
                                                break;
                                            case 0:
                                                int a4 = a(i2 - i, 1);
                                                int i4 = (int) ((a4 * N2) + 0.5f);
                                                int a5 = a(i4, 0);
                                                if (i4 != a5) {
                                                    a4 = (int) ((a5 / N2) + 0.5f);
                                                }
                                                this.g.a(a5);
                                                this.d.g.g.a(a4);
                                                break;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            } else if (this.j.c && this.k.c) {
                                float N3 = this.d.N();
                                int i5 = this.j.l.get(0).g + this.j.f;
                                int i6 = this.k.l.get(0).g - this.k.f;
                                switch (O) {
                                    case -1:
                                    case 0:
                                        int a6 = a(i6 - i5, 0);
                                        int i7 = (int) ((a6 * N3) + 0.5f);
                                        int a7 = a(i7, 1);
                                        if (i7 != a7) {
                                            a6 = (int) ((a7 / N3) + 0.5f);
                                        }
                                        this.g.a(a6);
                                        this.d.g.g.a(a7);
                                        break;
                                    case 1:
                                        int a8 = a(i6 - i5, 0);
                                        int i8 = (int) ((a8 / N3) + 0.5f);
                                        int a9 = a(i8, 1);
                                        if (i8 != a9) {
                                            a8 = (int) ((a9 * N3) + 0.5f);
                                        }
                                        this.g.a(a8);
                                        this.d.g.g.a(a9);
                                        break;
                                }
                            } else {
                                return;
                            }
                        } else {
                            float N4 = this.d.N();
                            if (fVar.j && fVar2.j) {
                                if (this.j.c && this.k.c) {
                                    a(a, this.j.l.get(0).g + this.j.f, this.k.l.get(0).g - this.k.f, fVar.g + fVar.f, fVar2.g - fVar2.f, N4, O);
                                    this.g.a(a[0]);
                                    this.d.g.g.a(a[1]);
                                    return;
                                }
                                return;
                            }
                            if (this.j.j && this.k.j) {
                                if (!fVar.c || !fVar2.c) {
                                    return;
                                }
                                a(a, this.j.g + this.j.f, this.k.g - this.k.f, fVar.l.get(0).g + fVar.f, fVar2.l.get(0).g - fVar2.f, N4, O);
                                this.g.a(a[0]);
                                this.d.g.g.a(a[1]);
                            }
                            if (this.j.c && this.k.c && fVar.c && fVar2.c) {
                                a(a, this.j.l.get(0).g + this.j.f, this.k.l.get(0).g - this.k.f, fVar.l.get(0).g + fVar.f, fVar2.l.get(0).g - fVar2.f, N4, O);
                                this.g.a(a[0]);
                                this.d.g.g.a(a[1]);
                                break;
                            } else {
                                return;
                            }
                        }
                    } else {
                        switch (this.d.O()) {
                            case -1:
                                N = (int) ((this.d.g.g.g * this.d.N()) + 0.5f);
                                break;
                            case 0:
                                N = (int) ((this.d.g.g.g / this.d.N()) + 0.5f);
                                break;
                            case 1:
                                N = (int) ((this.d.g.g.g * this.d.N()) + 0.5f);
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
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.d.l == 0 && !this.d.U()) {
                int i9 = this.j.l.get(0).g + this.j.f;
                int i10 = this.k.l.get(0).g + this.k.f;
                this.j.a(i9);
                this.k.a(i10);
                this.g.a(i10 - i9);
                return;
            }
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT && this.c == 1 && this.j.l.size() > 0 && this.k.l.size() > 0) {
                int min = Math.min((this.k.l.get(0).g + this.k.f) - (this.j.l.get(0).g + this.j.f), this.g.m);
                int i11 = this.d.p;
                int max = Math.max(this.d.o, min);
                if (i11 > 0) {
                    max = Math.min(i11, max);
                }
                this.g.a(max);
            }
            if (this.g.j) {
                f fVar3 = this.j.l.get(0);
                f fVar4 = this.k.l.get(0);
                int i12 = fVar3.g + this.j.f;
                int i13 = fVar4.g + this.k.f;
                float I = this.d.I();
                if (fVar3 == fVar4) {
                    i12 = fVar3.g;
                    i13 = fVar4.g;
                    I = 0.5f;
                }
                this.j.a((int) (i12 + 0.5f + (((i13 - i12) - this.g.g) * I)));
                this.k.a(this.j.g + this.g.g);
            }
        }
    }

    @Override // androidx.constraintlayout.b.a.a.p
    public void e() {
        if (this.j.j) {
            this.d.m(this.j.g);
        }
    }
}
