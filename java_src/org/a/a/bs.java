package org.a.a;

import java.io.EOFException;
import java.io.InputStream;
/* loaded from: classes.dex */
class bs extends bx {
    private static final byte[] b = new byte[0];
    private final int c;
    private int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(InputStream inputStream, int i) {
        super(inputStream, i);
        if (i < 0) {
            throw new IllegalArgumentException("negative lengths not allowed");
        }
        this.c = i;
        this.d = i;
        if (i == 0) {
            b(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.a.a.bx
    public int a() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] b() {
        if (this.d == 0) {
            return b;
        }
        byte[] bArr = new byte[this.d];
        int a = this.d - org.a.b.b.a.a(this.a, bArr);
        this.d = a;
        if (a == 0) {
            b(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this.c + " object truncated by " + this.d);
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.d == 0) {
            return -1;
        }
        int read = this.a.read();
        if (read >= 0) {
            int i = this.d - 1;
            this.d = i;
            if (i == 0) {
                b(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this.c + " object truncated by " + this.d);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (this.d == 0) {
            return -1;
        }
        int read = this.a.read(bArr, i, Math.min(i2, this.d));
        if (read >= 0) {
            int i3 = this.d - read;
            this.d = i3;
            if (i3 == 0) {
                b(true);
            }
            return read;
        }
        throw new EOFException("DEF length " + this.c + " object truncated by " + this.d);
    }
}
