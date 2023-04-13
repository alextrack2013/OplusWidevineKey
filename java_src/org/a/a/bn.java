package org.a.a;
/* loaded from: classes.dex */
public class bn extends c {
    public bn(byte[] bArr, int i) {
        super(bArr, i);
    }

    @Override // org.a.a.c, org.a.a.t
    void a(r rVar) {
        byte[] bArr = this.a;
        byte[] bArr2 = new byte[bArr.length + 1];
        bArr2[0] = (byte) e();
        System.arraycopy(bArr, 0, bArr2, 1, bArr2.length - 1);
        rVar.a(3, bArr2);
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
