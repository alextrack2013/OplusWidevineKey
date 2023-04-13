package androidx.constraintlayout.b.a.a;

import java.util.ArrayList;
import java.util.List;
/* compiled from: DependencyNode.java */
/* loaded from: classes.dex */
public class f implements d {
    p d;
    int f;
    public int g;
    public d a = null;
    public boolean b = false;
    public boolean c = false;
    a e = a.UNKNOWN;
    int h = 1;
    g i = null;
    public boolean j = false;
    List<d> k = new ArrayList();
    List<f> l = new ArrayList();

    /* compiled from: DependencyNode.java */
    /* loaded from: classes.dex */
    enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public f(p pVar) {
        this.d = pVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.d.x());
        sb.append(":");
        sb.append(this.e);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }

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

    @Override // androidx.constraintlayout.b.a.a.d
    public void a(d dVar) {
        for (f fVar : this.l) {
            if (!fVar.j) {
                return;
            }
        }
        this.c = true;
        if (this.a != null) {
            this.a.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        f fVar2 = null;
        int i = 0;
        for (f fVar3 : this.l) {
            if (!(fVar3 instanceof g)) {
                i++;
                fVar2 = fVar3;
            }
        }
        if (fVar2 != null && i == 1 && fVar2.j) {
            if (this.i != null) {
                if (!this.i.j) {
                    return;
                }
                this.f = this.h * this.i.g;
            }
            a(fVar2.g + this.f);
        }
        if (this.a != null) {
            this.a.a(this);
        }
    }

    public void b(d dVar) {
        this.k.add(dVar);
        if (this.j) {
            dVar.a(dVar);
        }
    }

    public void a() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }
}
