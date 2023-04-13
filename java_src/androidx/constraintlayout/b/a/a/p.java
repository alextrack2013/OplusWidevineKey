package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.e;
/* compiled from: WidgetRun.java */
/* loaded from: classes.dex */
public abstract class p implements d {
    public int c;
    androidx.constraintlayout.b.a.e d;
    m e;
    protected e.a f;
    g g = new g(this);
    public int h = 0;
    boolean i = false;
    public f j = new f(this);
    public f k = new f(this);
    protected a l = a.NONE;

    /* compiled from: WidgetRun.java */
    /* loaded from: classes.dex */
    enum a {
        NONE,
        START,
        END,
        CENTER
    }

    @Override // androidx.constraintlayout.b.a.a.d
    public void a(d dVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(d dVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void c();

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(d dVar) {
    }

    abstract void d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void f();

    public p(androidx.constraintlayout.b.a.e eVar) {
        this.d = eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final f a(androidx.constraintlayout.b.a.d dVar) {
        if (dVar.c == null) {
            return null;
        }
        androidx.constraintlayout.b.a.e eVar = dVar.c.a;
        switch (dVar.c.b) {
            case LEFT:
                return eVar.f.j;
            case RIGHT:
                return eVar.f.k;
            case TOP:
                return eVar.g.j;
            case BASELINE:
                return eVar.g.a;
            case BOTTOM:
                return eVar.g.k;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(d dVar, androidx.constraintlayout.b.a.d dVar2, androidx.constraintlayout.b.a.d dVar3, int i) {
        float J;
        f a2 = a(dVar2);
        f a3 = a(dVar3);
        if (a2.j && a3.j) {
            int j = a2.g + dVar2.j();
            int j2 = a3.g - dVar3.j();
            int i2 = j2 - j;
            if (!this.g.j && this.f == e.a.MATCH_CONSTRAINT) {
                b(i, i2);
            }
            if (this.g.j) {
                if (this.g.g == i2) {
                    this.j.a(j);
                    this.k.a(j2);
                    return;
                }
                if (i == 0) {
                    J = this.d.I();
                } else {
                    J = this.d.J();
                }
                if (a2 == a3) {
                    j = a2.g;
                    j2 = a3.g;
                    J = 0.5f;
                }
                this.j.a((int) (j + 0.5f + (((j2 - j) - this.g.g) * J)));
                this.k.a(this.j.g + this.g.g);
            }
        }
    }

    private void b(int i, int i2) {
        int i3;
        switch (this.c) {
            case 0:
                this.g.a(a(i2, i));
                return;
            case 1:
                this.g.a(Math.min(a(this.g.m, i), i2));
                return;
            case 2:
                androidx.constraintlayout.b.a.e v = this.d.v();
                if (v != null) {
                    p pVar = i == 0 ? v.f : v.g;
                    if (pVar.g.j) {
                        this.g.a(a((int) ((pVar.g.g * (i == 0 ? this.d.q : this.d.t)) + 0.5f), i));
                        return;
                    }
                    return;
                }
                return;
            case 3:
                if (this.d.f.f == e.a.MATCH_CONSTRAINT && this.d.f.c == 3 && this.d.g.f == e.a.MATCH_CONSTRAINT && this.d.g.c == 3) {
                    return;
                }
                p pVar2 = i == 0 ? this.d.g : this.d.f;
                if (pVar2.g.j) {
                    float N = this.d.N();
                    if (i == 1) {
                        i3 = (int) ((pVar2.g.g / N) + 0.5f);
                    } else {
                        i3 = (int) ((N * pVar2.g.g) + 0.5f);
                    }
                    this.g.a(i3);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(int i, int i2) {
        int max;
        if (i2 == 0) {
            int i3 = this.d.p;
            max = Math.max(this.d.o, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            int i4 = this.d.s;
            max = Math.max(this.d.r, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final f a(androidx.constraintlayout.b.a.d dVar, int i) {
        if (dVar.c == null) {
            return null;
        }
        androidx.constraintlayout.b.a.e eVar = dVar.c.a;
        p pVar = i == 0 ? eVar.f : eVar.g;
        int i2 = AnonymousClass1.a[dVar.c.b.ordinal()];
        if (i2 != 5) {
            switch (i2) {
                case 1:
                case 3:
                    return pVar.j;
                case 2:
                    break;
                default:
                    return null;
            }
        }
        return pVar.k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(f fVar, f fVar2, int i) {
        fVar.l.add(fVar2);
        fVar.f = i;
        fVar2.k.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(f fVar, f fVar2, int i, g gVar) {
        fVar.l.add(fVar2);
        fVar.l.add(this.g);
        fVar.h = i;
        fVar.i = gVar;
        fVar2.k.add(fVar);
        gVar.k.add(fVar);
    }

    public long b() {
        if (this.g.j) {
            return this.g.g;
        }
        return 0L;
    }

    public boolean g() {
        return this.i;
    }
}
