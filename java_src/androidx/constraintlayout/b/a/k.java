package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.e;
/* compiled from: Optimizer.java */
/* loaded from: classes.dex */
public class k {
    static boolean[] a = new boolean[3];

    public static final boolean a(int i, int i2) {
        return (i & i2) == i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(f fVar, androidx.constraintlayout.b.d dVar, e eVar) {
        eVar.j = -1;
        eVar.k = -1;
        if (fVar.G[0] != e.a.WRAP_CONTENT && eVar.G[0] == e.a.MATCH_PARENT) {
            int i = eVar.w.d;
            int A = fVar.A() - eVar.y.d;
            eVar.w.f = dVar.a(eVar.w);
            eVar.y.f = dVar.a(eVar.y);
            dVar.a(eVar.w.f, i);
            dVar.a(eVar.y.f, A);
            eVar.j = 2;
            eVar.e(i, A);
        }
        if (fVar.G[1] == e.a.WRAP_CONTENT || eVar.G[1] != e.a.MATCH_PARENT) {
            return;
        }
        int i2 = eVar.x.d;
        int B = fVar.B() - eVar.z.d;
        eVar.x.f = dVar.a(eVar.x);
        eVar.z.f = dVar.a(eVar.z);
        dVar.a(eVar.x.f, i2);
        dVar.a(eVar.z.f, B);
        if (eVar.S > 0 || eVar.w() == 8) {
            eVar.A.f = dVar.a(eVar.A);
            dVar.a(eVar.A.f, eVar.S + i2);
        }
        eVar.k = 2;
        eVar.f(i2, B);
    }
}
