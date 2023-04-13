package org.a.a;
/* loaded from: classes.dex */
public class bh extends t {
    private byte[] a;

    public bh(byte[] bArr) {
        this.a = org.a.b.a.b(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(20, this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof bh) {
            return org.a.b.a.a(this.a, ((bh) tVar).a);
        }
        return false;
    }

    public String b() {
        return org.a.b.d.b(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return bz.a(this.a.length) + 1 + this.a.length;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return org.a.b.a.a(this.a);
    }

    public String toString() {
        return b();
    }
}
