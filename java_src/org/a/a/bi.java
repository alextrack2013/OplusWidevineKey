package org.a.a;
/* loaded from: classes.dex */
public class bi extends z {
    private static final byte[] e = new byte[0];

    public bi(boolean z, int i, f fVar) {
        super(z, i, fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.z, org.a.a.t
    public void a(r rVar) {
        if (this.b) {
            rVar.a(160, this.a, e);
            return;
        }
        t f = this.d.h().f();
        if (!this.c) {
            rVar.a(f.a() ? 160 : 128, this.a);
            rVar.a(f);
            return;
        }
        rVar.a(160, this.a);
        rVar.a(f.c());
        rVar.a((f) f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        if (this.b || this.c) {
            return true;
        }
        return this.d.h().f().a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        if (this.b) {
            return bz.b(this.a) + 1;
        }
        int c = this.d.h().f().c();
        if (this.c) {
            return bz.b(this.a) + bz.a(c) + c;
        }
        return bz.b(this.a) + (c - 1);
    }
}
