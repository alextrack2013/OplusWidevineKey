package org.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
/* loaded from: classes.dex */
public class af extends p {
    private p[] b;

    public af(byte[] bArr) {
        super(bArr);
    }

    public af(p[] pVarArr) {
        super(a(pVarArr));
        this.b = pVarArr;
    }

    private static byte[] a(p[] pVarArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != pVarArr.length; i++) {
            try {
                byteArrayOutputStream.write(((az) pVarArr[i]).d());
            } catch (IOException e) {
                throw new IllegalArgumentException("exception converting octets " + e.toString());
            } catch (ClassCastException unused) {
                throw new IllegalArgumentException(pVarArr[i].getClass().getName() + " found in input should only contain DEROctetString");
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private Vector k() {
        Vector vector = new Vector();
        int i = 0;
        while (i < this.a.length) {
            int i2 = i + 1000;
            byte[] bArr = new byte[(i2 > this.a.length ? this.a.length : i2) - i];
            System.arraycopy(this.a, i, bArr, 0, bArr.length);
            vector.addElement(new az(bArr));
            i = i2;
        }
        return vector;
    }

    @Override // org.a.a.p, org.a.a.t
    public void a(r rVar) {
        rVar.b(36);
        rVar.b(128);
        Enumeration j = j();
        while (j.hasMoreElements()) {
            rVar.a((f) j.nextElement());
        }
        rVar.b(0);
        rVar.b(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public boolean a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public int c() {
        Enumeration j = j();
        int i = 0;
        while (j.hasMoreElements()) {
            i += ((f) j.nextElement()).h().c();
        }
        return i + 2 + 2;
    }

    @Override // org.a.a.p
    public byte[] d() {
        return this.a;
    }

    public Enumeration j() {
        return this.b == null ? k().elements() : new Enumeration() { // from class: org.a.a.af.1
            int a = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.a < af.this.b.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                p[] pVarArr = af.this.b;
                int i = this.a;
                this.a = i + 1;
                return pVarArr[i];
            }
        };
    }
}
