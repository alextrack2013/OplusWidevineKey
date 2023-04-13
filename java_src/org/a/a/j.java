package org.a.a;
/* loaded from: classes.dex */
public class j extends t {
    private byte[] a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(byte[] bArr) {
        this.a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(24, this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof j) {
            return org.a.b.a.a(this.a, ((j) tVar).a);
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
}
