package androidx.constraintlayout.b.a;

import java.util.ArrayList;
/* compiled from: WidgetContainer.java */
/* loaded from: classes.dex */
public class m extends e {
    public ArrayList<e> aH = new ArrayList<>();

    @Override // androidx.constraintlayout.b.a.e
    public void s() {
        this.aH.clear();
        super.s();
    }

    public void b(e eVar) {
        this.aH.add(eVar);
        if (eVar.v() != null) {
            ((m) eVar.v()).c(eVar);
        }
        eVar.a_(this);
    }

    public void c(e eVar) {
        this.aH.remove(eVar);
        eVar.s();
    }

    public ArrayList<e> ac() {
        return this.aH;
    }

    public void Z() {
        if (this.aH == null) {
            return;
        }
        int size = this.aH.size();
        for (int i = 0; i < size; i++) {
            e eVar = this.aH.get(i);
            if (eVar instanceof m) {
                ((m) eVar).Z();
            }
        }
    }

    @Override // androidx.constraintlayout.b.a.e
    public void a(androidx.constraintlayout.b.c cVar) {
        super.a(cVar);
        int size = this.aH.size();
        for (int i = 0; i < size; i++) {
            this.aH.get(i).a(cVar);
        }
    }

    public void ad() {
        this.aH.clear();
    }
}
