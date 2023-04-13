package org.a.a;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.a.b.a;
/* loaded from: classes.dex */
public abstract class u extends t implements org.a.b.b<f> {
    protected Vector a = new Vector();

    /* JADX INFO: Access modifiers changed from: protected */
    public u() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u(g gVar) {
        for (int i = 0; i != gVar.a(); i++) {
            this.a.addElement(gVar.a(i));
        }
    }

    private f a(Enumeration enumeration) {
        return (f) enumeration.nextElement();
    }

    public f a(int i) {
        return (f) this.a.elementAt(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public abstract void a(r rVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return true;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof u) {
            u uVar = (u) tVar;
            if (e() != uVar.e()) {
                return false;
            }
            Enumeration d = d();
            Enumeration d2 = uVar.d();
            while (d.hasMoreElements()) {
                f a = a(d);
                f a2 = a(d2);
                t h = a.h();
                t h2 = a2.h();
                if (h != h2 && !h.equals(h2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public f[] b() {
        f[] fVarArr = new f[e()];
        for (int i = 0; i != e(); i++) {
            fVarArr[i] = a(i);
        }
        return fVarArr;
    }

    public Enumeration d() {
        return this.a.elements();
    }

    public int e() {
        return this.a.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t f() {
        bd bdVar = new bd();
        bdVar.a = this.a;
        return bdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t g() {
        bp bpVar = new bp();
        bpVar.a = this.a;
        return bpVar;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        Enumeration d = d();
        int e = e();
        while (d.hasMoreElements()) {
            e = (e * 17) ^ a(d).hashCode();
        }
        return e;
    }

    @Override // java.lang.Iterable
    public Iterator<f> iterator() {
        return new a.C0042a(b());
    }

    public String toString() {
        return this.a.toString();
    }
}
