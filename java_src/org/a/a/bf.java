package org.a.a;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class bf extends w {
    private int a;

    public bf() {
        this.a = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(g gVar, boolean z) {
        super(gVar, z);
        this.a = -1;
    }

    private int k() {
        if (this.a < 0) {
            int i = 0;
            Enumeration b = b();
            while (b.hasMoreElements()) {
                i += ((f) b.nextElement()).h().f().c();
            }
            this.a = i;
        }
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.w, org.a.a.t
    public void a(r rVar) {
        r a = rVar.a();
        int k = k();
        rVar.b(49);
        rVar.a(k);
        Enumeration b = b();
        while (b.hasMoreElements()) {
            a.a((f) b.nextElement());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        int k = k();
        return bz.a(k) + 1 + k;
    }
}
