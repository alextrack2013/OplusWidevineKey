package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.a.e;
import java.util.ArrayList;
/* compiled from: BasicMeasure.java */
/* loaded from: classes.dex */
public class b {
    private final ArrayList<androidx.constraintlayout.b.a.e> a = new ArrayList<>();
    private a b = new a();
    private androidx.constraintlayout.b.a.f c;

    /* compiled from: BasicMeasure.java */
    /* loaded from: classes.dex */
    public static class a {
        public static int a = 0;
        public static int b = 1;
        public static int c = 2;
        public e.a d;
        public e.a e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public boolean k;
        public boolean l;
        public int m;
    }

    /* compiled from: BasicMeasure.java */
    /* renamed from: androidx.constraintlayout.b.a.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0020b {
        void a();

        void a(androidx.constraintlayout.b.a.e eVar, a aVar);
    }

    public void a(androidx.constraintlayout.b.a.f fVar) {
        this.a.clear();
        int size = fVar.aH.size();
        for (int i = 0; i < size; i++) {
            androidx.constraintlayout.b.a.e eVar = fVar.aH.get(i);
            if (eVar.S() == e.a.MATCH_CONSTRAINT || eVar.T() == e.a.MATCH_CONSTRAINT) {
                this.a.add(eVar);
            }
        }
        fVar.b();
    }

    public b(androidx.constraintlayout.b.a.f fVar) {
        this.c = fVar;
    }

    private void b(androidx.constraintlayout.b.a.f fVar) {
        int size = fVar.aH.size();
        boolean b = fVar.b(64);
        InterfaceC0020b g = fVar.g();
        for (int i = 0; i < size; i++) {
            androidx.constraintlayout.b.a.e eVar = fVar.aH.get(i);
            if (!(eVar instanceof androidx.constraintlayout.b.a.h) && !(eVar instanceof androidx.constraintlayout.b.a.a) && !eVar.l() && (!b || eVar.f == null || eVar.g == null || !eVar.f.g.j || !eVar.g.g.j)) {
                e.a v = eVar.v(0);
                e.a v2 = eVar.v(1);
                boolean z = v == e.a.MATCH_CONSTRAINT && eVar.l != 1 && v2 == e.a.MATCH_CONSTRAINT && eVar.m != 1;
                if (!z && fVar.b(1) && !(eVar instanceof androidx.constraintlayout.b.a.l)) {
                    if (v == e.a.MATCH_CONSTRAINT && eVar.l == 0 && v2 != e.a.MATCH_CONSTRAINT && !eVar.U()) {
                        z = true;
                    }
                    if (v2 == e.a.MATCH_CONSTRAINT && eVar.m == 0 && v != e.a.MATCH_CONSTRAINT && !eVar.U()) {
                        z = true;
                    }
                    if ((v == e.a.MATCH_CONSTRAINT || v2 == e.a.MATCH_CONSTRAINT) && eVar.K > 0.0f) {
                        z = true;
                    }
                }
                if (!z) {
                    a(g, eVar, a.a);
                    if (fVar.ao != null) {
                        fVar.ao.a++;
                    }
                }
            }
        }
        g.a();
    }

    private void a(androidx.constraintlayout.b.a.f fVar, String str, int i, int i2) {
        int C = fVar.C();
        int D = fVar.D();
        fVar.q(0);
        fVar.r(0);
        fVar.o(i);
        fVar.p(i2);
        fVar.q(C);
        fVar.r(D);
        this.c.Z();
    }

    public long a(androidx.constraintlayout.b.a.f fVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean z;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z2;
        boolean z3;
        boolean z4;
        int i14;
        InterfaceC0020b interfaceC0020b;
        int i15;
        int i16;
        boolean z5;
        int i17;
        InterfaceC0020b g = fVar.g();
        int size = fVar.aH.size();
        int A = fVar.A();
        int B = fVar.B();
        boolean a2 = androidx.constraintlayout.b.a.k.a(i, 128);
        boolean z6 = a2 || androidx.constraintlayout.b.a.k.a(i, 64);
        if (z6) {
            for (int i18 = 0; i18 < size; i18++) {
                androidx.constraintlayout.b.a.e eVar = fVar.aH.get(i18);
                boolean z7 = (eVar.S() == e.a.MATCH_CONSTRAINT) && (eVar.T() == e.a.MATCH_CONSTRAINT) && eVar.N() > 0.0f;
                if ((eVar.U() && z7) || ((eVar.V() && z7) || (eVar instanceof androidx.constraintlayout.b.a.l) || eVar.U() || eVar.V())) {
                    z6 = false;
                    break;
                }
            }
        }
        if (z6 && androidx.constraintlayout.b.d.o != null) {
            androidx.constraintlayout.b.d.o.c++;
        }
        boolean z8 = z6 & ((i4 == 1073741824 && i6 == 1073741824) || a2);
        int i19 = 2;
        if (z8) {
            int min = Math.min(fVar.n(), i5);
            int min2 = Math.min(fVar.m(), i7);
            if (i4 == 1073741824 && fVar.A() != min) {
                fVar.o(min);
                fVar.b();
            }
            if (i6 == 1073741824 && fVar.B() != min2) {
                fVar.p(min2);
                fVar.b();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                z = fVar.a(a2);
                i10 = 2;
            } else {
                boolean f = fVar.f(a2);
                if (i4 == 1073741824) {
                    f &= fVar.a(a2, 0);
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (i6 == 1073741824) {
                    z = fVar.a(a2, 1) & f;
                    i10++;
                } else {
                    z = f;
                }
            }
            if (z) {
                fVar.a(i4 == 1073741824, i6 == 1073741824);
            }
        } else {
            z = false;
            i10 = 0;
        }
        if (z && i10 == 2) {
            return 0L;
        }
        int h = fVar.h();
        if (size > 0) {
            b(fVar);
        }
        a(fVar);
        int size2 = this.a.size();
        if (size > 0) {
            a(fVar, "First pass", A, B);
        }
        if (size2 > 0) {
            boolean z9 = fVar.S() == e.a.WRAP_CONTENT;
            boolean z10 = fVar.T() == e.a.WRAP_CONTENT;
            int max = Math.max(fVar.A(), this.c.C());
            int max2 = Math.max(fVar.B(), this.c.D());
            int i20 = 0;
            boolean z11 = false;
            while (i20 < size2) {
                androidx.constraintlayout.b.a.e eVar2 = this.a.get(i20);
                if (eVar2 instanceof androidx.constraintlayout.b.a.l) {
                    int A2 = eVar2.A();
                    i15 = h;
                    int B2 = eVar2.B();
                    i16 = A;
                    boolean a3 = a(g, eVar2, a.b) | z11;
                    if (fVar.ao != null) {
                        z5 = a3;
                        i17 = B;
                        fVar.ao.b++;
                    } else {
                        z5 = a3;
                        i17 = B;
                    }
                    int A3 = eVar2.A();
                    int B3 = eVar2.B();
                    if (A3 != A2) {
                        eVar2.o(A3);
                        if (z9 && eVar2.E() > max) {
                            max = Math.max(max, eVar2.E() + eVar2.a(d.a.RIGHT).j());
                        }
                        z5 = true;
                    }
                    if (B3 != B2) {
                        eVar2.p(B3);
                        if (z10 && eVar2.F() > max2) {
                            max2 = Math.max(max2, eVar2.F() + eVar2.a(d.a.BOTTOM).j());
                        }
                        z5 = true;
                    }
                    z11 = z5 | ((androidx.constraintlayout.b.a.l) eVar2).h();
                } else {
                    i15 = h;
                    i16 = A;
                    i17 = B;
                }
                i20++;
                h = i15;
                A = i16;
                B = i17;
                i19 = 2;
            }
            int i21 = h;
            int i22 = A;
            int i23 = B;
            int i24 = i19;
            int i25 = 0;
            while (true) {
                if (i25 >= i24) {
                    i12 = i22;
                    i13 = i23;
                    z2 = z11;
                    break;
                }
                z2 = z11;
                int i26 = 0;
                while (i26 < size2) {
                    androidx.constraintlayout.b.a.e eVar3 = this.a.get(i26);
                    if (((eVar3 instanceof androidx.constraintlayout.b.a.i) && !(eVar3 instanceof androidx.constraintlayout.b.a.l)) || (eVar3 instanceof androidx.constraintlayout.b.a.h) || eVar3.w() == 8 || ((z8 && eVar3.f.g.j && eVar3.g.g.j) || (eVar3 instanceof androidx.constraintlayout.b.a.l))) {
                        z4 = z8;
                        i14 = size2;
                        interfaceC0020b = g;
                    } else {
                        int A4 = eVar3.A();
                        int B4 = eVar3.B();
                        int L = eVar3.L();
                        int i27 = a.b;
                        z4 = z8;
                        if (i25 == 1) {
                            i27 = a.c;
                        }
                        z2 |= a(g, eVar3, i27);
                        if (fVar.ao != null) {
                            i14 = size2;
                            interfaceC0020b = g;
                            fVar.ao.b++;
                        } else {
                            i14 = size2;
                            interfaceC0020b = g;
                        }
                        int A5 = eVar3.A();
                        int B5 = eVar3.B();
                        if (A5 != A4) {
                            eVar3.o(A5);
                            if (z9 && eVar3.E() > max) {
                                max = Math.max(max, eVar3.E() + eVar3.a(d.a.RIGHT).j());
                            }
                            z2 = true;
                        }
                        if (B5 != B4) {
                            eVar3.p(B5);
                            if (z10 && eVar3.F() > max2) {
                                max2 = Math.max(max2, eVar3.F() + eVar3.a(d.a.BOTTOM).j());
                            }
                            z2 = true;
                        }
                        if (eVar3.K() && L != eVar3.L()) {
                            z2 = true;
                        }
                    }
                    i26++;
                    z8 = z4;
                    g = interfaceC0020b;
                    size2 = i14;
                }
                boolean z12 = z8;
                int i28 = size2;
                InterfaceC0020b interfaceC0020b2 = g;
                if (!z2) {
                    i12 = i22;
                    i13 = i23;
                    break;
                }
                a(fVar, "intermediate pass", i22, i23);
                i25++;
                z8 = z12;
                g = interfaceC0020b2;
                size2 = i28;
                i24 = 2;
                z11 = false;
            }
            if (z2) {
                a(fVar, "2nd pass", i12, i13);
                if (fVar.A() < max) {
                    fVar.o(max);
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (fVar.B() < max2) {
                    fVar.p(max2);
                    z3 = true;
                }
                if (z3) {
                    a(fVar, "3rd pass", i12, i13);
                }
            }
            i11 = i21;
        } else {
            i11 = h;
        }
        fVar.a(i11);
        return 0L;
    }

    private boolean a(InterfaceC0020b interfaceC0020b, androidx.constraintlayout.b.a.e eVar, int i) {
        this.b.d = eVar.S();
        this.b.e = eVar.T();
        this.b.f = eVar.A();
        this.b.g = eVar.B();
        this.b.l = false;
        this.b.m = i;
        boolean z = this.b.d == e.a.MATCH_CONSTRAINT;
        boolean z2 = this.b.e == e.a.MATCH_CONSTRAINT;
        boolean z3 = z && eVar.K > 0.0f;
        boolean z4 = z2 && eVar.K > 0.0f;
        if (z3 && eVar.n[0] == 4) {
            this.b.d = e.a.FIXED;
        }
        if (z4 && eVar.n[1] == 4) {
            this.b.e = e.a.FIXED;
        }
        interfaceC0020b.a(eVar, this.b);
        eVar.o(this.b.h);
        eVar.p(this.b.i);
        eVar.c(this.b.k);
        eVar.s(this.b.j);
        this.b.m = a.a;
        return this.b.l;
    }
}
