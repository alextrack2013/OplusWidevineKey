package org.a.a;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class bp extends u {
    private int b;

    public bp() {
        this.b = -1;
    }

    public bp(g gVar) {
        super(gVar);
        this.b = -1;
    }

    private int j() {
        if (this.b < 0) {
            int i = 0;
            Enumeration d = d();
            while (d.hasMoreElements()) {
                i += ((f) d.nextElement()).h().g().c();
            }
            this.b = i;
        }
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.u, org.a.a.t
    public void a(r rVar) {
        r b = rVar.b();
        int j = j();
        rVar.b(48);
        rVar.a(j);
        Enumeration d = d();
        while (d.hasMoreElements()) {
            b.a((f) d.nextElement());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        int j = j();
        return bz.a(j) + 1 + j;
    }
}
