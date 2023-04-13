package androidx.constraintlayout.b.a.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GuidelineReference.java */
/* loaded from: classes.dex */
public class j extends p {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public boolean a() {
        return false;
    }

    public j(androidx.constraintlayout.b.a.e eVar) {
        super(eVar);
        eVar.f.c();
        eVar.g.c();
        this.h = ((androidx.constraintlayout.b.a.h) eVar).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void c() {
        this.j.a();
    }

    @Override // androidx.constraintlayout.b.a.a.p
    void d() {
        this.j.j = false;
        this.k.j = false;
    }

    private void a(f fVar) {
        this.j.k.add(fVar);
        fVar.l.add(this.j);
    }

    @Override // androidx.constraintlayout.b.a.a.p, androidx.constraintlayout.b.a.a.d
    public void a(d dVar) {
        if (this.j.c && !this.j.j) {
            this.j.a((int) ((this.j.l.get(0).g * ((androidx.constraintlayout.b.a.h) this.d).f()) + 0.5f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.b.a.a.p
    public void f() {
        androidx.constraintlayout.b.a.h hVar = (androidx.constraintlayout.b.a.h) this.d;
        int g = hVar.g();
        int h = hVar.h();
        hVar.f();
        if (hVar.c() == 1) {
            if (g != -1) {
                this.j.l.add(this.d.H.f.j);
                this.d.H.f.j.k.add(this.j);
                this.j.f = g;
            } else if (h != -1) {
                this.j.l.add(this.d.H.f.k);
                this.d.H.f.k.k.add(this.j);
                this.j.f = -h;
            } else {
                this.j.b = true;
                this.j.l.add(this.d.H.f.k);
                this.d.H.f.k.k.add(this.j);
            }
            a(this.d.f.j);
            a(this.d.f.k);
            return;
        }
        if (g != -1) {
            this.j.l.add(this.d.H.g.j);
            this.d.H.g.j.k.add(this.j);
            this.j.f = g;
        } else if (h != -1) {
            this.j.l.add(this.d.H.g.k);
            this.d.H.g.k.k.add(this.j);
            this.j.f = -h;
        } else {
            this.j.b = true;
            this.j.l.add(this.d.H.g.k);
            this.d.H.g.k.k.add(this.j);
        }
        a(this.d.g.j);
        a(this.d.g.k);
    }

    @Override // androidx.constraintlayout.b.a.a.p
    public void e() {
        if (((androidx.constraintlayout.b.a.h) this.d).c() == 1) {
            this.d.m(this.j.g);
        } else {
            this.d.n(this.j.g);
        }
    }
}
