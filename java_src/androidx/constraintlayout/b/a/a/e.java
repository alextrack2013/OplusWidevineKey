package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.a.b;
import androidx.constraintlayout.b.a.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: DependencyGraph.java */
/* loaded from: classes.dex */
public class e {
    private androidx.constraintlayout.b.a.f b;
    private androidx.constraintlayout.b.a.f e;
    private boolean c = true;
    private boolean d = true;
    private ArrayList<p> f = new ArrayList<>();
    private ArrayList<m> g = new ArrayList<>();
    private b.InterfaceC0020b h = null;
    private b.a i = new b.a();
    ArrayList<m> a = new ArrayList<>();

    public e(androidx.constraintlayout.b.a.f fVar) {
        this.b = fVar;
        this.e = fVar;
    }

    public void a(b.InterfaceC0020b interfaceC0020b) {
        this.h = interfaceC0020b;
    }

    private int a(androidx.constraintlayout.b.a.f fVar, int i) {
        int size = this.a.size();
        long j = 0;
        for (int i2 = 0; i2 < size; i2++) {
            j = Math.max(j, this.a.get(i2).a(fVar, i));
        }
        return (int) j;
    }

    public boolean a(boolean z) {
        boolean z2;
        boolean z3 = z & true;
        boolean z4 = false;
        if (this.c || this.d) {
            Iterator<androidx.constraintlayout.b.a.e> it = this.b.aH.iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.b.a.e next = it.next();
                next.u();
                next.b = false;
                next.f.d();
                next.g.d();
            }
            this.b.u();
            this.b.b = false;
            this.b.f.d();
            this.b.g.d();
            this.d = false;
        }
        if (a(this.e)) {
            return false;
        }
        this.b.m(0);
        this.b.n(0);
        e.a v = this.b.v(0);
        e.a v2 = this.b.v(1);
        if (this.c) {
            d();
        }
        int y = this.b.y();
        int z5 = this.b.z();
        this.b.f.j.a(y);
        this.b.g.j.a(z5);
        a();
        if (v == e.a.WRAP_CONTENT || v2 == e.a.WRAP_CONTENT) {
            if (z3) {
                Iterator<p> it2 = this.f.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (!it2.next().a()) {
                        z3 = false;
                        break;
                    }
                }
            }
            if (z3 && v == e.a.WRAP_CONTENT) {
                this.b.a(e.a.FIXED);
                this.b.o(a(this.b, 0));
                this.b.f.g.a(this.b.A());
            }
            if (z3 && v2 == e.a.WRAP_CONTENT) {
                this.b.b(e.a.FIXED);
                this.b.p(a(this.b, 1));
                this.b.g.g.a(this.b.B());
            }
        }
        if (this.b.G[0] == e.a.FIXED || this.b.G[0] == e.a.MATCH_PARENT) {
            int A = this.b.A() + y;
            this.b.f.k.a(A);
            this.b.f.g.a(A - y);
            a();
            if (this.b.G[1] == e.a.FIXED || this.b.G[1] == e.a.MATCH_PARENT) {
                int B = this.b.B() + z5;
                this.b.g.k.a(B);
                this.b.g.g.a(B - z5);
            }
            a();
            z2 = true;
        } else {
            z2 = false;
        }
        Iterator<p> it3 = this.f.iterator();
        while (it3.hasNext()) {
            p next2 = it3.next();
            if (next2.d != this.b || next2.i) {
                next2.e();
            }
        }
        Iterator<p> it4 = this.f.iterator();
        while (true) {
            if (!it4.hasNext()) {
                z4 = true;
                break;
            }
            p next3 = it4.next();
            if (z2 || next3.d != this.b) {
                if (!next3.j.j) {
                    break;
                }
                if (!next3.k.j) {
                    if (!(next3 instanceof j)) {
                        break;
                    }
                }
                if (!next3.g.j && !(next3 instanceof c) && !(next3 instanceof j)) {
                    break;
                }
            }
        }
        this.b.a(v);
        this.b.b(v2);
        return z4;
    }

    public boolean b(boolean z) {
        if (this.c) {
            Iterator<androidx.constraintlayout.b.a.e> it = this.b.aH.iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.b.a.e next = it.next();
                next.u();
                next.b = false;
                next.f.g.j = false;
                next.f.i = false;
                next.f.d();
                next.g.g.j = false;
                next.g.i = false;
                next.g.d();
            }
            this.b.u();
            this.b.b = false;
            this.b.f.g.j = false;
            this.b.f.i = false;
            this.b.f.d();
            this.b.g.g.j = false;
            this.b.g.i = false;
            this.b.g.d();
            d();
        }
        if (a(this.e)) {
            return false;
        }
        this.b.m(0);
        this.b.n(0);
        this.b.f.j.a(0);
        this.b.g.j.a(0);
        return true;
    }

    public boolean a(boolean z, int i) {
        boolean z2;
        boolean z3 = z & true;
        boolean z4 = false;
        e.a v = this.b.v(0);
        e.a v2 = this.b.v(1);
        int y = this.b.y();
        int z5 = this.b.z();
        if (z3 && (v == e.a.WRAP_CONTENT || v2 == e.a.WRAP_CONTENT)) {
            Iterator<p> it = this.f.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                p next = it.next();
                if (next.h == i && !next.a()) {
                    z3 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z3 && v == e.a.WRAP_CONTENT) {
                    this.b.a(e.a.FIXED);
                    this.b.o(a(this.b, 0));
                    this.b.f.g.a(this.b.A());
                }
            } else if (z3 && v2 == e.a.WRAP_CONTENT) {
                this.b.b(e.a.FIXED);
                this.b.p(a(this.b, 1));
                this.b.g.g.a(this.b.B());
            }
        }
        if (i == 0) {
            if (this.b.G[0] == e.a.FIXED || this.b.G[0] == e.a.MATCH_PARENT) {
                int A = this.b.A() + y;
                this.b.f.k.a(A);
                this.b.f.g.a(A - y);
                z2 = true;
            }
            z2 = false;
        } else {
            if (this.b.G[1] == e.a.FIXED || this.b.G[1] == e.a.MATCH_PARENT) {
                int B = this.b.B() + z5;
                this.b.g.k.a(B);
                this.b.g.g.a(B - z5);
                z2 = true;
            }
            z2 = false;
        }
        a();
        Iterator<p> it2 = this.f.iterator();
        while (it2.hasNext()) {
            p next2 = it2.next();
            if (next2.h == i && (next2.d != this.b || next2.i)) {
                next2.e();
            }
        }
        Iterator<p> it3 = this.f.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z4 = true;
                break;
            }
            p next3 = it3.next();
            if (next3.h == i && (z2 || next3.d != this.b)) {
                if (!next3.j.j) {
                    break;
                } else if (!next3.k.j) {
                    break;
                } else if (!(next3 instanceof c) && !next3.g.j) {
                    break;
                }
            }
        }
        this.b.a(v);
        this.b.b(v2);
        return z4;
    }

    private void a(androidx.constraintlayout.b.a.e eVar, e.a aVar, int i, e.a aVar2, int i2) {
        this.i.d = aVar;
        this.i.e = aVar2;
        this.i.f = i;
        this.i.g = i2;
        this.h.a(eVar, this.i);
        eVar.o(this.i.h);
        eVar.p(this.i.i);
        eVar.c(this.i.k);
        eVar.s(this.i.j);
    }

    private boolean a(androidx.constraintlayout.b.a.f fVar) {
        int i;
        e.a aVar;
        int i2;
        Iterator<androidx.constraintlayout.b.a.e> it = fVar.aH.iterator();
        while (it.hasNext()) {
            androidx.constraintlayout.b.a.e next = it.next();
            e.a aVar2 = next.G[0];
            e.a aVar3 = next.G[1];
            if (next.w() == 8) {
                next.b = true;
            } else {
                if (next.q < 1.0f && aVar2 == e.a.MATCH_CONSTRAINT) {
                    next.l = 2;
                }
                if (next.t < 1.0f && aVar3 == e.a.MATCH_CONSTRAINT) {
                    next.m = 2;
                }
                if (next.N() > 0.0f) {
                    if (aVar2 == e.a.MATCH_CONSTRAINT && (aVar3 == e.a.WRAP_CONTENT || aVar3 == e.a.FIXED)) {
                        next.l = 3;
                    } else if (aVar3 == e.a.MATCH_CONSTRAINT && (aVar2 == e.a.WRAP_CONTENT || aVar2 == e.a.FIXED)) {
                        next.m = 3;
                    } else if (aVar2 == e.a.MATCH_CONSTRAINT && aVar3 == e.a.MATCH_CONSTRAINT) {
                        if (next.l == 0) {
                            next.l = 3;
                        }
                        if (next.m == 0) {
                            next.m = 3;
                        }
                    }
                }
                if (aVar2 == e.a.MATCH_CONSTRAINT && next.l == 1 && (next.w.c == null || next.y.c == null)) {
                    aVar2 = e.a.WRAP_CONTENT;
                }
                e.a aVar4 = aVar2;
                e.a aVar5 = (aVar3 == e.a.MATCH_CONSTRAINT && next.m == 1 && (next.x.c == null || next.z.c == null)) ? e.a.WRAP_CONTENT : aVar3;
                next.f.f = aVar4;
                next.f.c = next.l;
                next.g.f = aVar5;
                next.g.c = next.m;
                if ((aVar4 == e.a.MATCH_PARENT || aVar4 == e.a.FIXED || aVar4 == e.a.WRAP_CONTENT) && (aVar5 == e.a.MATCH_PARENT || aVar5 == e.a.FIXED || aVar5 == e.a.WRAP_CONTENT)) {
                    int A = next.A();
                    if (aVar4 == e.a.MATCH_PARENT) {
                        i = (fVar.A() - next.w.d) - next.y.d;
                        aVar4 = e.a.FIXED;
                    } else {
                        i = A;
                    }
                    int B = next.B();
                    if (aVar5 == e.a.MATCH_PARENT) {
                        i2 = (fVar.B() - next.x.d) - next.z.d;
                        aVar = e.a.FIXED;
                    } else {
                        aVar = aVar5;
                        i2 = B;
                    }
                    a(next, aVar4, i, aVar, i2);
                    next.f.g.a(next.A());
                    next.g.g.a(next.B());
                    next.b = true;
                } else {
                    if (aVar4 == e.a.MATCH_CONSTRAINT && (aVar5 == e.a.WRAP_CONTENT || aVar5 == e.a.FIXED)) {
                        if (next.l == 3) {
                            if (aVar5 == e.a.WRAP_CONTENT) {
                                a(next, e.a.WRAP_CONTENT, 0, e.a.WRAP_CONTENT, 0);
                            }
                            int B2 = next.B();
                            a(next, e.a.FIXED, (int) ((B2 * next.K) + 0.5f), e.a.FIXED, B2);
                            next.f.g.a(next.A());
                            next.g.g.a(next.B());
                            next.b = true;
                        } else if (next.l == 1) {
                            a(next, e.a.WRAP_CONTENT, 0, aVar5, 0);
                            next.f.g.m = next.A();
                        } else if (next.l == 2) {
                            if (fVar.G[0] == e.a.FIXED || fVar.G[0] == e.a.MATCH_PARENT) {
                                a(next, e.a.FIXED, (int) ((next.q * fVar.A()) + 0.5f), aVar5, next.B());
                                next.f.g.a(next.A());
                                next.g.g.a(next.B());
                                next.b = true;
                            }
                        } else if (next.E[0].c == null || next.E[1].c == null) {
                            a(next, e.a.WRAP_CONTENT, 0, aVar5, 0);
                            next.f.g.a(next.A());
                            next.g.g.a(next.B());
                            next.b = true;
                        }
                    }
                    if (aVar5 == e.a.MATCH_CONSTRAINT && (aVar4 == e.a.WRAP_CONTENT || aVar4 == e.a.FIXED)) {
                        if (next.m == 3) {
                            if (aVar4 == e.a.WRAP_CONTENT) {
                                a(next, e.a.WRAP_CONTENT, 0, e.a.WRAP_CONTENT, 0);
                            }
                            int A2 = next.A();
                            float f = next.K;
                            if (next.O() == -1) {
                                f = 1.0f / f;
                            }
                            a(next, e.a.FIXED, A2, e.a.FIXED, (int) ((A2 * f) + 0.5f));
                            next.f.g.a(next.A());
                            next.g.g.a(next.B());
                            next.b = true;
                        } else if (next.m == 1) {
                            a(next, aVar4, 0, e.a.WRAP_CONTENT, 0);
                            next.g.g.m = next.B();
                        } else if (next.m == 2) {
                            if (fVar.G[1] == e.a.FIXED || fVar.G[1] == e.a.MATCH_PARENT) {
                                a(next, aVar4, next.A(), e.a.FIXED, (int) ((next.t * fVar.B()) + 0.5f));
                                next.f.g.a(next.A());
                                next.g.g.a(next.B());
                                next.b = true;
                            }
                        } else if (next.E[2].c == null || next.E[3].c == null) {
                            a(next, e.a.WRAP_CONTENT, 0, aVar5, 0);
                            next.f.g.a(next.A());
                            next.g.g.a(next.B());
                            next.b = true;
                        }
                    }
                    if (aVar4 == e.a.MATCH_CONSTRAINT && aVar5 == e.a.MATCH_CONSTRAINT) {
                        if (next.l == 1 || next.m == 1) {
                            a(next, e.a.WRAP_CONTENT, 0, e.a.WRAP_CONTENT, 0);
                            next.f.g.m = next.A();
                            next.g.g.m = next.B();
                        } else if (next.m == 2 && next.l == 2 && (fVar.G[0] == e.a.FIXED || fVar.G[0] == e.a.FIXED)) {
                            if (fVar.G[1] == e.a.FIXED || fVar.G[1] == e.a.FIXED) {
                                a(next, e.a.FIXED, (int) ((next.q * fVar.A()) + 0.5f), e.a.FIXED, (int) ((next.t * fVar.B()) + 0.5f));
                                next.f.g.a(next.A());
                                next.g.g.a(next.B());
                                next.b = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public void a() {
        Iterator<androidx.constraintlayout.b.a.e> it = this.b.aH.iterator();
        while (it.hasNext()) {
            androidx.constraintlayout.b.a.e next = it.next();
            if (!next.b) {
                boolean z = false;
                e.a aVar = next.G[0];
                e.a aVar2 = next.G[1];
                int i = next.l;
                int i2 = next.m;
                boolean z2 = aVar == e.a.WRAP_CONTENT || (aVar == e.a.MATCH_CONSTRAINT && i == 1);
                if (aVar2 == e.a.WRAP_CONTENT || (aVar2 == e.a.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                boolean z3 = next.f.g.j;
                boolean z4 = next.g.g.j;
                if (z3 && z4) {
                    a(next, e.a.FIXED, next.f.g.g, e.a.FIXED, next.g.g.g);
                    next.b = true;
                } else if (z3 && z) {
                    a(next, e.a.FIXED, next.f.g.g, e.a.WRAP_CONTENT, next.g.g.g);
                    if (aVar2 == e.a.MATCH_CONSTRAINT) {
                        next.g.g.m = next.B();
                    } else {
                        next.g.g.a(next.B());
                        next.b = true;
                    }
                } else if (z4 && z2) {
                    a(next, e.a.WRAP_CONTENT, next.f.g.g, e.a.FIXED, next.g.g.g);
                    if (aVar == e.a.MATCH_CONSTRAINT) {
                        next.f.g.m = next.A();
                    } else {
                        next.f.g.a(next.A());
                        next.b = true;
                    }
                }
                if (next.b && next.g.b != null) {
                    next.g.b.a(next.L());
                }
            }
        }
    }

    public void b() {
        this.c = true;
    }

    public void c() {
        this.d = true;
    }

    public void d() {
        a(this.f);
        this.a.clear();
        m.a = 0;
        a(this.b.f, 0, this.a);
        a(this.b.g, 1, this.a);
        this.c = false;
    }

    public void a(ArrayList<p> arrayList) {
        arrayList.clear();
        this.e.f.c();
        this.e.g.c();
        arrayList.add(this.e.f);
        arrayList.add(this.e.g);
        Iterator<androidx.constraintlayout.b.a.e> it = this.e.aH.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            androidx.constraintlayout.b.a.e next = it.next();
            if (next instanceof androidx.constraintlayout.b.a.h) {
                arrayList.add(new j(next));
            } else {
                if (next.U()) {
                    if (next.d == null) {
                        next.d = new c(next, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.d);
                } else {
                    arrayList.add(next.f);
                }
                if (next.V()) {
                    if (next.e == null) {
                        next.e = new c(next, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(next.e);
                } else {
                    arrayList.add(next.g);
                }
                if (next instanceof androidx.constraintlayout.b.a.j) {
                    arrayList.add(new k(next));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<p> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
        Iterator<p> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            p next2 = it3.next();
            if (next2.d != this.e) {
                next2.f();
            }
        }
    }

    private void a(f fVar, int i, int i2, f fVar2, ArrayList<m> arrayList, m mVar) {
        p pVar = fVar.d;
        if (pVar.e != null || pVar == this.b.f || pVar == this.b.g) {
            return;
        }
        if (mVar == null) {
            mVar = new m(pVar, i2);
            arrayList.add(mVar);
        }
        pVar.e = mVar;
        mVar.a(pVar);
        for (d dVar : pVar.j.k) {
            if (dVar instanceof f) {
                a((f) dVar, i, 0, fVar2, arrayList, mVar);
            }
        }
        for (d dVar2 : pVar.k.k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i, 1, fVar2, arrayList, mVar);
            }
        }
        if (i == 1 && (pVar instanceof n)) {
            for (d dVar3 : ((n) pVar).a.k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i, 2, fVar2, arrayList, mVar);
                }
            }
        }
        for (f fVar3 : pVar.j.l) {
            if (fVar3 == fVar2) {
                mVar.c = true;
            }
            a(fVar3, i, 0, fVar2, arrayList, mVar);
        }
        for (f fVar4 : pVar.k.l) {
            if (fVar4 == fVar2) {
                mVar.c = true;
            }
            a(fVar4, i, 1, fVar2, arrayList, mVar);
        }
        if (i == 1 && (pVar instanceof n)) {
            for (f fVar5 : ((n) pVar).a.l) {
                a(fVar5, i, 2, fVar2, arrayList, mVar);
            }
        }
    }

    private void a(p pVar, int i, ArrayList<m> arrayList) {
        for (d dVar : pVar.j.k) {
            if (dVar instanceof f) {
                a((f) dVar, i, 0, pVar.k, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).j, i, 0, pVar.k, arrayList, null);
            }
        }
        for (d dVar2 : pVar.k.k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i, 1, pVar.j, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).k, i, 1, pVar.j, arrayList, null);
            }
        }
        if (i == 1) {
            for (d dVar3 : ((n) pVar).a.k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i, 2, null, arrayList, null);
                }
            }
        }
    }
}
