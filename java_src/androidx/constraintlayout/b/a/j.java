package androidx.constraintlayout.b.a;

import androidx.constraintlayout.b.a.a.o;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: HelperWidget.java */
/* loaded from: classes.dex */
public class j extends e implements i {
    public e[] am = new e[4];
    public int an = 0;

    @Override // androidx.constraintlayout.b.a.i
    public void a(f fVar) {
    }

    @Override // androidx.constraintlayout.b.a.i
    public void a(e eVar) {
        if (eVar == this || eVar == null) {
            return;
        }
        if (this.an + 1 > this.am.length) {
            this.am = (e[]) Arrays.copyOf(this.am, this.am.length * 2);
        }
        this.am[this.an] = eVar;
        this.an++;
    }

    @Override // androidx.constraintlayout.b.a.i
    public void j() {
        this.an = 0;
        Arrays.fill(this.am, (Object) null);
    }

    public void a(ArrayList<o> arrayList, int i, o oVar) {
        for (int i2 = 0; i2 < this.an; i2++) {
            oVar.a(this.am[i2]);
        }
        for (int i3 = 0; i3 < this.an; i3++) {
            androidx.constraintlayout.b.a.a.i.a(this.am[i3], i, arrayList, oVar);
        }
    }

    public int y(int i) {
        for (int i2 = 0; i2 < this.an; i2++) {
            e eVar = this.am[i2];
            if (i == 0 && eVar.ak != -1) {
                return eVar.ak;
            }
            if (i == 1 && eVar.al != -1) {
                return eVar.al;
            }
        }
        return -1;
    }
}
