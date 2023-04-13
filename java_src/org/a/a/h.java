package org.a.a;

import java.math.BigInteger;
/* loaded from: classes.dex */
public class h extends t {
    private static h[] b = new h[12];
    private final byte[] a;

    public h(byte[] bArr) {
        if (!org.a.b.c.a("org.bouncycastle.asn1.allow_unsafe_integer") && l.a(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        }
        this.a = org.a.b.a.b(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(byte[] bArr) {
        if (bArr.length > 1) {
            return new h(bArr);
        }
        if (bArr.length == 0) {
            throw new IllegalArgumentException("ENUMERATED has zero length");
        }
        int i = bArr[0] & 255;
        if (i >= b.length) {
            return new h(org.a.b.a.b(bArr));
        }
        h hVar = b[i];
        if (hVar == null) {
            h[] hVarArr = b;
            h hVar2 = new h(org.a.b.a.b(bArr));
            hVarArr[i] = hVar2;
            return hVar2;
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(10, this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof h) {
            return org.a.b.a.a(this.a, ((h) tVar).a);
        }
        return false;
    }

    public BigInteger b() {
        return new BigInteger(this.a);
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
}
