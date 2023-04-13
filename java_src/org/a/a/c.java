package org.a.a;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public abstract class c extends t {
    private static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    protected final byte[] a;
    protected final int b;

    public c(byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException("data cannot be null");
        }
        if (bArr.length == 0 && i != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i > 7 || i < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.a = org.a.b.a.b(bArr);
        this.b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(int i, InputStream inputStream) {
        if (i < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        int read = inputStream.read();
        byte[] bArr = new byte[i - 1];
        if (bArr.length != 0) {
            if (org.a.b.b.a.a(inputStream, bArr) != bArr.length) {
                throw new EOFException("EOF encountered in middle of BIT STRING");
            }
            if (read > 0 && read < 8 && bArr[bArr.length - 1] != ((byte) (bArr[bArr.length - 1] & (255 << read)))) {
                return new bn(bArr, read);
            }
        }
        return new aq(bArr, read);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] a(byte[] bArr, int i) {
        byte[] b = org.a.b.a.b(bArr);
        if (i > 0) {
            int length = bArr.length - 1;
            b[length] = (byte) ((255 << i) & b[length]);
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public abstract void a(r rVar);

    @Override // org.a.a.t
    protected boolean a(t tVar) {
        if (tVar instanceof c) {
            c cVar = (c) tVar;
            return this.b == cVar.b && org.a.b.a.a(d(), cVar.d());
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
                stringBuffer.append(c[(byteArray[i] >>> 4) & 15]);
                stringBuffer.append(c[byteArray[i] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            throw new s("Internal error encoding BitString: " + e.getMessage(), e);
        }
    }

    public byte[] d() {
        return a(this.a, this.b);
    }

    public int e() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t f() {
        return new aq(this.a, this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.t
    public t g() {
        return new bn(this.a, this.b);
    }

    @Override // org.a.a.t, org.a.a.n
    public int hashCode() {
        return org.a.b.a.a(d()) ^ this.b;
    }

    public String toString() {
        return b();
    }
}
