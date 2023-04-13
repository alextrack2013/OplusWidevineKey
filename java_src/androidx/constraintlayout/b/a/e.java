package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.a.n;
import androidx.constraintlayout.b.a.a.p;
import androidx.constraintlayout.b.a.d;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: ConstraintWidget.java */
/* loaded from: classes.dex */
public class e {
    public static float V = 0.5f;
    protected int T;
    protected int U;
    boolean Y;
    boolean Z;
    boolean ad;
    boolean ae;
    private boolean at;
    private Object ay;
    public androidx.constraintlayout.b.a.a.c d;
    public androidx.constraintlayout.b.a.a.c e;
    public boolean b = false;
    public p[] c = new p[2];
    public androidx.constraintlayout.b.a.a.l f = null;
    public n g = null;
    public boolean[] h = {true, true};
    boolean i = false;
    private boolean a = true;
    private boolean am = false;
    private boolean an = true;
    private boolean ao = false;
    private boolean ap = false;
    public int j = -1;
    public int k = -1;
    public int l = 0;
    public int m = 0;
    public int[] n = new int[2];
    public int o = 0;
    public int p = 0;
    public float q = 1.0f;
    public int r = 0;
    public int s = 0;
    public float t = 1.0f;
    int u = -1;
    float v = 1.0f;
    private int[] aq = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    private float ar = 0.0f;
    private boolean as = false;
    private boolean au = false;
    private int av = 0;
    private int aw = 0;
    public d w = new d(this, d.a.LEFT);
    public d x = new d(this, d.a.TOP);
    public d y = new d(this, d.a.RIGHT);
    public d z = new d(this, d.a.BOTTOM);
    public d A = new d(this, d.a.BASELINE);
    d B = new d(this, d.a.CENTER_X);
    d C = new d(this, d.a.CENTER_Y);
    public d D = new d(this, d.a.CENTER);
    public d[] E = {this.w, this.y, this.x, this.z, this.A, this.D};
    protected ArrayList<d> F = new ArrayList<>();
    private boolean[] ax = new boolean[2];
    public a[] G = {a.FIXED, a.FIXED};
    public e H = null;
    int I = 0;
    int J = 0;
    public float K = 0.0f;
    protected int L = -1;
    protected int M = 0;
    protected int N = 0;
    int O = 0;
    int P = 0;
    protected int Q = 0;
    protected int R = 0;
    int S = 0;
    float W = V;
    float X = V;
    private int az = 0;
    private int aA = 0;
    private String aB = null;
    private String aC = null;
    boolean aa = false;
    int ab = 0;
    int ac = 0;
    public float[] af = {-1.0f, -1.0f};
    protected e[] ag = {null, null};
    protected e[] ah = {null, null};
    e ai = null;
    e aj = null;
    public int ak = -1;
    public int al = -1;

    /* compiled from: ConstraintWidget.java */
    /* loaded from: classes.dex */
    public enum a {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public p c(int i) {
        if (i == 0) {
            return this.f;
        }
        if (i == 1) {
            return this.g;
        }
        return null;
    }

    public void d(int i) {
        this.w.a(i);
        this.M = i;
    }

    public void e(int i) {
        this.x.a(i);
        this.N = i;
    }

    public void a(int i, int i2) {
        this.w.a(i);
        this.y.a(i2);
        this.M = i;
        this.I = i2 - i;
        this.ao = true;
    }

    public void b(int i, int i2) {
        this.x.a(i);
        this.z.a(i2);
        this.N = i;
        this.J = i2 - i;
        if (this.as) {
            this.A.a(i + this.S);
        }
        this.ap = true;
    }

    public void f(int i) {
        if (this.as) {
            int i2 = i - this.S;
            int i3 = this.J + i2;
            this.N = i2;
            this.x.a(i2);
            this.z.a(i3);
            this.A.a(i);
            this.ap = true;
        }
    }

    public boolean d() {
        return this.ao || (this.w.f() && this.y.f());
    }

    public boolean e() {
        return this.ap || (this.x.f() && this.z.f());
    }

    public void c_() {
        this.ao = false;
        this.ap = false;
        int size = this.F.size();
        for (int i = 0; i < size; i++) {
            this.F.get(i).e();
        }
    }

    public boolean k() {
        int size = this.F.size();
        for (int i = 0; i < size; i++) {
            if (this.F.get(i).b()) {
                return true;
            }
        }
        return false;
    }

    public boolean g(int i) {
        if (i == 0) {
            return (this.w.c != null ? 1 : 0) + (this.y.c != null ? 1 : 0) < 2;
        }
        return ((this.x.c != null ? 1 : 0) + (this.z.c != null ? 1 : 0)) + (this.A.c != null ? 1 : 0) < 2;
    }

    public boolean l() {
        return this.au;
    }

    public void b(boolean z) {
        this.au = z;
    }

    public int m() {
        return this.aq[1];
    }

    public int n() {
        return this.aq[0];
    }

    public void h(int i) {
        this.aq[0] = i;
    }

    public void i(int i) {
        this.aq[1] = i;
    }

    public void c(boolean z) {
        this.as = z;
    }

    public boolean o() {
        return this.at;
    }

    public void d(boolean z) {
        this.at = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, boolean z) {
        this.ax[i] = z;
    }

    public void e(boolean z) {
        this.a = z;
    }

    public boolean p() {
        return this.a && this.aA != 8;
    }

    public int q() {
        return this.av;
    }

    public int r() {
        return this.aw;
    }

    public void c(int i, int i2) {
        this.av = i;
        this.aw = i2;
        e(false);
    }

    public void s() {
        this.w.l();
        this.x.l();
        this.y.l();
        this.z.l();
        this.A.l();
        this.B.l();
        this.C.l();
        this.D.l();
        this.H = null;
        this.ar = 0.0f;
        this.I = 0;
        this.J = 0;
        this.K = 0.0f;
        this.L = -1;
        this.M = 0;
        this.N = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.W = V;
        this.X = V;
        this.G[0] = a.FIXED;
        this.G[1] = a.FIXED;
        this.ay = null;
        this.az = 0;
        this.aA = 0;
        this.aC = null;
        this.Y = false;
        this.Z = false;
        this.ab = 0;
        this.ac = 0;
        this.ad = false;
        this.ae = false;
        this.af[0] = -1.0f;
        this.af[1] = -1.0f;
        this.j = -1;
        this.k = -1;
        this.aq[0] = Integer.MAX_VALUE;
        this.aq[1] = Integer.MAX_VALUE;
        this.l = 0;
        this.m = 0;
        this.q = 1.0f;
        this.t = 1.0f;
        this.p = Integer.MAX_VALUE;
        this.s = Integer.MAX_VALUE;
        this.o = 0;
        this.r = 0;
        this.i = false;
        this.u = -1;
        this.v = 1.0f;
        this.aa = false;
        this.h[0] = true;
        this.h[1] = true;
        this.au = false;
        this.ax[0] = false;
        this.ax[1] = false;
        this.a = true;
    }

    public boolean t() {
        return this.G[0] == a.MATCH_CONSTRAINT && this.G[1] == a.MATCH_CONSTRAINT;
    }

    public e() {
        b();
    }

    public void u() {
        if (this.f == null) {
            this.f = new androidx.constraintlayout.b.a.a.l(this);
        }
        if (this.g == null) {
            this.g = new n(this);
        }
    }

    public void a(androidx.constraintlayout.b.c cVar) {
        this.w.a(cVar);
        this.x.a(cVar);
        this.y.a(cVar);
        this.z.a(cVar);
        this.A.a(cVar);
        this.D.a(cVar);
        this.B.a(cVar);
        this.C.a(cVar);
    }

    private void b() {
        this.F.add(this.w);
        this.F.add(this.x);
        this.F.add(this.y);
        this.F.add(this.z);
        this.F.add(this.B);
        this.F.add(this.C);
        this.F.add(this.D);
        this.F.add(this.A);
    }

    public e v() {
        return this.H;
    }

    public void a_(e eVar) {
        this.H = eVar;
    }

    public void a(e eVar, float f, int i) {
        a(d.a.CENTER, eVar, d.a.CENTER, i, 0);
        this.ar = f;
    }

    public void j(int i) {
        this.aA = i;
    }

    public int w() {
        return this.aA;
    }

    public String x() {
        return this.aB;
    }

    public void a(String str) {
        this.aB = str;
    }

    public void a(androidx.constraintlayout.b.d dVar) {
        dVar.a(this.w);
        dVar.a(this.x);
        dVar.a(this.y);
        dVar.a(this.z);
        if (this.S > 0) {
            dVar.a(this.A);
        }
    }

    public String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        if (this.aC != null) {
            str = "type: " + this.aC + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.aB != null) {
            str2 = "id: " + this.aB + " ";
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.M);
        sb.append(", ");
        sb.append(this.N);
        sb.append(") - (");
        sb.append(this.I);
        sb.append(" x ");
        sb.append(this.J);
        sb.append(")");
        return sb.toString();
    }

    public int y() {
        if (this.H != null && (this.H instanceof f)) {
            return ((f) this.H).aq + this.M;
        }
        return this.M;
    }

    public int z() {
        if (this.H != null && (this.H instanceof f)) {
            return ((f) this.H).ar + this.N;
        }
        return this.N;
    }

    public int A() {
        if (this.aA == 8) {
            return 0;
        }
        return this.I;
    }

    public int B() {
        if (this.aA == 8) {
            return 0;
        }
        return this.J;
    }

    public int k(int i) {
        if (i == 0) {
            return A();
        }
        if (i == 1) {
            return B();
        }
        return 0;
    }

    public int C() {
        return this.T;
    }

    public int D() {
        return this.U;
    }

    public int E() {
        return y() + this.I;
    }

    public int F() {
        return z() + this.J;
    }

    public int G() {
        int i = this.w != null ? 0 + this.w.d : 0;
        return this.y != null ? i + this.y.d : i;
    }

    public int H() {
        int i = this.w != null ? 0 + this.x.d : 0;
        return this.y != null ? i + this.z.d : i;
    }

    public float I() {
        return this.W;
    }

    public float J() {
        return this.X;
    }

    public float l(int i) {
        if (i == 0) {
            return this.W;
        }
        if (i == 1) {
            return this.X;
        }
        return -1.0f;
    }

    public boolean K() {
        return this.as;
    }

    public int L() {
        return this.S;
    }

    public Object M() {
        return this.ay;
    }

    public void m(int i) {
        this.M = i;
    }

    public void n(int i) {
        this.N = i;
    }

    public void d(int i, int i2) {
        this.M = i;
        this.N = i2;
    }

    public void o(int i) {
        this.I = i;
        if (this.I < this.T) {
            this.I = this.T;
        }
    }

    public void p(int i) {
        this.J = i;
        if (this.J < this.U) {
            this.J = this.U;
        }
    }

    public void a(int i, int i2, int i3, float f) {
        this.l = i;
        this.o = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.p = i3;
        this.q = f;
        if (f <= 0.0f || f >= 1.0f || this.l != 0) {
            return;
        }
        this.l = 2;
    }

    public void b(int i, int i2, int i3, float f) {
        this.m = i;
        this.r = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.s = i3;
        this.t = f;
        if (f <= 0.0f || f >= 1.0f || this.m != 0) {
            return;
        }
        this.m = 2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0084 -> B:39:0x0085). Please submit an issue!!! */
    public void b(String str) {
        float f;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.K = 0.0f;
            return;
        }
        int i2 = -1;
        int length = str.length();
        int indexOf = str.indexOf(44);
        int i3 = 0;
        if (indexOf > 0 && indexOf < length - 1) {
            String substring = str.substring(0, indexOf);
            if (substring.equalsIgnoreCase("W")) {
                i2 = 0;
            } else if (substring.equalsIgnoreCase("H")) {
                i2 = 1;
            }
            i3 = indexOf + 1;
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 >= 0 && indexOf2 < length - 1) {
            String substring2 = str.substring(i3, indexOf2);
            String substring3 = str.substring(indexOf2 + 1);
            if (substring2.length() > 0 && substring3.length() > 0) {
                float parseFloat = Float.parseFloat(substring2);
                float parseFloat2 = Float.parseFloat(substring3);
                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                    if (i2 == 1) {
                        f = Math.abs(parseFloat2 / parseFloat);
                    } else {
                        f = Math.abs(parseFloat / parseFloat2);
                    }
                }
            }
            f = i;
        } else {
            String substring4 = str.substring(i3);
            if (substring4.length() > 0) {
                f = Float.parseFloat(substring4);
            }
            f = i;
        }
        i = (f > i ? 1 : (f == i ? 0 : -1));
        if (i > 0) {
            this.K = f;
            this.L = i2;
        }
    }

    public float N() {
        return this.K;
    }

    public int O() {
        return this.L;
    }

    public void a(float f) {
        this.W = f;
    }

    public void b(float f) {
        this.X = f;
    }

    public void q(int i) {
        if (i < 0) {
            this.T = 0;
        } else {
            this.T = i;
        }
    }

    public void r(int i) {
        if (i < 0) {
            this.U = 0;
        } else {
            this.U = i;
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.M = i;
        this.N = i2;
        if (this.aA == 8) {
            this.I = 0;
            this.J = 0;
            return;
        }
        if (this.G[0] == a.FIXED && i5 < this.I) {
            i5 = this.I;
        }
        if (this.G[1] == a.FIXED && i6 < this.J) {
            i6 = this.J;
        }
        this.I = i5;
        this.J = i6;
        if (this.J < this.U) {
            this.J = this.U;
        }
        if (this.I < this.T) {
            this.I = this.T;
        }
    }

    public void e(int i, int i2) {
        this.M = i;
        this.I = i2 - i;
        if (this.I < this.T) {
            this.I = this.T;
        }
    }

    public void f(int i, int i2) {
        this.N = i;
        this.J = i2 - i;
        if (this.J < this.U) {
            this.J = this.U;
        }
    }

    public void s(int i) {
        this.S = i;
        this.as = i > 0;
    }

    public void a(Object obj) {
        this.ay = obj;
    }

    public void c(float f) {
        this.af[0] = f;
    }

    public void d(float f) {
        this.af[1] = f;
    }

    public void t(int i) {
        this.ab = i;
    }

    public int P() {
        return this.ab;
    }

    public void u(int i) {
        this.ac = i;
    }

    public int Q() {
        return this.ac;
    }

    public boolean a() {
        return this.aA != 8;
    }

    public void a(d.a aVar, e eVar, d.a aVar2, int i, int i2) {
        a(aVar).a(eVar.a(aVar2), i, i2, true);
    }

    public void a(d dVar, d dVar2, int i) {
        if (dVar.h() == this) {
            a(dVar.i(), dVar2.h(), dVar2.i(), i);
        }
    }

    public void a(d.a aVar, e eVar, d.a aVar2, int i) {
        boolean z;
        if (aVar == d.a.CENTER) {
            if (aVar2 == d.a.CENTER) {
                d a2 = a(d.a.LEFT);
                d a3 = a(d.a.RIGHT);
                d a4 = a(d.a.TOP);
                d a5 = a(d.a.BOTTOM);
                boolean z2 = true;
                if ((a2 == null || !a2.m()) && (a3 == null || !a3.m())) {
                    a(d.a.LEFT, eVar, d.a.LEFT, 0);
                    a(d.a.RIGHT, eVar, d.a.RIGHT, 0);
                    z = true;
                } else {
                    z = false;
                }
                if ((a4 == null || !a4.m()) && (a5 == null || !a5.m())) {
                    a(d.a.TOP, eVar, d.a.TOP, 0);
                    a(d.a.BOTTOM, eVar, d.a.BOTTOM, 0);
                } else {
                    z2 = false;
                }
                if (z && z2) {
                    a(d.a.CENTER).a(eVar.a(d.a.CENTER), 0);
                } else if (z) {
                    a(d.a.CENTER_X).a(eVar.a(d.a.CENTER_X), 0);
                } else if (z2) {
                    a(d.a.CENTER_Y).a(eVar.a(d.a.CENTER_Y), 0);
                }
            } else if (aVar2 == d.a.LEFT || aVar2 == d.a.RIGHT) {
                a(d.a.LEFT, eVar, aVar2, 0);
                a(d.a.RIGHT, eVar, aVar2, 0);
                a(d.a.CENTER).a(eVar.a(aVar2), 0);
            } else if (aVar2 == d.a.TOP || aVar2 == d.a.BOTTOM) {
                a(d.a.TOP, eVar, aVar2, 0);
                a(d.a.BOTTOM, eVar, aVar2, 0);
                a(d.a.CENTER).a(eVar.a(aVar2), 0);
            }
        } else if (aVar == d.a.CENTER_X && (aVar2 == d.a.LEFT || aVar2 == d.a.RIGHT)) {
            d a6 = a(d.a.LEFT);
            d a7 = eVar.a(aVar2);
            d a8 = a(d.a.RIGHT);
            a6.a(a7, 0);
            a8.a(a7, 0);
            a(d.a.CENTER_X).a(a7, 0);
        } else if (aVar == d.a.CENTER_Y && (aVar2 == d.a.TOP || aVar2 == d.a.BOTTOM)) {
            d a9 = eVar.a(aVar2);
            a(d.a.TOP).a(a9, 0);
            a(d.a.BOTTOM).a(a9, 0);
            a(d.a.CENTER_Y).a(a9, 0);
        } else if (aVar == d.a.CENTER_X && aVar2 == d.a.CENTER_X) {
            a(d.a.LEFT).a(eVar.a(d.a.LEFT), 0);
            a(d.a.RIGHT).a(eVar.a(d.a.RIGHT), 0);
            a(d.a.CENTER_X).a(eVar.a(aVar2), 0);
        } else if (aVar == d.a.CENTER_Y && aVar2 == d.a.CENTER_Y) {
            a(d.a.TOP).a(eVar.a(d.a.TOP), 0);
            a(d.a.BOTTOM).a(eVar.a(d.a.BOTTOM), 0);
            a(d.a.CENTER_Y).a(eVar.a(aVar2), 0);
        } else {
            d a10 = a(aVar);
            d a11 = eVar.a(aVar2);
            if (a10.a(a11)) {
                if (aVar == d.a.BASELINE) {
                    d a12 = a(d.a.TOP);
                    d a13 = a(d.a.BOTTOM);
                    if (a12 != null) {
                        a12.l();
                    }
                    if (a13 != null) {
                        a13.l();
                    }
                    i = 0;
                } else if (aVar == d.a.TOP || aVar == d.a.BOTTOM) {
                    d a14 = a(d.a.BASELINE);
                    if (a14 != null) {
                        a14.l();
                    }
                    d a15 = a(d.a.CENTER);
                    if (a15.k() != a11) {
                        a15.l();
                    }
                    d n = a(aVar).n();
                    d a16 = a(d.a.CENTER_Y);
                    if (a16.m()) {
                        n.l();
                        a16.l();
                    }
                } else if (aVar == d.a.LEFT || aVar == d.a.RIGHT) {
                    d a17 = a(d.a.CENTER);
                    if (a17.k() != a11) {
                        a17.l();
                    }
                    d n2 = a(aVar).n();
                    d a18 = a(d.a.CENTER_X);
                    if (a18.m()) {
                        n2.l();
                        a18.l();
                    }
                }
                a10.a(a11, i);
            }
        }
    }

    public void R() {
        e v = v();
        if (v != null && (v instanceof f) && ((f) v()).aa()) {
            return;
        }
        int size = this.F.size();
        for (int i = 0; i < size; i++) {
            this.F.get(i).l();
        }
    }

    public d a(d.a aVar) {
        switch (aVar) {
            case LEFT:
                return this.w;
            case TOP:
                return this.x;
            case RIGHT:
                return this.y;
            case BOTTOM:
                return this.z;
            case BASELINE:
                return this.A;
            case CENTER:
                return this.D;
            case CENTER_X:
                return this.B;
            case CENTER_Y:
                return this.C;
            case NONE:
                return null;
            default:
                throw new AssertionError(aVar.name());
        }
    }

    public a S() {
        return this.G[0];
    }

    public a T() {
        return this.G[1];
    }

    public a v(int i) {
        if (i == 0) {
            return S();
        }
        if (i == 1) {
            return T();
        }
        return null;
    }

    public void a(a aVar) {
        this.G[0] = aVar;
    }

    public void b(a aVar) {
        this.G[1] = aVar;
    }

    public boolean U() {
        if (this.w.c == null || this.w.c.c != this.w) {
            return this.y.c != null && this.y.c.c == this.y;
        }
        return true;
    }

    public e w(int i) {
        if (i == 0) {
            if (this.w.c == null || this.w.c.c != this.w) {
                return null;
            }
            return this.w.c.a;
        } else if (i == 1 && this.x.c != null && this.x.c.c == this.x) {
            return this.x.c.a;
        } else {
            return null;
        }
    }

    public e x(int i) {
        if (i == 0) {
            if (this.y.c == null || this.y.c.c != this.y) {
                return null;
            }
            return this.y.c.a;
        } else if (i == 1 && this.z.c != null && this.z.c.c == this.z) {
            return this.z.c.a;
        } else {
            return null;
        }
    }

    public boolean V() {
        if (this.x.c == null || this.x.c.c != this.x) {
            return this.z.c != null && this.z.c.c == this.z;
        }
        return true;
    }

    private boolean a(int i) {
        int i2 = i * 2;
        if (this.E[i2].c != null && this.E[i2].c.c != this.E[i2]) {
            int i3 = i2 + 1;
            if (this.E[i3].c != null && this.E[i3].c.c == this.E[i3]) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:188:0x0333, code lost:
        if (r54.u == (-1)) goto L258;
     */
    /* JADX WARN: Removed duplicated region for block: B:185:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x05a4  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x05f0  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0625  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(androidx.constraintlayout.b.d r55, boolean r56) {
        /*
            Method dump skipped, instructions count: 1611
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.b.a.e.a(androidx.constraintlayout.b.d, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean W() {
        return (this instanceof l) || (this instanceof h);
    }

    public void a(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.u == -1) {
            if (z3 && !z4) {
                this.u = 0;
            } else if (!z3 && z4) {
                this.u = 1;
                if (this.L == -1) {
                    this.v = 1.0f / this.v;
                }
            }
        }
        if (this.u == 0 && (!this.x.m() || !this.z.m())) {
            this.u = 1;
        } else if (this.u == 1 && (!this.w.m() || !this.y.m())) {
            this.u = 0;
        }
        if (this.u == -1 && (!this.x.m() || !this.z.m() || !this.w.m() || !this.y.m())) {
            if (this.x.m() && this.z.m()) {
                this.u = 0;
            } else if (this.w.m() && this.y.m()) {
                this.v = 1.0f / this.v;
                this.u = 1;
            }
        }
        if (this.u == -1) {
            if (this.o > 0 && this.r == 0) {
                this.u = 0;
            } else if (this.o != 0 || this.r <= 0) {
            } else {
                this.v = 1.0f / this.v;
                this.u = 1;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:339:0x0556, code lost:
        if (r0.G[1] == androidx.constraintlayout.b.a.e.a.c) goto L278;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.constraintlayout.b.d r42, boolean r43, boolean r44, boolean r45, boolean r46, androidx.constraintlayout.b.h r47, androidx.constraintlayout.b.h r48, androidx.constraintlayout.b.a.e.a r49, boolean r50, androidx.constraintlayout.b.a.d r51, androidx.constraintlayout.b.a.d r52, int r53, int r54, int r55, int r56, float r57, boolean r58, boolean r59, boolean r60, boolean r61, boolean r62, int r63, int r64, int r65, int r66, float r67, boolean r68) {
        /*
            Method dump skipped, instructions count: 1394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.b.a.e.a(androidx.constraintlayout.b.d, boolean, boolean, boolean, boolean, androidx.constraintlayout.b.h, androidx.constraintlayout.b.h, androidx.constraintlayout.b.a.e$a, boolean, androidx.constraintlayout.b.a.d, androidx.constraintlayout.b.a.d, int, int, int, int, float, boolean, boolean, boolean, boolean, boolean, int, int, int, int, float, boolean):void");
    }

    public void b(androidx.constraintlayout.b.d dVar, boolean z) {
        int b = dVar.b(this.w);
        int b2 = dVar.b(this.x);
        int b3 = dVar.b(this.y);
        int b4 = dVar.b(this.z);
        if (z && this.f != null && this.f.j.j && this.f.k.j) {
            b = this.f.j.g;
            b3 = this.f.k.g;
        }
        if (z && this.g != null && this.g.j.j && this.g.k.j) {
            b2 = this.g.j.g;
            b4 = this.g.k.g;
        }
        int i = b4 - b2;
        if (b3 - b < 0 || i < 0 || b == Integer.MIN_VALUE || b == Integer.MAX_VALUE || b2 == Integer.MIN_VALUE || b2 == Integer.MAX_VALUE || b3 == Integer.MIN_VALUE || b3 == Integer.MAX_VALUE || b4 == Integer.MIN_VALUE || b4 == Integer.MAX_VALUE) {
            b4 = 0;
            b = 0;
            b2 = 0;
            b3 = 0;
        }
        a(b, b2, b3, b4);
    }

    public void a(boolean z, boolean z2) {
        boolean g = z & this.f.g();
        boolean g2 = z2 & this.g.g();
        int i = this.f.j.g;
        int i2 = this.g.j.g;
        int i3 = this.f.k.g;
        int i4 = this.g.k.g;
        int i5 = i4 - i2;
        if (i3 - i < 0 || i5 < 0 || i == Integer.MIN_VALUE || i == Integer.MAX_VALUE || i2 == Integer.MIN_VALUE || i2 == Integer.MAX_VALUE || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE) {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i6 = i3 - i;
        int i7 = i4 - i2;
        if (g) {
            this.M = i;
        }
        if (g2) {
            this.N = i2;
        }
        if (this.aA == 8) {
            this.I = 0;
            this.J = 0;
            return;
        }
        if (g) {
            if (this.G[0] == a.FIXED && i6 < this.I) {
                i6 = this.I;
            }
            this.I = i6;
            if (this.I < this.T) {
                this.I = this.T;
            }
        }
        if (g2) {
            if (this.G[1] == a.FIXED && i7 < this.J) {
                i7 = this.J;
            }
            this.J = i7;
            if (this.J < this.U) {
                this.J = this.U;
            }
        }
    }

    public void a(f fVar, androidx.constraintlayout.b.d dVar, HashSet<e> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            k.a(fVar, dVar, this);
            hashSet.remove(this);
            a(dVar, fVar.b(64));
        }
        if (i == 0) {
            HashSet<d> a2 = this.w.a();
            if (a2 != null) {
                Iterator<d> it = a2.iterator();
                while (it.hasNext()) {
                    it.next().a.a(fVar, dVar, hashSet, i, true);
                }
            }
            HashSet<d> a3 = this.y.a();
            if (a3 != null) {
                Iterator<d> it2 = a3.iterator();
                while (it2.hasNext()) {
                    it2.next().a.a(fVar, dVar, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<d> a4 = this.x.a();
        if (a4 != null) {
            Iterator<d> it3 = a4.iterator();
            while (it3.hasNext()) {
                it3.next().a.a(fVar, dVar, hashSet, i, true);
            }
        }
        HashSet<d> a5 = this.z.a();
        if (a5 != null) {
            Iterator<d> it4 = a5.iterator();
            while (it4.hasNext()) {
                it4.next().a.a(fVar, dVar, hashSet, i, true);
            }
        }
        HashSet<d> a6 = this.A.a();
        if (a6 != null) {
            Iterator<d> it5 = a6.iterator();
            while (it5.hasNext()) {
                it5.next().a.a(fVar, dVar, hashSet, i, true);
            }
        }
    }
}
