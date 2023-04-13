package androidx.constraintlayout.b;

import androidx.constraintlayout.b.b;
import java.util.Arrays;
import java.util.Comparator;
/* compiled from: PriorityGoalRow.java */
/* loaded from: classes.dex */
public class g extends b {
    a g;
    c h;
    private int i;
    private h[] j;
    private h[] k;
    private int l;

    /* compiled from: PriorityGoalRow.java */
    /* loaded from: classes.dex */
    class a implements Comparable {
        h a;
        g b;

        public a(g gVar) {
            this.b = gVar;
        }

        public void a(h hVar) {
            this.a = hVar;
        }

        public boolean a(h hVar, float f) {
            boolean z = true;
            if (!this.a.a) {
                for (int i = 0; i < 9; i++) {
                    float f2 = hVar.h[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        this.a.h[i] = f3;
                    } else {
                        this.a.h[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.a.h;
                fArr[i2] = fArr[i2] + (hVar.h[i2] * f);
                if (Math.abs(this.a.h[i2]) < 1.0E-4f) {
                    this.a.h[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                g.this.f(this.a);
            }
            return false;
        }

        public final boolean a() {
            for (int i = 8; i >= 0; i--) {
                float f = this.a.h[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean b(h hVar) {
            for (int i = 8; i >= 0; i--) {
                float f = hVar.h[i];
                float f2 = this.a.h[i];
                if (f2 != f) {
                    return f2 < f;
                }
            }
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.a.b - ((h) obj).b;
        }

        public void b() {
            Arrays.fill(this.a.h, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.a != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.a.h[i] + " ";
                }
            }
            return str + "] " + this.a;
        }
    }

    @Override // androidx.constraintlayout.b.b, androidx.constraintlayout.b.d.a
    public void f() {
        this.l = 0;
        this.b = 0.0f;
    }

    public g(c cVar) {
        super(cVar);
        this.i = 128;
        this.j = new h[this.i];
        this.k = new h[this.i];
        this.l = 0;
        this.g = new a(this);
        this.h = cVar;
    }

    @Override // androidx.constraintlayout.b.b, androidx.constraintlayout.b.d.a
    public boolean e() {
        return this.l == 0;
    }

    @Override // androidx.constraintlayout.b.b, androidx.constraintlayout.b.d.a
    public h a(d dVar, boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.l; i2++) {
            h hVar = this.j[i2];
            if (!zArr[hVar.b]) {
                this.g.a(hVar);
                if (i == -1) {
                    if (!this.g.a()) {
                    }
                    i = i2;
                } else {
                    if (!this.g.b(this.j[i])) {
                    }
                    i = i2;
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.j[i];
    }

    @Override // androidx.constraintlayout.b.b, androidx.constraintlayout.b.d.a
    public void d(h hVar) {
        this.g.a(hVar);
        this.g.b();
        hVar.h[hVar.d] = 1.0f;
        e(hVar);
    }

    private final void e(h hVar) {
        if (this.l + 1 > this.j.length) {
            this.j = (h[]) Arrays.copyOf(this.j, this.j.length * 2);
            this.k = (h[]) Arrays.copyOf(this.j, this.j.length * 2);
        }
        this.j[this.l] = hVar;
        this.l++;
        if (this.l > 1 && this.j[this.l - 1].b > hVar.b) {
            for (int i = 0; i < this.l; i++) {
                this.k[i] = this.j[i];
            }
            Arrays.sort(this.k, 0, this.l, new Comparator<h>() { // from class: androidx.constraintlayout.b.g.1
                @Override // java.util.Comparator
                /* renamed from: a */
                public int compare(h hVar2, h hVar3) {
                    return hVar2.b - hVar3.b;
                }
            });
            for (int i2 = 0; i2 < this.l; i2++) {
                this.j[i2] = this.k[i2];
            }
        }
        hVar.a = true;
        hVar.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(h hVar) {
        int i = 0;
        while (i < this.l) {
            if (this.j[i] == hVar) {
                while (i < this.l - 1) {
                    int i2 = i + 1;
                    this.j[i] = this.j[i2];
                    i = i2;
                }
                this.l--;
                hVar.a = false;
                return;
            }
            i++;
        }
    }

    @Override // androidx.constraintlayout.b.b
    public void a(d dVar, b bVar, boolean z) {
        h hVar = bVar.a;
        if (hVar == null) {
            return;
        }
        b.a aVar = bVar.e;
        int c = aVar.c();
        for (int i = 0; i < c; i++) {
            h a2 = aVar.a(i);
            float b = aVar.b(i);
            this.g.a(a2);
            if (this.g.a(hVar, b)) {
                e(a2);
            }
            this.b += bVar.b * b;
        }
        f(hVar);
    }

    @Override // androidx.constraintlayout.b.b
    public String toString() {
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.l; i++) {
            this.g.a(this.j[i]);
            str = str + this.g + " ";
        }
        return str;
    }
}
