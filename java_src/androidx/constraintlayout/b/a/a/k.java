package androidx.constraintlayout.b.a.a;

import androidx.constraintlayout.b.a.a.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HelperReferences.java */
/* loaded from: classes.dex */
public class k extends p {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public boolean a() {
        return false;
    }

    public k(androidx.constraintlayout.b.a.e eVar) {
        super(eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void c() {
        this.e = null;
        this.j.a();
    }

    @Override // androidx.constraintlayout.b.a.a.p
    void d() {
        this.j.j = false;
    }

    private void a(f fVar) {
        this.j.k.add(fVar);
        fVar.l.add(this.j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void f() {
        if (this.d instanceof androidx.constraintlayout.b.a.a) {
            this.j.b = true;
            androidx.constraintlayout.b.a.a aVar = (androidx.constraintlayout.b.a.a) this.d;
            int b = aVar.b();
            boolean c = aVar.c();
            int i = 0;
            switch (b) {
                case 0:
                    this.j.e = f.a.LEFT;
                    while (i < aVar.an) {
                        androidx.constraintlayout.b.a.e eVar = aVar.am[i];
                        if (c || eVar.w() != 8) {
                            f fVar = eVar.f.j;
                            fVar.k.add(this.j);
                            this.j.l.add(fVar);
                        }
                        i++;
                    }
                    a(this.d.f.j);
                    a(this.d.f.k);
                    return;
                case 1:
                    this.j.e = f.a.RIGHT;
                    while (i < aVar.an) {
                        androidx.constraintlayout.b.a.e eVar2 = aVar.am[i];
                        if (c || eVar2.w() != 8) {
                            f fVar2 = eVar2.f.k;
                            fVar2.k.add(this.j);
                            this.j.l.add(fVar2);
                        }
                        i++;
                    }
                    a(this.d.f.j);
                    a(this.d.f.k);
                    return;
                case 2:
                    this.j.e = f.a.TOP;
                    while (i < aVar.an) {
                        androidx.constraintlayout.b.a.e eVar3 = aVar.am[i];
                        if (c || eVar3.w() != 8) {
                            f fVar3 = eVar3.g.j;
                            fVar3.k.add(this.j);
                            this.j.l.add(fVar3);
                        }
                        i++;
                    }
                    a(this.d.g.j);
                    a(this.d.g.k);
                    return;
                case 3:
                    this.j.e = f.a.BOTTOM;
                    while (i < aVar.an) {
                        androidx.constraintlayout.b.a.e eVar4 = aVar.am[i];
                        if (c || eVar4.w() != 8) {
                            f fVar4 = eVar4.g.k;
                            fVar4.k.add(this.j);
                            this.j.l.add(fVar4);
                        }
                        i++;
                    }
                    a(this.d.g.j);
                    a(this.d.g.k);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // androidx.constraintlayout.b.a.a.p, androidx.constraintlayout.b.a.a.d
    public void a(d dVar) {
        androidx.constraintlayout.b.a.a aVar = (androidx.constraintlayout.b.a.a) this.d;
        int b = aVar.b();
        int i = 0;
        int i2 = -1;
        for (f fVar : this.j.l) {
            int i3 = fVar.g;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (b == 0 || b == 2) {
            this.j.a(i2 + aVar.g());
        } else {
            this.j.a(i + aVar.g());
        }
    }

    @Override // androidx.constraintlayout.b.a.a.p
    public void e() {
        if (this.d instanceof androidx.constraintlayout.b.a.a) {
            int b = ((androidx.constraintlayout.b.a.a) this.d).b();
            if (b == 0 || b == 1) {
                this.d.m(this.j.g);
            } else {
                this.d.n(this.j.g);
            }
        }
    }
}
