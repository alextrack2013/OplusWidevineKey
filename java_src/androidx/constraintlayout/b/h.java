package androidx.constraintlayout.b;

import java.util.Arrays;
import java.util.HashSet;
/* compiled from: SolverVariable.java */
/* loaded from: classes.dex */
public class h {
    private static int q = 1;
    private static int r = 1;
    private static int s = 1;
    private static int t = 1;
    private static int u = 1;
    public boolean a;
    public float e;
    a i;
    private String v;
    public int b = -1;
    int c = -1;
    public int d = 0;
    public boolean f = false;
    float[] g = new float[9];
    float[] h = new float[9];
    b[] j = new b[16];
    int k = 0;
    public int l = 0;
    boolean m = false;
    int n = -1;
    float o = 0.0f;
    HashSet<b> p = null;

    /* compiled from: SolverVariable.java */
    /* loaded from: classes.dex */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        r++;
    }

    public h(a aVar, String str) {
        this.i = aVar;
    }

    public final void a(b bVar) {
        for (int i = 0; i < this.k; i++) {
            if (this.j[i] == bVar) {
                return;
            }
        }
        if (this.k >= this.j.length) {
            this.j = (b[]) Arrays.copyOf(this.j, this.j.length * 2);
        }
        this.j[this.k] = bVar;
        this.k++;
    }

    public final void b(b bVar) {
        int i = this.k;
        int i2 = 0;
        while (i2 < i) {
            if (this.j[i2] == bVar) {
                while (i2 < i - 1) {
                    int i3 = i2 + 1;
                    this.j[i2] = this.j[i3];
                    i2 = i3;
                }
                this.k--;
                return;
            }
            i2++;
        }
    }

    public final void a(d dVar, b bVar) {
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].a(dVar, bVar, false);
        }
        this.k = 0;
    }

    public void a(d dVar, float f) {
        this.e = f;
        this.f = true;
        this.m = false;
        this.n = -1;
        this.o = 0.0f;
        int i = this.k;
        this.c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].a(dVar, this, false);
        }
        this.k = 0;
    }

    public void b() {
        this.v = null;
        this.i = a.UNKNOWN;
        this.d = 0;
        this.b = -1;
        this.c = -1;
        this.e = 0.0f;
        this.f = false;
        this.m = false;
        this.n = -1;
        this.o = 0.0f;
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2] = null;
        }
        this.k = 0;
        this.l = 0;
        this.a = false;
        Arrays.fill(this.h, 0.0f);
    }

    public void a(a aVar, String str) {
        this.i = aVar;
    }

    public String toString() {
        if (this.v != null) {
            return "" + this.v;
        }
        return "" + this.b;
    }
}
