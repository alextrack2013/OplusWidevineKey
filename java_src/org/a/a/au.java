package org.a.a;
/* loaded from: classes.dex */
public class au extends t {
    private final byte[] a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(byte[] bArr) {
        this.a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(27, this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof au) {
            return org.a.b.a.a(this.a, ((au) tVar).a);
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
