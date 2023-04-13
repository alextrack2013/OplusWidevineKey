package androidx.constraintlayout.b.a;

import java.util.ArrayList;
/* compiled from: Flow.java */
/* loaded from: classes.dex */
public class g extends l {
    private e[] aM;
    private int ap = -1;
    private int aq = -1;
    private int ar = -1;
    private int as = -1;
    private int at = -1;
    private int au = -1;
    private float av = 0.5f;
    private float aw = 0.5f;
    private float ax = 0.5f;
    private float ay = 0.5f;
    private float az = 0.5f;
    private float aA = 0.5f;
    private int aB = 0;
    private int aC = 0;
    private int aD = 2;
    private int aE = 2;
    private int aF = 0;
    private int aG = -1;
    private int aH = 0;
    private ArrayList<a> aI = new ArrayList<>();
    private e[] aJ = null;
    private e[] aK = null;
    private int[] aL = null;
    private int aN = 0;

    /* compiled from: Flow.java */
    /* loaded from: classes.dex */
    private class a {
        final /* synthetic */ g a;
        private int b;
        private e c;
        private d d;
        private d e;
        private d f;
        private d g;
        private int h;
        private int i;
        private int j;
        private int k;
        private int l;
        private int m;

        public void a(boolean z, int i, boolean z2) {
            int i2;
            e eVar;
            char c;
            int i3;
            int i4 = this.m;
            for (int i5 = 0; i5 < i4 && this.l + i5 < this.a.aN; i5++) {
                e eVar2 = this.a.aM[this.l + i5];
                if (eVar2 != null) {
                    eVar2.R();
                }
            }
            if (i4 == 0 || this.c == null) {
                return;
            }
            boolean z3 = z2 && i == 0;
            int i6 = -1;
            int i7 = -1;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = z ? (i4 - 1) - i8 : i8;
                if (this.l + i9 >= this.a.aN) {
                    break;
                }
                if (this.a.aM[this.l + i9].w() == 0) {
                    if (i6 == -1) {
                        i6 = i8;
                    }
                    i7 = i8;
                }
            }
            if (this.b == 0) {
                e eVar3 = this.c;
                eVar3.u(this.a.aq);
                int i10 = this.i;
                if (i > 0) {
                    i10 += this.a.aC;
                }
                eVar3.x.a(this.e, i10);
                if (z2) {
                    eVar3.z.a(this.g, this.k);
                }
                if (i > 0) {
                    this.e.a.z.a(eVar3.x, 0);
                }
                if (this.a.aE == 3 && !eVar3.K()) {
                    for (int i11 = 0; i11 < i4; i11++) {
                        int i12 = z ? (i4 - 1) - i11 : i11;
                        if (this.l + i12 >= this.a.aN) {
                            break;
                        }
                        eVar = this.a.aM[this.l + i12];
                        if (eVar.K()) {
                            break;
                        }
                    }
                }
                eVar = eVar3;
                int i13 = 0;
                e eVar4 = null;
                while (i13 < i4) {
                    int i14 = z ? (i4 - 1) - i13 : i13;
                    if (this.l + i14 >= this.a.aN) {
                        return;
                    }
                    e eVar5 = this.a.aM[this.l + i14];
                    if (i13 == 0) {
                        eVar5.a(eVar5.w, this.d, this.h);
                    }
                    if (i14 == 0) {
                        int i15 = this.a.ap;
                        float f = this.a.av;
                        if (this.l == 0) {
                            i3 = -1;
                            if (this.a.ar != -1) {
                                i15 = this.a.ar;
                                f = this.a.ax;
                                eVar5.t(i15);
                                eVar5.a(f);
                            }
                        } else {
                            i3 = -1;
                        }
                        if (z2 && this.a.at != i3) {
                            i15 = this.a.at;
                            f = this.a.az;
                        }
                        eVar5.t(i15);
                        eVar5.a(f);
                    }
                    if (i13 == i4 - 1) {
                        eVar5.a(eVar5.y, this.f, this.j);
                    }
                    if (eVar4 != null) {
                        eVar5.w.a(eVar4.y, this.a.aB);
                        if (i13 == i6) {
                            eVar5.w.b(this.h);
                        }
                        eVar4.y.a(eVar5.w, 0);
                        if (i13 == i7 + 1) {
                            eVar4.y.b(this.j);
                        }
                    }
                    if (eVar5 != eVar3) {
                        c = 3;
                        if (this.a.aE == 3 && eVar.K() && eVar5 != eVar && eVar5.K()) {
                            eVar5.A.a(eVar.A, 0);
                        } else {
                            switch (this.a.aE) {
                                case 0:
                                    eVar5.x.a(eVar3.x, 0);
                                    continue;
                                case 1:
                                    eVar5.z.a(eVar3.z, 0);
                                    continue;
                                default:
                                    if (z3) {
                                        eVar5.x.a(this.e, this.i);
                                        eVar5.z.a(this.g, this.k);
                                        continue;
                                    } else {
                                        eVar5.x.a(eVar3.x, 0);
                                        eVar5.z.a(eVar3.z, 0);
                                        break;
                                    }
                            }
                        }
                    } else {
                        c = 3;
                    }
                    i13++;
                    eVar4 = eVar5;
                }
                return;
            }
            e eVar6 = this.c;
            eVar6.t(this.a.ap);
            int i16 = this.h;
            if (i > 0) {
                i16 += this.a.aB;
            }
            if (z) {
                eVar6.y.a(this.f, i16);
                if (z2) {
                    eVar6.w.a(this.d, this.j);
                }
                if (i > 0) {
                    this.f.a.w.a(eVar6.y, 0);
                }
            } else {
                eVar6.w.a(this.d, i16);
                if (z2) {
                    eVar6.y.a(this.f, this.j);
                }
                if (i > 0) {
                    this.d.a.y.a(eVar6.w, 0);
                }
            }
            int i17 = 0;
            e eVar7 = null;
            while (i17 < i4 && this.l + i17 < this.a.aN) {
                e eVar8 = this.a.aM[this.l + i17];
                if (i17 == 0) {
                    eVar8.a(eVar8.x, this.e, this.i);
                    int i18 = this.a.aq;
                    float f2 = this.a.aw;
                    if (this.l == 0) {
                        i2 = -1;
                        if (this.a.as != -1) {
                            i18 = this.a.as;
                            f2 = this.a.ay;
                            eVar8.u(i18);
                            eVar8.b(f2);
                        }
                    } else {
                        i2 = -1;
                    }
                    if (z2 && this.a.au != i2) {
                        i18 = this.a.au;
                        f2 = this.a.aA;
                    }
                    eVar8.u(i18);
                    eVar8.b(f2);
                }
                if (i17 == i4 - 1) {
                    eVar8.a(eVar8.z, this.g, this.k);
                }
                if (eVar7 != null) {
                    eVar8.x.a(eVar7.z, this.a.aC);
                    if (i17 == i6) {
                        eVar8.x.b(this.i);
                    }
                    eVar7.z.a(eVar8.x, 0);
                    if (i17 == i7 + 1) {
                        eVar7.z.b(this.k);
                    }
                }
                if (eVar8 != eVar6) {
                    if (z) {
                        switch (this.a.aD) {
                            case 0:
                                eVar8.y.a(eVar6.y, 0);
                                break;
                            case 1:
                                eVar8.w.a(eVar6.w, 0);
                                break;
                            case 2:
                                eVar8.w.a(eVar6.w, 0);
                                eVar8.y.a(eVar6.y, 0);
                                break;
                        }
                    } else {
                        switch (this.a.aD) {
                            case 0:
                                eVar8.w.a(eVar6.w, 0);
                                continue;
                                i17++;
                                eVar7 = eVar8;
                            case 1:
                                eVar8.y.a(eVar6.y, 0);
                                continue;
                                i17++;
                                eVar7 = eVar8;
                            case 2:
                                if (z3) {
                                    eVar8.w.a(this.d, this.h);
                                    eVar8.y.a(this.f, this.j);
                                    break;
                                } else {
                                    eVar8.w.a(eVar6.w, 0);
                                    eVar8.y.a(eVar6.y, 0);
                                    continue;
                                    i17++;
                                    eVar7 = eVar8;
                                }
                        }
                    }
                }
                i17++;
                eVar7 = eVar8;
            }
        }
    }

    private void f(boolean z) {
        e eVar;
        if (this.aL == null || this.aK == null || this.aJ == null) {
            return;
        }
        for (int i = 0; i < this.aN; i++) {
            this.aM[i].R();
        }
        int i2 = this.aL[0];
        int i3 = this.aL[1];
        e eVar2 = null;
        for (int i4 = 0; i4 < i2; i4++) {
            e eVar3 = this.aK[z ? (i2 - i4) - 1 : i4];
            if (eVar3 != null && eVar3.w() != 8) {
                if (i4 == 0) {
                    eVar3.a(eVar3.w, this.w, f());
                    eVar3.t(this.ap);
                    eVar3.a(this.av);
                }
                if (i4 == i2 - 1) {
                    eVar3.a(eVar3.y, this.y, g());
                }
                if (i4 > 0) {
                    eVar3.a(eVar3.w, eVar2.y, this.aB);
                    eVar2.a(eVar2.y, eVar3.w, 0);
                }
                eVar2 = eVar3;
            }
        }
        for (int i5 = 0; i5 < i3; i5++) {
            e eVar4 = this.aJ[i5];
            if (eVar4 != null && eVar4.w() != 8) {
                if (i5 == 0) {
                    eVar4.a(eVar4.x, this.x, b());
                    eVar4.u(this.aq);
                    eVar4.b(this.aw);
                }
                if (i5 == i3 - 1) {
                    eVar4.a(eVar4.z, this.z, c());
                }
                if (i5 > 0) {
                    eVar4.a(eVar4.x, eVar2.z, this.aC);
                    eVar2.a(eVar2.z, eVar4.x, 0);
                }
                eVar2 = eVar4;
            }
        }
        for (int i6 = 0; i6 < i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                int i8 = (i7 * i2) + i6;
                if (this.aH == 1) {
                    i8 = (i6 * i3) + i7;
                }
                if (i8 < this.aM.length && (eVar = this.aM[i8]) != null && eVar.w() != 8) {
                    e eVar5 = this.aK[i6];
                    e eVar6 = this.aJ[i7];
                    if (eVar != eVar5) {
                        eVar.a(eVar.w, eVar5.w, 0);
                        eVar.a(eVar.y, eVar5.y, 0);
                    }
                    if (eVar != eVar6) {
                        eVar.a(eVar.x, eVar6.x, 0);
                        eVar.a(eVar.z, eVar6.z, 0);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.b.a.e
    public void a(androidx.constraintlayout.b.d dVar, boolean z) {
        super.a(dVar, z);
        boolean Y = v() != null ? ((f) v()).Y() : false;
        switch (this.aF) {
            case 0:
                if (this.aI.size() > 0) {
                    this.aI.get(0).a(Y, 0, true);
                    break;
                }
                break;
            case 1:
                int size = this.aI.size();
                int i = 0;
                while (i < size) {
                    this.aI.get(i).a(Y, i, i == size + (-1));
                    i++;
                }
                break;
            case 2:
                f(Y);
                break;
        }
        a(false);
    }
}
