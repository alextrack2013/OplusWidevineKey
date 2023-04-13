package org.a.a;

import java.util.Enumeration;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bw extends u {
    private byte[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(byte[] bArr) {
        this.b = bArr;
    }

    private void j() {
        bv bvVar = new bv(this.b);
        while (bvVar.hasMoreElements()) {
            this.a.addElement(bvVar.nextElement());
        }
        this.b = null;
    }

    @Override // org.a.a.u
    public synchronized f a(int i) {
        if (this.b != null) {
            j();
        }
        return super.a(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.u, org.a.a.t
    public void a(r rVar) {
        if (this.b != null) {
            rVar.a(48, this.b);
        } else {
            super.g().a(rVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return this.b != null ? bz.a(this.b.length) + 1 + this.b.length : super.g().c();
    }

    @Override // org.a.a.u
    public synchronized Enumeration d() {
        if (this.b == null) {
            return super.d();
        }
        return new bv(this.b);
    }

    @Override // org.a.a.u
    public synchronized int e() {
        if (this.b != null) {
            j();
        }
        return super.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.u, org.a.a.t
    public t f() {
        if (this.b != null) {
            j();
        }
        return super.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.u, org.a.a.t
    public t g() {
        if (this.b != null) {
            j();
        }
        return super.g();
    }
}
