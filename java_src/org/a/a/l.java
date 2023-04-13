package org.a.a;

import java.math.BigInteger;
/* loaded from: classes.dex */
public class l extends t {
    private final byte[] a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(byte[] bArr, boolean z) {
        if (!org.a.b.c.a("org.bouncycastle.asn1.allow_unsafe_integer") && a(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.a = z ? org.a.b.a.b(bArr) : bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(byte[] bArr) {
        if (bArr.length > 1) {
            if (bArr[0] == 0 && (bArr[1] & 128) == 0) {
                return true;
            }
            if (bArr[0] == -1 && (bArr[1] & 128) != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(2, this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof l) {
            return org.a.b.a.a(this.a, ((l) tVar).a);
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
        int i = 0;
        for (int i2 = 0; i2 != this.a.length; i2++) {
            i ^= (this.a[i2] & 255) << (i2 % 4);
        }
        return i;
    }

    public String toString() {
        return b().toString();
    }
}
