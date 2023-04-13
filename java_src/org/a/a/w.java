package org.a.a;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Vector;
import org.a.b.a;
/* loaded from: classes.dex */
public abstract class w extends t implements org.a.b.b<f> {
    private Vector a = new Vector();
    private boolean b = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public w() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public w(g gVar, boolean z) {
        for (int i = 0; i != gVar.a(); i++) {
            this.a.addElement(gVar.a(i));
        }
        if (z) {
            j();
        }
    }

    private f a(Enumeration enumeration) {
        f fVar = (f) enumeration.nextElement();
        return fVar == null ? ax.a : fVar;
    }

    private boolean a(byte[] bArr, byte[] bArr2) {
        int min = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i != min; i++) {
            if (bArr[i] != bArr2[i]) {
                return (bArr[i] & 255) < (bArr2[i] & 255);
            }
        }
        return min == bArr.length;
    }

    private byte[] a(f fVar) {
        try {
            return fVar.h().a("DER");
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
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
        if (tVar instanceof w) {
            w wVar = (w) tVar;
            if (d() != wVar.d()) {
                return false;
            }
            Enumeration b = b();
            Enumeration b2 = wVar.b();
            while (b.hasMoreElements()) {
                f a = a(b);
                f a2 = a(b2);
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

    public Enumeration b() {
        return this.a.elements();
    }

    public int d() {
        return this.a.size();
    }

    public f[] e() {
        f[] fVarArr = new f[d()];
        for (int i = 0; i != d(); i++) {
            fVarArr[i] = a(i);
        }
        return fVarArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t f() {
        if (this.b) {
            bf bfVar = new bf();
            ((w) bfVar).a = this.a;
            return bfVar;
        }
        Vector vector = new Vector();
        for (int i = 0; i != this.a.size(); i++) {
            vector.addElement(this.a.elementAt(i));
        }
        bf bfVar2 = new bf();
        ((w) bfVar2).a = vector;
        bfVar2.j();
        return bfVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t g() {
        bq bqVar = new bq();
        ((w) bqVar).a = this.a;
        return bqVar;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        Enumeration b = b();
        int d = d();
        while (b.hasMoreElements()) {
            d = (d * 17) ^ a(b).hashCode();
        }
        return d;
    }

    @Override // java.lang.Iterable
    public Iterator<f> iterator() {
        return new a.C0042a(e());
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    protected void j() {
        /*
            r9 = this;
            boolean r0 = r9.b
            if (r0 != 0) goto L5e
            r0 = 1
            r9.b = r0
            java.util.Vector r1 = r9.a
            int r1 = r1.size()
            if (r1 <= r0) goto L5e
            java.util.Vector r1 = r9.a
            int r1 = r1.size()
            int r1 = r1 - r0
            r2 = r1
            r1 = r0
        L18:
            if (r1 == 0) goto L5e
            java.util.Vector r1 = r9.a
            r3 = 0
            java.lang.Object r1 = r1.elementAt(r3)
            org.a.a.f r1 = (org.a.a.f) r1
            byte[] r1 = r9.a(r1)
            r4 = r3
            r5 = r4
        L29:
            if (r3 == r2) goto L5b
            java.util.Vector r6 = r9.a
            int r7 = r3 + 1
            java.lang.Object r6 = r6.elementAt(r7)
            org.a.a.f r6 = (org.a.a.f) r6
            byte[] r6 = r9.a(r6)
            boolean r8 = r9.a(r1, r6)
            if (r8 == 0) goto L41
            r1 = r6
            goto L59
        L41:
            java.util.Vector r4 = r9.a
            java.lang.Object r4 = r4.elementAt(r3)
            java.util.Vector r5 = r9.a
            java.util.Vector r6 = r9.a
            java.lang.Object r6 = r6.elementAt(r7)
            r5.setElementAt(r6, r3)
            java.util.Vector r5 = r9.a
            r5.setElementAt(r4, r7)
            r5 = r0
            r4 = r3
        L59:
            r3 = r7
            goto L29
        L5b:
            r2 = r4
            r1 = r5
            goto L18
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.a.a.w.j():void");
    }

    public String toString() {
        return this.a.toString();
    }
}
