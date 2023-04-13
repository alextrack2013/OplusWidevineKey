package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.a.b;
import androidx.constraintlayout.b.a.d;
import androidx.constraintlayout.b.a.e;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: Direct.java */
/* loaded from: classes.dex */
public class h {
    private static b.a a = new b.a();

    public static void a(androidx.constraintlayout.b.a.f fVar, b.InterfaceC0020b interfaceC0020b) {
        e.a S = fVar.S();
        e.a T = fVar.T();
        fVar.c_();
        ArrayList<androidx.constraintlayout.b.a.e> ac = fVar.ac();
        int size = ac.size();
        for (int i = 0; i < size; i++) {
            ac.get(i).c_();
        }
        boolean Y = fVar.Y();
        if (S == e.a.FIXED) {
            fVar.a(0, fVar.A());
        } else {
            fVar.d(0);
        }
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            androidx.constraintlayout.b.a.e eVar = ac.get(i2);
            if (eVar instanceof androidx.constraintlayout.b.a.h) {
                androidx.constraintlayout.b.a.h hVar = (androidx.constraintlayout.b.a.h) eVar;
                if (hVar.c() == 1) {
                    if (hVar.g() != -1) {
                        hVar.z(hVar.g());
                    } else if (hVar.h() != -1 && fVar.d()) {
                        hVar.z(fVar.A() - hVar.h());
                    } else if (fVar.d()) {
                        hVar.z((int) ((hVar.f() * fVar.A()) + 0.5f));
                    }
                    z = true;
                }
            } else if ((eVar instanceof androidx.constraintlayout.b.a.a) && ((androidx.constraintlayout.b.a.a) eVar).h() == 0) {
                z2 = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                androidx.constraintlayout.b.a.e eVar2 = ac.get(i3);
                if (eVar2 instanceof androidx.constraintlayout.b.a.h) {
                    androidx.constraintlayout.b.a.h hVar2 = (androidx.constraintlayout.b.a.h) eVar2;
                    if (hVar2.c() == 1) {
                        a(hVar2, interfaceC0020b, Y);
                    }
                }
            }
        }
        a(fVar, interfaceC0020b, Y);
        if (z2) {
            for (int i4 = 0; i4 < size; i4++) {
                androidx.constraintlayout.b.a.e eVar3 = ac.get(i4);
                if (eVar3 instanceof androidx.constraintlayout.b.a.a) {
                    androidx.constraintlayout.b.a.a aVar = (androidx.constraintlayout.b.a.a) eVar3;
                    if (aVar.h() == 0) {
                        a(aVar, interfaceC0020b, 0, Y);
                    }
                }
            }
        }
        if (T == e.a.FIXED) {
            fVar.b(0, fVar.B());
        } else {
            fVar.e(0);
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            androidx.constraintlayout.b.a.e eVar4 = ac.get(i5);
            if (eVar4 instanceof androidx.constraintlayout.b.a.h) {
                androidx.constraintlayout.b.a.h hVar3 = (androidx.constraintlayout.b.a.h) eVar4;
                if (hVar3.c() == 0) {
                    if (hVar3.g() != -1) {
                        hVar3.z(hVar3.g());
                    } else if (hVar3.h() != -1 && fVar.e()) {
                        hVar3.z(fVar.B() - hVar3.h());
                    } else if (fVar.e()) {
                        hVar3.z((int) ((hVar3.f() * fVar.B()) + 0.5f));
                    }
                    z3 = true;
                }
            } else if ((eVar4 instanceof androidx.constraintlayout.b.a.a) && ((androidx.constraintlayout.b.a.a) eVar4).h() == 1) {
                z4 = true;
            }
        }
        if (z3) {
            for (int i6 = 0; i6 < size; i6++) {
                androidx.constraintlayout.b.a.e eVar5 = ac.get(i6);
                if (eVar5 instanceof androidx.constraintlayout.b.a.h) {
                    androidx.constraintlayout.b.a.h hVar4 = (androidx.constraintlayout.b.a.h) eVar5;
                    if (hVar4.c() == 0) {
                        a(hVar4, interfaceC0020b);
                    }
                }
            }
        }
        a((androidx.constraintlayout.b.a.e) fVar, interfaceC0020b);
        if (z4) {
            for (int i7 = 0; i7 < size; i7++) {
                androidx.constraintlayout.b.a.e eVar6 = ac.get(i7);
                if (eVar6 instanceof androidx.constraintlayout.b.a.a) {
                    androidx.constraintlayout.b.a.a aVar2 = (androidx.constraintlayout.b.a.a) eVar6;
                    if (aVar2.h() == 1) {
                        a(aVar2, interfaceC0020b, 1, Y);
                    }
                }
            }
        }
        for (int i8 = 0; i8 < size; i8++) {
            androidx.constraintlayout.b.a.e eVar7 = ac.get(i8);
            if (eVar7.p() && a(eVar7)) {
                androidx.constraintlayout.b.a.f.a(eVar7, interfaceC0020b, a, b.a.a);
                a(eVar7, interfaceC0020b, Y);
                a(eVar7, interfaceC0020b);
            }
        }
    }

    private static void a(androidx.constraintlayout.b.a.a aVar, b.InterfaceC0020b interfaceC0020b, int i, boolean z) {
        if (aVar.i()) {
            if (i == 0) {
                a(aVar, interfaceC0020b, z);
            } else {
                a(aVar, interfaceC0020b);
            }
        }
    }

    private static void a(androidx.constraintlayout.b.a.e eVar, b.InterfaceC0020b interfaceC0020b, boolean z) {
        if (!(eVar instanceof androidx.constraintlayout.b.a.f) && eVar.p() && a(eVar)) {
            androidx.constraintlayout.b.a.f.a(eVar, interfaceC0020b, new b.a(), b.a.a);
        }
        androidx.constraintlayout.b.a.d a2 = eVar.a(d.a.LEFT);
        androidx.constraintlayout.b.a.d a3 = eVar.a(d.a.RIGHT);
        int d = a2.d();
        int d2 = a3.d();
        if (a2.a() != null && a2.f()) {
            Iterator<androidx.constraintlayout.b.a.d> it = a2.a().iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.b.a.d next = it.next();
                androidx.constraintlayout.b.a.e eVar2 = next.a;
                boolean a4 = a(eVar2);
                if (eVar2.p() && a4) {
                    androidx.constraintlayout.b.a.f.a(eVar2, interfaceC0020b, new b.a(), b.a.a);
                }
                if (eVar2.S() != e.a.MATCH_CONSTRAINT || a4) {
                    if (!eVar2.p()) {
                        if (next == eVar2.w && eVar2.y.c == null) {
                            int j = eVar2.w.j() + d;
                            eVar2.a(j, eVar2.A() + j);
                            a(eVar2, interfaceC0020b, z);
                        } else if (next == eVar2.y && eVar2.w.c == null) {
                            int j2 = d - eVar2.y.j();
                            eVar2.a(j2 - eVar2.A(), j2);
                            a(eVar2, interfaceC0020b, z);
                        } else if (next == eVar2.w && eVar2.y.c != null && eVar2.y.c.f() && !eVar2.U()) {
                            a(interfaceC0020b, eVar2, z);
                        }
                    }
                } else if (eVar2.S() == e.a.MATCH_CONSTRAINT && eVar2.p >= 0 && eVar2.o >= 0 && (eVar2.w() == 8 || (eVar2.l == 0 && eVar2.N() == 0.0f))) {
                    if (!eVar2.U() && !eVar2.l()) {
                        if (((next == eVar2.w && eVar2.y.c != null && eVar2.y.c.f()) || (next == eVar2.y && eVar2.w.c != null && eVar2.w.c.f())) && !eVar2.U()) {
                            a(eVar, interfaceC0020b, eVar2, z);
                        }
                    }
                }
            }
        }
        if ((eVar instanceof androidx.constraintlayout.b.a.h) || a3.a() == null || !a3.f()) {
            return;
        }
        Iterator<androidx.constraintlayout.b.a.d> it2 = a3.a().iterator();
        while (it2.hasNext()) {
            androidx.constraintlayout.b.a.d next2 = it2.next();
            androidx.constraintlayout.b.a.e eVar3 = next2.a;
            boolean a5 = a(eVar3);
            if (eVar3.p() && a5) {
                androidx.constraintlayout.b.a.f.a(eVar3, interfaceC0020b, new b.a(), b.a.a);
            }
            boolean z2 = (next2 == eVar3.w && eVar3.y.c != null && eVar3.y.c.f()) || (next2 == eVar3.y && eVar3.w.c != null && eVar3.w.c.f());
            if (eVar3.S() != e.a.MATCH_CONSTRAINT || a5) {
                if (!eVar3.p()) {
                    if (next2 == eVar3.w && eVar3.y.c == null) {
                        int j3 = eVar3.w.j() + d2;
                        eVar3.a(j3, eVar3.A() + j3);
                        a(eVar3, interfaceC0020b, z);
                    } else if (next2 == eVar3.y && eVar3.w.c == null) {
                        int j4 = d2 - eVar3.y.j();
                        eVar3.a(j4 - eVar3.A(), j4);
                        a(eVar3, interfaceC0020b, z);
                    } else if (z2 && !eVar3.U()) {
                        a(interfaceC0020b, eVar3, z);
                    }
                }
            } else if (eVar3.S() == e.a.MATCH_CONSTRAINT && eVar3.p >= 0 && eVar3.o >= 0 && (eVar3.w() == 8 || (eVar3.l == 0 && eVar3.N() == 0.0f))) {
                if (!eVar3.U() && !eVar3.l() && z2 && !eVar3.U()) {
                    a(eVar, interfaceC0020b, eVar3, z);
                }
            }
        }
    }

    private static void a(androidx.constraintlayout.b.a.e eVar, b.InterfaceC0020b interfaceC0020b) {
        if (!(eVar instanceof androidx.constraintlayout.b.a.f) && eVar.p() && a(eVar)) {
            androidx.constraintlayout.b.a.f.a(eVar, interfaceC0020b, new b.a(), b.a.a);
        }
        androidx.constraintlayout.b.a.d a2 = eVar.a(d.a.TOP);
        androidx.constraintlayout.b.a.d a3 = eVar.a(d.a.BOTTOM);
        int d = a2.d();
        int d2 = a3.d();
        if (a2.a() != null && a2.f()) {
            Iterator<androidx.constraintlayout.b.a.d> it = a2.a().iterator();
            while (it.hasNext()) {
                androidx.constraintlayout.b.a.d next = it.next();
                androidx.constraintlayout.b.a.e eVar2 = next.a;
                boolean a4 = a(eVar2);
                if (eVar2.p() && a4) {
                    androidx.constraintlayout.b.a.f.a(eVar2, interfaceC0020b, new b.a(), b.a.a);
                }
                if (eVar2.T() != e.a.MATCH_CONSTRAINT || a4) {
                    if (!eVar2.p()) {
                        if (next == eVar2.x && eVar2.z.c == null) {
                            int j = eVar2.x.j() + d;
                            eVar2.b(j, eVar2.B() + j);
                            a(eVar2, interfaceC0020b);
                        } else if (next == eVar2.z && eVar2.z.c == null) {
                            int j2 = d - eVar2.z.j();
                            eVar2.b(j2 - eVar2.B(), j2);
                            a(eVar2, interfaceC0020b);
                        } else if (next == eVar2.x && eVar2.z.c != null && eVar2.z.c.f()) {
                            a(interfaceC0020b, eVar2);
                        }
                    }
                } else if (eVar2.T() == e.a.MATCH_CONSTRAINT && eVar2.s >= 0 && eVar2.r >= 0 && (eVar2.w() == 8 || (eVar2.m == 0 && eVar2.N() == 0.0f))) {
                    if (!eVar2.V() && !eVar2.l()) {
                        if (((next == eVar2.x && eVar2.z.c != null && eVar2.z.c.f()) || (next == eVar2.z && eVar2.x.c != null && eVar2.x.c.f())) && !eVar2.V()) {
                            a(eVar, interfaceC0020b, eVar2);
                        }
                    }
                }
            }
        }
        if (eVar instanceof androidx.constraintlayout.b.a.h) {
            return;
        }
        if (a3.a() != null && a3.f()) {
            Iterator<androidx.constraintlayout.b.a.d> it2 = a3.a().iterator();
            while (it2.hasNext()) {
                androidx.constraintlayout.b.a.d next2 = it2.next();
                androidx.constraintlayout.b.a.e eVar3 = next2.a;
                boolean a5 = a(eVar3);
                if (eVar3.p() && a5) {
                    androidx.constraintlayout.b.a.f.a(eVar3, interfaceC0020b, new b.a(), b.a.a);
                }
                boolean z = (next2 == eVar3.x && eVar3.z.c != null && eVar3.z.c.f()) || (next2 == eVar3.z && eVar3.x.c != null && eVar3.x.c.f());
                if (eVar3.T() != e.a.MATCH_CONSTRAINT || a5) {
                    if (!eVar3.p()) {
                        if (next2 == eVar3.x && eVar3.z.c == null) {
                            int j3 = eVar3.x.j() + d2;
                            eVar3.b(j3, eVar3.B() + j3);
                            a(eVar3, interfaceC0020b);
                        } else if (next2 == eVar3.z && eVar3.x.c == null) {
                            int j4 = d2 - eVar3.z.j();
                            eVar3.b(j4 - eVar3.B(), j4);
                            a(eVar3, interfaceC0020b);
                        } else if (z && !eVar3.V()) {
                            a(interfaceC0020b, eVar3);
                        }
                    }
                } else if (eVar3.T() == e.a.MATCH_CONSTRAINT && eVar3.s >= 0 && eVar3.r >= 0 && (eVar3.w() == 8 || (eVar3.m == 0 && eVar3.N() == 0.0f))) {
                    if (!eVar3.V() && !eVar3.l() && z && !eVar3.V()) {
                        a(eVar, interfaceC0020b, eVar3);
                    }
                }
            }
        }
        androidx.constraintlayout.b.a.d a6 = eVar.a(d.a.BASELINE);
        if (a6.a() == null || !a6.f()) {
            return;
        }
        int d3 = a6.d();
        Iterator<androidx.constraintlayout.b.a.d> it3 = a6.a().iterator();
        while (it3.hasNext()) {
            androidx.constraintlayout.b.a.d next3 = it3.next();
            androidx.constraintlayout.b.a.e eVar4 = next3.a;
            boolean a7 = a(eVar4);
            if (eVar4.p() && a7) {
                androidx.constraintlayout.b.a.f.a(eVar4, interfaceC0020b, new b.a(), b.a.a);
            }
            if (eVar4.T() != e.a.MATCH_CONSTRAINT || a7) {
                if (!eVar4.p() && next3 == eVar4.A) {
                    eVar4.f(d3);
                    a(eVar4, interfaceC0020b);
                }
            }
        }
    }

    private static void a(b.InterfaceC0020b interfaceC0020b, androidx.constraintlayout.b.a.e eVar, boolean z) {
        float I = eVar.I();
        int d = eVar.w.c.d();
        int d2 = eVar.y.c.d();
        int j = eVar.w.j() + d;
        int j2 = d2 - eVar.y.j();
        if (d == d2) {
            I = 0.5f;
        } else {
            d = j;
            d2 = j2;
        }
        int A = eVar.A();
        int i = (d2 - d) - A;
        if (d > d2) {
            i = (d - d2) - A;
        }
        int i2 = ((int) ((I * i) + 0.5f)) + d;
        int i3 = i2 + A;
        if (d > d2) {
            i3 = i2 - A;
        }
        eVar.a(i2, i3);
        a(eVar, interfaceC0020b, z);
    }

    private static void a(b.InterfaceC0020b interfaceC0020b, androidx.constraintlayout.b.a.e eVar) {
        float J = eVar.J();
        int d = eVar.x.c.d();
        int d2 = eVar.z.c.d();
        int j = eVar.x.j() + d;
        int j2 = d2 - eVar.z.j();
        if (d == d2) {
            J = 0.5f;
        } else {
            d = j;
            d2 = j2;
        }
        int B = eVar.B();
        int i = (d2 - d) - B;
        if (d > d2) {
            i = (d - d2) - B;
        }
        int i2 = (int) ((J * i) + 0.5f);
        int i3 = d + i2;
        int i4 = i3 + B;
        if (d > d2) {
            i3 = d - i2;
            i4 = i3 - B;
        }
        eVar.b(i3, i4);
        a(eVar, interfaceC0020b);
    }

    private static void a(androidx.constraintlayout.b.a.e eVar, b.InterfaceC0020b interfaceC0020b, androidx.constraintlayout.b.a.e eVar2, boolean z) {
        int A;
        float I = eVar2.I();
        int d = eVar2.w.c.d() + eVar2.w.j();
        int d2 = eVar2.y.c.d() - eVar2.y.j();
        if (d2 >= d) {
            int A2 = eVar2.A();
            if (eVar2.w() != 8) {
                if (eVar2.l == 2) {
                    if (eVar instanceof androidx.constraintlayout.b.a.f) {
                        A = eVar.A();
                    } else {
                        A = eVar.v().A();
                    }
                    A2 = (int) (eVar2.I() * 0.5f * A);
                } else if (eVar2.l == 0) {
                    A2 = d2 - d;
                }
                A2 = Math.max(eVar2.o, A2);
                if (eVar2.p > 0) {
                    A2 = Math.min(eVar2.p, A2);
                }
            }
            int i = d + ((int) ((I * ((d2 - d) - A2)) + 0.5f));
            eVar2.a(i, A2 + i);
            a(eVar2, interfaceC0020b, z);
        }
    }

    private static void a(androidx.constraintlayout.b.a.e eVar, b.InterfaceC0020b interfaceC0020b, androidx.constraintlayout.b.a.e eVar2) {
        int B;
        float J = eVar2.J();
        int d = eVar2.x.c.d() + eVar2.x.j();
        int d2 = eVar2.z.c.d() - eVar2.z.j();
        if (d2 >= d) {
            int B2 = eVar2.B();
            if (eVar2.w() != 8) {
                if (eVar2.m == 2) {
                    if (eVar instanceof androidx.constraintlayout.b.a.f) {
                        B = eVar.B();
                    } else {
                        B = eVar.v().B();
                    }
                    B2 = (int) (J * 0.5f * B);
                } else if (eVar2.m == 0) {
                    B2 = d2 - d;
                }
                B2 = Math.max(eVar2.r, B2);
                if (eVar2.s > 0) {
                    B2 = Math.min(eVar2.s, B2);
                }
            }
            int i = d + ((int) ((J * ((d2 - d) - B2)) + 0.5f));
            eVar2.b(i, B2 + i);
            a(eVar2, interfaceC0020b);
        }
    }

    private static boolean a(androidx.constraintlayout.b.a.e eVar) {
        e.a S = eVar.S();
        e.a T = eVar.T();
        androidx.constraintlayout.b.a.f fVar = eVar.v() != null ? (androidx.constraintlayout.b.a.f) eVar.v() : null;
        if (fVar != null) {
            fVar.S();
            e.a aVar = e.a.FIXED;
        }
        if (fVar != null) {
            fVar.T();
            e.a aVar2 = e.a.FIXED;
        }
        boolean z = S == e.a.FIXED || S == e.a.WRAP_CONTENT || (S == e.a.MATCH_CONSTRAINT && eVar.l == 0 && eVar.K == 0.0f && eVar.g(0)) || eVar.d();
        boolean z2 = T == e.a.FIXED || T == e.a.WRAP_CONTENT || (T == e.a.MATCH_CONSTRAINT && eVar.m == 0 && eVar.K == 0.0f && eVar.g(1)) || eVar.e();
        if (eVar.K <= 0.0f || !(z || z2)) {
            return z && z2;
        }
        return true;
    }
}
