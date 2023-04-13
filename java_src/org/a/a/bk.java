package org.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public class bk extends t {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final byte[] b;

    public bk(byte[] bArr) {
        this.b = org.a.b.a.b(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(28, d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    boolean a(t tVar) {
        if (tVar instanceof bk) {
            return org.a.b.a.a(this.b, ((bk) tVar).b);
        }
        return false;
    }

    public String b() {
        StringBuffer stringBuffer = new StringBuffer("#");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new r(byteArrayOutputStream).a((f) this);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            for (int i = 0; i != byteArray.length; i++) {
                stringBuffer.append(a[(byteArray[i] >>> 4) & 15]);
                stringBuffer.append(a[byteArray[i] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException unused) {
            throw new s("internal error encoding BitString");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return bz.a(this.b.length) + 1 + this.b.length;
    }

    public byte[] d() {
        return org.a.b.a.b(this.b);
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return org.a.b.a.a(this.b);
    }

    public String toString() {
        return b();
    }
}
