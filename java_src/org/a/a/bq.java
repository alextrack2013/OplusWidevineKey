package org.a.a;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class bq extends w {
    private int a;

    public bq() {
        this.a = -1;
    }

    public bq(g gVar) {
        super(gVar, false);
        this.a = -1;
    }

    private int k() {
        if (this.a < 0) {
            int i = 0;
            Enumeration b = b();
            while (b.hasMoreElements()) {
                i += ((f) b.nextElement()).h().g().c();
            }
            this.a = i;
        }
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.w, org.a.a.t
    public void a(r rVar) {
        r b = rVar.b();
        int k = k();
        rVar.b(49);
        rVar.a(k);
        Enumeration b2 = b();
        while (b2.hasMoreElements()) {
            b.a((f) b2.nextElement());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        int k = k();
        return bz.a(k) + 1 + k;
    }
}
