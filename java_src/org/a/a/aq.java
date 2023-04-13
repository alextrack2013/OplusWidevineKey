package org.a.a;
/* loaded from: classes.dex */
public class aq extends c {
    public aq(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // org.a.a.c, org.a.a.t
    void a(r rVar) {
        byte[] a = a(this.a, this.b);
        byte[] bArr = new byte[a.length + 1];
        bArr[0] = (byte) e();
        System.arraycopy(a, 0, bArr, 1, bArr.length - 1);
        rVar.a(3, bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return bz.a(this.a.length + 1) + 1 + this.a.length + 1;
    }
}
