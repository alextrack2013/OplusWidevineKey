package androidx.constraintlayout.b;

import androidx.constraintlayout.b.b;
import java.util.Arrays;
/* compiled from: SolverVariableValues.java */
/* loaded from: classes.dex */
public class i implements b.a {
    private static float j = 0.001f;
    protected final c i;
    private final b n;
    private final int k = -1;
    private int l = 16;
    private int m = 16;
    int[] a = new int[this.l];
    int[] b = new int[this.l];
    int[] c = new int[this.l];
    float[] d = new float[this.l];
    int[] e = new int[this.l];
    int[] f = new int[this.l];
    int g = 0;
    int h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(b bVar, c cVar) {
        this.n = bVar;
        this.i = cVar;
        a();
    }

    @Override // androidx.constraintlayout.b.b.a
    public int c() {
        return this.g;
    }

    @Override // androidx.constraintlayout.b.b.a
    public h a(int i) {
        int i2 = this.g;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.i.d[this.c[i3]];
            }
            i3 = this.f[i3];
            if (i3 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.b.b.a
    public float b(int i) {
        int i2 = this.g;
        int i3 = this.h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.d[i3];
            }
            i3 = this.f[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.b.b.a
    public boolean a(h hVar) {
        return c(hVar) != -1;
    }

    public int c(h hVar) {
        if (this.g == 0 || hVar == null) {
            return -1;
        }
        int i = hVar.b;
        int i2 = this.a[i % this.m];
        if (i2 == -1) {
            return -1;
        }
        if (this.c[i2] == i) {
            return i2;
        }
        while (this.b[i2] != -1 && this.c[this.b[i2]] != i) {
            i2 = this.b[i2];
        }
        if (this.b[i2] != -1 && this.c[this.b[i2]] == i) {
            return this.b[i2];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.b.b.a
    public float b(h hVar) {
        int c = c(hVar);
        if (c != -1) {
            return this.d[c];
        }
        return 0.0f;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            h a = a(i2);
            if (a != null) {
                String str2 = str + a + " = " + b(i2) + " ";
                int c = c(a);
                String str3 = str2 + "[p: ";
                String str4 = (this.e[c] != -1 ? str3 + this.i.d[this.c[this.e[c]]] : str3 + "none") + ", n: ";
                str = (this.f[c] != -1 ? str4 + this.i.d[this.c[this.f[c]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }

    @Override // androidx.constraintlayout.b.b.a
    public void a() {
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            h a = a(i2);
            if (a != null) {
                a.b(this.n);
            }
        }
        for (int i3 = 0; i3 < this.l; i3++) {
            this.c[i3] = -1;
            this.b[i3] = -1;
        }
        for (int i4 = 0; i4 < this.m; i4++) {
            this.a[i4] = -1;
        }
        this.g = 0;
        this.h = -1;
    }

    private void d() {
        int i = this.l * 2;
        this.c = Arrays.copyOf(this.c, i);
        this.d = Arrays.copyOf(this.d, i);
        this.e = Arrays.copyOf(this.e, i);
        this.f = Arrays.copyOf(this.f, i);
        this.b = Arrays.copyOf(this.b, i);
        for (int i2 = this.l; i2 < i; i2++) {
            this.c[i2] = -1;
            this.b[i2] = -1;
        }
        this.l = i;
    }

    private void a(h hVar, int i) {
        int i2 = hVar.b % this.m;
        int i3 = this.a[i2];
        if (i3 == -1) {
            this.a[i2] = i;
        } else {
            while (this.b[i3] != -1) {
                i3 = this.b[i3];
            }
            this.b[i3] = i;
        }
        this.b[i] = -1;
    }

    private void d(h hVar) {
        int i = hVar.b % this.m;
        int i2 = this.a[i];
        if (i2 == -1) {
            return;
        }
        int i3 = hVar.b;
        if (this.c[i2] == i3) {
            this.a[i] = this.b[i2];
            this.b[i2] = -1;
            return;
        }
        while (this.b[i2] != -1 && this.c[this.b[i2]] != i3) {
            i2 = this.b[i2];
        }
        int i4 = this.b[i2];
        if (i4 == -1 || this.c[i4] != i3) {
            return;
        }
        this.b[i2] = this.b[i4];
        this.b[i4] = -1;
    }

    private void a(int i, h hVar, float f) {
        this.c[i] = hVar.b;
        this.d[i] = f;
        this.e[i] = -1;
        this.f[i] = -1;
        hVar.a(this.n);
        hVar.l++;
        this.g++;
    }

    private int e() {
        for (int i = 0; i < this.l; i++) {
            if (this.c[i] == -1) {
                return i;
            }
        }
        return -1;
    }

    private void b(int i, h hVar, float f) {
        int e = e();
        a(e, hVar, f);
        if (i != -1) {
            this.e[e] = i;
            this.f[e] = this.f[i];
            this.f[i] = e;
        } else {
            this.e[e] = -1;
            if (this.g > 0) {
                this.f[e] = this.h;
                this.h = e;
            } else {
                this.f[e] = -1;
            }
        }
        if (this.f[e] != -1) {
            this.e[this.f[e]] = e;
        }
        a(hVar, e);
    }

    @Override // androidx.constraintlayout.b.b.a
    public void a(h hVar, float f) {
        if (f > (-j) && f < j) {
            a(hVar, true);
            return;
        }
        if (this.g == 0) {
            a(0, hVar, f);
            a(hVar, 0);
            this.h = 0;
            return;
        }
        int c = c(hVar);
        if (c != -1) {
            this.d[c] = f;
            return;
        }
        if (this.g + 1 >= this.l) {
            d();
        }
        int i = this.g;
        int i2 = this.h;
        int i3 = -1;
        for (int i4 = 0; i4 < i; i4++) {
            if (this.c[i2] == hVar.b) {
                this.d[i2] = f;
                return;
            }
            if (this.c[i2] < hVar.b) {
                i3 = i2;
            }
            i2 = this.f[i2];
            if (i2 == -1) {
                break;
            }
        }
        b(i3, hVar, f);
    }

    @Override // androidx.constraintlayout.b.b.a
    public float a(h hVar, boolean z) {
        int c = c(hVar);
        if (c == -1) {
            return 0.0f;
        }
        d(hVar);
        float f = this.d[c];
        if (this.h == c) {
            this.h = this.f[c];
        }
        this.c[c] = -1;
        if (this.e[c] != -1) {
            this.f[this.e[c]] = this.f[c];
        }
        if (this.f[c] != -1) {
            this.e[this.f[c]] = this.e[c];
        }
        this.g--;
        hVar.l--;
        if (z) {
            hVar.b(this.n);
        }
        return f;
    }

    @Override // androidx.constraintlayout.b.b.a
    public void a(h hVar, float f, boolean z) {
        if (f <= (-j) || f >= j) {
            int c = c(hVar);
            if (c == -1) {
                a(hVar, f);
                return;
            }
            float[] fArr = this.d;
            fArr[c] = fArr[c] + f;
            if (this.d[c] <= (-j) || this.d[c] >= j) {
                return;
            }
            this.d[c] = 0.0f;
            a(hVar, z);
        }
    }

    @Override // androidx.constraintlayout.b.b.a
    public float a(b bVar, boolean z) {
        float b = b(bVar.a);
        a(bVar.a, z);
        i iVar = (i) bVar.e;
        int c = iVar.c();
        int i = iVar.h;
        int i2 = 0;
        int i3 = 0;
        while (i2 < c) {
            if (iVar.c[i3] != -1) {
                a(this.i.d[iVar.c[i3]], iVar.d[i3] * b, z);
                i2++;
            }
            i3++;
        }
        return b;
    }

    @Override // androidx.constraintlayout.b.b.a
    public void b() {
        int i = this.g;
        int i2 = this.h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.d;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.b.b.a
    public void a(float f) {
        int i = this.g;
        int i2 = this.h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.d;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }
}
