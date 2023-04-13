package org.a.a;
/* loaded from: classes.dex */
public class br extends z {
    private static final byte[] e = new byte[0];

    public br(boolean z, int i, f fVar) {
        super(z, i, fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.z, org.a.a.t
    public void a(r rVar) {
        if (this.b) {
            rVar.a(160, this.a, e);
            return;
        }
        t g = this.d.h().g();
        if (!this.c) {
            rVar.a(g.a() ? 160 : 128, this.a);
            rVar.a(g);
            return;
        }
        rVar.a(160, this.a);
        rVar.a(g.c());
        rVar.a((f) g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        if (this.b || this.c) {
            return true;
        }
        return this.d.h().g().a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        if (this.b) {
            return bz.b(this.a) + 1;
        }
        int c = this.d.h().g().c();
        if (this.c) {
            return bz.b(this.a) + bz.a(c) + c;
        }
        return bz.b(this.a) + (c - 1);
    }
}
