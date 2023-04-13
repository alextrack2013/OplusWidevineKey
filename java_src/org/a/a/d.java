package org.a.a;
/* loaded from: classes.dex */
public class d extends t {
    private final byte[] e;
    private static final byte[] c = {-1};
    private static final byte[] d = {0};
    public static final d a = new d(false);
    public static final d b = new d(true);

    public d(boolean z) {
        this.e = z ? c : d;
    }

    d(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("byte value should have 1 byte in it");
        }
        this.e = bArr[0] == 0 ? d : (bArr[0] & 255) == 255 ? c : org.a.b.a.b(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(byte[] bArr) {
        if (bArr.length != 1) {
            throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
        }
        return bArr[0] == 0 ? a : (bArr[0] & 255) == 255 ? b : new d(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public void a(r rVar) {
        rVar.a(1, this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return false;
    }

    @Override // org.a.a.t
    protected boolean a(t tVar) {
        return (tVar instanceof d) && this.e[0] == ((d) tVar).e[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        return 3;
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return this.e[0];
    }

    public String toString() {
        return this.e[0] != 0 ? "TRUE" : "FALSE";
    }
}
