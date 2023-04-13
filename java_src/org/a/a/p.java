package org.a.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* loaded from: classes.dex */
public abstract class p extends t implements q {
    byte[] a;

    public p(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("string cannot be null");
        }
        this.a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public abstract void a(r rVar);

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof p) {
            return org.a.b.a.a(this.a, ((p) tVar).a);
        }
        return false;
    }

    @Override // org.a.a.q
    public InputStream b() {
        return new ByteArrayInputStream(this.a);
    }

    public byte[] d() {
        return this.a;
    }

    @Override // org.a.a.bt
    public t e() {
        return h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t f() {
        return new az(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t g() {
        return new az(this.a);
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return org.a.b.a.a(d());
    }

    public String toString() {
        return "#" + org.a.b.d.b(org.a.b.a.c.b(this.a));
    }
}
