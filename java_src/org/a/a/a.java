package org.a.a;
/* loaded from: classes.dex */
public abstract class a extends t {
    protected final boolean a;
    protected final int b;
    protected final byte[] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(boolean z, int i, byte[] bArr) {
        this.a = z;
        this.b = i;
        this.c = org.a.b.a.b(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(this.a ? 96 : 64, this.b, this.c);
    }

    @Override // org.a.a.t
    public boolean a() {
        return this.a;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof a) {
            a aVar = (a) tVar;
            return this.a == aVar.a && this.b == aVar.b && org.a.b.a.a(this.c, aVar.c);
        }
        return false;
    }

    public int b() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return bz.b(this.b) + bz.a(this.c.length) + this.c.length;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        boolean z = this.a;
        int i = this.b;
        return org.a.b.a.a(this.c) ^ ((z ? 1 : 0) ^ i);
    }
}
