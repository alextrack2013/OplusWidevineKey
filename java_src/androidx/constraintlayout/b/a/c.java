package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.e;
import java.util.ArrayList;
/* compiled from: ChainHead.java */
/* loaded from: classes.dex */
public class c {
    protected e a;
    protected e b;
    protected e c;
    protected e d;
    protected e e;
    protected e f;
    protected e g;
    protected ArrayList<e> h;
    protected int i;
    protected int j;
    protected float k = 0.0f;
    int l;
    int m;
    int n;
    boolean o;
    protected boolean p;
    protected boolean q;
    protected boolean r;
    protected boolean s;
    private int t;
    private boolean u;
    private boolean v;

    public c(e eVar, int i, boolean z) {
        this.u = false;
        this.a = eVar;
        this.t = i;
        this.u = z;
    }

    private static boolean a(e eVar, int i) {
        return eVar.w() != 8 && eVar.G[i] == e.a.MATCH_CONSTRAINT && (eVar.n[i] == 0 || eVar.n[i] == 3);
    }

    private void b() {
        int i = this.t * 2;
        e eVar = this.a;
        boolean z = true;
        this.o = true;
        e eVar2 = this.a;
        e eVar3 = this.a;
        e eVar4 = eVar;
        boolean z2 = false;
        while (!z2) {
            this.i++;
            e eVar5 = null;
            eVar2.ah[this.t] = null;
            eVar2.ag[this.t] = null;
            if (eVar2.w() != 8) {
                this.l++;
                if (eVar2.v(this.t) != e.a.MATCH_CONSTRAINT) {
                    this.m += eVar2.k(this.t);
                }
                this.m += eVar2.E[i].j();
                int i2 = i + 1;
                this.m += eVar2.E[i2].j();
                this.n += eVar2.E[i].j();
                this.n += eVar2.E[i2].j();
                if (this.b == null) {
                    this.b = eVar2;
                }
                this.d = eVar2;
                if (eVar2.G[this.t] == e.a.MATCH_CONSTRAINT) {
                    if (eVar2.n[this.t] == 0 || eVar2.n[this.t] == 3 || eVar2.n[this.t] == 2) {
                        this.j++;
                        float f = eVar2.af[this.t];
                        if (f > 0.0f) {
                            this.k += eVar2.af[this.t];
                        }
                        if (a(eVar2, this.t)) {
                            if (f < 0.0f) {
                                this.p = true;
                            } else {
                                this.q = true;
                            }
                            if (this.h == null) {
                                this.h = new ArrayList<>();
                            }
                            this.h.add(eVar2);
                        }
                        if (this.f == null) {
                            this.f = eVar2;
                        }
                        if (this.g != null) {
                            this.g.ag[this.t] = eVar2;
                        }
                        this.g = eVar2;
                    }
                    if (this.t == 0) {
                        if (eVar2.l != 0) {
                            this.o = false;
                        } else if (eVar2.o != 0 || eVar2.p != 0) {
                            this.o = false;
                        }
                    } else if (eVar2.m != 0) {
                        this.o = false;
                    } else if (eVar2.r != 0 || eVar2.s != 0) {
                        this.o = false;
                    }
                    if (eVar2.K != 0.0f) {
                        this.o = false;
                        this.s = true;
                    }
                }
            }
            if (eVar4 != eVar2) {
                eVar4.ah[this.t] = eVar2;
            }
            d dVar = eVar2.E[i + 1].c;
            if (dVar != null) {
                e eVar6 = dVar.a;
                if (eVar6.E[i].c != null && eVar6.E[i].c.a == eVar2) {
                    eVar5 = eVar6;
                }
            }
            if (eVar5 == null) {
                z2 = true;
                eVar5 = eVar2;
            }
            eVar4 = eVar2;
            eVar2 = eVar5;
        }
        if (this.b != null) {
            this.m -= this.b.E[i].j();
        }
        if (this.d != null) {
            this.m -= this.d.E[i + 1].j();
        }
        this.c = eVar2;
        if (this.t == 0 && this.u) {
            this.e = this.c;
        } else {
            this.e = this.a;
        }
        if (!this.q || !this.p) {
            z = false;
        }
        this.r = z;
    }

    public void a() {
        if (!this.v) {
            b();
        }
        this.v = true;
    }
}
