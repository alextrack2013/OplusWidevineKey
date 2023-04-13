package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.a.b;
import androidx.constraintlayout.b.a.e;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: ConstraintWidgetContainer.java */
/* loaded from: classes.dex */
public class f extends m {
    static int aG;
    public androidx.constraintlayout.b.e ao;
    int aq;
    int ar;
    int as;
    int at;
    androidx.constraintlayout.b.a.a.b a = new androidx.constraintlayout.b.a.a.b(this);
    public androidx.constraintlayout.b.a.a.e am = new androidx.constraintlayout.b.a.a.e(this);
    protected b.InterfaceC0020b an = null;
    private boolean aI = false;
    protected androidx.constraintlayout.b.d ap = new androidx.constraintlayout.b.d();
    public int au = 0;
    public int av = 0;
    c[] aw = new c[4];
    c[] ax = new c[4];
    public boolean ay = false;
    public boolean az = false;
    public boolean aA = false;
    public int aB = 0;
    public int aC = 0;
    private int aJ = 257;
    public boolean aD = false;
    private boolean aK = false;
    private boolean aL = false;
    int aE = 0;
    private WeakReference<d> aM = null;
    private WeakReference<d> aN = null;
    private WeakReference<d> aO = null;
    private WeakReference<d> aP = null;
    public b.a aF = new b.a();

    public boolean aa() {
        return false;
    }

    public void b() {
        this.am.b();
    }

    public void c() {
        this.am.c();
    }

    public boolean a(boolean z) {
        return this.am.a(z);
    }

    public boolean f(boolean z) {
        return this.am.b(z);
    }

    public boolean a(boolean z, int i) {
        return this.am.a(z, i);
    }

    public long a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.aq = i8;
        this.ar = i9;
        return this.a.a(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }

    public void f() {
        this.a.a(this);
    }

    public void a(b.InterfaceC0020b interfaceC0020b) {
        this.an = interfaceC0020b;
        this.am.a(interfaceC0020b);
    }

    public b.InterfaceC0020b g() {
        return this.an;
    }

    public void a(int i) {
        this.aJ = i;
        androidx.constraintlayout.b.d dVar = this.ap;
        androidx.constraintlayout.b.d.a = b(512);
    }

    public int h() {
        return this.aJ;
    }

    public boolean b(int i) {
        return (this.aJ & i) == i;
    }

    @Override // androidx.constraintlayout.b.a.m, androidx.constraintlayout.b.a.e
    public void s() {
        this.ap.b();
        this.aq = 0;
        this.as = 0;
        this.ar = 0;
        this.at = 0;
        this.aD = false;
        super.s();
    }

    public boolean i() {
        return this.aK;
    }

    public boolean X() {
        return this.aL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(d dVar) {
        if (this.aM == null || this.aM.get() == null || dVar.d() > this.aM.get().d()) {
            this.aM = new WeakReference<>(dVar);
        }
    }

    public void b(d dVar) {
        if (this.aN == null || this.aN.get() == null || dVar.d() > this.aN.get().d()) {
            this.aN = new WeakReference<>(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(d dVar) {
        if (this.aO == null || this.aO.get() == null || dVar.d() > this.aO.get().d()) {
            this.aO = new WeakReference<>(dVar);
        }
    }

    public void d(d dVar) {
        if (this.aP == null || this.aP.get() == null || dVar.d() > this.aP.get().d()) {
            this.aP = new WeakReference<>(dVar);
        }
    }

    private void a(d dVar, androidx.constraintlayout.b.h hVar) {
        this.ap.a(this.ap.a(dVar), hVar, 0, 5);
    }

    private void b(d dVar, androidx.constraintlayout.b.h hVar) {
        this.ap.a(hVar, this.ap.a(dVar), 0, 5);
    }

    public boolean b(androidx.constraintlayout.b.d dVar) {
        boolean b = b(64);
        a(dVar, b);
        int size = this.aH.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            e eVar = this.aH.get(i);
            eVar.a(0, false);
            eVar.a(1, false);
            if (eVar instanceof a) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                e eVar2 = this.aH.get(i2);
                if (eVar2 instanceof a) {
                    ((a) eVar2).f();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            e eVar3 = this.aH.get(i3);
            if (eVar3.W()) {
                eVar3.a(dVar, b);
            }
        }
        if (androidx.constraintlayout.b.d.a) {
            HashSet<e> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                e eVar4 = this.aH.get(i4);
                if (!eVar4.W()) {
                    hashSet.add(eVar4);
                }
            }
            a(this, dVar, hashSet, S() == e.a.WRAP_CONTENT ? 0 : 1, false);
            Iterator<e> it = hashSet.iterator();
            while (it.hasNext()) {
                e next = it.next();
                k.a(this, dVar, next);
                next.a(dVar, b);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                e eVar5 = this.aH.get(i5);
                if (eVar5 instanceof f) {
                    e.a aVar = eVar5.G[0];
                    e.a aVar2 = eVar5.G[1];
                    if (aVar == e.a.WRAP_CONTENT) {
                        eVar5.a(e.a.FIXED);
                    }
                    if (aVar2 == e.a.WRAP_CONTENT) {
                        eVar5.b(e.a.FIXED);
                    }
                    eVar5.a(dVar, b);
                    if (aVar == e.a.WRAP_CONTENT) {
                        eVar5.a(aVar);
                    }
                    if (aVar2 == e.a.WRAP_CONTENT) {
                        eVar5.b(aVar2);
                    }
                } else {
                    k.a(this, dVar, eVar5);
                    if (!eVar5.W()) {
                        eVar5.a(dVar, b);
                    }
                }
            }
        }
        if (this.au > 0) {
            b.a(this, dVar, null, 0);
        }
        if (this.av > 0) {
            b.a(this, dVar, null, 1);
        }
        return true;
    }

    public void a(androidx.constraintlayout.b.d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean b = b(64);
        b(dVar, b);
        int size = this.aH.size();
        for (int i = 0; i < size; i++) {
            this.aH.get(i).b(dVar, b);
        }
    }

    @Override // androidx.constraintlayout.b.a.e
    public void a(boolean z, boolean z2) {
        super.a(z, z2);
        int size = this.aH.size();
        for (int i = 0; i < size; i++) {
            this.aH.get(i).a(z, z2);
        }
    }

    public void g(boolean z) {
        this.aI = z;
    }

    public boolean Y() {
        return this.aI;
    }

    public static boolean a(e eVar, b.InterfaceC0020b interfaceC0020b, b.a aVar, int i) {
        int i2;
        int i3;
        if (interfaceC0020b == null) {
            return false;
        }
        aVar.d = eVar.S();
        aVar.e = eVar.T();
        aVar.f = eVar.A();
        aVar.g = eVar.B();
        aVar.l = false;
        aVar.m = i;
        boolean z = aVar.d == e.a.MATCH_CONSTRAINT;
        boolean z2 = aVar.e == e.a.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.K > 0.0f;
        boolean z4 = z2 && eVar.K > 0.0f;
        if (z && eVar.g(0) && eVar.l == 0 && !z3) {
            aVar.d = e.a.WRAP_CONTENT;
            if (z2 && eVar.m == 0) {
                aVar.d = e.a.FIXED;
            }
            z = false;
        }
        if (z2 && eVar.g(1) && eVar.m == 0 && !z4) {
            aVar.e = e.a.WRAP_CONTENT;
            if (z && eVar.l == 0) {
                aVar.e = e.a.FIXED;
            }
            z2 = false;
        }
        if (eVar.d()) {
            aVar.d = e.a.FIXED;
            z = false;
        }
        if (eVar.e()) {
            aVar.e = e.a.FIXED;
            z2 = false;
        }
        if (z3) {
            if (eVar.n[0] == 4) {
                aVar.d = e.a.FIXED;
            } else if (!z2) {
                if (aVar.e == e.a.FIXED) {
                    i3 = aVar.g;
                } else {
                    aVar.d = e.a.WRAP_CONTENT;
                    interfaceC0020b.a(eVar, aVar);
                    i3 = aVar.i;
                }
                aVar.d = e.a.FIXED;
                if (eVar.L == 0 || eVar.L == -1) {
                    aVar.f = (int) (eVar.N() * i3);
                } else {
                    aVar.f = (int) (eVar.N() / i3);
                }
            }
        }
        if (z4) {
            if (eVar.n[1] == 4) {
                aVar.e = e.a.FIXED;
            } else if (!z) {
                if (aVar.d == e.a.FIXED) {
                    i2 = aVar.f;
                } else {
                    aVar.e = e.a.WRAP_CONTENT;
                    interfaceC0020b.a(eVar, aVar);
                    i2 = aVar.h;
                }
                aVar.e = e.a.FIXED;
                if (eVar.L == 0 || eVar.L == -1) {
                    aVar.g = (int) (i2 / eVar.N());
                } else {
                    aVar.g = (int) (i2 * eVar.N());
                }
            }
        }
        interfaceC0020b.a(eVar, aVar);
        eVar.o(aVar.h);
        eVar.p(aVar.i);
        eVar.c(aVar.k);
        eVar.s(aVar.j);
        aVar.m = b.a.a;
        return aVar.l;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02fb  */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v13 */
    @Override // androidx.constraintlayout.b.a.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Z() {
        /*
            Method dump skipped, instructions count: 857
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.b.a.f.Z():void");
    }

    public androidx.constraintlayout.b.d ab() {
        return this.ap;
    }

    private void ae() {
        this.au = 0;
        this.av = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(e eVar, int i) {
        if (i == 0) {
            d(eVar);
        } else if (i == 1) {
            e(eVar);
        }
    }

    private void d(e eVar) {
        if (this.au + 1 >= this.ax.length) {
            this.ax = (c[]) Arrays.copyOf(this.ax, this.ax.length * 2);
        }
        this.ax[this.au] = new c(eVar, 0, Y());
        this.au++;
    }

    private void e(e eVar) {
        if (this.av + 1 >= this.aw.length) {
            this.aw = (c[]) Arrays.copyOf(this.aw, this.aw.length * 2);
        }
        this.aw[this.av] = new c(eVar, 1, Y());
        this.av++;
    }
}
