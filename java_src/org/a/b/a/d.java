package org.a.b.a;

import java.io.OutputStream;
/* loaded from: classes.dex */
public class d implements a {
    protected final byte[] a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    protected final byte[] b = new byte[128];

    public d() {
        a();
    }

    @Override // org.a.b.a.a
    public int a(byte[] bArr, int i, int i2, OutputStream outputStream) {
        for (int i3 = i; i3 < i + i2; i3++) {
            int i4 = bArr[i3] & 255;
            outputStream.write(this.a[i4 >>> 4]);
            outputStream.write(this.a[i4 & 15]);
        }
        return i2 * 2;
    }

    protected void a() {
        for (int i = 0; i < this.b.length; i++) {
            this.b[i] = -1;
        }
        for (int i2 = 0; i2 < this.a.length; i2++) {
            this.b[this.a[i2]] = (byte) i2;
        }
        this.b[65] = this.b[97];
        this.b[66] = this.b[98];
        this.b[67] = this.b[99];
        this.b[68] = this.b[100];
        this.b[69] = this.b[101];
        this.b[70] = this.b[102];
    }
}
