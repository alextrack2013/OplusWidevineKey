package org.a.a;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class bd extends u {
    private int b;

    public bd() {
        this.b = -1;
    }

    public bd(g gVar) {
        super(gVar);
        this.b = -1;
    }

    private int j() {
        if (this.b < 0) {
            int i = 0;
            Enumeration d = d();
            while (d.hasMoreElements()) {
                i += ((f) d.nextElement()).h().f().c();
            }
            this.b = i;
        }
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.u, org.a.a.t
    public void a(r rVar) {
        r a = rVar.a();
        int j = j();
        rVar.b(48);
        rVar.a(j);
        Enumeration d = d();
        while (d.hasMoreElements()) {
            a.a((f) d.nextElement());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        int j = j();
        return bz.a(j) + 1 + j;
    }
}
