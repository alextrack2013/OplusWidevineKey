package org.a.a;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class ah extends u {
    public ah() {
    }

    public ah(g gVar) {
        super(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.u, org.a.a.t
    public void a(r rVar) {
        rVar.b(48);
        rVar.b(128);
        Enumeration d = d();
        while (d.hasMoreElements()) {
            rVar.a((f) d.nextElement());
        }
        rVar.b(0);
        rVar.b(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        Enumeration d = d();
        int i = 0;
        while (d.hasMoreElements()) {
            i += ((f) d.nextElement()).h().c();
        }
        return i + 2 + 2;
    }
}
