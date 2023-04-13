package org.a.a;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class al extends z {
    public al(boolean z, int i, f fVar) {
        super(z, i, fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.z, org.a.a.t
    public void a(r rVar) {
        Enumeration b;
        rVar.a(160, this.a);
        rVar.b(128);
        if (!this.b) {
            if (this.c) {
                rVar.a(this.d);
            } else {
                if (this.d instanceof p) {
                    b = this.d instanceof af ? ((af) this.d).j() : new af(((p) this.d).d()).j();
                } else if (this.d instanceof u) {
                    b = ((u) this.d).d();
                } else if (!(this.d instanceof w)) {
                    throw new i("not implemented: " + this.d.getClass().getName());
                } else {
                    b = ((w) this.d).b();
                }
                while (b.hasMoreElements()) {
                    rVar.a((f) b.nextElement());
                }
            }
        }
        rVar.b(0);
        rVar.b(0);
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
        int c = this.d.h().c();
        if (this.c) {
            return bz.b(this.a) + bz.a(c) + c;
        }
        return bz.b(this.a) + (c - 1);
    }
}
