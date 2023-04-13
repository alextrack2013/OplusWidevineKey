package androidx.constraintlayout.b.a.a;

import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: ChainRun.java */
/* loaded from: classes.dex */
public class c extends p {
    ArrayList<p> a;
    private int b;

    public c(androidx.constraintlayout.b.a.e eVar, int i) {
        super(eVar);
        this.a = new ArrayList<>();
        this.h = i;
        h();
    }

    public String toString() {
        Iterator<p> it;
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.h == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        while (this.a.iterator().hasNext()) {
            sb2 = ((sb2 + "<") + it.next()) + "> ";
        }
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public boolean a() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            if (!this.a.get(i).a()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.b.a.a.p
    public long b() {
        int size = this.a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            p pVar = this.a.get(i);
            j = j + pVar.j.f + pVar.b() + pVar.k.f;
        }
        return j;
    }

    private void h() {
        androidx.constraintlayout.b.a.e eVar;
        androidx.constraintlayout.b.a.e eVar2 = this.d;
        androidx.constraintlayout.b.a.e w = eVar2.w(this.h);
        while (true) {
            androidx.constraintlayout.b.a.e eVar3 = w;
            eVar = eVar2;
            eVar2 = eVar3;
            if (eVar2 == null) {
                break;
            }
            w = eVar2.w(this.h);
        }
        this.d = eVar;
        this.a.add(eVar.c(this.h));
        androidx.constraintlayout.b.a.e x = eVar.x(this.h);
        while (x != null) {
            this.a.add(x.c(this.h));
            x = x.x(this.h);
        }
        Iterator<p> it = this.a.iterator();
        while (it.hasNext()) {
            p next = it.next();
            if (this.h == 0) {
                next.d.d = this;
            } else if (this.h == 1) {
                next.d.e = this;
            }
        }
        if ((this.h == 0 && ((androidx.constraintlayout.b.a.f) this.d.v()).Y()) && this.a.size() > 1) {
            this.d = this.a.get(this.a.size() - 1).d;
        }
        this.b = this.h == 0 ? this.d.P() : this.d.Q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void c() {
        this.e = null;
        Iterator<p> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    @Override // androidx.constraintlayout.b.a.a.p
    void d() {
        this.j.j = false;
        this.k.j = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:278:0x0410, code lost:
        r2 = r2 - r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d0, code lost:
        if (r2.g.j != false) goto L68;
     */
    @Override // androidx.constraintlayout.b.a.a.p, androidx.constraintlayout.b.a.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(androidx.constraintlayout.b.a.a.d r23) {
        /*
            Method dump skipped, instructions count: 1081
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.b.a.a.c.a(androidx.constraintlayout.b.a.a.d):void");
    }

    @Override // androidx.constraintlayout.b.a.a.p
    public void e() {
        for (int i = 0; i < this.a.size(); i++) {
            this.a.get(i).e();
        }
    }

    private androidx.constraintlayout.b.a.e i() {
        for (int i = 0; i < this.a.size(); i++) {
            p pVar = this.a.get(i);
            if (pVar.d.w() != 8) {
                return pVar.d;
            }
        }
        return null;
    }

    private androidx.constraintlayout.b.a.e j() {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            p pVar = this.a.get(size);
            if (pVar.d.w() != 8) {
                return pVar.d;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void f() {
        Iterator<p> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        int size = this.a.size();
        if (size < 1) {
            return;
        }
        androidx.constraintlayout.b.a.e eVar = this.a.get(0).d;
        androidx.constraintlayout.b.a.e eVar2 = this.a.get(size - 1).d;
        if (this.h == 0) {
            androidx.constraintlayout.b.a.d dVar = eVar.w;
            androidx.constraintlayout.b.a.d dVar2 = eVar2.y;
            f a = a(dVar, 0);
            int j = dVar.j();
            androidx.constraintlayout.b.a.e i = i();
            if (i != null) {
                j = i.w.j();
            }
            if (a != null) {
                a(this.j, a, j);
            }
            f a2 = a(dVar2, 0);
            int j2 = dVar2.j();
            androidx.constraintlayout.b.a.e j3 = j();
            if (j3 != null) {
                j2 = j3.y.j();
            }
            if (a2 != null) {
                a(this.k, a2, -j2);
            }
        } else {
            androidx.constraintlayout.b.a.d dVar3 = eVar.x;
            androidx.constraintlayout.b.a.d dVar4 = eVar2.z;
            f a3 = a(dVar3, 1);
            int j4 = dVar3.j();
            androidx.constraintlayout.b.a.e i2 = i();
            if (i2 != null) {
                j4 = i2.x.j();
            }
            if (a3 != null) {
                a(this.j, a3, j4);
            }
            f a4 = a(dVar4, 1);
            int j5 = dVar4.j();
            androidx.constraintlayout.b.a.e j6 = j();
            if (j6 != null) {
                j5 = j6.z.j();
            }
            if (a4 != null) {
                a(this.k, a4, -j5);
            }
        }
        this.j.a = this;
        this.k.a = this;
    }
}
