package org.a.a;
/* loaded from: classes.dex */
public class ap extends t {
    private final char[] a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(char[] cArr) {
        this.a = cArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.b(30);
        rVar.a(this.a.length * 2);
        for (int i = 0; i != this.a.length; i++) {
            char c = this.a[i];
            rVar.b((byte) (c >> '\b'));
            rVar.b((byte) c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    protected boolean a(t tVar) {
        if (tVar instanceof ap) {
            return org.a.b.a.a(this.a, ((ap) tVar).a);
        }
        return false;
    }

    public String b() {
        return new String(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return bz.a(this.a.length * 2) + 1 + (this.a.length * 2);
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return org.a.b.a.a(this.a);
    }

    public String toString() {
        return b();
    }
}
