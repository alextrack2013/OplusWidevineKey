package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.a.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DimensionDependency.java */
/* loaded from: classes.dex */
public class g extends f {
    public int m;

    public g(p pVar) {
        super(pVar);
        if (pVar instanceof l) {
            this.e = f.a.HORIZONTAL_DIMENSION;
        } else {
            this.e = f.a.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.b.a.a.f
    public void a(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        for (d dVar : this.k) {
            dVar.a(dVar);
        }
    }
}
