package org.a.a;
/* loaded from: classes.dex */
public class ab extends t {
    private byte[] a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(byte[] bArr) {
        this.a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.b(23);
        int length = this.a.length;
        rVar.a(length);
        for (int i = 0; i != length; i++) {
            rVar.b(this.a[i]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof ab) {
            return org.a.b.a.a(this.a, ((ab) tVar).a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        int length = this.a.length;
        return bz.a(length) + 1 + length;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return org.a.b.a.a(this.a);
    }

    public String toString() {
        return org.a.b.d.b(this.a);
    }
}
