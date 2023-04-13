package androidx.constraintlayout.b.a.a;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RunGroup.java */
/* loaded from: classes.dex */
public class m {
    public static int a;
    p d;
    p e;
    int g;
    int h;
    public int b = 0;
    public boolean c = false;
    ArrayList<p> f = new ArrayList<>();

    public m(p pVar, int i) {
        this.d = null;
        this.e = null;
        this.g = 0;
        this.g = a;
        a++;
        this.d = pVar;
        this.e = pVar;
        this.h = i;
    }

    public void a(p pVar) {
        this.f.add(pVar);
        this.e = pVar;
    }

    private long a(f fVar, long j) {
        p pVar = fVar.d;
        if (pVar instanceof k) {
            return j;
        }
        int size = fVar.k.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            d dVar = fVar.k.get(i);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.d != pVar) {
                    j2 = Math.max(j2, a(fVar2, fVar2.f + j));
                }
            }
        }
        if (fVar == pVar.j) {
            long b = j + pVar.b();
            return Math.max(Math.max(j2, a(pVar.k, b)), b - pVar.k.f);
        }
        return j2;
    }

    private long b(f fVar, long j) {
        p pVar = fVar.d;
        if (pVar instanceof k) {
            return j;
        }
        int size = fVar.k.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            d dVar = fVar.k.get(i);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.d != pVar) {
                    j2 = Math.min(j2, b(fVar2, fVar2.f + j));
                }
            }
        }
        if (fVar == pVar.k) {
            long b = j - pVar.b();
            return Math.min(Math.min(j2, b(pVar.j, b)), b - pVar.j.f);
        }
        return j2;
    }

    public long a(androidx.constraintlayout.b.a.f fVar, int i) {
        if (this.d instanceof c) {
            if (((c) this.d).h != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(this.d instanceof l)) {
                return 0L;
            }
        } else if (!(this.d instanceof n)) {
            return 0L;
        }
        f fVar2 = i == 0 ? fVar.f.j : fVar.g.j;
        f fVar3 = i == 0 ? fVar.f.k : fVar.g.k;
        boolean contains = this.d.j.l.contains(fVar2);
        boolean contains2 = this.d.k.l.contains(fVar3);
        long b = this.d.b();
        if (!contains || !contains2) {
            if (contains) {
                return Math.max(a(this.d.j, this.d.j.f), this.d.j.f + b);
            }
            if (contains2) {
                return Math.max(-b(this.d.k, this.d.k.f), (-this.d.k.f) + b);
            }
            return (this.d.j.f + this.d.b()) - this.d.k.f;
        }
        long a2 = a(this.d.j, 0L);
        long b2 = b(this.d.k, 0L);
        long j = a2 - b;
        if (j >= (-this.d.k.f)) {
            j += this.d.k.f;
        }
        long j2 = ((-b2) - b) - this.d.j.f;
        if (j2 >= this.d.j.f) {
            j2 -= this.d.j.f;
        }
        float l = this.d.d.l(i);
        float f = (float) (l > 0.0f ? (((float) j2) / l) + (((float) j) / (1.0f - l)) : 0L);
        return (this.d.j.f + ((((f * l) + 0.5f) + b) + ((f * (1.0f - l)) + 0.5f))) - this.d.k.f;
    }
}
