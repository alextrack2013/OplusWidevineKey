package org.a.a;

import java.util.Enumeration;
/* loaded from: classes.dex */
public class aj extends w {
    public aj() {
    }

    public aj(g gVar) {
        super(gVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.w, org.a.a.t
    public void a(r rVar) {
        rVar.b(49);
        rVar.b(128);
        Enumeration b = b();
        while (b.hasMoreElements()) {
            rVar.a((f) b.nextElement());
        }
        rVar.b(0);
        rVar.b(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        Enumeration b = b();
        int i = 0;
        while (b.hasMoreElements()) {
            i += ((f) b.nextElement()).h().c();
        }
        return i + 2 + 2;
    }
}
